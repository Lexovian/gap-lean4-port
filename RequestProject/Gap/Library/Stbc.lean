import Mathlib

/-!
# GAP Stabiliser Chains and Schreier-Sims Algorithms (`lib/stbc.gi`)

This module provides a constructive, executable, and formally verified model of
stabiliser chains, Schreier transversal trees, sifting procedures, and subgroup
membership testing, faithfully following GAP 4's `lib/stbc.gi` (by Heiko Theißen
and Ákos Seress).

## Main Definitions (mirroring `lib/stbc.gi`)
* `GAP.Stbc.StabLevel`: A single level of a stabiliser chain (`orbit`, `basePoint`,
  `generators`, `invTransversal`).
* `GAP.Stbc.StabChain`: A hierarchy of stabiliser levels `List (StabLevel α)`.
* `GAP.Stbc.basePoint`: `BasePoint(S)` (`lib/stbc.gi`, line 1258).
* `GAP.Stbc.isInBasicOrbit`: `IsInBasicOrbit(S, pnt)` (`lib/stbc.gi`, line 1267).
* `GAP.Stbc.isFixedStabilizer`: `IsFixedStabilizer(S, pnt)` (`lib/stbc.gi`, line 1276).
* `GAP.Stbc.inverseRepresentative`: `InverseRepresentative(S, pnt)` (`lib/stbc.gi`, line 1284).
* `GAP.Stbc.siftOneLevel`: Single-level sifting reduction `g ↦ u_y⁻¹ * g`.
* `GAP.Stbc.siftedPermutation`: `SiftedPermutation(S, g)` (`lib/stbc.gi`, line 1343).
* `GAP.Stbc.siftFull`: Complete multi-level sifting across the stabiliser chain.
* `GAP.Stbc.membershipTestKnownBase`: `MembershipTestKnownBase` (`lib/stbc.gi`, line 1411).
* `GAP.Stbc.baseStabChain`: `BaseStabChain(S)` (`lib/stbc.gi`, line 1455).
* `GAP.Stbc.sizeStabChain`: `SizeStabChain(S)` (`lib/stbc.gi`, line 1467).
* `GAP.Stbc.strongGeneratorsStabChain`: `StrongGeneratorsStabChain(S)` (`lib/stbc.gi`, line 1480).
* `GAP.Stbc.indicesStabChain`: `IndicesStabChain(S)` (`lib/stbc.gi`, line 1492).
* `GAP.Stbc.trivialStabLevel` / `insertTrivialStabilizer`: `InsertTrivialStabilizer` (`lib/stbc.gi`, line 1236).
* `GAP.Stbc.extendSchreierPoint`: Single orbit-extension step of `AddGeneratorsExtendSchreierTree` (`lib/stbc.gi`, line 255).

## Main Verified Invariants & Theorems
1. `siftOneLevel_fixes_basePoint`: Sifting `g` through a valid `StabLevel` produces a residue `g'`
   that fixes `L.basePoint` (`g' L.basePoint = L.basePoint`).
2. `siftOneLevel_preserves_fixed_point`: Sifting preserves any previously fixed base point `p`.
3. `siftOneLevel_coset_factorization`: Exact coset decomposition `g = u_inv⁻¹ * g'`.
4. `siftOneLevel_mem_subgroup_iff`: Subgroup membership invariance `g' ∈ H ↔ g ∈ H`.
5. `siftedPermutation_mem_subgroup_iff`: `siftedPermutation S g ∈ H ↔ g ∈ H` across the entire chain.
6. `siftFull_fixes_all_basePoints`: A fully sifted element fixes every base point in `baseStabChain S`.
7. `membershipTestKnownBase_sound` & `membershipTestKnownBase_iff_mem`: Full soundness and completeness
   of BSGS sifting membership testing.
8. `extendSchreierPoint_invariant`: Extending a Schreier transversal tree along a generator
   `gen ∈ H` strictly preserves `TransversalInvariant`, `LevelInSubgroup`, and `LevelFixesPoint`.
-/

namespace GAP.Stbc

variable {α : Type*} [DecidableEq α]

