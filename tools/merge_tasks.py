#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
merge_tasks.py
==============

Merge GAP -> Lean port **result ledgers** produced by independent workers into a
single consolidated ledger.  This is the "merging existing data" step of the
torrent workflow: each worker torrents a ledger of what they have done, and this
tool deterministically unions them so a new, more complete torrent can be seeded.

The merge is a small **CRDT-style join** keyed by ``task_cid``:

  * **status** advances along the monotone lattice
    ``todo < claimed < in_progress < done < verified`` -- the join keeps the
    maximum, so progress never regresses regardless of merge order.
  * **artifacts** are unioned (deduplicated by ``(lean_module, sha256)``).
  * **notes / worker / timestamp** keep the entry whose status wins (ties broken
    by the latest timestamp), so the result is associative, commutative and
    idempotent: merging in any order / repeatedly gives the same ledger.

Usage
-----
    python3 tools/merge_tasks.py LEDGER... [-o merged.json] [--against INDEX.json]

Each ``LEDGER`` is a ``harmonic.gap-port-result-ledger/1`` JSON file (fork of
``tasks/results.template.json``).  With ``--against tasks/INDEX.json`` the tool
also prints a completion report against the full taskset.
"""

from __future__ import annotations

import json
import sys
from typing import Any, Dict, List, Tuple

STATUS_ORDER = ["todo", "claimed", "in_progress", "done", "verified"]
STATUS_RANK = {s: i for i, s in enumerate(STATUS_ORDER)}


def _rank(status: str) -> int:
    return STATUS_RANK.get(status, 0)


def _artifact_key(a: Dict[str, Any]) -> Tuple[str, str]:
    return (a.get("lean_module", ""), a.get("sha256", ""))


def join_records(a: Dict[str, Any], b: Dict[str, Any]) -> Dict[str, Any]:
    """Commutative/associative/idempotent join of two records for one task_cid."""
    # union artifacts
    arts: Dict[Tuple[str, str], Dict[str, Any]] = {}
    for rec in (a, b):
        for art in rec.get("artifacts", []) or []:
            arts[_artifact_key(art)] = art

    ra, rb = _rank(a.get("status", "todo")), _rank(b.get("status", "todo"))
    if ra > rb:
        winner = a
    elif rb > ra:
        winner = b
    else:
        # tie on status: latest timestamp wins (lexicographic ISO-8601)
        winner = a if a.get("timestamp", "") >= b.get("timestamp", "") else b

    merged = dict(winner)
    merged["artifacts"] = [arts[k] for k in sorted(arts)]
    return merged


def merge_ledgers(ledgers: List[Dict[str, Any]]) -> Dict[str, Any]:
    by_cid: Dict[str, Dict[str, Any]] = {}
    root_cid = None
    for led in ledgers:
        root_cid = led.get("taskset_root_cid", root_cid)
        for rec in led.get("results", []) or []:
            cid = rec.get("task_cid")
            if not cid:
                continue
            by_cid[cid] = join_records(by_cid[cid], rec) if cid in by_cid else dict(rec)
    return {
        "schema": "harmonic.gap-port-result-ledger/1",
        "taskset_root_cid": root_cid,
        "results": [by_cid[c] for c in sorted(by_cid)],
    }


def report(merged: Dict[str, Any], index_path: str) -> str:
    with open(index_path, "r", encoding="utf-8") as fh:
        index = json.load(fh)
    all_cids = {t["task_cid"]: t for t in index.get("tasks", [])}
    status_of: Dict[str, str] = {r["task_cid"]: r.get("status", "todo")
                                 for r in merged.get("results", [])}
    counts = {s: 0 for s in STATUS_ORDER}
    done_days = 0.0
    total_days = 0.0
    for cid, t in all_cids.items():
        st = status_of.get(cid, "todo")
        counts[st] = counts.get(st, 0) + 1
        total_days += t.get("effort_person_days", 0.0)
        if _rank(st) >= STATUS_RANK["done"]:
            done_days += t.get("effort_person_days", 0.0)
    lines = ["GAP -> Lean port progress",
             "  tasks total : %d" % len(all_cids)]
    for s in STATUS_ORDER:
        lines.append("  %-12s: %d" % (s, counts.get(s, 0)))
    pct = (100.0 * done_days / total_days) if total_days else 0.0
    lines.append("  effort done : %.1f / %.1f person-days (%.1f%%)"
                 % (done_days, total_days, pct))
    unknown = [c for c in status_of if c not in all_cids]
    if unknown:
        lines.append("  WARNING: %d result(s) reference unknown task CIDs" % len(unknown))
    return "\n".join(lines)


def main(argv: List[str]) -> int:
    args = argv[1:]
    out_path = None
    index_path = None
    ledger_paths: List[str] = []
    i = 0
    while i < len(args):
        if args[i] == "-o":
            out_path = args[i + 1]; i += 2
        elif args[i] == "--against":
            index_path = args[i + 1]; i += 2
        else:
            ledger_paths.append(args[i]); i += 1

    if not ledger_paths:
        sys.stderr.write(__doc__ or "")
        return 2

    ledgers = []
    for p in ledger_paths:
        with open(p, "r", encoding="utf-8") as fh:
            ledgers.append(json.load(fh))

    merged = merge_ledgers(ledgers)

    if out_path:
        with open(out_path, "w", encoding="utf-8") as fh:
            json.dump(merged, fh, indent=2, ensure_ascii=False)
        print("merged %d ledger(s) -> %s (%d task record(s))"
              % (len(ledgers), out_path, len(merged["results"])))
    else:
        print(json.dumps(merged, indent=2, ensure_ascii=False))

    if index_path:
        print()
        print(report(merged, index_path))
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
