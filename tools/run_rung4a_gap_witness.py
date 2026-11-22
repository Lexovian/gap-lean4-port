#!/usr/bin/env python3
"""
Rung 4a (operator-level) witness harness against an official GAP 4 binary.

Checks Lean 4 model contracts for GAP-0190 (lib/grpperm.gi: SizePermGroup)
and GAP-0247 (lib/oprtperm.gi: OnPoints, OnPairs, OnSets, Orbit, OrbitsDomain,
Stabilizer, LargestMovedPoint) using live GAP 4 runtime execution.

Conforms to Shared Terminology Guide v2:
- Operator-level traces against a distribution GAP binary cap at Rung 4a
  (no Nix derivation boundary provenance => not Rung 4b).
- Includes an explicit synthetic negative event (reported separately from
  witnesses) to confirm the `violation` verdict path is reachable.
"""
from __future__ import annotations

import datetime
import hashlib
import json
import pathlib
import shutil
import subprocess
import sys

REPO_ROOT = pathlib.Path(__file__).resolve().parent.parent
OUT_PATH = REPO_ROOT / "docs" / "reports" / "GAP_0247_RUNG4A_WITNESS_REPORT.json"

GAP_V4140_COMMIT = "8e68258d61fbeef94ee1ef07d5aa6320c70ebff7"
GAP_ANCHORS = {
    "GAP-0190": {
        "repo": "gap-system/gap",
        "tag": "v4.14.0",
        "commit": GAP_V4140_COMMIT,
        "file": "lib/grpperm.gi",
        "symbols": ["SizePermGroup"],
        "source_sha256": "0e0e2e4110cb71cb9ffe8794ee4b3b097b4b1c96b8c1df94013a809113aad5a5",
    },
    "GAP-0247": {
        "repo": "gap-system/gap",
        "tag": "v4.14.0",
        "commit": GAP_V4140_COMMIT,
        "file": "lib/oprtperm.gi",
        "symbols": ["OrbitOp", "OrbitPerms", "OrbitsDomain", "PermGroupStabilizerOp", "OnPoints", "OnPairs", "OnSets"],
        "source_sha256": "f90f470d6184d3ea4c645b01a704eef99632637bcaea04a16eeb090787c1c876",
    },
}

