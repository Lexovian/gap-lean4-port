import Mathlib

/-!
# GAP ℤ/nℤ Modular Arithmetic (`lib/zmodnz.gi`)

This file formalizes the GAP representation and algebraic methods for elements of
the residue class rings ℤ/nℤ, faithfully following GAP 4's library file `lib/zmodnz.gi`.

## GAP Representation and Semantics
In GAP, elements of ℤ/nℤ (`ZModnZObj`) are parameterized by a modulus `n > 0`
and represented by a canonical residue `r ∈ {0, 1, ..., n - 1}`.
GAP provides methods for:
* `ZModnZObj(r, n)`: Construction from representative integer/natural number.
* `Modulus(a)`: The modulus `n`.
* `Residue(a)`: The canonical residue in `{0, ..., n-1}`.
* Ring operations: `+`, `-`, `*`, `0`, `1`, `^`.
* `IsUnit(a)`: Test whether `a` is invertible in ℤ/nℤ (i.e. `gcd(r, n) = 1`).
* Field methods when `n` is prime.

## Formal Verification
We represent GAP's canonical residue elements via `GAP.ZModnZObj n`, construct an exact
bijection to Mathlib's `ZMod n`, and formally verify the ring and field structures,
finiteness, cardinality, and the exact `IsUnit` correctness theorem with 0 `sorry`
and 0 `admit`, depending only on standard Lean 4 core axioms.
-/

namespace GAP

/-- A GAP ℤ/nℤ element, mirroring GAP's `ZModnZObj` in `lib/zmodnz.gi`.
    Stores the canonical residue `val` strictly bounded by the modulus `n`. -/
structure ZModnZObj (n : ℕ) [NeZero n] where
  /-- The canonical residue `r ∈ {0, ..., n-1}`. -/
  val : ℕ
  /-- The canonical residue is strictly less than the modulus `n`. -/
  val_lt : val < n
  deriving DecidableEq

namespace ZModnZObj

variable {n : ℕ} [NeZero n]

/-! ### Basic Accessors and GAP Constructors -/

/-- The modulus of the element, mirroring GAP's `Modulus(a)`. -/
@[inline] def modulus (_ : ZModnZObj n) : ℕ := n

/-- The canonical residue of the element in `{0, ..., n-1}`, mirroring GAP's `Residue(a)`. -/
@[inline] def residue (a : ZModnZObj n) : ℕ := a.val

/-- Construct an element of ℤ/nℤ from a natural number `r` via reduction modulo `n`.
    Mirrors GAP's `ZModnZObj(r, n)`. -/
def ofNat (r : ℕ) : ZModnZObj n :=
  ⟨r % n, Nat.mod_lt r (NeZero.pos n)⟩

/-- Extensionality: two elements are equal iff their canonical residues are equal. -/
@[ext] theorem ext {a b : ZModnZObj n} (h : a.val = b.val) : a = b := by
  rcases a with ⟨va, ha⟩
  rcases b with ⟨vb, hb⟩
  subst h
  rfl

/-! ### Mathlib Realization and Equivalence -/

/-- Canonical projection from GAP's `ZModnZObj n` to Mathlib's `ZMod n`. -/
def toZMod (a : ZModnZObj n) : ZMod n :=
  (a.val : ZMod n)

/-- Canonical embedding from Mathlib's `ZMod n` to GAP's `ZModnZObj n`. -/
def ofZMod (z : ZMod n) : ZModnZObj n :=
  ⟨z.val, z.val_lt⟩

@[simp] theorem val_toZMod (a : ZModnZObj n) : (toZMod a).val = a.val :=
  ZMod.val_cast_of_lt a.val_lt

@[simp] theorem toZMod_ofZMod (z : ZMod n) : toZMod (ofZMod z) = z :=
  ZMod.natCast_zmod_val z

@[simp] theorem ofZMod_toZMod (a : ZModnZObj n) : ofZMod (toZMod a) = a := by
  rcases a with ⟨v, hv⟩
  dsimp [ofZMod, toZMod]
  congr
  exact ZMod.val_cast_of_lt hv

/-- The canonical bijection between GAP's `ZModnZObj n` and Mathlib's `ZMod n`. -/
def equivZMod : ZModnZObj n ≃ ZMod n where
  toFun := toZMod
  invFun := ofZMod
  left_inv := ofZMod_toZMod
  right_inv := toZMod_ofZMod

/-- `ZModnZObj n` is a finite type. -/
instance : Fintype (ZModnZObj n) :=
  Fintype.ofEquiv (ZMod n) equivZMod.symm

/-- Cardinality of GAP's ℤ/nℤ is exactly `n`. -/
@[simp] theorem card_eq : Fintype.card (ZModnZObj n) = n := by
  rw [Fintype.card_congr equivZMod, ZMod.card]

/-! ### Algebraic Instances -/

/-- Commutative ring instance transferred from Mathlib's `ZMod n`. -/
instance : CommRing (ZModnZObj n) :=
  equivZMod.commRing

@[simp] theorem toZMod_zero : toZMod (0 : ZModnZObj n) = 0 :=
  equivZMod.apply_symm_apply 0

@[simp] theorem toZMod_one : toZMod (1 : ZModnZObj n) = 1 :=
  equivZMod.apply_symm_apply 1

@[simp] theorem toZMod_add (a b : ZModnZObj n) : toZMod (a + b) = toZMod a + toZMod b :=
  equivZMod.apply_symm_apply (toZMod a + toZMod b)

@[simp] theorem toZMod_mul (a b : ZModnZObj n) : toZMod (a * b) = toZMod a * toZMod b :=
  equivZMod.apply_symm_apply (toZMod a * toZMod b)

@[simp] theorem toZMod_neg (a : ZModnZObj n) : toZMod (-a) = -toZMod a :=
  equivZMod.apply_symm_apply (-toZMod a)

@[simp] theorem toZMod_sub (a b : ZModnZObj n) : toZMod (a - b) = toZMod a - toZMod b :=
  equivZMod.apply_symm_apply (toZMod a - toZMod b)

theorem toZMod_inj {a b : ZModnZObj n} : toZMod a = toZMod b ↔ a = b :=
  equivZMod.injective.eq_iff

/-- Invertibility / unit predicate: `a` is a unit in GAP's ℤ/nℤ iff its residue is coprime to `n`.
    Faithfully proves correctness of GAP's `IsUnit` method in `lib/zmodnz.gi`. -/
theorem isUnit_iff (a : ZModnZObj n) : IsUnit a ↔ a.val.Coprime n := by
  rw [isUnit_iff_dvd_one]
  have h_dvd : (a ∣ 1) ↔ (toZMod a ∣ 1) := by
    constructor
    · rintro ⟨c, hc⟩
      use toZMod c
      rw [← toZMod_mul, ← hc, toZMod_one]
    · rintro ⟨z, hz⟩
      use ofZMod z
      have heq : toZMod (a * ofZMod z) = toZMod 1 := by
        rw [toZMod_mul, toZMod_ofZMod, ← hz, toZMod_one]
      exact toZMod_inj.mp heq.symm
  rw [h_dvd, ← isUnit_iff_dvd_one]
  change IsUnit ((a.val : ℕ) : ZMod n) ↔ a.val.Coprime n
  exact ZMod.isUnit_iff_coprime a.val n

/-- When the modulus `n` is prime, GAP's ℤ/nℤ is a field. -/
instance [Fact (Nat.Prime n)] : Field (ZModnZObj n) :=
  equivZMod.field

end ZModnZObj
end GAP
