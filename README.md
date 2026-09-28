# Formally Verified Lean 4 Port of GAP: Discrete Computational Algebra

[![Lean 4](https://img.shields.io/badge/Lean_4-v4.28.0-blue.svg)](https://lean-lang.org/)
[![Mathlib 4](https://img.shields.io/badge/Mathlib_4-compatible-green.svg)](https://github.com/leanprover-community/mathlib4)
[![Verification](https://img.shields.io/badge/Verification-0_sorry%20%7C%200_admit-brightgreen.svg)](https://github.com/pCwOrM/gap-lean4-port)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This repository provides **machine-checked formal verifications in Lean 4 / Mathlib** for the core computational discrete algebra algorithms and representations of the [GAP System](https://www.gap-system.org/) (Groups, Algorithms, Programming).

Developed by the **ITouch Systems Formal Verification Lab** (Volkan Dagli, Dr. Zerrin Dagli, Daghan Dagli) on a 40-core Dual Xeon cluster.

---

## Task GAP-0331: `lib/zmodnz.gi` (ℤ/nℤ Modular Methods)

Faithfully formalizes the canonical residue representations, ring/field structures, and **both the abstract semantic invariants and executable computational algorithms** of GAP's `lib/zmodnz.gi` (by Thomas Breuer).

### Dual Verification Architecture

1. **Semantic Fidelity & Algebraic Transfer:**
   * Canonical residue structure `GAP.ZModnZObj n` preserving the strict invariant `val < n`.
   * Exact bi-directional equivalence `equivZMod : ZModnZObj n ≃ ZMod n` establishing `CommRing` and `Field` (for prime $n$).
   * Abstract unit characterization:
     ```lean
     theorem isUnit_iff (a : ZModnZObj n) : IsUnit a ↔ a.val.Coprime n
     ```

2. **Constructive Executable Algorithm Verification (Operational Semantics):**
   * **`isUnitExec` (`lib/zmodnz.gi`, lines 943–949):** Faithfully models GAP's runtime unit check `GcdInt(elm![1], Characteristic) = 1`:
     ```lean
     def isUnitExec (a : ZModnZObj n) : Bool := Nat.gcd a.val n == 1
     ```
   * **`inverseOpExec` (`lib/zmodnz.gi`, lines 522–533):** Faithfully models GAP's executable `InverseOp` via the Extended Euclidean Algorithm (`QuotientMod` using `Nat.gcdA` Bézout coefficients) without non-constructive shortcuts:
     ```lean
     def inverseOpExec (a : ZModnZObj n) : Option (ZModnZObj n)
     ```
   * **Constructive Bézout & Inverse Invariant:** Proves constructively that whenever `isUnitExec a = true`, `inverseOpExec a` produces a concrete inverse satisfying exact modular multiplication:
     ```lean
     theorem inverseOpExec_correct (a : ZModnZObj n) (h : isUnitExec a = true) :
         ∃ inv : ZModnZObj n, inverseOpExec a = some inv ∧ mulExec a inv = oneExec
     ```

### Axiomatic Purity Audit
Audited with `#print axioms`:
* **Core Axioms:** `[propext, Classical.choice, Quot.sound]`
* **Harici Aksiyom:** **0**
* **`sorry` / `admit`:** **0**
* **`@[implemented_by]`:** **0**

---

## Build Instructions

```bash
# Clone the repository
git clone https://github.com/pCwOrM/gap-lean4-port.git
cd gap-lean4-port

# Build the verified library (passing lake build cleanly)
lake build RequestProject
```

---

## Research Directions: Verified Computational Group Theory

Beyond residue class arithmetic, our ongoing research program focuses on **Verified Stabiliser Chains and Schreier-Sims Invariants** (`lib/stbc.gi` and `lib/partitio.gi`):
* Constructive Schreier vector and transversal tree invariants (`TransversalInvariant`).
* Algorithmic verification of the sifting reduction (`SiftedPermutation`) and pointwise base stabilisation.
* Soundness and completeness of Base and Strong Generating Set (BSGS) membership testing.

---

## Authors & Citation

**ITouch Systems Formal Verification Lab**  
* Volkan Dagli, MSc. (CTO, ITouch Systems)  
* Dr. Zerrin Dagli (Mersin University)  
* Daghan Dagli (Toros Science College)  

Correspondence: `ask@answerr.me` | `pcworm@pcworm.net`
