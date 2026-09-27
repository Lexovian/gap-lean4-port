import Mathlib

/-!
# A Lean 4 port of GAP's permutation kernel

This file begins a formal Lean 4 port of the permutation core of
[GAP](https://github.com/gap-system/gap) (Groups, Algorithms, Programming),
faithfully following the C/C++ kernel file `src/permutat.cc`.

## GAP's representation

In GAP a permutation acts on the set `[1, 2, …, N]`, but internally it is stored
as a mapping of `[0, 1, …, N-1]` (C uses 0-based indexing).  Concretely a
permutation `p` of *degree* `N` is an array `images` of length `N` where
`images[i]` is the image of the point `i`.  Crucially:

* every point `i ≥ N` is a **fixed point** (this is GAP's `IMAGE` macro), and
* permutations are never truncated, so two permutations of different degree can
  still describe the same mapping.

We mirror this exactly: a `GAP.GapPerm` is an image list `images : List Nat`
which is a rearrangement of `[0, 1, …, length-1]` (`List.range`).

## Faithful operations

The operations reproduce the GAP kernel:

* `app p i`     — `IMAGE(i, p, deg)`: the image of a point, fixing `i ≥ deg`.
* `one`         — `IdentityPerm`: the empty image array.
* `mul L R`     — `ProdPerm`: `(L*R)` maps `p` to `R[L[p]]` (left-to-right).
* `inv p`       — `InvPerm`: the array with `inv[img[p]] = p`.

## Main results

* `app_one`, `app_mul`, `app_inv_left`, `app_inv_right` establish the defining
  semantics of each operation, valid for **all** points including those beyond
  the degree.
* `toEquiv` realises a GAP permutation as a term of Mathlib's `Equiv.Perm Nat`,
  and `toEquiv_one`, `toEquiv_mul`, `toEquiv_inv` show this is compatible with
  the group structure.  Because GAP multiplies left-to-right while Mathlib's
  `Equiv.Perm` composes right-to-left, `toEquiv` is an **anti**-homomorphism:
  `toEquiv (mul L R) = toEquiv R * toEquiv L`.
-/

namespace GAP

/-- A GAP permutation, stored exactly as in GAP's kernel: an image list `images`
where `images[i]` is the image of `i`, subject to the invariant that the list is
a rearrangement of `[0, 1, …, length-1]`.  Points beyond `length` are fixed. -/
structure GapPerm where
  /-- The image array: `images[i]` is the image of the point `i`. -/
  images : List Nat
  /-- The image array is a rearrangement of `[0, 1, …, length-1]`. -/
  isPerm : List.Perm images (List.range images.length)

namespace GapPerm

/-- The degree of a permutation: the length of its image array. -/
def deg (p : GapPerm) : Nat := p.images.length

/-- The image of a point `i` under `p`.  This mirrors GAP's `IMAGE` macro:
if `i < deg` the image is `images[i]`, otherwise `i` is a fixed point. -/
def app (p : GapPerm) (i : Nat) : Nat := (p.images[i]?).getD i

@[simp] theorem deg_eq_length (p : GapPerm) : p.deg = p.images.length := rfl

theorem app_of_lt {p : GapPerm} {i : Nat} (h : i < p.deg) :
    p.app i = p.images[i] := by
  rw [app, List.getElem?_eq_getElem h]; rfl

theorem app_of_ge {p : GapPerm} {i : Nat} (h : p.deg ≤ i) : p.app i = i := by
  rw [app, List.getElem?_eq_none (by simpa [deg] using h)]; rfl

/-- The image list has no duplicates. -/
theorem nodup (p : GapPerm) : p.images.Nodup :=
  p.isPerm.nodup_iff.mpr (List.nodup_range)

/-- A value lies in the image list iff it is a point below the degree. -/
theorem mem_images_iff {p : GapPerm} {x : Nat} : x ∈ p.images ↔ x < p.deg := by
  rw [p.isPerm.mem_iff, List.mem_range]; rfl

/-- The image of a point below the degree stays below the degree. -/
theorem app_lt_deg {p : GapPerm} {i : Nat} (h : i < p.deg) : p.app i < p.deg := by
  rw [app_of_lt h]
  exact mem_images_iff.mp (List.getElem_mem _)

/-- `app p` maps points below the degree into points below the degree, and fixes
the rest; in particular it preserves the property "`< d`" for any `d ≥ deg`. -/
theorem app_lt {p : GapPerm} {i d : Nat} (hd : p.deg ≤ d) (hi : i < d) :
    p.app i < d := by
  rcases lt_or_ge i p.deg with h | h
  · exact lt_of_lt_of_le (app_lt_deg h) hd
  · rwa [app_of_ge h]

/-- `app p` is injective on all of `ℕ`. -/
theorem app_injective (p : GapPerm) : Function.Injective p.app := by
  intro i j h
  rcases lt_or_ge i p.deg with hi | hi <;> rcases lt_or_ge j p.deg with hj | hj
  · rw [app_of_lt hi, app_of_lt hj] at h
    exact (List.Nodup.getElem_inj_iff p.nodup).mp h
  · have h1 : p.images[i] < p.deg := mem_images_iff.mp (List.getElem_mem _)
    rw [app_of_lt hi, app_of_ge hj] at h
    omega
  · have h1 : p.images[j] < p.deg := mem_images_iff.mp (List.getElem_mem _)
    rw [app_of_ge hi, app_of_lt hj] at h
    omega
  · rw [app_of_ge hi, app_of_ge hj] at h; exact h

/-! ### A reusable lemma: mapping a `range` by an injective self-map is a perm. -/

/-
If `f` maps `[0, D)` into `[0, D)` injectively, then mapping `range D` by `f`
yields a permutation of `range D`.
-/
theorem map_range_perm (f : Nat → Nat) (D : Nat)
    (hmaps : ∀ p, p < D → f p < D)
    (hinj : ∀ a, a < D → ∀ b, b < D → f a = f b → a = b) :
    List.Perm ((List.range D).map f) (List.range D) := by
  -- Since $f$ is injective on the range $D$, the list $[f 0, f 1, ..., f (D-1)]$ is nodup.
  have h_nodup : List.Nodup (List.map f (List.range D)) := by
    rw [ List.nodup_map_iff_inj_on ];
    · aesop;
    · exact List.nodup_range;
  convert List.perm_ext_iff_of_nodup h_nodup ( List.nodup_range ) |>.2 _;
  intro a;
  have h_card : Finset.card (Finset.image f (Finset.range D)) = D := by
    rw [ Finset.card_image_of_injOn fun x hx y hy hxy => hinj x ( Finset.mem_range.mp hx ) y ( Finset.mem_range.mp hy ) hxy, Finset.card_range ];
  have h_card : Finset.image f (Finset.range D) = Finset.range D := by
    exact Finset.eq_of_subset_of_card_le ( Finset.image_subset_iff.mpr fun x hx => Finset.mem_range.mpr ( hmaps x ( Finset.mem_range.mp hx ) ) ) ( by aesop );
  replace h_card := Finset.ext_iff.mp h_card a; aesop;

/-! ### The identity permutation -/

/-- The identity permutation, GAP's `IdentityPerm`: an empty image array. -/
def one : GapPerm := ⟨[], by simp⟩

@[simp] theorem deg_one : one.deg = 0 := rfl

@[simp] theorem app_one (i : Nat) : one.app i = i := by
  simp [app, one]

/-! ### Product of permutations (`ProdPerm`) -/

/-
The product of two permutations.  Following GAP's `ProdPerm`, the product
`mul L R` maps a point `p` to `R[L[p]]`, i.e. it applies `L` first and then `R`
(GAP permutations act on the right).  The degree of the product is the maximum
of the two degrees.
-/
def mul (L R : GapPerm) : GapPerm where
  images := (List.range (max L.deg R.deg)).map (fun p => R.app (L.app p))
  isPerm := by
    convert map_range_perm _ _ _ _ using 1;
    · norm_num;
    · exact fun p hp => R.app_lt ( le_max_right _ _ ) ( L.app_lt ( le_max_left _ _ ) ( by linarith ) );
    · exact fun a ha b hb h => by have := R.app_injective h; have := L.app_injective this; aesop;

@[simp] theorem deg_mul (L R : GapPerm) : (mul L R).deg = max L.deg R.deg := by
  simp [deg, mul]

/-
Defining semantics of the product: `(L*R)` applies `L`, then `R`, at every
point (including fixed points beyond the degree).
-/
@[simp] theorem app_mul (L R : GapPerm) (i : Nat) :
    (mul L R).app i = R.app (L.app i) := by
  grind +locals

/-! ### Inverse of a permutation (`InvPerm`) -/

/-
The inverse of a permutation.  Following GAP's `InvPerm`, the inverse array
satisfies `inv[img[p]] = p`; equivalently `inv[j]` is the index of `j` in the
image list.
-/
def inv (p : GapPerm) : GapPerm where
  images := (List.range p.deg).map (fun j => p.images.idxOf j)
  isPerm := by
    grind +suggestions

@[simp] theorem deg_inv (p : GapPerm) : (inv p).deg = p.deg := by
  simp [deg, inv]

/-
The inverse on a point below the degree is the index of that point.
-/
theorem app_inv_of_lt {p : GapPerm} {j : Nat} (h : j < p.deg) :
    (inv p).app j = p.images.idxOf j := by
  have hj : j < (inv p).deg := by rw [deg_inv]; exact h
  rw [app_of_lt hj]
  simp [inv]

@[simp] theorem app_inv_left (p : GapPerm) (i : Nat) :
    (inv p).app (p.app i) = i := by
  by_cases hi : i < p.deg;
  · rw [ app_inv_of_lt, app_of_lt hi ];
    · have := p.nodup; exact List.Nodup.idxOf_getElem this i hi;
    · exact app_lt_deg hi;
  · grind +suggestions

@[simp] theorem app_inv_right (p : GapPerm) (i : Nat) :
    p.app ((inv p).app i) = i := by
  by_cases hi : i < p.deg;
  · grind +suggestions;
  · grind +suggestions

/-! ### Realisation inside Mathlib's symmetric group `Equiv.Perm ℕ` -/

/-- A GAP permutation realised as an element of Mathlib's `Equiv.Perm Nat`. -/
def toEquiv (p : GapPerm) : Equiv.Perm Nat where
  toFun := p.app
  invFun := (inv p).app
  left_inv := app_inv_left p
  right_inv := app_inv_right p

@[simp] theorem toEquiv_apply (p : GapPerm) (i : Nat) : p.toEquiv i = p.app i := rfl

@[simp] theorem toEquiv_one : toEquiv one = 1 := by
  ext i; simp [toEquiv_apply]

/-- Because GAP multiplies left-to-right while `Equiv.Perm` composes
right-to-left, `toEquiv` reverses products. -/
theorem toEquiv_mul (L R : GapPerm) : toEquiv (mul L R) = toEquiv R * toEquiv L := by
  ext i; simp [Equiv.Perm.mul_apply]

@[simp] theorem toEquiv_inv (p : GapPerm) : toEquiv (inv p) = (toEquiv p)⁻¹ := by
  ext i; rfl

end GapPerm
end GAP