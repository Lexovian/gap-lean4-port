#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
gap_port_tasker.py
==================

Partition the GAP -> Lean 4 porting work into self-contained, content-addressed
**task files** that a distributed "tasking team" can pick up, work on, and merge
back together.

The intended distribution model (as requested):

  * The whole work breakdown is packaged so it can be shared as a single archive
    (e.g. a ``.tar.gz`` mirrored on archive.org, or the bundled CARv1) and
    **torrented**.
  * A worker downloads the torrent, claims one or more task files, ports the
    listed GAP source files to verified Lean 4, and records the result.
  * Workers publish their results (status + produced Lean artifacts) which are
    **merged** with everyone else's via ``tools/merge_tasks.py`` -- a
    monotone / CRDT-style union keyed by each task's content CID -- and the
    merged ledger is re-seeded as a new torrent.  Repeating this converges to
    the complete port.

This tool reads the per-file estimation produced by ``gap_port_estimator.py``
(``estimation/gap_port_estimate.blocks.json``) -- so it needs no GAP checkout --
groups the files into coherent tasks bounded by an effort budget, and emits:

    tasks/<layer>/<NNNN>-<slug>.task.json   one machine-readable task per file
    tasks/<layer>/<NNNN>-<slug>.task.md     a human-readable task brief
    tasks/INDEX.json                        full machine index of all tasks
    tasks/INDEX.md                          human-readable index / leaderboard seed
    tasks/MANIFEST.json                     distribution + merge protocol manifest
    tasks/gap_port_tasks.car               IPLD DAG-JSON CARv1 bundle of all tasks
    tasks/README.md                         how to claim, work, and merge tasks
    tasks/results.template.json            an empty result-ledger to fork & fill

Every task node is serialised as canonical DAG-JSON and addressed by a CIDv1
(sha2-256), exactly like the estimation DAG, so identical task specs dedup across
torrents and results can be merged purely by CID.

Usage
-----
    python3 tools/gap_port_tasker.py [estimation/gap_port_estimate.blocks.json] \
        [tasks] [--budget-days 12] [--max-files 15]
