# Formal Lean 4 Models & Axiomatic Proofs of Selected GAP Algorithms

[![Lean 4](https://img.shields.io/badge/Lean_4-v4.28.0-blue.svg)](https://lean-lang.org/)
[![Mathlib 4](https://img.shields.io/badge/Mathlib_4-v4.28.0-green.svg)](https://github.com/leanprover-community/mathlib4)
[![Axiom Audit](https://img.shields.io/badge/Verify.lean-30_Theorems_%7C_0_sorry-brightgreen.svg)](RequestProject/Verify.lean)
[![Rung 4a](https://img.shields.io/badge/Rung_4a-100%2F100_GAP_4.12.1_Witnesses-teal.svg)](docs/reports/GAP_0247_RUNG4A_WITNESS_REPORT.json)
[![arXiv](https://img.shields.io/badge/arXiv-2609.38492-b31b1b.svg)](https://arxiv.org/abs/2609.38492)
[![Paper II DOI](https://img.shields.io/badge/Zenodo_Paper_II_(v0.3.0)-10.5281%2Fzenodo.24448459-blue.svg)](https://doi.org/10.5281/zenodo.24448459)
[![Paper II Concept DOI](https://img.shields.io/badge/Concept_DOI-10.5281%2Fzenodo.24448458-informational.svg)](https://doi.org/10.5281/zenodo.24448458)
[![License: Apache-2.0](https://img.shields.io/badge/License-Apache_2.0-orange.svg)](LICENSE)

> [!IMPORTANT]
> **Epistemic Scope ([Shared Terminology Guide v2](docs/SharedTerminologyGuide.md))**  
> This repository builds **Lean 4 models** of selected algorithms from the [GAP System](https://www.gap-system.org/), proves mathematical properties of those models under standard Lean 4 foundations (**Rung 3**, `0 sorry`, `#print axioms` audited), and cross-checks operator-level traces against an official GAP 4 runtime (**Rung 4a**).  
> We do **not** claim to have formally verified GAP's raw C kernel or GAP runtime source code without boundary-level provenance (Rung 2 human sign-off and Rung 4b boundary tracing remain explicitly open).

---

## 1. Verified Module Inventory (Phases 1–3, `v0.3.0-rc`)

All source anchors are pinned against official **`gap-system/gap` tag `v4.14.0`** (`8e68258d61fbeef94ee1ef07d5aa6320c70ebff7`):

| Chunk ID | GAP Source (`v4.14.0`) | Lean 4 Module | Key Proved Model Properties | Rung Reached |
| :--- | :--- | :--- | :--- | :---: |
| **`GAP-0050`** | `src/permutat.cc` (`ProdPerm`) | `RequestProject.Gap.Permutation` | Image-array permutation model, right-action anti-homomorphism (`toEquiv_mul`), storage vs. support degree separation | **Rung 3** |
| **`GAP-0331`** | `lib/zmodnz.gi` (`InverseOp`) | `RequestProject.Gap.Library.Zmodnz` | Bijection `ZModnZObj n ≃ ZMod n`, constructive Extended Euclidean GCD inverse (`inverseOpExec_correct`, `isUnit_iff`) | **Rung 3** |
| **`GAP-0299`** | `lib/stbc.gi` (`StabChainOp`, `SiftedPerm`) | `RequestProject.Gap.Library.Stbc` | Schreier-Sims stabilizer chains, base-point fixation (`siftFull_fixes_all_basePoints`), BSGS membership soundness & completeness | **Rung 3** |
| **`GAP-0332a`** | `lib/partitio.gi` (`splitCellByPred`) | `RequestProject.Gap.Library.Partitio` | Backtrack ordered partition cell splitting: mutual disjointness, union & cardinality conservation | **Rung 3** |
| **`GAP-0332b`** | `lib/zmodnze.gi` (`ZmodnZepsObj`) | `RequestProject.Gap.Library.Zmodnze` | Cyclotomic extension ring $\mathbb{Z}/n\mathbb{Z}(\varepsilon_m)$ exact cardinality `card_eq` ($n^m$) | **Rung 3** |
| **`GAP-0190`** | `lib/grpperm.gi` (`SizePermGroup`) | `RequestProject.Gap.Library.Grpperm` | `PermGroup α`, transversal word factorization, and Schreier-Sims order product formula $\lvert G \rvert = \prod \lvert \Delta_i \rvert$ (`permGroup_order_eq_prod_basicOrbits`) | **Rung 3 + Rung 4a** |
| **`GAP-0247`** | `lib/oprtperm.gi` (`OrbitOp`, `OrbitsDomain`, `Stabilizer`) | `RequestProject.Gap.Library.Oprtperm` | `onPoints`/`onPairs`/`onSets` action laws (`onSets_card`), support-degree fixation (`onPoints_fixed_outside_support`), computable BFS `orbitOfPoint` = abstract `orbitFinset`, orbit partitioning, Orbit-Stabilizer theorem (`orbit_stabilizer_order_relation`), and transversal coset bijection (`orbit_stabilizer_matches_stabChain`) | **Rung 3 + Rung 4a** |

---

## 2. Reproducible Verification

### A. Rung 3 — Lean 4 Kernel & `#print axioms` Audit (`30 / 30` Theorems)
```bash
lake build RequestProject
```
[`RequestProject/Verify.lean`](RequestProject/Verify.lean) runs `#print axioms` across all **30** key theorems spanning `GAP-0050`, `GAP-0331`, `GAP-0299`, `GAP-0332a/b`, `GAP-0190`, and `GAP-0247`. Every theorem depends exclusively on subsets of `[propext, Classical.choice, Quot.sound]` (`0 sorry`, `0 admit`, `0` custom axioms, `0 @[implemented_by]`).

### B. Rung 4a — Official GAP 4 Operator-Level Witness Harness (`100 / 100` Witnesses)
```bash
python3 tools/run_rung4a_gap_witness.py
```
Executes an official GAP `4.12.1` binary across **10 finite permutation groups** ($S_3, S_4, S_5, A_4, A_5, D_4, D_6$, intransitive $C_4 \times C_2 \hookrightarrow S_{10}$ with support degree $6 <$ storage degree $10$, $S_3 \times S_3 \hookrightarrow S_8$ with support degree $6 <$ storage degree $8$, and sporadic Mathieu group $M_{11}$ of order $7920$), verifying `Size(G)` vs. basic orbit products, `OnPoints`/`OnPairs`/`OnSets`, `OrbitsDomain` partitioning, `Orbit`/`Stabilizer` cardinality identity, and support-degree fixation:

- **Reference Row (Guide v2 §10):**  
  `GAP:lib/grpperm.gi+lib/oprtperm.gi@v4.14.0 | GAP.Grpperm.* + GAP.Oprtperm.* | [propext, Classical.choice, Quot.sound] | operator-level (4a, GAP 4.12.1) | 100 | 100 | 0 | 0 | 0 | 1 (synthetic->violation) | fresh`
- **Full JSON Evidence:** [`docs/reports/GAP_0247_RUNG4A_WITNESS_REPORT.json`](docs/reports/GAP_0247_RUNG4A_WITNESS_REPORT.json)
- **Provenance Qualification:** Executed on a distribution GAP `4.12.1` binary without a pinned Nix derivation; per Shared Terminology Guide v2 §2, this caps strictly at **Rung 4a (operator-level)** and makes no Rung 4b boundary claim.

---

## 3. Documentation & Ledger

- **Epistemic Standard:** [`docs/SharedTerminologyGuide.md`](docs/SharedTerminologyGuide.md)
- **Rung 0–5 Verification Ledger & Pinned `v4.14.0` Anchors:** [`docs/RUNG_LEDGER.md`](docs/RUNG_LEDGER.md)
- **Phase 3 Strategic Roadmap:** [`docs/PHASE3_STRATEGIC_ROADMAP.md`](docs/PHASE3_STRATEGIC_ROADMAP.md)
- **Phase 3 Section 2 Audit Summary:** [`docs/PHASE3_SECTION2_VERIFICATION_AND_RELEASE_PROPOSAL.md`](docs/PHASE3_SECTION2_VERIFICATION_AND_RELEASE_PROPOSAL.md)

---

## 4. Citation & License

- **Paper I (Phases 1–2, frozen `v0.2.0`):** Volkan Dağlı, Zerrin Dağlı, Dağhan Dağlı, *Machine-Checked Computational Group Theory in Lean 4: Operational Schreier-Sims Stabilizer Chains, BSGS Sifting, and Backtrack Ordered Partitions*, [arXiv:2609.38492 [cs.LO]](https://arxiv.org/abs/2609.38492) (Zenodo DOI: [10.5281/zenodo.23045504](https://doi.org/10.5281/zenodo.23045504)).
- **Paper II (Phase 3, Release `v0.3.0`):** Dağhan Dağlı ([ORCID `0009-0003-2492-8313`](https://orcid.org/0009-0003-2492-8313)), Volkan Dağlı ([ORCID `0009-0000-1587-8703`](https://orcid.org/0009-0000-1587-8703)), Zerrin Dağlı ([ORCID `0000-0001-9490-6425`](https://orcid.org/0000-0001-9490-6425)), *Formal Lean 4 Models and Proofs of Permutation Group Orders and Orbit-Stabilizer Algorithms for GAP* (Zenodo DOI: [10.5281/zenodo.24448459](https://doi.org/10.5281/zenodo.24448459), Concept DOI: [10.5281/zenodo.24448458](https://doi.org/10.5281/zenodo.24448458), `paper/phase3_paper.pdf`).
- **License:** Licensed under the [Apache License 2.0](LICENSE) (matching the Mathlib4 standard).
