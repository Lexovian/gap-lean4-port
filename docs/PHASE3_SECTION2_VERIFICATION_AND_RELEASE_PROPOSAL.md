# GAP → Lean 4 Phase 3 Section 2 (`GAP-0247`): Verification Audit & Release Readiness

**Target Module:** `RequestProject.Gap.Library.Oprtperm` (`RequestProject/Gap/Library/Oprtperm.lean`)  
**Paired Section 1 Module:** `RequestProject.Gap.Library.Grpperm` (`RequestProject/Gap/Library/Grpperm.lean`)  
**Chunk IDs / IPLD CIDs:**  
- `GAP-0190`: `baguqeerabfmumkhx4awa3al6rthhculmjln7lhbwsw72b2elwll5rxyb2e5a`  
- `GAP-0247`: `baguqeerahef7xwqlnqsmlizu35dlth3x6sunnnzwvtech7fzfqph7e5zhlkq`  
**Pinned GAP Anchor:** `gap-system/gap` tag `v4.14.0` (`8e68258d61fbeef94ee1ef07d5aa6320c70ebff7`)  
**Toolchain:** `leanprover/lean4:v4.28.0` + `mathlib4` `v4.28.0`  
**Terminology Standard:** [Shared Terminology Guide v2](SharedTerminologyGuide.md)  
**Date:** 2026-11-22  

---

## 1. Epistemic Scope & Verification Authority

1. **Rung 3 — Axiomatic Lean 4 Kernel Authority (`leanprover/lean4:v4.28.0`):**  
   Clean kernel build of `Grpperm.lean`, `Oprtperm.lean`, `Main.lean`, and `Verify.lean` passes with **0 errors, 0 warnings, 0 `sorry`, 0 `admit`, 0 custom axioms, 0 `@[implemented_by]`**. All **30** audited theorems in [`RequestProject/Verify.lean`](../RequestProject/Verify.lean) depend exclusively on subsets of `[propext, Classical.choice, Quot.sound]`.
2. **Rung 4a — Official GAP 4 Operator-Level Witnessing (`GAP 4.12.1`):**  
   Executed live via [`tools/run_rung4a_gap_witness.py`](../tools/run_rung4a_gap_witness.py) against an official GAP `4.12.1` binary (`sha256: 9aa736f13150c363…`) across **10 finite permutation groups** ($S_3, S_4, S_5, A_4, A_5, D_4, D_6$, intransitive $C_4 \times C_2 \hookrightarrow S_{10}$, $S_3 \times S_3 \hookrightarrow S_8$, and sporadic Mathieu group $M_{11}$): **100 / 100 operator-level witness events, 0 violations, 0 out-of-domain, 0 undecodable, plus 1 synthetic negative event confirming `violation` verdict reachability**.
3. **Explicit Non-Claims:**  
   Because the GAP `4.12.1` binary is a distribution package without a pinned Nix derivation recipe, its traces cap strictly at **Rung 4a (operator-level)** per Shared Terminology Guide v2 §2. **Rung 2** (named GAP developer sign-off) and **Rung 4b** (boundary-level C trace with Nix provenance) remain open.

---

## 2. Cryptographic Digests (Source Anchors & Lean Models)

| Chunk ID | GAP Source (`v4.14.0`) SHA-256 | Lean 4 Model SHA-256 | Rung Reached |
| :---: | :--- | :--- | :--- |
| `GAP-0190` | `lib/grpperm.gi`: `0e0e2e4110cb71cb9ffe8794ee4b3b097b4b1c96b8c1df94013a809113aad5a5` | `Grpperm.lean`: `5538f7b4214aae6f1b542ebe7ce5b32ec61c53844d7e95762d5c302d2b3f89f4` | **Rung 3 + Rung 4a** |
| `GAP-0247` | `lib/oprtperm.gi`: `f90f470d6184d3ea4c645b01a704eef99632637bcaea04a16eeb090787c1c876` | `Oprtperm.lean`: `82f9772e687f3db3bc1cf6e6e5d3e3242fe97946ee1a818e60f04b9533a7fad9` | **Rung 3 + Rung 4a** |

---

## 3. Rung 3 `#print axioms` Rollup (`RequestProject/Verify.lean`)

All 17 Phase 3 (`GAP-0190` & `GAP-0247`) theorems audited in `Verify.lean` (total 30 theorems across Phases 1–3):