"""

from __future__ import annotations

import json
import os
import re
import sys
from typing import Any, Dict, List, Tuple

# Reuse the IPLD/CID/CAR machinery and knowledge base from the estimator.
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import gap_port_estimator as est  # noqa: E402


GITHUB_RAW = "https://raw.githubusercontent.com/gap-system/gap/master/"
GITHUB_BLOB = "https://github.com/gap-system/gap/blob/master/"

# Porting order: foundations first.  Lower number = port earlier.
LAYER_PRIORITY = {
    "kernel": 0,
    "library": 1,
    "groupdata": 2,
    "misc": 3,
    "build": 4,
    "tests": 5,
    "docs": 9,
}

# Top GAP directory -> Lean sub-namespace under RequestProject/Gap/.
TOP_TO_LEAN = {
    "src": "Kernel",
    "lib": "Library",
    "grp": "GroupData",
    "tst": "Tests",
    "hpcgap": "HpcGap",
    "benchmark": "Benchmark",
    "cnf": "Build",
    "etc": "Build",
    "dev": "Dev",
    "doc": "Doc",
}

# Layers that are actually ported into Lean (docs are reference-only).
PORTABLE_LAYERS = {"kernel", "library", "groupdata", "tests", "misc", "build"}


def slugify(s: str) -> str:
    s = re.sub(r"[^a-zA-Z0-9]+", "-", s).strip("-").lower()
    return s or "module"


def lean_module_of(relpath: str) -> str:
    """Suggested Lean module name for a GAP source file."""
    parts = relpath.replace("\\", "/").split("/")
    top = parts[0]
    ns = TOP_TO_LEAN.get(top, top.capitalize())
    mids = parts[1:-1]
    base = parts[-1]
    base = base.rsplit(".", 1)[0] if "." in base else base

    def camel(name: str) -> str:
        chunks = re.split(r"[^a-zA-Z0-9]+", name)
        return "".join(c[:1].upper() + c[1:] for c in chunks if c) or "Mod"

    comps = ["RequestProject", "Gap", ns] + [camel(m) for m in mids] + [camel(base)]
    return ".".join(comps)


def load_file_nodes(blocks_path: str) -> List[Dict[str, Any]]:
    with open(blocks_path, "r", encoding="utf-8") as fh:
        data = json.load(fh)
    blocks = data["blocks"]
    files = [n for n in blocks.values()
             if isinstance(n, dict) and n.get("kind") == "file"]
    files.sort(key=lambda n: n["path"])
    return files


def module_key(relpath: str) -> str:
    """Group key: the immediate parent directory (keeps related files together)."""
    p = relpath.replace("\\", "/")
    d = os.path.dirname(p)
    return d or "."


def partition(files: List[Dict[str, Any]], budget_days: float,
              max_files: int) -> List[Dict[str, Any]]:
    """Greedily pack files of one module into tasks bounded by effort & count."""
    # group: layer -> module-dir -> [files]
    groups: Dict[Tuple[str, str], List[Dict[str, Any]]] = {}
    for f in files:
        if f["layer"] not in PORTABLE_LAYERS:
            continue
        if f["estimate"]["effort_person_days"] <= 0:
            continue
        groups.setdefault((f["layer"], module_key(f["path"])), []).append(f)

    tasks: List[Dict[str, Any]] = []
    for (layer, moddir), flist in groups.items():
        flist.sort(key=lambda n: (-n["estimate"]["effort_person_days"], n["path"]))
        bucket: List[Dict[str, Any]] = []
        acc = 0.0
        for f in flist:
            e = f["estimate"]["effort_person_days"]
            # A single very heavy file becomes its own task.
            if bucket and (acc + e > budget_days or len(bucket) >= max_files):
                tasks.append(_make_task(layer, moddir, bucket))
                bucket, acc = [], 0.0
            bucket.append(f)
            acc += e
        if bucket:
            tasks.append(_make_task(layer, moddir, bucket))

    # Stable global ordering by porting priority then directory.
    tasks.sort(key=lambda t: (LAYER_PRIORITY.get(t["layer"], 8),
                              t["module"], t["files"][0]["path"]))
    return tasks


def _make_task(layer: str, moddir: str, bucket: List[Dict[str, Any]]) -> Dict[str, Any]:
    files = []
    total_code = 0
    total_defs = 0
    total_days = 0.0
    for f in bucket:
        total_code += f["metrics"]["code_lines"]
        total_defs += f["metrics"]["definitions"]
        total_days += f["estimate"]["effort_person_days"]
        files.append({
            "path": f["path"],
            "language": f["language"],
            "source_raw_url": GITHUB_RAW + f["path"],
            "source_view_url": GITHUB_BLOB + f["path"],
            "suggested_lean_module": lean_module_of(f["path"]),
            "code_lines": f["metrics"]["code_lines"],
            "definitions": f["metrics"]["definitions"],
            "effort_person_days": f["estimate"]["effort_person_days"],
            "header_quote": f["quote"],
        })
    return {
        "layer": layer,
        "module": moddir,
        "files": files,
        "totals": {
            "files": len(files),
            "code_lines": total_code,
            "definitions": total_defs,
            "effort_person_days": round(total_days, 2),
        },
    }


def task_node(seq: int, task: Dict[str, Any]) -> Dict[str, Any]:
    """Build the canonical, content-addressable task spec node."""
    layer = task["layer"]
    return {
        "kind": "gap-port-task",
        "schema": "harmonic.gap-port-task/1",
        "source_repository": "https://github.com/gap-system/gap",
        "id": "GAP-%04d" % seq,
        "layer": layer,
        "module": task["module"],
        "title": "Port %s (%s)" % (task["module"], layer),
        "files": task["files"],
        "totals": task["totals"],
        "depends_on_layers": [l for l, p in sorted(LAYER_PRIORITY.items(),
                                                   key=lambda kv: kv[1])
                              if p < LAYER_PRIORITY.get(layer, 8)
                              and l in PORTABLE_LAYERS],
        "definition_of_done": [
            "Each listed GAP source file has a corresponding Lean 4 file at its "
            "suggested module path (or a documented alternative).",
            "Definitions are faithful to the GAP semantics (cite the source).",
            "Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new "
            "`axiom`, no `@[implemented_by]`.",
            "`#print axioms` of the key results lists only the standard axioms "
            "(propext, Classical.choice, Quot.sound; Lean.ofReduceBool / "
            "Lean.trustCompiler only if genuinely needed).",
            "The project builds (`lake build`) with the new files imported.",
        ],
        "status": "todo",
    }


def write_task_files(out_dir: str, seq: int, node: Dict[str, Any],
                     cid: str) -> Tuple[str, str]:
    layer = node["layer"]
    base = node["module"].replace("/", "-") or "root"
    slug = "%04d-%s" % (seq, slugify(base))
    layer_dir = os.path.join(out_dir, layer)
    os.makedirs(layer_dir, exist_ok=True)
    json_rel = os.path.join(layer, slug + ".task.json")
    md_rel = os.path.join(layer, slug + ".task.md")

    payload = {"task_cid": cid, **node}
    with open(os.path.join(out_dir, json_rel), "w", encoding="utf-8") as fh:
        json.dump(payload, fh, indent=2, ensure_ascii=False)

    t = node["totals"]
    L: List[str] = []
    L.append("# %s \u2014 %s\n" % (node["id"], node["title"]))
    L.append("- **Task CID:** `%s`" % cid)
    L.append("- **Layer:** `%s`   **Module:** `%s`" % (layer, node["module"]))
    L.append("- **Size:** %d file(s), %d code lines, %d definitions"
             % (t["files"], t["code_lines"], t["definitions"]))
    L.append("- **Estimated effort:** %.2f person-days" % t["effort_person_days"])
    if node["depends_on_layers"]:
        L.append("- **Suggested prerequisite layers:** %s"
                 % ", ".join("`%s`" % d for d in node["depends_on_layers"]))
    L.append("\n## Files to port\n")
    for f in node["files"]:
        L.append("### `%s`  (%.2f person-days)" % (f["path"], f["effort_person_days"]))
        L.append("- source: [%s](%s)" % (f["path"], f["source_view_url"]))
        L.append("- suggested Lean module: `%s`" % f["suggested_lean_module"])
        L.append("- %d code lines, %d definitions" % (f["code_lines"], f["definitions"]))
        if f["header_quote"]:
            q = f["header_quote"].strip().replace("\n", "\n> ")
            L.append("\n> %s\n" % q)
    L.append("## Definition of done\n")
    for d in node["definition_of_done"]:
        L.append("- [ ] %s" % d)
    L.append("\n## How to submit\n")
    L.append("Append a result record (see `../README.md`) to your fork of "
             "`../results.template.json` keyed by this task's CID `%s`, then "
             "merge with `tools/merge_tasks.py`." % cid)
    with open(os.path.join(out_dir, md_rel), "w", encoding="utf-8") as fh:
        fh.write("\n".join(L) + "\n")
    return json_rel, md_rel


MANIFEST_SCHEMA = "harmonic.gap-port-taskset/1"


def main(argv: List[str]) -> int:
    blocks_path = argv[1] if len(argv) > 1 else os.path.join(
        os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
        "estimation", "gap_port_estimate.blocks.json")
    out_dir = argv[2] if len(argv) > 2 else os.path.join(
        os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "tasks")
    budget_days = 12.0
    max_files = 15
    if "--budget-days" in argv:
        budget_days = float(argv[argv.index("--budget-days") + 1])
    if "--max-files" in argv:
        max_files = int(argv[argv.index("--max-files") + 1])

    files = load_file_nodes(blocks_path)
    tasks = partition(files, budget_days, max_files)

    os.makedirs(out_dir, exist_ok=True)
    store = est.BlockStore()

    # Per-layer CID buckets for the CAR DAG.
    layer_links: Dict[str, List[Dict[str, str]]] = {}
    index_entries: List[Dict[str, Any]] = []
    grand_days = 0.0
    grand_files = 0

    for i, task in enumerate(tasks, start=1):
        node = task_node(i, task)
        cid = store.put(node)
        json_rel, md_rel = write_task_files(out_dir, i, node, cid)
        layer_links.setdefault(node["layer"], []).append(est.link(cid))
        grand_days += node["totals"]["effort_person_days"]
        grand_files += node["totals"]["files"]
        index_entries.append({
            "id": node["id"], "task_cid": cid, "layer": node["layer"],
            "module": node["module"], "title": node["title"],
            "files": node["totals"]["files"],
            "effort_person_days": node["totals"]["effort_person_days"],
            "json": json_rel, "md": md_rel, "status": "todo",
        })

    # CAR DAG: root -> per-layer nodes -> task nodes.
    layer_summary_links: List[Dict[str, str]] = []
    layer_summary: List[Dict[str, Any]] = []
    for layer in sorted(layer_links, key=lambda l: LAYER_PRIORITY.get(l, 8)):
        lnode = {
            "kind": "gap-port-task-layer",
            "layer": layer,
            "priority": LAYER_PRIORITY.get(layer, 8),
            "task_count": len(layer_links[layer]),
            "tasks": layer_links[layer],
        }
        lcid = store.put(lnode)
        layer_summary_links.append(est.link(lcid))
        layer_summary.append({"layer": layer, "cid": est.link(lcid),
                              "task_count": len(layer_links[layer])})

    root_node = {
        "kind": "gap-port-taskset",
        "schema": MANIFEST_SCHEMA,
        "source_repository": "https://github.com/gap-system/gap",
        "generated_by": "tools/gap_port_tasker.py",
        "distribution": {
            "model": "torrent",
            "merge_tool": "tools/merge_tasks.py",
            "merge_key": "task_cid",
            "status_lattice": ["todo", "claimed", "in_progress",
                               "done", "verified"],
            "note": "Workers torrent this bundle, port tasks, publish result "
                    "records keyed by task_cid, and re-seed the merged ledger. "
                    "Union of monotone status + artifacts converges to the "
                    "complete port.",
        },
        "budget_days_per_task": budget_days,
        "max_files_per_task": max_files,
        "totals": {
            "tasks": len(tasks),
            "files": grand_files,
            "effort_person_days": round(grand_days, 1),
            "effort_person_months": round(grand_days / 21.0, 1),
            "effort_person_years": round(grand_days / 21.0 / 12.0, 2),
        },
        "layers": layer_summary,
        "layer_nodes": layer_summary_links,
    }
    root_cid = store.put(root_node)

    car_path = os.path.join(out_dir, "gap_port_tasks.car")
    nblocks = est.write_car(car_path, root_cid, store)

    # INDEX.json
    with open(os.path.join(out_dir, "INDEX.json"), "w", encoding="utf-8") as fh:
        json.dump({"taskset_root_cid": root_cid,
                   "schema": MANIFEST_SCHEMA,
                   "totals": root_node["totals"],
                   "tasks": index_entries}, fh, indent=2, ensure_ascii=False)

    # MANIFEST.json (distribution + merge protocol)
    manifest = {
        "schema": MANIFEST_SCHEMA,
        "taskset_root_cid": root_cid,
        "car_file": "gap_port_tasks.car",
        "car_blocks": nblocks,
        "source_repository": "https://github.com/gap-system/gap",
        "distribution": root_node["distribution"],
        "result_record_schema": "harmonic.gap-port-result/1",
        "result_record_fields": {
            "task_cid": "CID of the task being reported on (merge key).",
            "status": "one of the status lattice values; merge keeps the max.",
            "worker": "free-form worker / team identifier.",
            "timestamp": "ISO-8601 UTC of this update.",
            "artifacts": "list of {lean_module, sha256, note} produced.",
            "notes": "free-form progress notes.",
        },
        "totals": root_node["totals"],
    }
    with open(os.path.join(out_dir, "MANIFEST.json"), "w", encoding="utf-8") as fh:
        json.dump(manifest, fh, indent=2, ensure_ascii=False)

    # results.template.json (fork-and-fill ledger)
    with open(os.path.join(out_dir, "results.template.json"), "w",
              encoding="utf-8") as fh:
        json.dump({"schema": "harmonic.gap-port-result-ledger/1",
                   "taskset_root_cid": root_cid,
                   "results": []}, fh, indent=2, ensure_ascii=False)

    write_index_md(os.path.join(out_dir, "INDEX.md"), root_node, root_cid,
                   index_entries, layer_summary)
    write_tasks_readme(os.path.join(out_dir, "README.md"), root_cid, nblocks,
                       car_path)

    print("taskset root CID :", root_cid)
    print("tasks            :", len(tasks))
    print("files covered    :", grand_files)
    print("CAR blocks       :", nblocks)
    print("CAR file         :", car_path, "(%d bytes)" % os.path.getsize(car_path))
    print("total effort     : %.1f person-days (~%.2f person-years)"
          % (grand_days, grand_days / 21.0 / 12.0))
    return 0


def write_index_md(path: str, root_node: Dict[str, Any], root_cid: str,
                   entries: List[Dict[str, Any]],
                   layer_summary: List[Dict[str, Any]]) -> None:
    t = root_node["totals"]
    L: List[str] = []
    L.append("# GAP \u2192 Lean 4 port \u2014 task index\n")
    L.append("- **Taskset root CID:** `%s`" % root_cid)
    L.append("- **Tasks:** %d covering %d files" % (t["tasks"], t["files"]))
    L.append("- **Estimated effort:** %.1f person-days (~%.2f person-years)\n"
             % (t["effort_person_days"], t["effort_person_years"]))
    L.append("## Tasks per layer\n")
    L.append("| layer | tasks |")
    L.append("|---|---:|")
    counts: Dict[str, int] = {}
    days: Dict[str, float] = {}
    for e in entries:
        counts[e["layer"]] = counts.get(e["layer"], 0) + 1
        days[e["layer"]] = days.get(e["layer"], 0.0) + e["effort_person_days"]
    for layer in sorted(counts, key=lambda l: LAYER_PRIORITY.get(l, 8)):
        L.append("| %s | %d |" % (layer, counts[layer]))
    L.append("\n## All tasks\n")
    L.append("| id | layer | module | files | person-days | brief |")
    L.append("|---|---|---|---:|---:|---|")
    for e in entries:
        L.append("| %s | %s | `%s` | %d | %.2f | [md](%s) |"
                 % (e["id"], e["layer"], e["module"], e["files"],
                    e["effort_person_days"], e["md"]))
    with open(path, "w", encoding="utf-8") as fh:
        fh.write("\n".join(L) + "\n")


def write_tasks_readme(path: str, root_cid: str, nblocks: int,
                       car_path: str) -> None:
    L: List[str] = []
    L.append("# GAP \u2192 Lean 4 port \u2014 distributed task bundle\n")
    L.append("This directory is the **work breakdown** for porting "
             "[GAP](https://github.com/gap-system/gap) to verified Lean 4. "
             "It is designed to be shared as a single archive (a `.tar.gz` "
             "mirror and/or the bundled `gap_port_tasks.car`) and **torrented** "
             "so that many people can work in parallel and merge results.\n")
    L.append("- **Taskset root CID:** `%s`" % root_cid)
    L.append("- **CAR bundle:** `%s` (%d DAG-JSON blocks)\n"
             % (os.path.basename(car_path), nblocks))
    L.append("## Layout\n")
    L.append("```")
    L.append("tasks/")
    L.append("  INDEX.md / INDEX.json     # catalogue of every task")
    L.append("  MANIFEST.json             # distribution + merge protocol")
    L.append("  gap_port_tasks.car        # IPLD DAG-JSON CARv1 of all tasks")
    L.append("  results.template.json     # fork this to record your results")
    L.append("  <layer>/NNNN-*.task.json  # one machine-readable task per file-group")
    L.append("  <layer>/NNNN-*.task.md    # the matching human brief")
    L.append("```\n")
    L.append("## Workflow (torrent + merge)\n")
    L.append("1. **Get the bundle.** Download the torrent / `.tar.gz` and verify "
             "it against the taskset root CID above.")
    L.append("2. **Claim a task.** Pick a `*.task.md` (start with `kernel/`, the "
             "foundation layer). Add a result record with `status: \"claimed\"` "
             "to your fork of `results.template.json`.")
    L.append("3. **Port it.** Create the suggested Lean modules, port the GAP "
             "source faithfully, and PROVE the correctness lemmas (no `sorry`, "
             "no new `axiom`, no `@[implemented_by]`).")
    L.append("4. **Record the result.** Update your record to `done` with the "
             "`artifacts` you produced (Lean module names + their sha256).")
    L.append("5. **Merge & re-seed.** Run `python3 tools/merge_tasks.py "
             "results-*.json -o merged.json` to union everyone's progress "
             "(monotone status + artifact union, keyed by `task_cid`), then "
             "re-seed a new torrent containing `merged.json`. Repeat until "
             "every task is `verified`.\n")
    L.append("## Result record schema (`harmonic.gap-port-result/1`)\n")
    L.append("```json")
    L.append(json.dumps({
        "task_cid": "<CID from the task file>",
        "status": "done",
        "worker": "team-alpha",
        "timestamp": "2026-06-14T00:00:00Z",
        "artifacts": [
            {"lean_module": "RequestProject.Gap.Kernel.Permutat",
             "sha256": "<hex>", "note": "app/mul/inv + correctness"}
        ],
        "notes": "ported ProdPerm, InvPerm; proved app_mul, app_inv_left"
    }, indent=2))
    L.append("```\n")
    L.append("Status lattice (merge keeps the maximum): "
             "`todo` < `claimed` < `in_progress` < `done` < `verified`.\n")
    L.append("## Reproduce / re-partition\n")
    L.append("```bash")
    L.append("python3 tools/gap_port_tasker.py estimation/gap_port_estimate.blocks.json "
             "tasks --budget-days 12 --max-files 15")
    L.append("```\n")
    with open(path, "w", encoding="utf-8") as fh:
        fh.write("\n".join(L) + "\n")


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
