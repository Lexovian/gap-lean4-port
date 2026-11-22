# GAP → Lean 4 Phase 3 (Paper II) Release Package Manifest (`v0.3.0`)

**Date:** 2026-11-22  
**Authors:** Dağhan Dağlı¹ (`0009-0003-2492-8313`), Volkan Dağlı²,³* (`0009-0000-1587-8703`), Zerrin Dağlı⁴,⁵ (`0000-0001-9490-6425`)  
**Publication Structure:** Independent Paper II (New Zenodo Concept DOI + New arXiv submission), continuing frozen Paper I (`arXiv:2609.38492`, Zenodo DOI `10.5281/zenodo.23045504`)  
**Public Code Repository:** `https://github.com/Lexovian/gap-lean4-port` (tag `v0.3.0`)  
**License:** Apache License 2.0 (`LICENSE`)  
**Pinned GAP Anchor:** `gap-system/gap` tag `v4.14.0` (`8e68258d61fbeef94ee1ef07d5aa6320c70ebff7`)  
**Lean Toolchain:** `leanprover/lean4:v4.28.0` + `mathlib4` `v4.28.0`

## Verification Summary
- **Rung 3 (`lake build RequestProject`):** 8,035 jobs, `exit 0`, `30 / 30` audited theorems in `RequestProject/Verify.lean` strictly within `[propext, Classical.choice, Quot.sound]` (`0 sorry`, `0 admit`, `0` custom axioms).
- **Rung 4a (`python3 tools/run_rung4a_gap_witness.py`):** Official GAP `4.12.1` binary (`sha256: 9aa736f13150c363…`), `10` finite permutation groups (including $M_{11}$), `100 / 100` witnesses, `0` violations, `1` synthetic negative check (`violation` reachable).

## Artifact SHA-256 Checksums
| File | SHA-256 |
| :--- | :--- |
| `LICENSE` | `2f979541f8228cc14aff3ba2874e5c4eb3399de3a8d6993c21a7315991d77bb6` |
| `RequestProject/Gap/Library/Grpperm.lean` | `5538f7b4214aae6f1b542ebe7ce5b32ec61c53844d7e95762d5c302d2b3f89f4` |
| `RequestProject/Gap/Library/Oprtperm.lean` | `82f9772e687f3db3bc1cf6e6e5d3e3242fe97946ee1a818e60f04b9533a7fad9` |
| `RequestProject/Verify.lean` | `20a3285d0da098df6399cd3dd5a8205b9bf5458b9852bab30f47f88c45d35c33` |
| `tools/run_rung4a_gap_witness.py` | `ff05511223f9283537090c49586e60c321c4e55012ce1bd8f360ea04c69ff367` |
| `docs/reports/GAP_0247_RUNG4A_WITNESS_REPORT.json` | `f7535dd10baf03060111b71dd0b52c390e69e451fdfaf724da7c2151fff95516` |
| `paper/phase3_paper.tex` | `5d73760af937654e439d2ac88424febf77801fbfab6dfcda70d207fbe649304e` |
| `paper/phase3_paper.pdf` | `3ca49a0c5a5c1eb14141c5a5ea8471a2a664843257b7029d433e4c6517aec82f` |
| `paper/zenodo_v0.3.0_metadata.json` | `b5ae9c4fe6dae3f889d43f627707c758445e06c073e9b12912804860fc1f9018` |