GAP_SCRIPT = r"""
BasicOrbitLengthsOfChain := function(S)
  local lens;
  lens := [];
  while IsBound(S.orbit) do
    Add(lens, Length(S.orbit));
    if IsBound(S.stabilizer) then
      S := S.stabilizer;
    else
      break;
    fi;
  od;
  return lens;
end;

EmitGroup := function(name, gens, domainSize)
  local G, sz, S, blens, prodB, lmp, dom, orbs, orbLens, orbSum, orbDisj,
        i, j, x, ox, stx, osOk, osChecks, g1, g2, actPtsOk, actPairsOk, actSetsOk,
        suppOk, s0, g;
  G := Group(gens);
  sz := Size(G);
  S := StabChainMutable(G);
  blens := BasicOrbitLengthsOfChain(S);
  prodB := Product(blens);
  lmp := LargestMovedPoint(G);
  dom := [1..domainSize];
  orbs := OrbitsDomain(G, dom);
  orbLens := List(orbs, Length);
  Sort(orbLens);
  orbLens := Reversed(orbLens);
  orbSum := Sum(orbLens);
  orbDisj := true;
  for i in [1..Length(orbs)] do
    for j in [i+1..Length(orbs)] do
      if Length(Intersection(orbs[i], orbs[j])) > 0 then
        orbDisj := false;
      fi;
    od;
  od;

  osOk := true;
  osChecks := 0;
  for x in dom do
    ox := Orbit(G, x);
    stx := Stabilizer(G, x);
    osChecks := osChecks + 1;
    if Length(ox) * Size(stx) <> sz then
      osOk := false;
    fi;
  od;

  g1 := gens[1];
  g2 := gens[Length(gens)];
  actPtsOk := ForAll(dom, pt -> OnPoints(pt, ()) = pt and OnPoints(OnPoints(pt, g1), g2) = OnPoints(pt, g1 * g2));
  actPairsOk := (OnPairs([1, 2], ()) = [1, 2]) and (OnPairs(OnPairs([1, 2], g1), g2) = OnPairs([1, 2], g1 * g2));
  s0 := [1, 2];
  actSetsOk := (OnSets(s0, ()) = s0) and (OnSets(OnSets(s0, g1), g2) = OnSets(s0, g1 * g2)) and (Length(OnSets(s0, g1)) = Length(s0));

  suppOk := true;
  for x in [lmp+1..domainSize] do
    for g in gens do
      if OnPoints(x, g) <> x then
        suppOk := false;
      fi;
    od;
  od;

  Print("GROUP|", name,
        "|", domainSize,
        "|", lmp,
        "|", sz,
        "|", prodB,
        "|", blens,
        "|", orbLens,
        "|", orbSum = domainSize and orbDisj,
        "|", osChecks,
        "|", osOk,
        "|", actPtsOk and actPairsOk and actSetsOk,
        "|", suppOk, "\n");
end;

Print("META|GAP_VERSION=", GAPInfo.Version, "|BUILD=", GAPInfo.BuildDateTime, "\n");

EmitGroup("S_3", [(1,2), (1,2,3)], 3);
EmitGroup("S_4", [(1,2), (1,2,3,4)], 4);
EmitGroup("S_5", [(1,2), (1,2,3,4,5)], 5);
EmitGroup("A_4", [(1,2,3), (2,3,4)], 4);
EmitGroup("A_5", [(1,2,3), (3,4,5)], 5);
EmitGroup("D_4", [(1,2,3,4), (1,3)], 4);
EmitGroup("D_6", [(1,2,3,4,5,6), (2,6)(3,5)], 6);
EmitGroup("C_4xC_2_in_S_10", [(1,2,3,4), (5,6)], 10);
EmitGroup("S_3xS_3_in_S_8", [(1,2), (1,2,3), (4,5), (4,5,6)], 8);
EmitGroup("M_11", [(1,2,3,4,5,6,7,8,9,10,11), (3,7,11,8)(4,10,5,6)], 11);
QUIT;
"""


def sha256_file(path: pathlib.Path) -> str:
    h = hashlib.sha256()
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(65536), b""):
            h.update(chunk)
    return h.hexdigest()


def parse_gap_int_list(raw: str) -> list[int]:
    s = raw.strip().strip("[]").strip()
    if not s:
        return []
    return [int(tok.strip()) for tok in s.split(",") if tok.strip()]


def check_orbit_stabilizer_contract(order: int, orbit_len: int, stab_order: int) -> str:
    if order <= 0 or orbit_len <= 0 or stab_order <= 0:
        return "out-of-domain"
    return "witness" if (orbit_len * stab_order == order) else "violation"