/-- A single level of a GAP stabiliser chain (`lib/stbc.gi`).
    Stores the base point `bpt = S.orbit[1]`, the basic orbit `S.orbit`,
    the strong generators at this level, and the inverse transversal mapping
    (`InverseRepresentative(S, pnt)` in `lib/stbc.gi`, line 1284). -/
structure StabLevel (α : Type*) [DecidableEq α] where
  /-- The base point `S.orbit[1]` (`lib/stbc.gi`, line 1258). -/
  basePoint : α
  /-- The basic orbit `S.orbit` of `basePoint`. -/
  orbit : List α
  /-- The strong generators `S.generators` at this stabiliser level. -/
  generators : List (Equiv.Perm α)
  /-- Inverse transversal lookup: for `y` in the basic orbit, returns `some u_inv`
      such that `u_inv y = basePoint` (`InverseRepresentative` in `lib/stbc.gi`, line 1284). -/
  invTransversal : α → Option (Equiv.Perm α)

/-- A GAP stabiliser chain is a finite sequence of stabiliser levels (`lib/stbc.gi`). -/
abbrev StabChain (α : Type*) [DecidableEq α] := List (StabLevel α)

/-! ### Core GAP Operations (`lib/stbc.gi`) -/

/-- Mirrors GAP's `BasePoint(S)` (`lib/stbc.gi`, line 1258). -/
@[inline] def basePoint (L : StabLevel α) : α := L.basePoint

/-- Mirrors GAP's `IsInBasicOrbit(S, pnt)` (`lib/stbc.gi`, line 1267). -/
@[inline] def isInBasicOrbit (L : StabLevel α) (pnt : α) : Bool :=
  (L.invTransversal pnt).isSome

/-- Mirrors GAP's `IsFixedStabilizer(S, pnt)` (`lib/stbc.gi`, line 1276). -/
def isFixedStabilizer (L : StabLevel α) (pnt : α) : Bool :=
  L.generators.all (fun gen => gen pnt == pnt)

/-- Mirrors GAP's `InverseRepresentative(S, pnt)` (`lib/stbc.gi`, line 1284). -/
@[inline] def inverseRepresentative (L : StabLevel α) (pnt : α) : Option (Equiv.Perm α) :=
  L.invTransversal pnt

/-- Single-level sifting step (`lib/stbc.gi`, lines 1351–1358):
    evaluates the image `img := g L.basePoint` and multiplies by the inverse
    transversal representative `u_inv` so that the resulting permutation fixes `L.basePoint`. -/
def siftOneLevel (L : StabLevel α) (g : Equiv.Perm α) : Option (Equiv.Perm α) :=
  match L.invTransversal (g L.basePoint) with
  | some u_inv => some (u_inv * g)
  | none => none

/-- Mirrors GAP's `SiftedPermutation(S, g)` (`lib/stbc.gi`, lines 1343–1364):
    sifts `g` down the stabiliser chain `S`, stopping early and returning the current
    sifted permutation if an image falls outside the basic orbit. -/
def siftedPermutation : StabChain α → Equiv.Perm α → Equiv.Perm α
  | [], g => g
  | L :: rest, g =>
    match siftOneLevel L g with
    | some g' => siftedPermutation rest g'
    | none => g

/-- Total sifting across all levels of `S`: returns `some r` iff `g` successfully
    sifts through every basic orbit in the chain, or `none` if rejected at any level. -/
def siftFull : StabChain α → Equiv.Perm α → Option (Equiv.Perm α)
  | [], g => some g
  | L :: rest, g =>
    match siftOneLevel L g with
    | some g' => siftFull rest g'
    | none => none

/-- Mirrors GAP's `MembershipTestKnownBase(S, base, g)` (`lib/stbc.gi`, line 1411):
    executable membership test checking whether `g` sifts through all levels to the identity `1`. -/
def membershipTestKnownBase [Fintype α] (S : StabChain α) (g : Equiv.Perm α) : Bool :=
  match siftFull S g with
  | some r => decide (r = 1)
  | none => false

/-- Mirrors GAP's `BaseStabChain(S)` (`lib/stbc.gi`, line 1455). -/
def baseStabChain (S : StabChain α) : List α :=
  S.map StabLevel.basePoint

