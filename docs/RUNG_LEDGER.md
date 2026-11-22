# Formal Verification Ledger (Rung 0–5 Specification)
**Standard:** [Shared Terminology Guide v2](SharedTerminologyGuide.md)  
**Pinned GAP Anchor Tag:** `gap-system/gap` `v4.14.0` (`8e68258d61fbeef94ee1ef07d5aa6320c70ebff7`)  
**Toolchain:** `leanprover/lean4:v4.28.0` + `mathlib4` `v4.28.0`  
**Axiomatic Baseline:** Zero `sorry`, zero `admit`, standard Lean 4 axioms (`[propext, Classical.choice, Quot.sound]`)  
**Paper II (Phase 3, `v0.3.0`) Zenodo DOI:** [10.5281/zenodo.24448459](https://doi.org/10.5281/zenodo.24448459) (Concept DOI: [10.5281/zenodo.24448458](https://doi.org/10.5281/zenodo.24448458)) | **Paper I (Phases 1–2):** [arXiv:2609.38492](https://arxiv.org/abs/2609.38492) / [10.5281/zenodo.23045504](https://doi.org/10.5281/zenodo.23045504)

---

## 1. The Rung Verification Scale (Guide v2 §1)

We build Lean 4 models of selected GAP algorithms, prove properties of those models (**Rung 3**), and check operator-level traces against an official GAP 4 runtime (**Rung 4a**). We do **not** claim to have verified raw C or GAP code itself; Rung 2 (named GAP developer sign-off) and Rung 4b (pinned Nix boundary traces) remain explicitly open.

| Rung | Name | Operational Definition | Verification Authority |
| :---: | :--- | :--- | :--- |
| **0** | **Anchored** | Chunk pinned to commit, file, symbol, and SHA-256 of source file. | Git / SHA-256 Anchor |
| **1** | **Modeled** | Lean 4 model exists, mirrors algorithmic structure, type-checks. | Lean 4 Compiler (`lake build`) |
| **2** | **Reviewed** | Named GAP core developer signs off model-to-code correspondence. | Human Expert Review *(open)* |
| **3** | **Proved** | Contract formally proved for the model (`0 sorry`, `#print axioms` audited). | Lean 4 Kernel (`Verify.lean`) |
| **4a** | **Witnessed (operator)** | Traces of an official GAP 4 binary's GAP-level operations satisfy the contract. | GAP `4.12.1` Harness (`tools/run_rung4a_gap_witness.py`) |
| **4b** | **Witnessed (boundary)** | Traces at C function boundary on a pinned Nix build with recorded provenance. | Boundary Probe *(open)* |
| **5** | **Zipped** | Contracts compose across callers and callees with checked seams. | Inter-chunk Composition *(open)* |

---

## 2. Active Verification Matrix & Pinned `v4.14.0` CodeAnchors

| Chunk ID | GAP Anchor (`v4.14.0`) & Source SHA-256 | Target Lean Module | Proved Contract Summary | Degree Qualifier | Rung Reached | Axioms Rollup |
| :--- | :--- | :--- | :--- | :--- | :---: | :--- |
| **`GAP-0050`** | `src/permutat.cc` (`ProdPerm`)<br/>`9bda0e052eb614c9…` | `RequestProject.Gap.Permutation` | Image-array permutation model; right-action anti-homomorphism (`toEquiv_mul`); operand reuse frame. | Support vs. Storage degree | **Rung 3** | `[propext, Classical.choice, Quot.sound]` |
| **`GAP-0331`** | `lib/zmodnz.gi` (`InverseOp`)<br/>`5253d06ae731bba6…` | `RequestProject.Gap.Library.Zmodnz` | Bijection `ZModnZObj n ≃ ZMod n`; constructive Bézout inverse (`inverseOpExec_correct`, `isUnit_iff`). | Algebraic (Ring) | **Rung 3** | `[propext, Classical.choice, Quot.sound]` |
| **`GAP-0299`** | `lib/stbc.gi` (`StabChainOp`, `SiftedPerm`)<br/>`f902ae531e5ce8b8…` | `RequestProject.Gap.Library.Stbc` | Schreier-Sims stabilizer chain sifting, base-point fixation, BSGS membership soundness & completeness. | Support vs. Storage degree | **Rung 3** | `[propext, Classical.choice, Quot.sound]` |
| **`GAP-0332a`** | `lib/partitio.gi` (`splitCellByPred`)<br/>`716c64a3949159c2…` | `RequestProject.Gap.Library.Partitio` | Backtrack ordered partition splitting: disjointness, union & cardinality conservation. | Set Partition | **Rung 3** | `[propext, Quot.sound]` |
| **`GAP-0332b`** | `lib/zmodnze.gi` (`ZmodnZepsObj`)<br/>`9b25d391b41d8ab8…` | `RequestProject.Gap.Library.Zmodnze` | Cyclotomic extension ring cardinality $\lvert \mathbb{Z}/n\mathbb{Z}(\varepsilon_m) \rvert = n^m$. | Ring Extension | **Rung 3** | `[propext, Classical.choice, Quot.sound]` |
| **`GAP-0190`** | `lib/grpperm.gi` (`SizePermGroup`)<br/>`0e0e2e4110cb71cb…` | `RequestProject.Gap.Library.Grpperm` | Group order product formula $\lvert G \rvert = \prod \lvert \Delta_i \rvert = \mathrm{sizeStabChain}(S)$ (`permGroup_order_eq_prod_basicOrbits`). | **Support degree** (`LargestMovedPoint`) | **Rung 3 + Rung 4a** (GAP `4.12.1`) | `[propext, Quot.sound]` |
| **`GAP-0247`** | `lib/oprtperm.gi` (`OrbitOp`, `OrbitsDomain`, `Stabilizer`)<br/>`f90f470d6184d3ea…` | `RequestProject.Gap.Library.Oprtperm` | `onPoints`/`onPairs`/`onSets` laws (`onSets_card`), BFS `orbitOfPoint` = `orbitFinset`, orbit partition, Orbit-Stabilizer $\lvert G \rvert = \lvert \mathrm{Orb}_G(x) \rvert \cdot \lvert \mathrm{Stab}_G(x) \rvert$, transversal bijection. | **Support degree** (`LargestMovedPoint`) | **Rung 3 + Rung 4a** (GAP `4.12.1`, 100/100 witnesses) | `[propext, Classical.choice, Quot.sound]` |

### Full Pinned `gap-system/gap` `v4.14.0` (`8e68258d61fbeef94ee1ef07d5aa6320c70ebff7`) Anchor Digests

| Chunk ID | File | Full Source SHA-256 (`v4.14.0`) |
| :--- | :--- | :--- |
| `GAP-0050` | `src/permutat.cc` | `9bda0e052eb614c9c6c95d53aae590cd386f2971915475d814ff625ceebad322` |
| `GAP-0331` | `lib/zmodnz.gi` | `5253d06ae731bba676edd56f7c8d792c663b59b3e4bc8c176a3161243ffc88a6` |
| `GAP-0299` | `lib/stbc.gi` | `f902ae531e5ce8b8a048d077257cec92363d6a7af8fa0a18099d568acab628c5` |
| `GAP-0332a` | `lib/partitio.gi` | `716c64a3949159c23670b230fbcc4b6f3f5ca9749ac891e696c8863729cf9830` |
| `GAP-0332b` | `lib/zmodnze.gi` | `9b25d391b41d8ab8e082ce03f42dc8dd369c5705f86a5d167b380bebc345979b` |
| `GAP-0190` | `lib/grpperm.gi` | `0e0e2e4110cb71cb9ffe8794ee4b3b097b4b1c96b8c1df94013a809113aad5a5` |
| `GAP-0247` | `lib/oprtperm.gi` | `f90f470d6184d3ea4c645b01a704eef99632637bcaea04a16eeb090787c1c876` |

---

## 3. Next Phase 3 Planned Chunks (Rung 0 -> Rung 3)

| Chunk ID | Target GAP File & Symbol | Target Lean Module | Primary Mathematical Contract | Degree Qualifier | Target Rung |
| :--- | :--- | :--- | :--- | :--- | :---: |
| **`GAP-0209`** | `lib/clasperm.gi` (`ConjugacyClasses`) | `RequestProject.Gap.Library.Clasperm` | Cycle-type conjugacy criterion in $S_n$ and centralizer order $\lvert C_{S_n}(\sigma) \rvert = \prod_j j^{m_j} m_j!$. | Support degree | Rung 3 |
| **`GAP-0175`** | `lib/grpmat.gi` (`GL`, `SL`) | `RequestProject.Gap.Library.Grpmat` | Matrix group invertibility $\det(M) \in (\mathbb{Z}/p\mathbb{Z})^\times$ and closure over residue rings. | Matrix dimension $n$ | Rung 3 |

---

## 4. Reference Row (Shared Terminology Guide v2 §10)

```text
anchor | lemma | axioms | trace level | events | witness | out-of-domain | violation | undecodable | synthetic | anchor fresh?
GAP:lib/grpperm.gi+lib/oprtperm.gi@v4.14.0 | GAP.Grpperm.* + GAP.Oprtperm.* | [propext, Classical.choice, Quot.sound] | operator-level (4a, GAP 4.12.1) | 100 | 100 | 0 | 0 | 0 | 1 (synthetic->violation) | fresh
```

- **Evidence JSON:** [`docs/reports/GAP_0247_RUNG4A_WITNESS_REPORT.json`](reports/GAP_0247_RUNG4A_WITNESS_REPORT.json)
- **Reproducible Harness:** [`tools/run_rung4a_gap_witness.py`](../tools/run_rung4a_gap_witness.py)
- **GAP Binary Build-ID (SHA-256):** `9aa736f13150c363d7c31d33513d849482dd52692e7534f51ecfac0d303bb1e3` (`GAP 4.12.1`, distribution binary without pinned Nix derivation => capped strictly at Rung 4a).