- `GAP.Grpperm.transversalWords_length_eq_sizeStabChain` — `[propext, Quot.sound]`
- `GAP.Grpperm.permGroup_order_eq_prod_basicOrbits` — `[propext, Quot.sound]`
- `GAP.Oprtperm.onPoints_mul` — `[Quot.sound]`
- `GAP.Oprtperm.onPairs_mul` — `[Quot.sound]`
- `GAP.Oprtperm.onSets_mul` — `[propext, Classical.choice, Quot.sound]`
- `GAP.Oprtperm.onSets_card` — `[propext, Classical.choice, Quot.sound]`
- `GAP.Oprtperm.onPoints_fixed_outside_support` — `[propext, Classical.choice, Quot.sound]`
- `GAP.Oprtperm.orbitOfPoint_eq_orbitFinset` — `[propext, Classical.choice, Quot.sound]`
- `GAP.Oprtperm.mem_orbitOfPoint_iff` — `[propext, Classical.choice, Quot.sound]`
- `GAP.Oprtperm.orbitOfPoint_eq_or_disjoint` — `[propext, Classical.choice, Quot.sound]`
- `GAP.Oprtperm.orbit_partition` — `[propext, Classical.choice, Quot.sound]`
- `GAP.Oprtperm.allOrbits_pairwiseDisjoint` — `[propext, Classical.choice, Quot.sound]`
- `GAP.Oprtperm.orbit_stabilizer_order_relation` — `[propext, Classical.choice, Quot.sound]`
- `GAP.Oprtperm.orbit_stabilizer_natCard` — `[propext, Classical.choice, Quot.sound]`
- `GAP.Oprtperm.transversalRepresentatives_eval_basePoint` — `[Quot.sound]`
- `GAP.Oprtperm.transversalRepresentatives_bijOn_orbit` — `[propext, Quot.sound]`
- `GAP.Oprtperm.orbit_stabilizer_matches_stabChain` — `[propext, Classical.choice, Quot.sound]`

---

## 4. Rung 4a Operator-Level Witness Matrix (Official GAP `4.12.1` Binary)

| Group | Storage Deg | Support Deg (`LargestMovedPoint`) | Order $\lvert G \rvert$ | Basic Orbit Lengths | Orbit Partition | Events | Verdict |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| $S_3$ | 3 | 3 | 6 | `[3, 2]` | `[3]` | 7 | `witness` |
| $S_4$ | 4 | 4 | 24 | `[4, 3, 2]` | `[4]` | 8 | `witness` |
| $S_5$ | 5 | 5 | 120 | `[5, 4, 3, 2]` | `[5]` | 9 | `witness` |
| $A_4$ | 4 | 4 | 12 | `[4, 3]` | `[4]` | 8 | `witness` |
| $A_5$ | 5 | 5 | 60 | `[5, 4, 3]` | `[5]` | 9 | `witness` |
| $D_4$ | 4 | 4 | 8 | `[4, 2]` | `[4]` | 8 | `witness` |
| $D_6$ | 6 | 6 | 12 | `[6, 2]` | `[6]` | 10 | `witness` |
| $C_4 \times C_2 \hookrightarrow S_{10}$ | 10 | **6** | 8 | `[4, 2]` | `[4, 2, 1, 1, 1, 1]` | 14 | `witness` |
| $S_3 \times S_3 \hookrightarrow S_8$ | 8 | **6** | 36 | `[3, 2, 3, 2]` | `[3, 3, 1, 1]` | 12 | `witness` |
| $M_{11}$ (Mathieu sporadic) | 11 | 11 | 7920 | `[11, 10, 9, 8]` | `[11]` | 15 | `witness` |
| **Total** | — | — | — | — | — | **100 (+1 synthetic)** | **100 witness, 0 violation** |

- **Reference Row (Guide v2 §10):**  
  `GAP:lib/grpperm.gi+lib/oprtperm.gi@v4.14.0 | GAP.Grpperm.* + GAP.Oprtperm.* | [propext, Classical.choice, Quot.sound] | operator-level (4a, GAP 4.12.1) | 100 | 100 | 0 | 0 | 0 | 1 (synthetic->violation) | fresh`

---

## 5. Approval-Gated Release & Upstream Reference Checklist

1. **Manuscript & Archival Release (Completed):** Paper II published on Zenodo (`v0.3.0` DOI: [10.5281/zenodo.24448459](https://doi.org/10.5281/zenodo.24448459), Concept DOI: [10.5281/zenodo.24448458](https://doi.org/10.5281/zenodo.24448458)), continuing frozen Paper I (`arXiv:2609.38492`, DOI `10.5281/zenodo.23045504`).
2. **Pre-Public Verification:**
   - [x] Root `LICENSE` (`Apache-2.0`) added and matched in `README.md`.
   - [x] Real official GAP `4.12.1` binary Rung 4a witness harness reproducible via `tools/run_rung4a_gap_witness.py`.
   - [x] Exact `gap-system/gap` `v4.14.0` `CodeAnchor` SHA-256 digests pinned in `docs/RUNG_LEDGER.md`.
   - [x] Working tree scrubbed of internal/unrelated tooling references and non-Guide-v2 overclaims.
   - [ ] Before switching a repository to Public, use a clean release branch / squashed public history (so earlier private commits containing internal references are not exposed).
3. **Neutral Upstream Bibliographic Reference (`@Lexovian`, after Zenodo DOI & Public URL are live):** Submit a single, concise, strictly neutral bibliographic reference with no modifications to GAP runtime code.