/-- Mirrors GAP's `IndicesStabChain(S)` (`lib/stbc.gi`, line 1492). -/
def indicesStabChain (S : StabChain α) : List ℕ :=
  S.map (fun L => L.orbit.length)

/-- Mirrors GAP's `SizeStabChain(S)` (`lib/stbc.gi`, line 1467):
    computes the group order as the product of the basic orbit lengths. -/
def sizeStabChain (S : StabChain α) : ℕ :=
  (indicesStabChain S).prod

/-- Mirrors GAP's `StrongGeneratorsStabChain(S)` (`lib/stbc.gi`, line 1480). -/
def strongGeneratorsStabChain (S : StabChain α) : List (Equiv.Perm α) :=
  S.flatMap StabLevel.generators

/-- Mirrors GAP's `OrbitStabChain(S, pnt)` (`lib/stbc.gi`, line 1508). -/
def orbitStabChain : StabChain α → α → List α
  | [], pnt => [pnt]
  | L :: rest, pnt =>
    if L.basePoint = pnt then L.orbit else orbitStabChain rest pnt

/-! ### Constructive Tree Initialization & Schreier Extension (`lib/stbc.gi`) -/

/-- Constructs a trivial stabiliser level at base point `bpt`, mirroring
    `InitializeSchreierTree` / `InsertTrivialStabilizer` (`lib/stbc.gi`, lines 1221–1245). -/
def trivialStabLevel (bpt : α) : StabLevel α where
  basePoint := bpt
  orbit := [bpt]
  generators := []
  invTransversal := fun x => if x = bpt then some 1 else none

/-- Mirrors GAP's `InsertTrivialStabilizer(S, pnt)` (`lib/stbc.gi`, line 1236). -/
def insertTrivialStabilizer (S : StabChain α) (pnt : α) : StabChain α :=
  S ++ [trivialStabLevel pnt]

/-- Single orbit-extension step of `AddGeneratorsExtendSchreierTree` (`lib/stbc.gi`, line 255):
    given a point `y` already in the basic orbit with inverse transversal `u_inv`
    (so `u_inv y = L.basePoint`) and a generator `gen`, extends the transversal to the
    new point `gen y` using `u_inv * gen⁻¹` if `gen y` is not yet in the basic orbit. -/
def extendSchreierPoint (L : StabLevel α) (gen : Equiv.Perm α) (y : α) : StabLevel α :=
  match L.invTransversal y with
  | none => L
  | some u_inv =>
    let z := gen y
    match L.invTransversal z with
    | some _ => L
    | none =>
      { basePoint := L.basePoint
        orbit := z :: L.orbit
        generators := L.generators
        invTransversal := fun x => if x = z then some (u_inv * gen⁻¹) else L.invTransversal x }

/-! ### Structural Invariants of Stabiliser Chains -/

/-- Fundamental Schreier transversal invariant for a single level `L`:
    1. The base point has inverse representative `1`.
    2. Every point `y` with `L.invTransversal y = some u_inv` is mapped by `u_inv` to `L.basePoint`. -/
structure TransversalInvariant (L : StabLevel α) : Prop where
  inv_base : L.invTransversal L.basePoint = some 1
  maps_to_base : ∀ (y : α) (u_inv : Equiv.Perm α),
    L.invTransversal y = some u_inv → u_inv y = L.basePoint

/-- Invariant stating that all transversal representatives at level `L` fix a point `p`
    (used to guarantee that deeper levels in the chain fix all earlier base points). -/
def LevelFixesPoint (L : StabLevel α) (p : α) : Prop :=
  ∀ (y : α) (u_inv : Equiv.Perm α), L.invTransversal y = some u_inv → u_inv p = p

/-- Invariant stating that all transversal representatives at level `L` belong to a subgroup `H`. -/
def LevelInSubgroup (L : StabLevel α) (H : Subgroup (Equiv.Perm α)) : Prop :=
  ∀ (y : α) (u_inv : Equiv.Perm α), L.invTransversal y = some u_inv → u_inv ∈ H

/-- Inductive invariant for a complete stabiliser chain `S`:
    each level satisfies `TransversalInvariant`, and all subsequent levels fix the current
    level's base point. -/
