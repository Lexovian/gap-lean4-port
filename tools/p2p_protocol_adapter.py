#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
p2p_protocol_adapter.py
=======================

Adapter connecting gap-lean4-port bridge jobs with Mike DuPont's
`lean-worker` P2P Protocol (minimal/Protocol/Client.lean and Server.lean).

Translates `harmonic.gap-worker-job/1` into P2P Call / Job structures:
- Job.checkProof (CID, Lean Module, SHA256)
- Job.proveGoal (GAP Pre/Post contracts)
- Admission gate verification (admits, authenticated, fresh nonce, fuelBudget)
"""

import hashlib
import json
import time
from pathlib import Path
from typing import Any, Dict, List

REPO_ROOT = Path(__file__).resolve().parent.parent
BRIDGE_JOBS_DIR = REPO_ROOT / "tasks" / "bridge_jobs"
P2P_PACKETS_DIR = REPO_ROOT / "tasks" / "p2p_packets"


def make_p2p_call(job_data: Dict[str, Any], client_id: str = "peer-pcworm-relay", server_id: str = "node-lean-worker-mdupont") -> Dict[str, Any]:
    task_id = job_data["task_id"]
    task_cid = job_data["task_cid"]
    artifacts = job_data.get("artifacts", [])
    primary_module = artifacts[0]["lean_module"] if artifacts else "Unknown"
    primary_sha256 = artifacts[0]["sha256"] if artifacts else ""

    # Map to lean-worker Job enum: Job.checkProof (digest)
    job_payload = {
        "kind": "checkProof",
        "task_id": task_id,
        "task_cid": task_cid,
        "lean_module": primary_module,
        "sha256": primary_sha256,
        "theorems": job_data.get("proved_theorems", []),
        "degree_qualifier": job_data.get("degree_qualifier", {})
    }

    nonce = int(time.time() * 1000)
    body = {
        "client": client_id,
        "server": server_id,
        "nonce": nonce,
        "fuelBudget": 500000,
        "job": job_payload
    }

    # Deterministic auth digest for admission gate
    body_serialized = json.dumps(body, sort_keys=True)
    auth_tag = hashlib.sha256(body_serialized.encode("utf-8")).hexdigest()

    return {
        "schema": "harmonic.p2p-call/1",
        "protocol_version": "lean-worker-v2",
        "body": body,
        "auth": auth_tag,
        "target_endpoint": "minimal/Protocol/Server.lean",
        "status": "ready_for_dispatch"
    }


def adapt_all_jobs() -> List[Path]:
    P2P_PACKETS_DIR.mkdir(parents=True, exist_ok=True)
    generated = []

    print("=================================================================")
    print("  Adapting gap-lean4-port jobs to lean-worker P2P Protocol (v2)")
    print("=================================================================\n")

    for job_file in sorted(BRIDGE_JOBS_DIR.glob("*_worker_job.json")):
        with open(job_file, "r", encoding="utf-8") as f:
            job_data = json.load(f)

        p2p_call = make_p2p_call(job_data)
        out_file = P2P_PACKETS_DIR / f"{job_data['task_id']}_p2p_call.json"
        with open(out_file, "w", encoding="utf-8") as f:
            json.dump(p2p_call, f, indent=2, ensure_ascii=False)

        generated.append(out_file)
        print(f"[+] Adapted {job_data['task_id']} -> {out_file.relative_to(REPO_ROOT)}")

    manifest = {
        "schema": "harmonic.p2p-batch/1",
        "client": "peer-pcworm-relay",
        "protocol_spec": "meta-introspector/lean-worker/minimal/Protocol/Server.lean",
        "total_packets": len(generated),
        "packets": [str(p.relative_to(REPO_ROOT)).replace("\\", "/") for p in generated]
    }
    manifest_file = REPO_ROOT / "tasks" / "p2p_packets_manifest.json"
    with open(manifest_file, "w", encoding="utf-8") as f:
        json.dump(manifest, f, indent=2, ensure_ascii=False)

    print(f"\n[+] Manifest generated: {manifest_file.relative_to(REPO_ROOT)}")
    return generated


if __name__ == "__main__":
    adapt_all_jobs()
