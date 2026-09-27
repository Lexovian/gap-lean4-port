#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
gap_worker.py
=============
Autonomous Worker CLI for GAP -> Lean 4 Distributed Task Bundle.
Automates task listing, claiming, scaffolding, verification, and ledger merging.
"""

import os
import sys
import json
import hashlib
import argparse
from datetime import datetime, timezone
from typing import Dict, Any, List

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
TASKS_DIR = os.path.join(BASE_DIR, "tasks")
INDEX_PATH = os.path.join(TASKS_DIR, "INDEX.json")
RESULTS_PATH = os.path.join(TASKS_DIR, "my_results.json")
TEMPLATE_PATH = os.path.join(TASKS_DIR, "results.template.json")


def load_index() -> Dict[str, Any]:
    with open(INDEX_PATH, "r", encoding="utf-8") as f:
        return json.load(f)


def load_or_create_ledger() -> Dict[str, Any]:
    if os.path.exists(RESULTS_PATH):
        with open(RESULTS_PATH, "r", encoding="utf-8") as f:
            return json.load(f)
    if os.path.exists(TEMPLATE_PATH):
        with open(TEMPLATE_PATH, "r", encoding="utf-8") as f:
            data = json.load(f)
            data["worker"] = "pcworm-antigravity"
            return data
    return {
        "schema": "harmonic.gap-port-result-ledger/1",
        "taskset_root_cid": "baguqeeraykhbhp2afmcuxp7dpgb72dhnpkng2qpcybegfu3lqqdilezq3hzq",
        "worker": "pcworm-antigravity",
        "results": []
    }


def save_ledger(data: Dict[str, Any]):
    with open(RESULTS_PATH, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=2)
    print(f"[+] Saved ledger to: {RESULTS_PATH}")


def get_task_file(task_id: str) -> str:
    index = load_index()
    for t in index.get("tasks", []):
        if t.get("id") == task_id or t.get("task_cid") == task_id:
            return os.path.join(TASKS_DIR, t.get("json"))
    return None


def cmd_list(args):
    index = load_index()
    tasks = index.get("tasks", [])
    print(f"=== GAP -> LEAN 4 TASKS ({len(tasks)} TOTAL) ===")
    count = 0
    query = (args.query or "").lower()
    for t in tasks:
        layer = t.get("layer", "")
        title = t.get("title", "")
        mod = t.get("module", "")
        jpath = t.get("json", "")
        if args.layer and args.layer.lower() != layer.lower():
            continue
        
        # Check basic fields
        matched = False
        if not query:
            matched = True
        else:
            basic_str = (layer + " " + title + " " + mod + " " + jpath).lower()
            if query in basic_str:
                matched = True
            else:
                # Check task file for actual source file names
                tf = os.path.join(TASKS_DIR, jpath)
                if os.path.exists(tf):
                    try:
                        with open(tf, "r", encoding="utf-8") as fp:
                            content = fp.read().lower()
                            if query in content:
                                matched = True
                    except Exception:
                        pass
        
        if not matched:
            continue
            
        effort = t.get("effort_person_days", 0)
        if args.max_effort and effort > args.max_effort:
            continue
            
        print(f"[{t.get('id')}] ({layer:9s}) {title[:36]:36s} | {effort:5.2f}d | {jpath}")
        count += 1
        if count >= args.limit:
            break
    print(f"\nShowing {count} tasks matching filters.")


def cmd_claim(args):
    task_id = args.task_id.upper()
    tf = get_task_file(task_id)
    if not tf or not os.path.exists(tf):
        print(f"[-] Error: Task {task_id} not found in index.")
        sys.exit(1)

    with open(tf, "r", encoding="utf-8") as f:
        task_data = json.load(f)

    cid = task_data.get("task_cid")
    ledger = load_or_create_ledger()
    results = ledger.setdefault("results", [])

    # Check if already claimed
    for r in results:
        if r.get("task_cid") == cid:
            r["status"] = "claimed"
            r["timestamp"] = datetime.now(timezone.utc).isoformat()
            save_ledger(ledger)
            print(f"[+] Task {task_id} updated to 'claimed'.")
            return

    new_rec = {
        "task_cid": cid,
        "task_id": task_id,
        "status": "claimed",
        "worker": ledger.get("worker", "pcworm-antigravity"),
        "timestamp": datetime.now(timezone.utc).isoformat(),
        "artifacts": [],
        "notes": f"Claimed {task_id}: {task_data.get('title')}"
    }
    results.append(new_rec)
    save_ledger(ledger)
    print(f"[+] Successfully CLAIMED task {task_id} (CID: {cid})!")


def cmd_scaffold(args):
    task_id = args.task_id.upper()
    tf = get_task_file(task_id)
    if not tf or not os.path.exists(tf):
        print(f"[-] Error: Task {task_id} not found.")
        sys.exit(1)

    with open(tf, "r", encoding="utf-8") as f:
        task_data = json.load(f)

    print(f"[+] Scaffolding Lean 4 modules for {task_id}...")
    for f in task_data.get("files", []):
        mod_name = f.get("suggested_lean_module")
        src_path = f.get("path")
        header = f.get("header_quote", "")
        if not mod_name:
            continue

        rel_path = mod_name.replace(".", os.sep) + ".lean"
        target_lean = os.path.join(BASE_DIR, rel_path)
        os.makedirs(os.path.dirname(target_lean), exist_ok=True)

        if os.path.exists(target_lean) and not args.force:
            print(f"[~] File exists, skipping: {rel_path} (use --force to overwrite)")
            continue

        lean_code = f"""import Mathlib

