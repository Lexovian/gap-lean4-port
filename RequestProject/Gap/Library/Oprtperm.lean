import Mathlib
import RequestProject.Gap.Library.Stbc
import RequestProject.Gap.Library.Grpperm

/-!
# GAP Permutation Group Actions, Orbits & Orbit-Stabilizer Verification (`lib/oprtperm.gi`)

This module provides a constructive, executable, and formally verified model of
permutation group actions (`OnPoints`, `OnPairs`, `OnSets`), breadth-first orbit
enumeration (`OrbitPerms`, `OrbitOp`, `OrbitsDomain`), point stabilizers
(`PermGroupStabilizerOp`), the Orbit-Stabilizer Theorem, and the Schreier-Sims
transversal coset bijection, faithfully following GAP 4's `lib/oprtperm.gi`
(by Heiko Theißen).

## Epistemic Scope (Shared Terminology Guide v2)
* **GAP Anchors:**
  * `GAP:lib/oprtperm.gi:OrbitOp` (lines 17–33) & `OrbitStabilizerOp` (lines 39–59)
  * `GAP:lib/oprtperm.gi:ORBS_PERMGP_PTS` / `Orbits` / `OrbitsDomain` (lines 68–82)
  * `GAP:lib/oprtperm.gi:PermGroupStabilizerOp` (lines 1499–1590)
  * Standard actions `OnPoints`, `OnPairs`, `OnSets`