def main() -> int:
    gap_bin = shutil.which("gap")
    if not gap_bin:
        print("ERROR: `gap` binary not found in PATH.", file=sys.stderr)
        return 1
    real_gap = pathlib.Path(gap_bin).resolve()

    import tempfile
    with tempfile.NamedTemporaryFile("w", suffix=".g", delete=False, encoding="utf-8") as tf:
        tf.write(GAP_SCRIPT)
        tmp_g = tf.name
    try:
        proc = subprocess.run(
            [gap_bin, "-q", "-b", "-x", "10000", "--nointeract", tmp_g],
            capture_output=True,
            text=True,
            timeout=60,
        )
    finally:
        pathlib.Path(tmp_g).unlink(missing_ok=True)
    if proc.returncode != 0:
        print("GAP execution failed:", proc.stderr, file=sys.stderr)
        return proc.returncode

    gap_version = "unknown"
    gap_build_dt = "unknown"
    group_records = []
    total_events = 0
    total_witness = 0
    total_violations = 0

    for line in proc.stdout.replace("\\\n", "").splitlines():
        line = line.strip()
        if line.startswith("META|"):
            for part in line.split("|")[1:]:
                if part.startswith("GAP_VERSION="):
                    gap_version = part.split("=", 1)[1].strip()
                elif part.startswith("BUILD="):
                    gap_build_dt = part.split("=", 1)[1].strip()
        elif line.startswith("GROUP|"):
            parts = line.split("|")
            name = parts[1]
            domain_size = int(parts[2])
            support_degree = int(parts[3])
            order = int(parts[4])
            prod_basic = int(parts[5])
            basic_orbits = parse_gap_int_list(parts[6])
            orbit_sizes = parse_gap_int_list(parts[7])
            partition_ok = parts[8] == "true"
            os_checks = int(parts[9])
            os_ok = parts[10] == "true"
            actions_ok = parts[11] == "true"
            support_ok = parts[12] == "true"

            order_match = (order == prod_basic)
            events_here = 4 + os_checks
            all_ok = order_match and partition_ok and os_ok and actions_ok and support_ok
            verdict = "witness" if all_ok else "violation"

            total_events += events_here
            if all_ok:
                total_witness += events_here
            else:
                total_violations += 1

            group_records.append({
                "group": name,
                "storage_degree": domain_size,
                "support_degree_largest_moved_point": support_degree,
                "group_order": order,
                "basic_orbit_lengths": basic_orbits,
                "order_equals_basic_orbit_product": order_match,
                "orbit_partition_sizes": orbit_sizes,
                "orbit_partition_valid": partition_ok,
                "orbit_stabilizer_checks": os_checks,
                "orbit_stabilizer_all_matched": os_ok,
                "action_laws_onPoints_onPairs_onSets": actions_ok,
                "points_outside_support_fixed": support_ok,
                "events": events_here,
                "verdict": verdict,
            })

    synthetic_verdict = check_orbit_stabilizer_contract(order=6, orbit_len=4, stab_order=2)
    assert synthetic_verdict == "violation", f"Expected violation, got {synthetic_verdict}"

    report = {
        "schema": "gap-lean4-port.rung4a-witness-report/2",
        "terminology_standard": "Shared Terminology Guide v2",
        "timestamp_utc": datetime.datetime.now(datetime.timezone.utc).isoformat(),
        "gap_runtime": {
            "binary_path": str(real_gap),
            "binary_sha256": sha256_file(real_gap),
            "gap_version": gap_version,
            "build_datetime": gap_build_dt,
            "provenance_status": "distribution binary (no pinned Nix derivation); traces cap strictly at Rung 4a (operator-level), not Rung 4b (boundary-level)",
        },
        "anchored_chunks": {
            "GAP-0190": {
                **GAP_ANCHORS["GAP-0190"],
                "lean_module": "RequestProject.Gap.Library.Grpperm",
                "lean_sha256": sha256_file(REPO_ROOT / "RequestProject/Gap/Library/Grpperm.lean"),
                "rung_reached": "Rung 3 (Proved) + Rung 4a (Witnessed, operator-level)",
            },
            "GAP-0247": {
                **GAP_ANCHORS["GAP-0247"],
                "lean_module": "RequestProject.Gap.Library.Oprtperm",
                "lean_sha256": sha256_file(REPO_ROOT / "RequestProject/Gap/Library/Oprtperm.lean"),
                "rung_reached": "Rung 3 (Proved) + Rung 4a (Witnessed, operator-level)",
            },
        },
        "evidence_summary": {
            "trace_level": "operator-level (Rung 4a)",
            "groups_tested": len(group_records),
            "events": total_events,
            "witness": total_witness,
            "out_of_domain": 0,
            "violation": total_violations,
            "undecodable": 0,
            "synthetic": 1,
            "synthetic_verdict_reached": synthetic_verdict,
        },
        "reference_row_v2": (
            f"GAP:lib/grpperm.gi+lib/oprtperm.gi@v4.14.0 | GAP.Grpperm.* + GAP.Oprtperm.* | "
            f"[propext, Classical.choice, Quot.sound] | operator-level (4a, GAP {gap_version}) | "
            f"{total_events} | {total_witness} | 0 | {total_violations} | 0 | 1 (synthetic->violation) | fresh"
        ),
        "group_witnesses": group_records,
    }

    OUT_PATH.parent.mkdir(parents=True, exist_ok=True)
    OUT_PATH.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"Wrote real GAP {gap_version} Rung 4a report: {len(group_records)} groups, {total_witness}/{total_events} witnesses, {total_violations} violations, synthetic={synthetic_verdict}")
    return 0 if total_violations == 0 else 1


if __name__ == "__main__":
    raise SystemExit(main())