/-!
# GAP Port: `{src_path}`
Task: {task_id} ({task_data.get('title')})
Original Source: {f.get('source_view_url')}

## Original Header
```gap
{header}
```

## Definition of Done
- Faithful to GAP semantics
- Fully proved correctness lemmas (0 sorry, 0 new axioms)
- Builds under `lake build`
-/

namespace GAP.{mod_name.split('.')[-1]}

-- TODO: Formal definitions and verified theorems here

end GAP.{mod_name.split('.')[-1]}
"""
        with open(target_lean, "w", encoding="utf-8") as out:
            out.write(lean_code)
        print(f"[+] Created Lean 4 scaffold: {rel_path}")


def cmd_finish(args):
    task_id = args.task_id.upper()
    tf = get_task_file(task_id)
    if not tf or not os.path.exists(tf):
        print(f"[-] Error: Task {task_id} not found.")
        sys.exit(1)

    with open(tf, "r", encoding="utf-8") as f:
        task_data = json.load(f)

    cid = task_data.get("task_cid")
    ledger = load_or_create_ledger()
    results = ledger.setdefault("results", [])

    rec = None
    for r in results:
        if r.get("task_cid") == cid:
            rec = r
            break
    if not rec:
        rec = {
            "task_cid": cid,
            "task_id": task_id,
            "status": "done",
            "worker": ledger.get("worker", "pcworm-antigravity"),
            "artifacts": []
        }
        results.append(rec)

    rec["status"] = "verified" if args.verified else "done"
    rec["timestamp"] = datetime.now(timezone.utc).isoformat()
    rec["notes"] = args.notes or f"Completed {task_id}"

    # Record artifacts
    artifacts = []
    for f in task_data.get("files", []):
        mod_name = f.get("suggested_lean_module")
        if mod_name:
            rel_path = mod_name.replace(".", os.sep) + ".lean"
            target_lean = os.path.join(BASE_DIR, rel_path)
            sha = ""
            if os.path.exists(target_lean):
                with open(target_lean, "rb") as lf:
                    sha = hashlib.sha256(lf.read()).hexdigest()
            artifacts.append({
                "lean_module": mod_name,
                "sha256": sha,
                "note": f"Port of {f.get('path')}"
            })
    rec["artifacts"] = artifacts
    save_ledger(ledger)
    print(f"[+] Task {task_id} marked as {rec['status']} with {len(artifacts)} artifacts!")


def main():
    parser = argparse.ArgumentParser(description="GAP -> Lean 4 Port Task Manager CLI")
    sub = parser.add_subparsers(dest="cmd")

    p_list = sub.add_parser("list", help="List tasks")
    p_list.add_argument("--layer", help="Filter by layer (kernel, library, groupdata, tests, misc)")
    p_list.add_argument("--query", help="Keyword search in title/module")
    p_list.add_argument("--max-effort", type=float, help="Maximum person-days effort")
    p_list.add_argument("--limit", type=int, default=25, help="Number of tasks to show")

    p_claim = sub.add_parser("claim", help="Claim a task")
    p_claim.add_argument("task_id", help="Task ID (e.g. GAP-0331)")

    p_scaffold = sub.add_parser("scaffold", help="Generate Lean 4 file scaffold")
    p_scaffold.add_argument("task_id", help="Task ID (e.g. GAP-0331)")
    p_scaffold.add_argument("--force", action="store_true", help="Overwrite existing files")

    p_finish = sub.add_parser("finish", help="Mark task as done or verified")
    p_finish.add_argument("task_id", help="Task ID (e.g. GAP-0331)")
    p_finish.add_argument("--verified", action="store_true", help="Mark as verified")
    p_finish.add_argument("--notes", help="Completion notes")

    args = parser.parse_args()
    if args.cmd == "list":
        cmd_list(args)
    elif args.cmd == "claim":
        cmd_claim(args)
    elif args.cmd == "scaffold":
        cmd_scaffold(args)
    elif args.cmd == "finish":
        cmd_finish(args)
    else:
        parser.print_help()


if __name__ == "__main__":
    main()
