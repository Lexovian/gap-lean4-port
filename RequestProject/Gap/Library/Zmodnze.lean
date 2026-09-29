import Mathlib
import RequestProject.Gap.Library.Zmodnz

set_option linter.unusedSectionVars false

/-!
# GAP Rings ℤ/nℤ(ε_m) of Cyclotomic Extensions over ℤ/nℤ (`lib/zmodnze.gi`)

This module formalizes the elements and algebraic operations of GAP's rings
`ℤ/nℤ(ε)`, where `ε` is a formal root of unity of degree `m` over the residue
class ring `ℤ/nℤ`, faithfully following GAP 4's `lib/zmodnze.gi` (by Alexander Konovalov).

## Main Definitions & Theorems
* `GAP.Zmodnze.ZmodnZepsObj`: Elements of `ℤ/nℤ(ε_m)` represented by coefficient
  vectors `Fin m → GAP.ZModnZObj n` (`lib/zmodnze.gi`, lines 42–75).
* `AddCommGroup (ZmodnZepsObj n m)` and `Fintype (ZmodnZepsObj n m)`.
* `mulOp`: Cyclotomic group-ring multiplication modulo `ε^m = 1` (`lib/zmodnze.gi`, lines 125–155).
* `card_eq`: Proves GAP's `Size` formula `Fintype.card (ZmodnZepsObj n m) = n ^ m`
  (`lib/zmodnze.gi`, line 198).
-/

namespace GAP.Zmodnze

variable (n m : ℕ) [NeZero n] [NeZero m]

/-- An element of GAP's ring `ℤ/nℤ(ε_m)` (`ZmodnZepsObj` in `lib/zmodnze.gi`, line 42),
    represented by its `m` modular coefficients in `GAP.ZModnZObj n`. -/
@[ext]
structure ZmodnZepsObj where
  /-- Coefficient vector `[c_0, c_1, ..., c_{m-1}]` representing `∑ c_k ε^k`. -/
  coeffs : Fin m → GAP.ZModnZObj n
  deriving DecidableEq

namespace ZmodnZepsObj

variable {n m : ℕ} [NeZero n] [NeZero m]

/-- Canonical bijection to function space `Fin m → GAP.ZModnZObj n`. -/
def equivFun : ZmodnZepsObj n m ≃ (Fin m → GAP.ZModnZObj n) where
  toFun := coeffs
  invFun := mk
  left_inv := fun _ => rfl
  right_inv := fun _ => rfl

instance : Fintype (ZmodnZepsObj n m) :=
  Fintype.ofEquiv (Fin m → GAP.ZModnZObj n) equivFun.symm

/-- **GAP `Size` Theorem (`lib/zmodnze.gi`, line 198)**:
    The cardinality of `ℤ/nℤ(ε_m)` is `n ^ m`. -/
@[simp] theorem card_eq : Fintype.card (ZmodnZepsObj n m) = n ^ m := by
  rw [Fintype.card_congr equivFun, Fintype.card_fun, GAP.ZModnZObj.card_eq, Fintype.card_fin]

/-- Zero element (`ZeroOp` in `lib/zmodnze.gi`, line 158). -/
instance : Zero (ZmodnZepsObj n m) :=
  ⟨⟨fun _ => 0⟩⟩

/-- Multiplicative identity (`OneOp` in `lib/zmodnze.gi`, line 165). -/
instance : One (ZmodnZepsObj n m) :=
  ⟨⟨fun k => if k = 0 then 1 else 0⟩⟩

/-- Componentwise addition (`\+` in `lib/zmodnze.gi`, line 98). -/
instance : Add (ZmodnZepsObj n m) :=
  ⟨fun a b => ⟨fun k => a.coeffs k + b.coeffs k⟩⟩

/-- Componentwise negation (`AdditiveInverseOp` in `lib/zmodnze.gi`, line 172). -/
instance : Neg (ZmodnZepsObj n m) :=
  ⟨fun a => ⟨fun k => -a.coeffs k⟩⟩

/-- Componentwise subtraction. -/
instance : Sub (ZmodnZepsObj n m) :=
  ⟨fun a b => ⟨fun k => a.coeffs k - b.coeffs k⟩⟩

/-- Additive commutative group structure transferred along `equivFun`. -/
instance : AddCommGroup (ZmodnZepsObj n m) :=
  equivFun.addCommGroup

/-- Convolution multiplication in `ℤ/nℤ[ε]/(ε^m - 1)` (`\*` in `lib/zmodnze.gi`, line 125). -/
def mulOp (a b : ZmodnZepsObj n m) : ZmodnZepsObj n m :=
  ⟨fun k => Finset.univ.sum (fun i : Fin m => a.coeffs i * b.coeffs (k - i))⟩

instance : Mul (ZmodnZepsObj n m) := ⟨mulOp⟩

end ZmodnZepsObj
end GAP.Zmodnze