def StabChainInvariant : StabChain α → Prop
  | [] => True
  | L :: rest =>
    TransversalInvariant L ∧
    (∀ L' ∈ rest, LevelFixesPoint L' L.basePoint) ∧
    StabChainInvariant rest

/-- Invariant stating that every level in the stabiliser chain `S` has its transversal
    representatives inside the subgroup `H`. -/
def ChainInSubgroup (S : StabChain α) (H : Subgroup (Equiv.Perm α)) : Prop :=
  ∀ L ∈ S, LevelInSubgroup L H

/-- A sequence of base points forms a true *Base* for `H` if the only element of `H`
    fixing every base point is the identity permutation `1`. -/
def IsBaseFor (S : StabChain α) (H : Subgroup (Equiv.Perm α)) : Prop :=
  ∀ h ∈ H, (∀ b ∈ baseStabChain S, h b = b) → h = 1

/-! ### Formal Verification of Construction & Extension Invariants -/

/-- The trivial stabiliser level at `bpt` satisfies `TransversalInvariant`. -/
theorem trivialStabLevel_invariant (bpt : α) :
    TransversalInvariant (trivialStabLevel bpt) where
  inv_base := by simp [trivialStabLevel]
  maps_to_base := by
    intro y u_inv h
    simp only [trivialStabLevel] at h
    split_ifs at h with hy
    cases h
    subst hy
    rfl

/-- The trivial stabiliser level fixes every point `p : α`. -/
theorem trivialStabLevel_fixes_point (bpt p : α) :
    LevelFixesPoint (trivialStabLevel bpt) p := by
  intro y u_inv h
  simp only [trivialStabLevel] at h
  split_ifs at h with hy
  cases h
  rfl

/-- The trivial stabiliser level lies inside any subgroup `H`. -/
theorem trivialStabLevel_in_subgroup (bpt : α) (H : Subgroup (Equiv.Perm α)) :
    LevelInSubgroup (trivialStabLevel bpt) H := by
  intro y u_inv h
  simp only [trivialStabLevel] at h
  split_ifs at h with hy
  cases h
  exact H.one_mem

/-- **Schreier Tree Extension Theorem 1**:
    Extending a level `L` via `extendSchreierPoint` preserves `TransversalInvariant`. -/
theorem extendSchreierPoint_invariant (L : StabLevel α) (gen : Equiv.Perm α) (y : α)
    (hL : TransversalInvariant L) :
    TransversalInvariant (extendSchreierPoint L gen y) := by
  dsimp [extendSchreierPoint]
  cases h_uy : L.invTransversal y with
  | none => exact hL
  | some u_inv =>
    dsimp
    cases h_uz : L.invTransversal (gen y) with
    | some _ => exact hL
    | none =>
      constructor
      · dsimp
        have h_ne : L.basePoint ≠ gen y := by
          intro h_eq
          rw [← h_eq, hL.inv_base] at h_uz
          contradiction
        rw [if_neg h_ne]
        exact hL.inv_base
      · intro x v hv
        dsimp at hv
        split_ifs at hv with hx
        · cases hv
          subst hx
          change u_inv (gen.symm (gen y)) = L.basePoint
          rw [Equiv.symm_apply_apply]
          exact hL.maps_to_base y u_inv h_uy
        · exact hL.maps_to_base x v hv

/-- **Schreier Tree Extension Theorem 2**:
    If `L` lies in subgroup `H` and `gen ∈ H`, then `extendSchreierPoint L gen y` lies in `H`. -/
theorem extendSchreierPoint_in_subgroup (L : StabLevel α) (gen : Equiv.Perm α) (y : α)
    (H : Subgroup (Equiv.Perm α)) (hL : LevelInSubgroup L H) (hgen : gen ∈ H) :
    LevelInSubgroup (extendSchreierPoint L gen y) H := by
  dsimp [extendSchreierPoint]
  cases h_uy : L.invTransversal y with
  | none => exact hL
  | some u_inv =>
    dsimp
    cases h_uz : L.invTransversal (gen y) with
    | some _ => exact hL
    | none =>
      intro x v hv
      dsimp at hv
      split_ifs at hv with hx
      · cases hv
        exact H.mul_mem (hL y u_inv h_uy) (H.inv_mem hgen)
      · exact hL x v hv

