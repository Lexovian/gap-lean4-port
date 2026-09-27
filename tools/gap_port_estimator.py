#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
gap_port_estimator.py
=====================

A self-contained (Python standard library only) estimation tool that

  1. parses the GAP source tree (https://github.com/gap-system/gap),
  2. estimates how much effort it will take to port each part of GAP to a
     verified Lean 4 formalisation, and
  3. emits the result as a *structured IPLD DAG-JSON CAR file* whose nodes
     quote the original GAP source/documentation, together with a
     human-readable Markdown report and a JSON block-store for inspection.

"IPLD DAG-JSON CAR file" means:

  * Every node of the estimation graph is serialised in the **DAG-JSON**
    codec (multicodec 0x0129), i.e. canonical JSON with sorted keys and
    IPLD links written as ``{"/": "<base32-CIDv1>"}``.
  * Each serialised node is content-addressed by a **CIDv1**
    (sha2-256 multihash, dag-json codec).
  * Parents reference children purely through those CIDs, so the whole
    estimation forms a **Merkle DAG** (a tree here, hence acyclic).
  * All blocks are packed into a **CARv1** (Content Addressable aRchive,
    the IPFS/IPLD on-disk container format) with the project-root node as
    the single CAR root.

The graph mirrors the GAP repository directory structure: a root node links
to a knowledge node (the GAP -> Lean porting knowledge base, with the work
already done in this project) and to category/directory nodes, which link
down to per-file leaf nodes carrying metrics, an effort estimate, and a
verbatim quote of the original document.

Usage
-----
    python3 tools/gap_port_estimator.py <gap-source-dir> <output-dir>

Outputs (in <output-dir>):
    gap_port_estimate.car            -- the IPLD DAG-JSON CARv1 archive
    gap_port_estimate.blocks.json    -- CID -> decoded node map (inspection)
    gap_port_estimate.root.json      -- the decoded root node
    gap_port_estimate.report.md      -- human-readable estimation report
"""

from __future__ import annotations

import base64
import hashlib
import json
import os
import re
import sys
from typing import Any, Dict, List, Optional, Tuple


# ---------------------------------------------------------------------------
# Embedded GAP -> Lean porting knowledge base
# ---------------------------------------------------------------------------
#
# These numbers are *heuristic* engineering estimates for a faithful,
# machine-checked Lean 4 / Mathlib port (definitions + proofs, not just a
# transpile).  "velocity" is the number of *code* lines of GAP source a
# formaliser can faithfully port AND verify per person-day for that layer.
# "mathlib_leverage" is the fraction of the work that existing
# Lean/Mathlib infrastructure already provides (and therefore removes).
# "difficulty" multiplies the base cost to reflect intrinsic conceptual
# distance from idiomatic Lean.

KNOWLEDGE: Dict[str, Any] = {
    "title": "GAP -> Lean 4 porting knowledge base",
    "source_project": "https://github.com/gap-system/gap",
    "target": "Lean 4 + Mathlib (verified port: definitions + proofs)",
    "estimation_model": {
        "unit": "person-day",
        "working_days_per_person_month": 21,
        "formula": (
            "effort_days(file) = code_lines / velocity[layer] "
            "* difficulty_multiplier(file) * (1 - mathlib_leverage[layer])"
        ),
        "difficulty_multiplier": (
            "1 + min(1.5, control_flow_density), where control_flow_density "
            "is the number of branch/loop keywords per code line; captures "
            "that branch-heavy code needs more case analysis when verified."
        ),
        "caveats": [
            "Estimates are order-of-magnitude planning figures, not bids.",
            "A faithful *verified* port is assumed (proofs of correctness), "
            "which is far slower than an unchecked transpile.",
            "Kernel memory management / GC largely maps onto the Lean runtime "
            "rather than being ported line-for-line; this is encoded as a high "
            "mathlib_leverage for the kernel layer.",
            "Documentation (.xml/.txt manuals) is reference material that "
            "informs specifications and is not itself ported.",
        ],
    },
    # layer -> tuning parameters
    "layers": {
        "kernel": {
            "description": "GAP C/C++ kernel (src/): bags, GASMAN GC, "
                           "interpreter, objects, low-level arithmetic, "
                           "permutations, finite fields.",
            "languages": ["c", "cc", "h"],
            "velocity": 25.0,
            "mathlib_leverage": 0.50,
            "notes": "Hardest layer conceptually, but Lean's runtime + "
                     "Mathlib's algebra absorb much of it. permutat.c is "
                     "already prototyped in RequestProject/Gap/Permutation.lean.",
        },
        "library": {
            "description": "GAP language library (lib/): the mathematics - "
                           "groups, rings, fields, characters, algorithms.",
            "languages": ["g", "gd", "gi"],
            "velocity": 40.0,
            "mathlib_leverage": 0.45,
            "notes": "Large overlap with Mathlib's group/ring/field theory; "
                     "CFSG group data already prototyped in "
                     "RequestProject/Gap/Atlas.lean.",
        },
        "groupdata": {
            "description": "Precomputed group/character data (grp/).",
            "languages": ["g", "gd", "gi", "grp"],
            "velocity": 120.0,
            "mathlib_leverage": 0.30,
            "notes": "Mostly tables/data: mechanical to encode but each datum "
                     "should be checked against a Lean definition.",
        },
        "tests": {
            "description": "Regression test suite (tst/).",
            "languages": ["tst"],
            "velocity": 80.0,
            "mathlib_leverage": 0.20,
            "notes": "Becomes Lean #eval/example checks; mostly mechanical.",
        },
        "docs": {
            "description": "Reference manuals & docs (doc/, *.xml, *.md, *.txt).",
            "languages": ["xml", "txt", "md", "tex", "bib"],
            "velocity": 1.0,
            "mathlib_leverage": 1.00,  # not ported; reference only
            "notes": "Not ported; used as specification source.",
        },
        "build": {
            "description": "Build system / configuration / scripts.",
            "languages": ["sh", "py", "am", "ac", "in", "m4", "make", "yml",
                          "yaml", "cnf"],
            "velocity": 60.0,
            "mathlib_leverage": 0.80,
            "notes": "Replaced by Lake; little is ported.",
        },
        "misc": {
            "description": "Everything else.",
            "languages": [],
            "velocity": 60.0,
            "mathlib_leverage": 0.40,
            "notes": "",
        },
    },
    "lean_port_progress": {
        "RequestProject/Gap/Permutation.lean": (
            "Faithful port of GAP's permutation kernel (src/permutat.c): "
            "image-array representation, app/one/mul/inv with correctness "
            "theorems, and an (anti-)homomorphism into Mathlib's Equiv.Perm."
        ),
        "RequestProject/Gap/Atlas.lean": (
            "Order functions for every CFSG family (16 Lie-type families, "
            "alternating, cyclic, 26 sporadics) with verified sanity checks, "
            "exceptional isomorphisms and prime factorisations; links to "
            "Mathlib's alternatingGroup."
        ),
    },
}

# Map of file extension -> layer, derived from KNOWLEDGE["layers"].
EXT_TO_LAYER: Dict[str, str] = {}
for _layer, _info in KNOWLEDGE["layers"].items():
    for _lang in _info["languages"]:
        EXT_TO_LAYER[_lang] = _layer

# Directories we never descend into.
SKIP_DIRS = {".git", "extern", ".github", "autogen", "obj", "bin"}

# Branch / loop keywords used as a (very) rough control-flow proxy.
BRANCH_RE = re.compile(
    r"\b(if|elif|else|elseif|for|while|repeat|case|switch|do|return|then)\b"
    r"|&&|\|\||\?"
)


# ---------------------------------------------------------------------------
# Per-file source analysis
# ---------------------------------------------------------------------------
def layer_of(path: str) -> str:
    """Decide the porting layer of a file from its top directory + extension."""
    parts = path.replace("\\", "/").split("/")
    top = parts[0] if parts else ""
    ext = path.rsplit(".", 1)[-1].lower() if "." in os.path.basename(path) else ""
    if top == "src":
        return "kernel"
    if top == "lib":
        return "library"
    if top == "grp":
        return "groupdata"
    if top == "tst":
        return "tests"
    if top in ("doc", "dev"):
        return "docs"
    if top in ("cnf", "etc", "cfg"):
        return "build"
    return EXT_TO_LAYER.get(ext, "misc")


def _is_comment_line(line: str, ext: str) -> bool:
    s = line.strip()
    if not s:
        return False
    if ext in ("c", "cc", "h", "cpp", "hpp"):
        return s.startswith("/*") or s.startswith("*") or s.startswith("//") \
            or s.startswith("*/")
    if ext in ("g", "gd", "gi", "tst", "grp"):
        return s.startswith("#")
    if ext in ("py", "sh"):
        return s.startswith("#")
    return False


def first_doc_quote(lines: List[str], ext: str, max_lines: int = 12,
                    max_chars: int = 800) -> str:
    """Extract a verbatim leading comment/header block to quote."""
    quote: List[str] = []
    started = False
    for raw in lines:
        s = raw.rstrip("\n")
        stripped = s.strip()
        if _is_comment_line(s, ext):
            # strip common comment markers for readability, keep the text
            cleaned = stripped
            for mark in ("/****", "/*", "*/", "**", "*", "//", "#"):
                if cleaned.startswith(mark):
                    cleaned = cleaned[len(mark):]
            cleaned = cleaned.strip()
            if cleaned or started:
                quote.append(cleaned)
                started = True
        elif started:
            break
        if len(quote) >= max_lines:
            break
    text = "\n".join(q for q in quote).strip()
    if not text:
        # fall back to the first few non-empty lines verbatim
        ne = [l.rstrip("\n") for l in lines if l.strip()][:5]
        text = "\n".join(ne).strip()
    if len(text) > max_chars:
        text = text[: max_chars - 1].rstrip() + "\u2026"
    return text


def analyze_file(abspath: str, relpath: str) -> Optional[Dict[str, Any]]:
    ext = relpath.rsplit(".", 1)[-1].lower() if "." in os.path.basename(relpath) else ""
    try:
        with open(abspath, "r", encoding="utf-8", errors="replace") as fh:
            lines = fh.readlines()
    except (OSError, UnicodeError):
        return None

    total = len(lines)
    blank = sum(1 for l in lines if not l.strip())
    comment = sum(1 for l in lines if _is_comment_line(l, ext))
    code = max(0, total - blank - comment)

    branch_hits = 0
    def_hits = 0
    def_re = None
    if ext in ("c", "cc", "h", "cpp", "hpp"):
        # crude function-definition heuristic: a line ending in ') {' at col0-ish
        def_re = re.compile(r"^\w[\w\s\*]*\([^;]*\)\s*\{?\s*$")
    elif ext in ("g", "gd", "gi", "tst", "grp"):
        def_re = re.compile(
            r"\b(DeclareGlobalFunction|DeclareOperation|DeclareAttribute|"
            r"DeclareProperty|DeclareCategory|DeclareRepresentation|"
            r"InstallMethod|InstallGlobalFunction|InstallOtherMethod|"
            r"BindGlobal|function)\b"
        )
    for l in lines:
        if _is_comment_line(l, ext):
            continue
        branch_hits += len(BRANCH_RE.findall(l))
        if def_re is not None and def_re.search(l):
            def_hits += 1

    layer = layer_of(relpath)
    params = KNOWLEDGE["layers"][layer]
    velocity = float(params["velocity"])
    leverage = float(params["mathlib_leverage"])

    cf_density = (branch_hits / code) if code else 0.0
    difficulty = 1.0 + min(1.5, cf_density)
    effort_days = (code / velocity) * difficulty * (1.0 - leverage) if code else 0.0

    return {
        "kind": "file",
        "path": relpath,
        "layer": layer,
        "language": ext,
        "metrics": {
            "total_lines": total,
            "code_lines": code,
            "comment_lines": comment,
            "blank_lines": blank,
            "definitions": def_hits,
            "branch_keywords": branch_hits,
            "control_flow_density": round(cf_density, 4),
        },
        "estimate": {
            "velocity_loc_per_day": velocity,
            "mathlib_leverage": leverage,
            "difficulty_multiplier": round(difficulty, 4),
            "effort_person_days": round(effort_days, 3),
        },
        "quote": first_doc_quote(lines, ext),
    }


# ---------------------------------------------------------------------------
# IPLD / CID / DAG-JSON / CARv1 encoding (pure stdlib)
# ---------------------------------------------------------------------------
DAG_JSON_CODEC = 0x0129
SHA2_256 = 0x12


def _uvarint(n: int) -> bytes:
    out = bytearray()
    while True:
        b = n & 0x7F
        n >>= 7
        if n:
            out.append(b | 0x80)
        else:
            out.append(b)
            return bytes(out)


def dagjson_encode(node: Any) -> bytes:
    """Canonical DAG-JSON: sorted keys, compact, UTF-8."""
    return json.dumps(
        node, sort_keys=True, separators=(",", ":"), ensure_ascii=False
    ).encode("utf-8")


def cid_v1_dagjson(data: bytes) -> bytes:
    digest = hashlib.sha256(data).digest()
    mh = bytes([SHA2_256, len(digest)]) + digest
    return b"\x01" + _uvarint(DAG_JSON_CODEC) + mh


def cid_to_base32(cid_bytes: bytes) -> str:
    # multibase 'b' = base32 lower, RFC4648, no padding
    b32 = base64.b32encode(cid_bytes).decode("ascii").lower().rstrip("=")
    return "b" + b32


def link(cid_b32: str) -> Dict[str, str]:
    return {"/": cid_b32}


class BlockStore:
    """Content-addressed store of DAG-JSON blocks."""

    def __init__(self) -> None:
        self.blocks: "Dict[str, Tuple[bytes, bytes]]" = {}  # cidb32 -> (cidbytes, data)
        self.nodes: Dict[str, Any] = {}  # cidb32 -> decoded node (for inspection)

    def put(self, node: Any) -> str:
        data = dagjson_encode(node)
        cidb = cid_v1_dagjson(data)
        cidb32 = cid_to_base32(cidb)
        self.blocks[cidb32] = (cidb, data)
        self.nodes[cidb32] = node
        return cidb32


# --- minimal CBOR encoder, only what the CARv1 header needs ----------------
def _cbor_head(major: int, n: int) -> bytes:
    mt = major << 5
    if n < 24:
        return bytes([mt | n])
    if n < 0x100:
        return bytes([mt | 24, n])
    if n < 0x10000:
        return bytes([mt | 25]) + n.to_bytes(2, "big")
    if n < 0x100000000:
        return bytes([mt | 26]) + n.to_bytes(4, "big")
    return bytes([mt | 27]) + n.to_bytes(8, "big")


def _cbor_cid(cid_bytes: bytes) -> bytes:
    # tag 42 + byte string (0x00 || cid)
    body = b"\x00" + cid_bytes
    return _cbor_head(6, 42) + _cbor_head(2, len(body)) + body


def car_header(root_cid_bytes: bytes) -> bytes:
    # map {"roots":[cid], "version":1}
    out = bytearray()
    out += _cbor_head(5, 2)               # map(2)
    out += _cbor_head(3, 5) + b"roots"    # key
    out += _cbor_head(4, 1)               # array(1)
    out += _cbor_cid(root_cid_bytes)
    out += _cbor_head(3, 7) + b"version"  # key
    out += _cbor_head(0, 1)               # value 1
    return bytes(out)


def write_car(path: str, root_cidb32: str, store: BlockStore) -> int:
    root_cid_bytes = store.blocks[root_cidb32][0]
    header = car_header(root_cid_bytes)
    n = 0
    with open(path, "wb") as fh:
        fh.write(_uvarint(len(header)))
        fh.write(header)
        n += 1
        # write the root first, then the rest (deterministic order)
        ordered = [root_cidb32] + sorted(k for k in store.blocks if k != root_cidb32)
        seen = set()
        for cidb32 in ordered:
            if cidb32 in seen:
                continue
            seen.add(cidb32)
            cidb, data = store.blocks[cidb32]
            frame = cidb + data
            fh.write(_uvarint(len(frame)))
            fh.write(frame)
    return len(store.blocks)


# ---------------------------------------------------------------------------
# Build the estimation DAG mirroring the GAP directory tree
# ---------------------------------------------------------------------------
def _zero_agg() -> Dict[str, float]:
    return {
        "files": 0, "total_lines": 0, "code_lines": 0,
        "definitions": 0, "effort_person_days": 0.0,
    }


def _add_agg(a: Dict[str, float], f: Dict[str, Any]) -> None:
    a["files"] += 1
    a["total_lines"] += f["metrics"]["total_lines"]
    a["code_lines"] += f["metrics"]["code_lines"]
    a["definitions"] += f["metrics"]["definitions"]
    a["effort_person_days"] += f["estimate"]["effort_person_days"]


def _merge_agg(a: Dict[str, float], b: Dict[str, float]) -> None:
    for k in a:
        a[k] += b[k]


def build_dir_node(store: BlockStore, gap_root: str, relpath: str,
                   layer_totals: Dict[str, Dict[str, float]]) -> Tuple[str, Dict[str, float]]:
    """Recursively analyse a directory; return (cid, aggregate)."""
    absdir = os.path.join(gap_root, relpath) if relpath else gap_root
    agg = _zero_agg()
    child_links: List[Dict[str, str]] = []
    child_summaries: List[Dict[str, Any]] = []

    try:
        entries = sorted(os.listdir(absdir))
    except OSError:
        entries = []

    for name in entries:
        if name in SKIP_DIRS:
            continue
        child_rel = os.path.join(relpath, name) if relpath else name
        child_abs = os.path.join(absdir, name)
        if os.path.isdir(child_abs) and not os.path.islink(child_abs):
            cid, sub = build_dir_node(store, gap_root, child_rel, layer_totals)
            if sub["files"] == 0:
                continue
            _merge_agg(agg, sub)
            child_links.append(link(cid))
            child_summaries.append({
                "name": name + "/", "cid": link(cid),
                "files": sub["files"], "code_lines": sub["code_lines"],
                "effort_person_days": round(sub["effort_person_days"], 3),
            })
        elif os.path.isfile(child_abs):
            info = analyze_file(child_abs, child_rel)
            if info is None:
                continue
            _add_agg(agg, info)
            lt = layer_totals.setdefault(info["layer"], _zero_agg())
            _add_agg(lt, info)
            cid = store.put(info)
            child_links.append(link(cid))
            child_summaries.append({
                "name": name, "cid": link(cid),
                "layer": info["layer"],
                "code_lines": info["metrics"]["code_lines"],
                "effort_person_days": info["estimate"]["effort_person_days"],
            })

    node = {
        "kind": "directory",
        "path": relpath or ".",
        "aggregate": {
            "files": int(agg["files"]),
            "total_lines": int(agg["total_lines"]),
            "code_lines": int(agg["code_lines"]),
            "definitions": int(agg["definitions"]),
            "effort_person_days": round(agg["effort_person_days"], 2),
            "effort_person_months": round(agg["effort_person_days"] / 21.0, 2),
        },
        "children": child_links,
        "children_summary": child_summaries,
    }
    return store.put(node), agg


def main(argv: List[str]) -> int:
    if len(argv) != 3:
        sys.stderr.write(__doc__ or "")
        sys.stderr.write("\nUsage: gap_port_estimator.py <gap-src> <out-dir>\n")
        return 2
    gap_root = os.path.abspath(argv[1])
    out_dir = os.path.abspath(argv[2])
    os.makedirs(out_dir, exist_ok=True)

    store = BlockStore()
    layer_totals: Dict[str, Dict[str, float]] = {}

    # Top-level directories of interest (in repo order).
    top_candidates = ["src", "lib", "grp", "tst", "doc", "cnf", "etc", "dev",
                      "benchmark", "hpcgap"]
    top_links: List[Dict[str, str]] = []
    top_summary: List[Dict[str, Any]] = []
    grand = _zero_agg()
    for top in top_candidates:
        if not os.path.isdir(os.path.join(gap_root, top)):
            continue
        cid, agg = build_dir_node(store, gap_root, top, layer_totals)
        if agg["files"] == 0:
            continue
        _merge_agg(grand, agg)
        top_links.append(link(cid))
        top_summary.append({
            "name": top + "/", "cid": link(cid),
            "files": int(agg["files"]),
            "code_lines": int(agg["code_lines"]),
            "effort_person_days": round(agg["effort_person_days"], 2),
            "effort_person_months": round(agg["effort_person_days"] / 21.0, 2),
        })

    # Read a real quote from the original COPYRIGHT/README for the root node.
    def read_quote(rel: str, n: int = 6) -> str:
        p = os.path.join(gap_root, rel)
        try:
            with open(p, "r", encoding="utf-8", errors="replace") as fh:
                txt = "".join(fh.readlines()[:n]).strip()
            return txt
        except OSError:
            return ""

    knowledge_cid = store.put({
        "kind": "knowledge",
        **KNOWLEDGE,
        "layer_totals": {
            layer: {
                "files": int(v["files"]),
                "code_lines": int(v["code_lines"]),
                "definitions": int(v["definitions"]),
                "effort_person_days": round(v["effort_person_days"], 2),
                "effort_person_months": round(v["effort_person_days"] / 21.0, 2),
            } for layer, v in sorted(layer_totals.items())
        },
    })

    root_node = {
        "kind": "gap-to-lean-port-estimate",
        "schema": "harmonic.gap-port-estimate/1",
        "source_repository": "https://github.com/gap-system/gap",
        "generated_by": "tools/gap_port_estimator.py",
        "quote_copyright": read_quote("COPYRIGHT", 8),
        "quote_readme": read_quote("README.md", 6),
        "totals": {
            "files": int(grand["files"]),
            "total_lines": int(grand["total_lines"]),
            "code_lines": int(grand["code_lines"]),
            "definitions": int(grand["definitions"]),
            "effort_person_days": round(grand["effort_person_days"], 1),
            "effort_person_months": round(grand["effort_person_days"] / 21.0, 1),
            "effort_person_years": round(grand["effort_person_days"] / 21.0 / 12.0, 2),
        },
        "knowledge": link(knowledge_cid),
        "top_level": top_links,
        "top_level_summary": top_summary,
    }
    root_cid = store.put(root_node)

    # ---- write outputs ----------------------------------------------------
    car_path = os.path.join(out_dir, "gap_port_estimate.car")
    nblocks = write_car(car_path, root_cid, store)

    with open(os.path.join(out_dir, "gap_port_estimate.root.json"), "w",
              encoding="utf-8") as fh:
        json.dump({"root": root_cid, "node": root_node}, fh,
                  indent=2, ensure_ascii=False)

    with open(os.path.join(out_dir, "gap_port_estimate.blocks.json"), "w",
              encoding="utf-8") as fh:
        json.dump({"root": root_cid, "codec": "dag-json",
                   "multihash": "sha2-256", "blocks": store.nodes},
                  fh, indent=1, ensure_ascii=False)

    write_report(os.path.join(out_dir, "gap_port_estimate.report.md"),
                 root_cid, root_node, layer_totals, top_summary, nblocks,
                 car_path)

    print("root CID :", root_cid)
    print("blocks   :", nblocks)
    print("CAR file :", car_path, "(%d bytes)" % os.path.getsize(car_path))
    print("total effort: %.1f person-days  (~%.1f person-months, ~%.2f person-years)"
          % (grand["effort_person_days"], grand["effort_person_days"] / 21.0,
             grand["effort_person_days"] / 21.0 / 12.0))
    return 0


def write_report(path: str, root_cid: str, root_node: Dict[str, Any],
                 layer_totals: Dict[str, Dict[str, float]],
                 top_summary: List[Dict[str, Any]], nblocks: int,
                 car_path: str) -> None:
    t = root_node["totals"]
    lines: List[str] = []
    lines.append("# GAP \u2192 Lean 4 port effort estimate\n")
    lines.append("Generated by `tools/gap_port_estimator.py` from "
                 "<https://github.com/gap-system/gap>.\n")
    lines.append("> " + root_node["quote_copyright"].replace("\n", "\n> ") + "\n")
    lines.append("## Headline\n")
    lines.append(f"- Files analysed: **{t['files']:,}**")
    lines.append(f"- Total lines: **{t['total_lines']:,}**, code lines: "
                 f"**{t['code_lines']:,}**, definitions: **{t['definitions']:,}**")
    lines.append(f"- Estimated effort: **{t['effort_person_days']:,} person-days** "
                 f"(~**{t['effort_person_months']} person-months**, "
                 f"~**{t['effort_person_years']} person-years**)\n")
    lines.append("## By porting layer\n")
    lines.append("| layer | files | code lines | defs | person-days | person-months |")
    lines.append("|---|---:|---:|---:|---:|---:|")
    for layer, v in sorted(layer_totals.items(),
                           key=lambda kv: -kv[1]["effort_person_days"]):
        lines.append(
            f"| {layer} | {int(v['files']):,} | {int(v['code_lines']):,} | "
            f"{int(v['definitions']):,} | {v['effort_person_days']:.1f} | "
            f"{v['effort_person_days']/21.0:.1f} |")
    lines.append("\n## By top-level directory\n")
    lines.append("| dir | files | code lines | person-days | person-months |")
    lines.append("|---|---:|---:|---:|---:|")
    for s in sorted(top_summary, key=lambda x: -x["effort_person_days"]):
        lines.append(
            f"| {s['name']} | {s['files']:,} | {s['code_lines']:,} | "
            f"{s['effort_person_days']:.1f} | {s['effort_person_months']:.1f} |")
    lines.append("\n## Method\n")
    km = KNOWLEDGE["estimation_model"]
    lines.append(f"`{km['formula']}`\n")
    lines.append("Layer parameters (velocity = verified code-LOC/person-day, "
                 "leverage = fraction already provided by Lean/Mathlib):\n")
    lines.append("| layer | velocity | mathlib leverage | notes |")
    lines.append("|---|---:|---:|---|")
    for layer, info in KNOWLEDGE["layers"].items():
        lines.append(f"| {layer} | {info['velocity']} | "
                     f"{info['mathlib_leverage']} | {info['notes']} |")
    lines.append("\n### Caveats\n")
    for c in km["caveats"]:
        lines.append(f"- {c}")
    lines.append("\n## IPLD / CAR output\n")
    lines.append(f"- Root CID: `{root_cid}`")
    lines.append(f"- Blocks: {nblocks} (codec: dag-json `0x0129`, multihash: "
                 "sha2-256)")
    lines.append(f"- Archive: `{os.path.basename(car_path)}` (CARv1)\n")
    lines.append("The CAR file is a Content Addressable aRchive: each node is a "
                 "DAG-JSON block addressed by a CIDv1; parents link to children "
                 "by CID, forming a Merkle DAG that mirrors the GAP repository.\n")
    lines.append("## Lean port progress already in this project\n")
    for f, d in KNOWLEDGE["lean_port_progress"].items():
        lines.append(f"- `{f}` \u2014 {d}")
    with open(path, "w", encoding="utf-8") as fh:
        fh.write("\n".join(lines) + "\n")


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
