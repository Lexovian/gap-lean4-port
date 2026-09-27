# GAP $\to$ Lean 4 Formally Verified Port

This repository contains formally verified Lean 4 ports of core modules from [GAP](https://github.com/gap-system/gap) (Groups, Algorithms, Programming), targeting [Mathlib 4](https://github.com/leanprover-community/mathlib4).

The distributed task bundle covers 574 atomic tasks (~12,642 person-days / ~50 person-years of effort).

## Verified Modules

### 1. Permutations (`RequestProject.Gap.Permutation`)
- **Source:** GAP C kernel `src/permutat.cc`
- **Semantics:** Right-action array representations, `IMAGE` macro, degree invariance, product (`ProdPerm`), inversion (`InvPerm`).
- **Mathlib Link:** Anti-homomorphism `toEquiv : GapPerm → Equiv.Perm ℕ`.

### 2. ATLAS Catalogue (`RequestProject.Gap.Atlas`)
- **Semantics:** Catalogue of finite simple groups, alternating groups, projective special linear groups, and all 26 sporadic groups (including the Monster $M$).

### 3. Modular Rings $\mathbb{Z}/n\mathbb{Z}$ (`RequestProject.Gap.Library.Zmodnz`) — [Task GAP-0331]
- **Source:** GAP library `lib/zmodnz.gi`
- **CID:** `baguqeerazyl3tvjkjhhaeyhv5wtgkwk4b7yud6ufwakrd67smmw4int26jcq`
- **Semantics:** Canonical residue elements `ZModnZObj(r, n)` with $r < n$, `Modulus`, `Residue`, `ofNat`.
- **Structures:** Commutative ring (`CommRing`), field (`Field`) for prime modulus, cardinality `n`.
- **Key Theorem:** Exact correctness of GAP's `IsUnit` predicate:
  ```lean
  theorem isUnit_iff (a : ZModnZObj n) : IsUnit a ↔ a.val.Coprime n
  ```
- **Verification:** 0 `sorry`, 0 `admit`, 0 external axioms. `#print axioms` verifies reliance only on standard core axioms `[propext, Classical.choice, Quot.sound]`.

## Build & Verification

```bash
lake build RequestProject
```

## Authors & Contributors
- Aristotle (Harmonic)
- Volkan Dagli (pcworm-antigravity)