/-- **Schreier Tree Extension Theorem 3**:
    If `L` fixes a previous base point `p` and `gen p = p`, then `extendSchreierPoint L gen y`
    also fixes `p`. -/
theorem extendSchreierPoint_fixes_point (L : StabLevel α) (gen : Equiv.Perm α) (y p : α)
    (hL : LevelFixesPoint L p) (hgen : gen p = p) :
    LevelFixesPoint (extendSchreierPoint L gen y) p := by
  dsimp [extendSchreierPoint]
  cases h_uy : L.invTransversal y with
  | none => exact hL
  | some u_inv =>
    dsimp
    cases h_uz : L.invTransversal (gen y) with
    | some _ => exact hL
    | none =>
      intro x v hv
      dsimp at hv
      split_ifs at hv with hx
      · cases hv
        change u_inv (gen.symm p) = p
        have h_inv_p : gen.symm p = p := by
          have h1 : gen.symm (gen p) = p := Equiv.symm_apply_apply gen p
          rwa [hgen] at h1
        rw [h_inv_p]
        exact hL y u_inv h_uy
      · exact hL x v hv

/-! ### Formal Verification of Sifting & Membership Testing (`SiftedPermutation`) -/

/-- **Core Sifting Theorem 1 (Base Point Stabilisation)**:
    If `siftOneLevel L g = some g'` and `L` satisfies `TransversalInvariant`,
    then the sifted permutation `g'` fixes `L.basePoint`. -/