* **Chunk ID:** `GAP-0247`, IPLD CID `baguqeerahef7xwqlnqsmlizu35dlth3x6sunnnzwvtech7fzfqph7e5zhlkq`.
* **Degree Qualification:** All permutations, supports, and actions are strictly
  qualified over **Support degree** (`PermGroup.movedPoints` / `PermGroup.support`,
  mirroring GAP's `LargestMovedPoint`), independent of internal storage array length.
* **Target Rung:** **Rung 3 (Proved)** — axiomatic Lean 4 verification with zero `sorry`,
  zero `admit`, zero custom axioms, and zero `@[implemented_by]`.

## Main Definitions & Verified Theorems
1. **Group Actions (`onPoints`, `onPairs`, `onSets`):**
   * Identity and product compatibility (`onPoints_one`, `onPoints_mul`, `onPairs_one`,
     `onPairs_mul`, `onSets_one`, `onSets_mul`), cardinality conservation (`onSets_card`),
     and support-degree fixation (`onPoints_eq_self_iff_not_mem_movedPoints`,
     `onPoints_fixed_outside_support`).
2. **Operational BFS Orbits & Domain Partitioning (`orbitStep`, `orbitOfPoint`, `allOrbits`):**
   * Constructive finite BFS orbit expansion `orbitOfPoint` proved identical to the
     subgroup action orbit `MulAction.orbit G.generatedSubgroup x` (`mem_orbitOfPoint_iff`,
     `orbitOfPoint_eq_orbitFinset`).
   * Orbit equivalence, mutual disjointness (`orbitOfPoint_eq_or_disjoint`), and full
     domain partitioning (`orbit_partition`, `allOrbits_pairwiseDisjoint`).
3. **The Orbit-Stabilizer Theorem & BSGS Transversal Synthesis (`GAP-0247` Core):**
   * `orbit_stabilizer_order_relation` & `orbit_stabilizer_natCard`:
     $$\lvert G \rvert = \lvert \mathrm{Orb}_G(x) \rvert \cdot \lvert \mathrm{Stab}_G(x) \rvert$$
   * `transversalRepresentatives_eval_basePoint` & `transversalRepresentatives_bijOn_orbit`:
     Exact pointwise and bijective correspondence between `transversalRepresentatives L`
     and the basic orbit `L.orbit` via `u ↦ u L.basePoint`.
   * `orbit_stabilizer_matches_stabChain`: Synthesis of single-step Schreier-Sims chain
     factorization `sizeStabChain (L :: rest) = L.orbit.length * sizeStabChain rest`
     with the abstract Orbit-Stabilizer cardinality theorem.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace GAP.Oprtperm

open GAP.Stbc GAP.Grpperm

section Actions

variable {α : Type*}

/-! ### 1. Standard Permutation Actions (`OnPoints`, `OnPairs`, `OnSets`) -/

/-- Mirrors GAP's `OnPoints(pnt, g)` action (`lib/oprtperm.gi`, lines 17–33),
    aligned with the `Equiv.Perm α` action convention of `Stbc.lean` and `Grpperm.lean`
    where `(g₁ * g₂) x = g₁ (g₂ x)`. -/
@[inline] def onPoints (x : α) (g : Equiv.Perm α) : α :=
  g x

/-- Mirrors GAP's `OnPairs(pair, g)` action (`lib/oprtperm.gi`, lines 1521–1524):
    componentwise action on ordered pairs. -/
@[inline] def onPairs (p : α × α) (g : Equiv.Perm α) : α × α :=
  (g p.1, g p.2)

/-- Mirrors GAP's `OnSets(set, g)` action (`lib/oprtperm.gi`, lines 1547–1553):
    setwise image of a finite subset under permutation `g`. -/
def onSets [DecidableEq α] (s : Finset α) (g : Equiv.Perm α) : Finset α :=
  s.image g

@[simp] theorem onPoints_one (x : α) :
    onPoints x (1 : Equiv.Perm α) = x :=
  rfl

@[simp] theorem onPoints_mul (x : α) (g₁ g₂ : Equiv.Perm α) :
    onPoints x (g₁ * g₂) = onPoints (onPoints x g₂) g₁ :=
  rfl

@[simp] theorem onPoints_inv_self (x : α) (g : Equiv.Perm α) :
    onPoints (onPoints x g) g⁻¹ = x :=
  Equiv.symm_apply_apply g x

@[simp] theorem onPoints_self_inv (x : α) (g : Equiv.Perm α) :
    onPoints (onPoints x g⁻¹) g = x :=
  Equiv.apply_symm_apply g x

theorem onPoints_eq_smul (x : α) (g : Equiv.Perm α) :
    onPoints x g = g • x :=
  rfl

@[simp] theorem onPairs_one (p : α × α) :
    onPairs p (1 : Equiv.Perm α) = p := by
  cases p
  rfl

@[simp] theorem onPairs_mul (p : α × α) (g₁ g₂ : Equiv.Perm α) :
    onPairs p (g₁ * g₂) = onPairs (onPairs p g₂) g₁ :=
  rfl

@[simp] theorem onPairs_inv_self (p : α × α) (g : Equiv.Perm α) :
    onPairs (onPairs p g) g⁻¹ = p := by
  cases p
  simp [onPairs]

theorem onPairs_injective (g : Equiv.Perm α) :
    Function.Injective (fun p : α × α => onPairs p g) := by
  intro p₁ p₂ h
  rcases p₁ with ⟨a₁, b₁⟩
  rcases p₂ with ⟨a₂, b₂⟩
  simp only [onPairs, Prod.mk.injEq] at h
  exact Prod.ext (g.injective h.1) (g.injective h.2)

@[simp] theorem mem_onSets_iff [DecidableEq α] (s : Finset α) (g : Equiv.Perm α) (y : α) :
    y ∈ onSets s g ↔ g⁻¹ y ∈ s := by
  unfold onSets
  rw [Finset.mem_image]
  constructor
  · rintro ⟨x, hx, rfl⟩
    simpa using hx
  · intro hy
    exact ⟨g⁻¹ y, hy, Equiv.apply_symm_apply g y⟩

@[simp] theorem onSets_one [DecidableEq α] (s : Finset α) :
    onSets s (1 : Equiv.Perm α) = s := by
  ext y
  simp [onSets]

@[simp] theorem onSets_mul [DecidableEq α] (s : Finset α) (g₁ g₂ : Equiv.Perm α) :
    onSets s (g₁ * g₂) = onSets (onSets s g₂) g₁ := by
  unfold onSets
  rw [Finset.image_image]
  rfl

@[simp] theorem onSets_inv_self [DecidableEq α] (s : Finset α) (g : Equiv.Perm α) :
    onSets (onSets s g) g⁻¹ = s := by
  rw [← onSets_mul, inv_mul_cancel, onSets_one]

@[simp] theorem onSets_self_inv [DecidableEq α] (s : Finset α) (g : Equiv.Perm α) :
    onSets (onSets s g⁻¹) g = s := by
  rw [← onSets_mul, mul_inv_cancel, onSets_one]

/-- **Set Action Cardinality Conservation (`OnSets`)**:
    Acting on any finite set `s` by a permutation `g` strictly preserves its cardinality. -/
@[simp] theorem onSets_card [DecidableEq α] (s : Finset α) (g : Equiv.Perm α) :
    (onSets s g).card = s.card :=
  Finset.card_image_of_injective s g.injective

/-! ### Support-Degree Qualification (`PermGroup.movedPoints` & `PermGroup.support`) -/

/-- A point lies outside the **Support degree** (`PermGroup.movedPoints g`) if and only if
    `onPoints` fixes it. -/
theorem onPoints_eq_self_iff_not_mem_movedPoints [DecidableEq α] [Fintype α]
    (g : Equiv.Perm α) (x : α) :
    onPoints x g = x ↔ x ∉ PermGroup.movedPoints g := by
  simp [onPoints, PermGroup.movedPoints]

private theorem foldl_movedPoints_subset [DecidableEq α] [Fintype α]
    (gs : List (Equiv.Perm α)) (init : Finset α) :
    init ⊆ gs.foldl (fun s g => s ∪ PermGroup.movedPoints g) init := by
  induction gs generalizing init with
  | nil => exact Finset.Subset.refl init
  | cons g rest ih =>
    exact Finset.Subset.trans Finset.subset_union_left (ih (init ∪ PermGroup.movedPoints g))

private theorem movedPoints_subset_foldl_of_mem [DecidableEq α] [Fintype α]
    (gs : List (Equiv.Perm α)) (init : Finset α) (g : Equiv.Perm α) (hg : g ∈ gs) :
    PermGroup.movedPoints g ⊆ gs.foldl (fun s h => s ∪ PermGroup.movedPoints h) init := by
  induction gs generalizing init with
  | nil => cases hg
  | cons hd tl ih =>
    rcases List.mem_cons.mp hg with h_eq | htl
    · subst h_eq
      exact Finset.Subset.trans Finset.subset_union_right
        (foldl_movedPoints_subset tl (init ∪ PermGroup.movedPoints g))
    · exact ih (init ∪ PermGroup.movedPoints hd) htl

/-- Every generator of `G` fixes any point outside the group's **Support degree** (`G.support`). -/
theorem onPoints_fixed_outside_support [DecidableEq α] [Fintype α]
    (G : PermGroup α) (x : α) (hx : x ∉ G.support)
    (g : Equiv.Perm α) (hg : g ∈ G.generators) :
    onPoints x g = x := by
  rw [onPoints_eq_self_iff_not_mem_movedPoints]
  intro hmem
  exact hx (movedPoints_subset_foldl_of_mem G.generators ∅ g hg hmem)

end Actions

/-! ### 2. Subgroup Realisation, Stabilizers & Executable BFS Orbits (`lib/oprtperm.gi`) -/

section OrbitsAndStabilizers

variable {α : Type*} [DecidableEq α]

/-- The mathematical subgroup of `Equiv.Perm α` generated by `G.generators`
    (`GeneratorsOfGroup(G)` in `lib/grpperm.gi` / `lib/oprtperm.gi`). -/
def generatedSubgroup (G : PermGroup α) : Subgroup (Equiv.Perm α) :=
  Subgroup.closure {g : Equiv.Perm α | g ∈ G.generators}

/-- Generator membership in `generatedSubgroup G`. -/
theorem generator_mem_generatedSubgroup (G : PermGroup α) {g : Equiv.Perm α}
    (hg : g ∈ G.generators) :
    g ∈ generatedSubgroup G :=
  Subgroup.subset_closure hg

/-- Mirrors GAP's `PermGroupStabilizerOp` on points (`lib/oprtperm.gi`, lines 1499–1533):
    the point stabilizer of `x` inside `generatedSubgroup G`. -/
abbrev pointStabilizer (G : PermGroup α) (x : α) : Subgroup (generatedSubgroup G) :=
  MulAction.stabilizer (generatedSubgroup G) x

/-- Point stabilizer realised directly as a subgroup of `Equiv.Perm α`. -/
def pointStabilizerSubgroup (G : PermGroup α) (x : α) : Subgroup (Equiv.Perm α) :=
  generatedSubgroup G ⊓ MulAction.stabilizer (Equiv.Perm α) x

@[simp] theorem mem_pointStabilizer_iff (G : PermGroup α) (x : α)
    (h : generatedSubgroup G) :
    h ∈ pointStabilizer G x ↔ (h : Equiv.Perm α) x = x :=
  Iff.rfl

@[simp] theorem mem_pointStabilizerSubgroup_iff (G : PermGroup α) (x : α)
    (g : Equiv.Perm α) :
    g ∈ pointStabilizerSubgroup G x ↔ g ∈ generatedSubgroup G ∧ g x = x :=
  Iff.rfl

/-- Mathematical orbit of `x` under `generatedSubgroup G`. -/
def orbitSet (G : PermGroup α) (x : α) : Set α :=
  MulAction.orbit (generatedSubgroup G) x

/-- Finite-set view of the mathematical orbit `MulAction.orbit (generatedSubgroup G) x`. -/
noncomputable def orbitFinset [Fintype α] (G : PermGroup α) (x : α) : Finset α :=
  by
    classical
    exact (orbitSet G x).toFinset

@[simp] theorem mem_orbitFinset_iff [Fintype α] (G : PermGroup α) (x y : α) :
    y ∈ orbitFinset G x ↔ y ∈ MulAction.orbit (generatedSubgroup G) x := by
  unfold orbitFinset orbitSet
  classical
  exact Set.mem_toFinset

/-! #### Constructive Breadth-First Orbit Algorithm (`OrbitPerms`, `lib/oprtperm.gi`, line 31) -/

/-- Auxiliary union of images of `S` across a generator list `gens`. -/
def generatorImages (gens : List (Equiv.Perm α)) (S : Finset α) : Finset α :=
  gens.foldr (fun g acc => onSets S g ∪ acc) ∅

@[simp] theorem mem_generatorImages_iff (gens : List (Equiv.Perm α)) (S : Finset α) (y : α) :
    y ∈ generatorImages gens S ↔ ∃ g ∈ gens, y ∈ onSets S g := by
  induction gens with
  | nil =>
    simp [generatorImages]
  | cons hd tl ih =>
    change y ∈ onSets S hd ∪ generatorImages tl S ↔ ∃ g ∈ hd :: tl, y ∈ onSets S g
    rw [Finset.mem_union, ih]
    simp only [List.mem_cons, exists_eq_or_imp]

/-- Single BFS expansion layer of GAP's `OrbitPerms(acts, pnt)` (`lib/oprtperm.gi`, line 31):
    expands a frontier set `S` by all one-step images under `gens`. -/
def orbitStep (gens : List (Equiv.Perm α)) (S : Finset α) : Finset α :=
  S ∪ generatorImages gens S

theorem subset_orbitStep (gens : List (Equiv.Perm α)) (S : Finset α) :
    S ⊆ orbitStep gens S :=
  Finset.subset_union_left

@[simp] theorem mem_orbitStep_iff (gens : List (Equiv.Perm α)) (S : Finset α) (y : α) :
    y ∈ orbitStep gens S ↔ y ∈ S ∨ ∃ g ∈ gens, ∃ z ∈ S, g z = y := by
  unfold orbitStep
  rw [Finset.mem_union, mem_generatorImages_iff]
  constructor
  · rintro (hy | ⟨g, hg, hy⟩)
    · exact Or.inl hy
    · unfold onSets at hy
      rcases Finset.mem_image.mp hy with ⟨z, hz, rfl⟩
      exact Or.inr ⟨g, hg, z, hz, rfl⟩
  · rintro (hy | ⟨g, hg, z, hz, rfl⟩)
    · exact Or.inl hy
    · exact Or.inr ⟨g, hg, Finset.mem_image.mpr ⟨z, hz, rfl⟩⟩

theorem orbitStep_mono (gens : List (Equiv.Perm α)) {S T : Finset α} (h : S ⊆ T) :
    orbitStep gens S ⊆ orbitStep gens T := by
  intro y hy
  rw [mem_orbitStep_iff] at hy ⊢
  rcases hy with hyS | ⟨g, hg, z, hz, rfl⟩
  · exact Or.inl (h hyS)
  · exact Or.inr ⟨g, hg, z, h hz, rfl⟩

/-- Computable breadth-first orbit calculation mirroring GAP's `OrbitPerms(G.generators, x)`
    (`lib/oprtperm.gi`, lines 17–33): iterates `orbitStep` `Fintype.card α` times from `{x}`. -/
def orbitOfPoint [Fintype α] (G : PermGroup α) (x : α) : Finset α :=
  (orbitStep G.generators)^[Fintype.card α] {x}

/-- Mirrors GAP's `OrbitOp` fast-path (`lib/oprtperm.gi`, lines 27–32):
    returns the precomputed basic orbit if `x` lies in the top basic orbit of `G.chain`,
    and falls back to `orbitOfPoint` otherwise. -/
def orbitOp [Fintype α] (G : PermGroup α) (x : α) : Finset α :=
  match G.chain with
  | L :: _ =>
    if isInBasicOrbit L x then L.orbit.toFinset else orbitOfPoint G x
  | [] => orbitOfPoint G x

/-- Mirrors GAP's `OrbitsDomain(G, Ω)` / `ORBS_PERMGP_PTS` (`lib/oprtperm.gi`, lines 68–82):
    computes the family of all `G`-orbits across the finite domain `α`. -/
def allOrbits [Fintype α] (G : PermGroup α) : Finset (Finset α) :=
  Finset.univ.image (orbitOfPoint G)

/-! #### Soundness, Termination & Completeness of `orbitOfPoint` -/

private theorem iterate_subset_of_self_subset {β : Type*} (f : Finset β → Finset β)
    (hf : ∀ s, s ⊆ f s) (S : Finset β) :
    ∀ k : ℕ, S ⊆ f^[k] S
  | 0 => Finset.Subset.refl S
  | k + 1 => by
    rw [Function.iterate_succ_apply']
    exact Finset.Subset.trans (iterate_subset_of_self_subset f hf S k) (hf (f^[k] S))

private theorem iterate_eq_of_fixpoint {β : Type*} (f : β → β) (s : β)
    {j : ℕ} (hfix : f (f^[j] s) = f^[j] s) :
    ∀ k : ℕ, j ≤ k → f^[k] s = f^[j] s
  | 0, hk => by
    have hj : j = 0 := Nat.eq_zero_of_le_zero hk
    subst hj
    rfl
  | k + 1, hk => by
    rcases Nat.of_le_succ hk with hle | rfl
    · rw [Function.iterate_succ_apply', iterate_eq_of_fixpoint f s hfix k hle, hfix]
    · rfl

private theorem exists_fixpoint_or_card_ge (f : Finset α → Finset α)
    (hf : ∀ s, s ⊆ f s) (S : Finset α) (hS : 1 ≤ S.card) :
    ∀ n : ℕ, (∃ j < n, f (f^[j] S) = f^[j] S) ∨ n + 1 ≤ (f^[n] S).card
  | 0 => Or.inr hS
  | n + 1 => by
    rcases exists_fixpoint_or_card_ge f hf S hS n with ⟨j, hj, hfix⟩ | hcard
    · exact Or.inl ⟨j, Nat.lt_succ_of_lt hj, hfix⟩
    · by_cases heq : f (f^[n] S) = f^[n] S
      · exact Or.inl ⟨n, Nat.lt_succ_self n, heq⟩
      · have hssub : f^[n] S ⊂ f (f^[n] S) :=
          Finset.ssubset_iff_subset_ne.mpr ⟨hf (f^[n] S), Ne.symm heq⟩
        have hlt : (f^[n] S).card < (f^[n + 1] S).card := by
          rw [Function.iterate_succ_apply']
          exact Finset.card_lt_card hssub
        exact Or.inr (by omega)

/-- On a finite domain `α`, iterating `orbitStep` `Fintype.card α` times reaches a strict
    fixed point (`orbitStep G.generators (orbitOfPoint G x) = orbitOfPoint G x`). -/
theorem orbitStep_orbitOfPoint_eq [Fintype α] (G : PermGroup α) (x : α) :
    orbitStep G.generators (orbitOfPoint G x) = orbitOfPoint G x := by
  have h1 : 1 ≤ ({x} : Finset α).card := by simp
  rcases exists_fixpoint_or_card_ge (orbitStep G.generators)
      (subset_orbitStep G.generators) {x} h1 (Fintype.card α) with ⟨j, hj, hfix⟩ | hbig
  · unfold orbitOfPoint
    have h_eq := iterate_eq_of_fixpoint (orbitStep G.generators) {x} hfix
      (Fintype.card α) (Nat.le_of_lt hj)
    rw [h_eq, hfix]
  · have hle : ((orbitStep G.generators)^[Fintype.card α] {x}).card ≤ Fintype.card α :=
      Finset.card_le_univ _
    omega

/-- The setwise stabilizer `{g : Equiv.Perm α | onSets S g = S}` of any finite set `S`
    forms a subgroup of `Equiv.Perm α`. -/
def setwiseStabilizerSubgroup (S : Finset α) : Subgroup (Equiv.Perm α) where
  carrier := {g : Equiv.Perm α | onSets S g = S}
  one_mem' := onSets_one S
  mul_mem' := by
    intro g₁ g₂ hg₁ hg₂
    change onSets S (g₁ * g₂) = S
    rw [onSets_mul, hg₂, hg₁]
  inv_mem' := by
    intro g hg
    change onSets S g⁻¹ = S
    have h := onSets_inv_self S g
    rwa [hg] at h

/-- Every step of `orbitStep G.generators` stays within `orbitFinset G x`. -/
theorem orbitStep_subset_orbitFinset [Fintype α] (G : PermGroup α) (x : α)
    {S : Finset α} (hS : S ⊆ orbitFinset G x) :
    orbitStep G.generators S ⊆ orbitFinset G x := by
  intro y hy
  rw [mem_orbitStep_iff] at hy
  rcases hy with hyS | ⟨g, hg, z, hz, rfl⟩
  · exact hS hyS
  · have hz_orb : z ∈ MulAction.orbit (generatedSubgroup G) x :=
      (mem_orbitFinset_iff G x z).mp (hS hz)
    rcases hz_orb with ⟨h, rfl⟩
    rw [mem_orbitFinset_iff]
    exact ⟨⟨g, generator_mem_generatedSubgroup G hg⟩ * h, rfl⟩

/-- `x` always belongs to its computed orbit `orbitOfPoint G x`. -/
theorem mem_orbitOfPoint_self [Fintype α] (G : PermGroup α) (x : α) :
    x ∈ orbitOfPoint G x := by
  unfold orbitOfPoint
  have hsub := iterate_subset_of_self_subset (orbitStep G.generators)
    (subset_orbitStep G.generators) {x} (Fintype.card α)
  exact hsub (Finset.mem_singleton_self x)

theorem orbitOfPoint_nonempty [Fintype α] (G : PermGroup α) (x : α) :
    (orbitOfPoint G x).Nonempty :=
  ⟨x, mem_orbitOfPoint_self G x⟩

/-- **Exact Soundness & Completeness of Operational BFS Orbits**:
    The executable finite BFS orbit `orbitOfPoint G x` equals the mathematical orbit
    `orbitFinset G x` as a finite set. -/
theorem orbitOfPoint_eq_orbitFinset [Fintype α] (G : PermGroup α) (x : α) :
    orbitOfPoint G x = orbitFinset G x := by
  apply Finset.Subset.antisymm
  · unfold orbitOfPoint
    suffices ∀ k : ℕ, (orbitStep G.generators)^[k] {x} ⊆ orbitFinset G x from
      this (Fintype.card α)
    intro k
    induction k with
    | zero =>
      intro y hy
      rw [Finset.mem_singleton.mp hy, mem_orbitFinset_iff]
      exact MulAction.mem_orbit_self x
    | succ k ih =>
      rw [Function.iterate_succ_apply']
      exact orbitStep_subset_orbitFinset G x ih
  · -- Conversely, `orbitOfPoint G x` is closed under every generator, hence under `generatedSubgroup G`.
    have hfix := orbitStep_orbitOfPoint_eq G x
    have hgens_in_stab : {g : Equiv.Perm α | g ∈ G.generators} ⊆
        (setwiseStabilizerSubgroup (orbitOfPoint G x) : Set (Equiv.Perm α)) := by
      intro g hg
      change onSets (orbitOfPoint G x) g = orbitOfPoint G x
      apply Finset.eq_of_subset_of_card_le
      · intro y hy
        have hstep : y ∈ orbitStep G.generators (orbitOfPoint G x) := by
          unfold orbitStep
          exact Finset.mem_union_right _
            ((mem_generatorImages_iff G.generators (orbitOfPoint G x) y).mpr ⟨g, hg, hy⟩)
        rwa [hfix] at hstep
      · rw [onSets_card]
    have hclosure : generatedSubgroup G ≤ setwiseStabilizerSubgroup (orbitOfPoint G x) :=
      (Subgroup.closure_le (setwiseStabilizerSubgroup (orbitOfPoint G x))).mpr hgens_in_stab
    intro y hy
    rcases (mem_orbitFinset_iff G x y).mp hy with ⟨h, rfl⟩
    have h_inv : onSets (orbitOfPoint G x) (h : Equiv.Perm α) = orbitOfPoint G x :=
      hclosure h.2
    rw [← h_inv]
    exact Finset.mem_image_of_mem (h : Equiv.Perm α) (mem_orbitOfPoint_self G x)

/-- Pointwise membership characterization of `orbitOfPoint G x`. -/
@[simp] theorem mem_orbitOfPoint_iff [Fintype α] (G : PermGroup α) (x y : α) :
    y ∈ orbitOfPoint G x ↔ y ∈ MulAction.orbit (generatedSubgroup G) x := by
  rw [orbitOfPoint_eq_orbitFinset, mem_orbitFinset_iff]

/-- `orbitOfPoint G x` is invariant under every permutation in `generatedSubgroup G`. -/
theorem onSets_orbitOfPoint_eq [Fintype α] (G : PermGroup α) (x : α)
    {g : Equiv.Perm α} (hg : g ∈ generatedSubgroup G) :
    onSets (orbitOfPoint G x) g = orbitOfPoint G x := by
  ext y
  rw [mem_onSets_iff, mem_orbitOfPoint_iff, mem_orbitOfPoint_iff]
  constructor
  · rintro ⟨h, hh⟩
    refine ⟨⟨g, hg⟩ * h, ?_⟩
    change g (h • x) = y
    dsimp at hh
    rw [hh]
    exact Equiv.apply_symm_apply g y
  · rintro ⟨h, rfl⟩
    exact ⟨⟨g⁻¹, (generatedSubgroup G).inv_mem hg⟩ * h, rfl⟩

/-- Two orbits are equal if and only if one base point lies in the other's orbit. -/
theorem orbitOfPoint_eq_iff [Fintype α] (G : PermGroup α) (x y : α) :
    orbitOfPoint G x = orbitOfPoint G y ↔ x ∈ orbitOfPoint G y := by
  constructor
  · intro h
    rw [← h]
    exact mem_orbitOfPoint_self G x
  · intro hx
    ext z
    rw [mem_orbitOfPoint_iff, mem_orbitOfPoint_iff]
    rw [mem_orbitOfPoint_iff] at hx
    rw [MulAction.orbit_eq_iff.mpr hx]

/-- **Orbit Disjointness Dichotomy (`OrbitsDomain`)**:
    Any two orbits of `G` are either identical or mutually disjoint. -/
theorem orbitOfPoint_eq_or_disjoint [Fintype α] (G : PermGroup α) (x y : α) :
    orbitOfPoint G x = orbitOfPoint G y ∨ Disjoint (orbitOfPoint G x) (orbitOfPoint G y) := by
  by_cases h : Disjoint (orbitOfPoint G x) (orbitOfPoint G y)
  · exact Or.inr h
  · left
    rw [Finset.not_disjoint_iff] at h
    rcases h with ⟨z, hzx, hzy⟩
    have hx : orbitOfPoint G z = orbitOfPoint G x := (orbitOfPoint_eq_iff G z x).mpr hzx
    have hy : orbitOfPoint G z = orbitOfPoint G y := (orbitOfPoint_eq_iff G z y).mpr hzy
    exact hx.symm.trans hy

/-- **Domain Partition Theorem 1 (Full Coverage)**:
    `allOrbits G` covers the entire finite domain `Finset.univ`. -/
theorem orbit_partition [Fintype α] (G : PermGroup α) :
    (allOrbits G).biUnion id = Finset.univ := by
  apply Finset.ext
  intro x
  constructor
  · intro _
    exact Finset.mem_univ x
  · intro _
    rw [Finset.mem_biUnion]
    refine ⟨orbitOfPoint G x, ?_, mem_orbitOfPoint_self G x⟩
    unfold allOrbits
    exact Finset.mem_image_of_mem (orbitOfPoint G) (Finset.mem_univ x)

/-- **Domain Partition Theorem 2 (Pairwise Disjointness)**:
    Distinct elements of `allOrbits G` are pairwise disjoint. -/
theorem allOrbits_pairwiseDisjoint [Fintype α] (G : PermGroup α) :
    (allOrbits G : Set (Finset α)).PairwiseDisjoint id := by
  intro O₁ hO₁ O₂ hO₂ hne
  simp only [allOrbits, Finset.coe_image, Finset.coe_univ, Set.image_univ] at hO₁ hO₂
  rcases hO₁ with ⟨x, rfl⟩
  rcases hO₂ with ⟨y, rfl⟩
  rcases orbitOfPoint_eq_or_disjoint G x y with heq | hdisj
  · exact absurd heq hne
  · exact hdisj

end OrbitsAndStabilizers

/-! ### 3. The Orbit-Stabilizer Theorem & Schreier-Sims Transversal Bijection (`GAP-0247`) -/

section OrbitStabilizer

variable {α : Type*} [DecidableEq α]

/-- Cardinality bridge between `orbitOfPoint G x` and `MulAction.orbit (generatedSubgroup G) x`. -/
theorem card_orbitOfPoint_eq_fintypeCard [Fintype α] (G : PermGroup α) (x : α)
    [Fintype (MulAction.orbit (generatedSubgroup G) x)] :
    (orbitOfPoint G x).card = Fintype.card (MulAction.orbit (generatedSubgroup G) x) := by
  let e : ↥(orbitOfPoint G x) ≃ MulAction.orbit (generatedSubgroup G) x :=
    { toFun := fun ⟨y, hy⟩ => ⟨y, (mem_orbitOfPoint_iff G x y).mp hy⟩
      invFun := fun ⟨y, hy⟩ => ⟨y, (mem_orbitOfPoint_iff G x y).mpr hy⟩
      left_inv := fun ⟨_, _⟩ => rfl
      right_inv := fun ⟨_, _⟩ => rfl }
  rw [← Fintype.card_coe]
  exact Fintype.card_congr e

/-- **THE ORBIT-STABILIZER THEOREM (`GAP-0247`: Typeclass-Free `Nat.card` Formulation)**:
    Unconditional cardinality identity over any `[Fintype α]` without auxiliary decidability
    typeclasses on subgroups:
    $$\mathrm{Nat.card}(G) = \lvert \mathrm{orbitOfPoint}(G, x) \rvert \cdot \mathrm{Nat.card}(\mathrm{Stab}_G(x))$$ -/
theorem orbit_stabilizer_natCard [Fintype α] (G : PermGroup α) (x : α) :
    Nat.card (generatedSubgroup G) =
      (orbitOfPoint G x).card * Nat.card (pointStabilizer G x) := by
  classical
  letI : Fintype (generatedSubgroup G) := Fintype.ofFinite _
  letI : Fintype (MulAction.orbit (generatedSubgroup G) x) := Fintype.ofFinite _
  have hmul :=
    (MulAction.card_orbit_mul_card_stabilizer_eq_card_group (generatedSubgroup G) x).symm
  have horb : (orbitOfPoint G x).card =
      Fintype.card (MulAction.orbit (generatedSubgroup G) x) :=
    card_orbitOfPoint_eq_fintypeCard G x
  rw [Nat.card_eq_fintype_card, Nat.card_eq_fintype_card, horb]
  exact hmul

/-- **THE ORBIT-STABILIZER THEOREM (`GAP-0247`: `Fintype.card` Formulation)**:
    For any permutation group `G : PermGroup α` acting on a finite domain `α` and any
    point `x : α`, the order of the generated group equals the product of the computable
    orbit cardinality and the point stabilizer order:
    $$\lvert G \rvert = \lvert \mathrm{Orb}_G(x) \rvert \cdot \lvert \mathrm{Stab}_G(x) \rvert$$ -/
theorem orbit_stabilizer_order_relation [Fintype α] (G : PermGroup α) (x : α)
    [Fintype (generatedSubgroup G)] [Fintype (pointStabilizer G x)] :
    Fintype.card (generatedSubgroup G) =
      (orbitOfPoint G x).card * Fintype.card (pointStabilizer G x) := by
  rw [← Nat.card_eq_fintype_card, ← Nat.card_eq_fintype_card]
  exact orbit_stabilizer_natCard G x

/-! #### Transversal Coset Bijection (`Stbc.lean` & `Grpperm.lean` Bridge) -/

omit [DecidableEq α] in
private theorem filterMap_inv_eval_eq (invT : α → Option (Equiv.Perm α)) (bpt : α)
    (l : List α)
    (hMaps : ∀ y ∈ l, ∀ u_inv : Equiv.Perm α, invT y = some u_inv → u_inv y = bpt)
    (hCov : ∀ y ∈ l, (invT y).isSome) :
    ((l.filterMap invT).map (fun u_inv => u_inv⁻¹)).map (fun u => u bpt) = l := by
  induction l with
  | nil => rfl
  | cons y ys ih =>
    have hyCov : (invT y).isSome := hCov y List.mem_cons_self
    cases h_lookup : invT y with
    | none =>
      rw [h_lookup] at hyCov
      contradiction
    | some u_inv =>
      simp only [List.filterMap_cons, h_lookup, List.map_cons]
      have hub : u_inv y = bpt := hMaps y List.mem_cons_self u_inv h_lookup
      have hu_eval : u_inv⁻¹ bpt = y := by
        rw [← hub]
        exact Equiv.symm_apply_apply u_inv y
      rw [hu_eval]
      congr 1
      exact ih
        (fun z hz => hMaps z (List.mem_cons_of_mem y hz))
        (fun z hz => hCov z (List.mem_cons_of_mem y hz))

/-- **Exact Pointwise Transversal Evaluation Identity**:
    For any stabiliser level `L` satisfying `TransversalInvariant L` (`Stbc.lean`)
    and `FullTransversalCoverage L` (`Grpperm.lean`), evaluating each transversal
    coset representative `u ∈ transversalRepresentatives L` at `L.basePoint` recovers
    `L.orbit` pointwise in exact order. -/
theorem transversalRepresentatives_eval_basePoint (L : StabLevel α)
    (hInv : TransversalInvariant L) (hCov : FullTransversalCoverage L) :
    (transversalRepresentatives L).map (fun u => u L.basePoint) = L.orbit := by
  unfold transversalRepresentatives transversalInverses
  exact filterMap_inv_eval_eq L.invTransversal L.basePoint L.orbit
    (fun y _ u_inv h => hInv.maps_to_base y u_inv h) hCov

/-- If `L.orbit` has no duplicates, then `transversalRepresentatives L` also has no duplicates. -/
theorem transversalRepresentatives_nodup (L : StabLevel α)
    (hInv : TransversalInvariant L) (hCov : FullTransversalCoverage L)
    (hNodup : L.orbit.Nodup) :
    (transversalRepresentatives L).Nodup := by
  rw [← transversalRepresentatives_eval_basePoint L hInv hCov] at hNodup
  exact List.Nodup.of_map _ hNodup

/-- **Transversal-to-Basic-Orbit Bijection Theorem (`GAP-0247` Bridge)**:
    Under `TransversalInvariant L`, `FullTransversalCoverage L`, and `L.orbit.Nodup`,
    the evaluation map `u ↦ u L.basePoint` restricts to a strict bijection between the
    transversal coset representatives `transversalRepresentatives L` and the basic orbit `L.orbit`. -/
theorem transversalRepresentatives_bijOn_orbit (L : StabLevel α)
    (hInv : TransversalInvariant L) (hCov : FullTransversalCoverage L)
    (hNodup : L.orbit.Nodup) :
    Set.BijOn (fun u : Equiv.Perm α => u L.basePoint)
      {u | u ∈ transversalRepresentatives L}
      {y | y ∈ L.orbit} := by
  have heval := transversalRepresentatives_eval_basePoint L hInv hCov
  refine ⟨?_, ?_, ?_⟩
  · intro u hu
    change u L.basePoint ∈ L.orbit
    rw [← heval]
    exact List.mem_map_of_mem hu
  · intro u₁ hu₁ u₂ hu₂ heq
    have hmap_nodup : ((transversalRepresentatives L).map (fun u => u L.basePoint)).Nodup := by
      rwa [heval]
    exact (List.nodup_map_iff_inj_on (transversalRepresentatives_nodup L hInv hCov hNodup)).mp
      hmap_nodup u₁ hu₁ u₂ hu₂ heq
  · intro y hy
    change y ∈ L.orbit at hy
    rw [← heval] at hy
    rcases List.mem_map.mp hy with ⟨u, hu, rfl⟩
    exact ⟨u, hu, rfl⟩

/-- Distinct transversal representatives map `L.basePoint` to distinct points, and therefore
    lie in distinct left cosets of the point stabilizer `Stab(L.basePoint)`. -/
theorem transversalRepresentatives_coset_separation (L : StabLevel α)
    (hInv : TransversalInvariant L) (hCov : FullTransversalCoverage L)
    (hNodup : L.orbit.Nodup)
    {u₁ u₂ : Equiv.Perm α}
    (hu₁ : u₁ ∈ transversalRepresentatives L)
    (hu₂ : u₂ ∈ transversalRepresentatives L) :
    (u₁⁻¹ * u₂) L.basePoint = L.basePoint ↔ u₁ = u₂ := by
  constructor
  · intro hfix
    have himg : u₂ L.basePoint = u₁ L.basePoint := by
      have h1 := congrArg u₁ hfix
      simpa [Equiv.Perm.mul_apply] using h1
    exact (transversalRepresentatives_bijOn_orbit L hInv hCov hNodup).injOn hu₂ hu₁ himg |>.symm
  · rintro rfl
    simp

/-- **Master Synthesis Theorem (`orbit_stabilizer_matches_stabChain`)**:
    Unifies the operational Schreier-Sims single-level product formula from `Stbc.lean`
    and `Grpperm.lean` (`sizeStabChain (L :: rest) = L.orbit.length * sizeStabChain rest`)
    with the abstract Orbit-Stabilizer cardinality theorem:
    when `L` is a valid nodup basic orbit level of `G` at `L.basePoint` and `rest`
    certifies the stabilizer order `Nat.card (pointStabilizer G L.basePoint)`,
    `sizeStabChain (L :: rest)` equals both the transversal word count and
    `Nat.card (generatedSubgroup G)`. -/
theorem orbit_stabilizer_matches_stabChain [Fintype α]
    (G : PermGroup α) (L : StabLevel α) (rest : StabChain α)
    (hChain : G.chain = L :: rest)
    (hCovChain : ChainFullCoverage (L :: rest))
    (hNodup : L.orbit.Nodup)
    (hOrbitEq : {y : α | y ∈ L.orbit} = {y : α | y ∈ orbitOfPoint G L.basePoint})
    (hStabSize : sizeStabChain rest = Nat.card (pointStabilizer G L.basePoint)) :
    G.size = L.orbit.length * sizeStabChain rest ∧
    (transversalWords G.chain).length = G.size ∧
    G.size = Nat.card (generatedSubgroup G) := by
  have hSizeStep : G.size = L.orbit.length * sizeStabChain rest := by
    unfold PermGroup.size
    rw [hChain, sizeStabChain_cons]
  have hWords : (transversalWords G.chain).length = G.size := by
    apply permGroup_order_eq_prod_basicOrbits G
    rwa [hChain]
  have hLenEqCard : L.orbit.length = (orbitOfPoint G L.basePoint).card := by
    have hfin : L.orbit.toFinset = orbitOfPoint G L.basePoint := by
      ext y
      simp only [List.mem_toFinset]
      exact Set.ext_iff.mp hOrbitEq y
    rw [← hfin, List.toFinset_card_of_nodup hNodup]
  have hOrderEq : G.size = Nat.card (generatedSubgroup G) := by
    rw [hSizeStep, hLenEqCard, hStabSize, ← orbit_stabilizer_natCard G L.basePoint]
  exact ⟨hSizeStep, hWords, hOrderEq⟩

end OrbitStabilizer

/-! ### 4. Concrete Executable Verification Instances (`S₃` and `C₄`) -/

section ConcreteExamples

/-- Transposition `(0 1)` in `Sym(Fin 3)`. -/
def swap01_fin3 : Equiv.Perm (Fin 3) := Equiv.swap 0 1

/-- Transposition `(1 2)` in `Sym(Fin 3)`. -/
def swap12_fin3 : Equiv.Perm (Fin 3) := Equiv.swap 1 2

/-- Concrete group `S₃` on `Fin 3` generated by `(0 1)` and `(1 2)`. -/
def sym3Group : PermGroup (Fin 3) :=
  { generators := [swap01_fin3, swap12_fin3]
    chain := [] }

/-- Subgroup generated solely by `(0 1)` on `Fin 3` (fixes point `2`). -/
def stab2Group : PermGroup (Fin 3) :=
  { generators := [swap01_fin3]
    chain := [] }

-- Action checks (`onPoints`, `onPairs`, `onSets`)
example : onPoints (0 : Fin 3) swap01_fin3 = 1 := by decide
example : onPairs ((0 : Fin 3), (2 : Fin 3)) swap01_fin3 = (1, 2) := by decide
example : (onSets ({0, 2} : Finset (Fin 3)) swap01_fin3).card = 2 := by decide

-- Transitive orbit of `S₃` on `Fin 3` has cardinality 3 (`{0, 1, 2}`)
example : (orbitOfPoint sym3Group (0 : Fin 3)).card = 3 := by decide
example : (allOrbits sym3Group).card = 1 := by decide

-- Intransitive action of `⟨(0 1)⟩` on `Fin 3`: orbits `{0, 1}` (size 2) and `{2}` (size 1)
example : (orbitOfPoint stab2Group (0 : Fin 3)).card = 2 := by decide
example : (orbitOfPoint stab2Group (2 : Fin 3)).card = 1 := by decide
example : (allOrbits stab2Group).card = 2 := by decide

end ConcreteExamples

end GAP.Oprtperm