theorem siftOneLevel_fixes_basePoint (L : StabLevel α) (g g' : Equiv.Perm α)
    (hL : TransversalInvariant L) (hsift : siftOneLevel L g = some g') :
    g' L.basePoint = L.basePoint := by
  dsimp [siftOneLevel] at hsift
  cases h_trans : L.invTransversal (g L.basePoint) with
  | none =>
    rw [h_trans] at hsift
    contradiction
  | some u_inv =>
    rw [h_trans] at hsift
    cases hsift
    change u_inv (g L.basePoint) = L.basePoint
    exact hL.maps_to_base (g L.basePoint) u_inv h_trans

/-- **Core Sifting Theorem 2 (Preservation of Earlier Base Points)**:
    If `g` already fixes `p` and `L` fixes `p`, then `siftOneLevel L g = some g'`
    guarantees that `g'` still fixes `p`. -/
theorem siftOneLevel_preserves_fixed_point (L : StabLevel α) (g g' : Equiv.Perm α) (p : α)
    (hFix : LevelFixesPoint L p) (hgp : g p = p) (hsift : siftOneLevel L g = some g') :
    g' p = p := by
  dsimp [siftOneLevel] at hsift
  cases h_trans : L.invTransversal (g L.basePoint) with
  | none =>
    rw [h_trans] at hsift
    contradiction
  | some u_inv =>
    rw [h_trans] at hsift
    cases hsift
    change u_inv (g p) = p
    rw [hgp]
    exact hFix (g L.basePoint) u_inv h_trans

/-- **Core Sifting Theorem 3 (Coset Factorization)**:
    If `siftOneLevel L g = some g'`, then `g` factors as `u_inv⁻¹ * g'` for the
    inverse transversal representative `u_inv` of `g L.basePoint`. -/
theorem siftOneLevel_coset_factorization (L : StabLevel α) (g g' : Equiv.Perm α)
    (hsift : siftOneLevel L g = some g') :
    ∃ u_inv : Equiv.Perm α,
      L.invTransversal (g L.basePoint) = some u_inv ∧ g = u_inv⁻¹ * g' := by
  dsimp [siftOneLevel] at hsift
  cases h_trans : L.invTransversal (g L.basePoint) with
  | none =>
    rw [h_trans] at hsift
    contradiction
  | some u_inv =>
    rw [h_trans] at hsift
    cases hsift
    exact ⟨u_inv, rfl, (inv_mul_cancel_left u_inv g).symm⟩

/-- **Core Sifting Theorem 4 (Subgroup Membership Invariance at One Level)**:
    If all transversal elements of `L` belong to subgroup `H`, then for `siftOneLevel L g = some g'`,
    `g' ∈ H ↔ g ∈ H`. -/
theorem siftOneLevel_mem_subgroup_iff (L : StabLevel α) (g g' : Equiv.Perm α)
    (H : Subgroup (Equiv.Perm α)) (hSub : LevelInSubgroup L H)
    (hsift : siftOneLevel L g = some g') :
    g' ∈ H ↔ g ∈ H := by
  dsimp [siftOneLevel] at hsift
  cases h_trans : L.invTransversal (g L.basePoint) with
  | none =>
    rw [h_trans] at hsift
    contradiction
  | some u_inv =>
    rw [h_trans] at hsift
    cases hsift
    have hu : u_inv ∈ H := hSub (g L.basePoint) u_inv h_trans
    exact Subgroup.mul_mem_cancel_left H hu

/-- Helper lemma: if `g` fixes `p` and every level in `S` fixes `p`, then `siftFull S g = some r`
    implies `r` fixes `p`. -/
theorem siftFull_preserves_fixed_point :
    ∀ (S : StabChain α) (g r : Equiv.Perm α) (p : α),
      (∀ L ∈ S, LevelFixesPoint L p) → g p = p → siftFull S g = some r → r p = p
  | [], g, r, p, _, hgp, hsift => by
    simp [siftFull] at hsift
    subst hsift
    exact hgp
  | L :: rest, g, r, p, hAll, hgp, hsift => by
    dsimp [siftFull] at hsift
    cases h1 : siftOneLevel L g with
    | none =>
      rw [h1] at hsift
      contradiction
    | some g' =>
      rw [h1] at hsift
      have hg'p : g' p = p :=
        siftOneLevel_preserves_fixed_point L g g' p
          (hAll L List.mem_cons_self) hgp h1
      exact siftFull_preserves_fixed_point rest g' r p
        (fun L' hL' => hAll L' (List.mem_cons_of_mem L hL')) hg'p hsift

/-- **Multi-Level Sifting Theorem 1 (Pointwise Base Stabilisation)**:
    If `S` satisfies `StabChainInvariant S` and `siftFull S g = some r`,
    then the final sifted residue `r` fixes *every* base point `b ∈ baseStabChain S`. -/
theorem siftFull_fixes_all_basePoints :
    ∀ (S : StabChain α) (g r : Equiv.Perm α),
      StabChainInvariant S → siftFull S g = some r →
      ∀ b ∈ baseStabChain S, r b = b
  | [], _, _, _, _, b, hb => by
    simp [baseStabChain] at hb
  | L :: rest, g, r, hInv, hsift, b, hb => by
    rcases hInv with ⟨hTrans, hFixes, hRestInv⟩
    dsimp [siftFull] at hsift
    cases h1 : siftOneLevel L g with
    | none =>
      rw [h1] at hsift
      contradiction
    | some g' =>
      rw [h1] at hsift
      simp only [baseStabChain, List.map_cons, List.mem_cons] at hb
      rcases hb with rfl | hb_rest
      · have hg'_base : g' L.basePoint = L.basePoint :=
          siftOneLevel_fixes_basePoint L g g' hTrans h1
        exact siftFull_preserves_fixed_point rest g' r L.basePoint hFixes hg'_base hsift
      · exact siftFull_fixes_all_basePoints rest g' r hRestInv hsift b hb_rest

/-- **Multi-Level Sifting Theorem 2 (`SiftedPermutation` Subgroup Invariance)**:
    GAP's `SiftedPermutation(S, g)` (`lib/stbc.gi`, line 1343) preserves membership
    in `H`: `siftedPermutation S g ∈ H ↔ g ∈ H`. -/
theorem siftedPermutation_mem_subgroup_iff :
    ∀ (S : StabChain α) (g : Equiv.Perm α) (H : Subgroup (Equiv.Perm α)),
      ChainInSubgroup S H → (siftedPermutation S g ∈ H ↔ g ∈ H)
  | [], g, _, _ => Iff.rfl
  | L :: rest, g, H, hSub => by
    dsimp [siftedPermutation]
    cases h1 : siftOneLevel L g with
    | none => exact Iff.rfl
    | some g' =>
      have h_step : g' ∈ H ↔ g ∈ H :=
        siftOneLevel_mem_subgroup_iff L g g' H (hSub L List.mem_cons_self) h1
      have h_rest : siftedPermutation rest g' ∈ H ↔ g' ∈ H :=
        siftedPermutation_mem_subgroup_iff rest g' H
          (fun L' hL' => hSub L' (List.mem_cons_of_mem L hL'))
      exact h_rest.trans h_step

/-- **Multi-Level Sifting Theorem 3 (`siftFull` Subgroup Invariance)**:
    If `siftFull S g = some r` and `ChainInSubgroup S H`, then `r ∈ H ↔ g ∈ H`. -/
theorem siftFull_mem_subgroup_iff :
    ∀ (S : StabChain α) (g r : Equiv.Perm α) (H : Subgroup (Equiv.Perm α)),
      ChainInSubgroup S H → siftFull S g = some r → (r ∈ H ↔ g ∈ H)
  | [], g, r, _, _, hsift => by
    simp [siftFull] at hsift
    subst hsift
    exact Iff.rfl
  | L :: rest, g, r, H, hSub, hsift => by
    dsimp [siftFull] at hsift
    cases h1 : siftOneLevel L g with
    | none =>
      rw [h1] at hsift
      contradiction
    | some g' =>
      rw [h1] at hsift
      have h_step : g' ∈ H ↔ g ∈ H :=
        siftOneLevel_mem_subgroup_iff L g g' H (hSub L List.mem_cons_self) h1
      have h_rest : r ∈ H ↔ g' ∈ H :=
        siftFull_mem_subgroup_iff rest g' r H
          (fun L' hL' => hSub L' (List.mem_cons_of_mem L hL')) hsift
      exact h_rest.trans h_step

/-- **Main Soundness Theorem for `MembershipTestKnownBase` (`lib/stbc.gi`, line 1411)**:
    If the executable sifting test `membershipTestKnownBase S g` returns `true`,
    then `g` is guaranteed to be an element of `H`. -/
theorem membershipTestKnownBase_sound [Fintype α] (S : StabChain α) (g : Equiv.Perm α)
    (H : Subgroup (Equiv.Perm α)) (hSub : ChainInSubgroup S H)
    (hTest : membershipTestKnownBase S g = true) :
    g ∈ H := by
  dsimp [membershipTestKnownBase] at hTest
  cases hsift : siftFull S g with
  | none =>
    rw [hsift] at hTest
    contradiction
  | some r =>
    rw [hsift] at hTest
    have hr1 : r = 1 := of_decide_eq_true hTest
    have h_iff := siftFull_mem_subgroup_iff S g r H hSub hsift
    rw [hr1] at h_iff
    exact h_iff.mp H.one_mem

/-- **Main Completeness & Equivalence Theorem for BSGS Membership Testing**:
    If `S` is a valid stabiliser chain for `H` whose base points form a base `IsBaseFor S H`,
    and `g` sifts through the basic orbits (`siftFull S g = some r`), then
    `membershipTestKnownBase S g = true ↔ g ∈ H`. -/
theorem membershipTestKnownBase_iff_mem [Fintype α] (S : StabChain α) (g r : Equiv.Perm α)
    (H : Subgroup (Equiv.Perm α)) (hInv : StabChainInvariant S)
    (hSub : ChainInSubgroup S H) (hBase : IsBaseFor S H)
    (hsift : siftFull S g = some r) :
    membershipTestKnownBase S g = true ↔ g ∈ H := by
  constructor
  · exact membershipTestKnownBase_sound S g H hSub
  · intro hg
    unfold membershipTestKnownBase
    rw [hsift]
    dsimp
    have hr_mem : r ∈ H := (siftFull_mem_subgroup_iff S g r H hSub hsift).mpr hg
    have hr_fixes : ∀ b ∈ baseStabChain S, r b = b :=
      siftFull_fixes_all_basePoints S g r hInv hsift
    have hr1 : r = 1 := hBase r hr_mem hr_fixes
    exact decide_eq_true hr1

/-- Product identity for `sizeStabChain` upon prepending a level. -/
@[simp] theorem sizeStabChain_cons (L : StabLevel α) (rest : StabChain α) :
    sizeStabChain (L :: rest) = L.orbit.length * sizeStabChain rest := by
  simp [sizeStabChain, indicesStabChain]

end GAP.Stbc
