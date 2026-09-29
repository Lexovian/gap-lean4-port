import Mathlib

set_option linter.unusedSectionVars false

/-!
# GAP Ordered Partitions for Permutation Group Backtrack (`lib/partitio.gi`)

This module formalizes ordered partitions and their cell-refinement invariants used in
GAP's permutation group backtrack and stabiliser-chain algorithms, faithfully following
GAP 4's `lib/partitio.gi` (by Heiko Theißen).

## Main Definitions (mirroring `lib/partitio.gi`)
* `GAP.Partitio.OrderedPartition`: Ordered partition structure with non-empty, pairwise
  disjoint cells (`lib/partitio.gi`, lines 34–57).
* `GAP.Partitio.numberCells`: `NumberCells(P)` (`lib/partitio.gi`, line 68).
* `GAP.Partitio.cell`: `Cell(P, m)` (`lib/partitio.gi`, line 75).
* `GAP.Partitio.cells`: `Cells(Pi)` (`lib/partitio.gi`, line 83).
* `GAP.Partitio.cellNoPoint`: `CellNoPoint(part, pt)` (`lib/partitio.gi`, line 95).
* `GAP.Partitio.pointInCellNo`: `PointInCellNo(part, pt, no)` (`lib/partitio.gi`, line 109).
* `GAP.Partitio.fixcells`: `Fixcells(P)` (`lib/partitio.gi`, line 117).
* `GAP.Partitio.splitCellByPred`: Core cell-splitting operation underlying `SplitCell`
  (`lib/partitio.gi`, line 141) and `IsolatePoint` (`lib/partitio.gi`, line 174).
* `GAP.Partitio.trivialPartition`: `TrivialPartition(Omega)` (`lib/partitio.gi`, line 198).
* `GAP.Partitio.smallestPrimeDivisor`: `SmallestPrimeDivisor(size)` (`lib/partitio.gi`, line 206).
-/

namespace GAP.Partitio

variable {α : Type*} [DecidableEq α]

/-- An ordered partition of a finite domain, mirroring GAP's `Partition` record in
    `lib/partitio.gi` (lines 18–57). Every cell is non-empty and cells are pairwise disjoint. -/
structure OrderedPartition (α : Type*) [DecidableEq α] where
  /-- The ordered list of cells. -/
  cells : List (List α)
  /-- GAP invariant (`lib/partitio.gi`, line 48): `"Partition: cells must not be empty"`. -/
  cells_nonempty : ∀ c ∈ cells, c ≠ []
  /-- Cells are pairwise disjoint. -/
  cells_disjoint : cells.Pairwise List.Disjoint

/-- Mirrors GAP's `NumberCells(P)` (`lib/partitio.gi`, line 68). -/
@[inline] def numberCells (P : OrderedPartition α) : ℕ :=
  P.cells.length

/-- Mirrors GAP's `Cell(P, m)` (0-indexed in Lean, `lib/partitio.gi`, line 75). -/
def cell (P : OrderedPartition α) (m : ℕ) : List α :=
  P.cells.getD m []

/-- Mirrors GAP's `Cells(Pi)` (`lib/partitio.gi`, line 83). -/
@[inline] def cells (P : OrderedPartition α) : List (List α) :=
  P.cells

/-- Mirrors `P.points` (`lib/partitio.gi`, line 37): concatenation of all cells. -/
def points (P : OrderedPartition α) : List α :=
  P.cells.flatten

/-- Mirrors `P.lengths` (`lib/partitio.gi`, line 39): list of cell lengths. -/
def lengths (P : OrderedPartition α) : List ℕ :=
  P.cells.map List.length

/-- Mirrors GAP's `CellNoPoint(part, pt)` (`lib/partitio.gi`, line 95):
    returns the index of the cell containing `pt`. -/
def cellNoPoint (P : OrderedPartition α) (pt : α) : Option ℕ :=
  P.cells.findIdx? (fun c => decide (pt ∈ c))

/-- Mirrors GAP's `CellNoPoints(part, pts)` (`lib/partitio.gi`, line 102). -/
def cellNoPoints (P : OrderedPartition α) (pts : List α) : List (Option ℕ) :=
  pts.map (cellNoPoint P)

/-- Mirrors GAP's `PointInCellNo(part, pt, no)` (`lib/partitio.gi`, line 109). -/
def pointInCellNo (P : OrderedPartition α) (pt : α) (no : ℕ) : Bool :=
  decide (pt ∈ cell P no)

/-- Mirrors GAP's `Fixcells(P)` (`lib/partitio.gi`, line 117):
    extracts the points of all singleton cells (fixed points of the partition). -/
def fixcells (P : OrderedPartition α) : List α :=
  P.cells.filterMap (fun c => match c with | [x] => some x | _ => none)

/-- Mirrors GAP's `TrivialPartition(Omega)` (`lib/partitio.gi`, line 198):
    constructs the one-cell partition `[Omega]` for a non-empty domain `Omega`. -/
def trivialPartition (omega : List α) (h : omega ≠ []) : OrderedPartition α where
  cells := [omega]
  cells_nonempty := by
    intro c hc
    simp only [List.mem_singleton] at hc
    subst hc
    exact h
  cells_disjoint := List.pairwise_singleton List.Disjoint omega

/-- Core cell-splitting operation underlying `SplitCell` (`lib/partitio.gi`, line 141)
    and `IsolatePoint` (`lib/partitio.gi`, line 174): partitions a cell `c` by a boolean
    test function `pred` into `(c_true, c_false)`. -/
def splitCellByPred (c : List α) (pred : α → Bool) : List α × List α :=
  (c.filter pred, c.filter (fun x => !pred x))

/-- Mirrors GAP's `SmallestPrimeDivisor(size)` (`lib/partitio.gi`, line 206). -/
def smallestPrimeDivisor (size : ℕ) : ℕ :=
  if size ≤ 1 then 1 else Nat.minFac size

/-! ### Verified Invariants of Ordered Partitions and Refinement -/

/-- Every cell in an `OrderedPartition` has strictly positive length. -/
theorem cell_length_pos (P : OrderedPartition α) (c : List α) (hc : c ∈ P.cells) :
    0 < c.length :=
  List.length_pos_of_ne_nil (P.cells_nonempty c hc)

/-- The number of cells of `trivialPartition` is `1`. -/
@[simp] theorem numberCells_trivialPartition (omega : List α) (h : omega ≠ []) :
    numberCells (trivialPartition omega h) = 1 := rfl

/-- **Refinement Invariant 1 (Disjointness of Split Cells)**:
    Splitting any cell `c` via `splitCellByPred c pred` produces two strictly disjoint sub-cells. -/
theorem splitCellByPred_disjoint (c : List α) (pred : α → Bool) :
    List.Disjoint (splitCellByPred c pred).1 (splitCellByPred c pred).2 := by
  intro x hx1 hx2
  simp only [splitCellByPred, List.mem_filter] at hx1 hx2
  have h1 := hx1.2
  have h2 := hx2.2
  rw [h1] at h2
  contradiction

/-- **Refinement Invariant 2 (Conservation of Points under `SplitCell`)**:
    A point `x` belongs to the original cell `c` iff it belongs to one of the two split halves. -/
theorem mem_splitCellByPred_iff (c : List α) (pred : α → Bool) (x : α) :
    x ∈ (splitCellByPred c pred).1 ∨ x ∈ (splitCellByPred c pred).2 ↔ x ∈ c := by
  simp only [splitCellByPred, List.mem_filter]
  constructor
  · rintro (⟨hx, _⟩ | ⟨hx, _⟩) <;> exact hx
  · intro hx
    by_cases h : pred x = true
    · left; exact ⟨hx, h⟩
    · right
      have hf : pred x = false := Bool.eq_false_iff.mpr h
      refine ⟨hx, ?_⟩
      simp [hf]

/-- **Refinement Invariant 3 (Sum of Sub-Cell Lengths)**:
    Splitting a cell preserves the exact count of elements (`length c = length c₁ + length c₂`). -/
theorem splitCellByPred_length_sum (c : List α) (pred : α → Bool) :
    (splitCellByPred c pred).1.length + (splitCellByPred c pred).2.length = c.length := by
  dsimp [splitCellByPred]
  induction c with
  | nil => rfl
  | cons x xs ih =>
    dsimp
    by_cases h : pred x = true
    · have h2 : (!pred x) = false := by simp [h]
      simp [h, h2]
      omega
    · have hf : pred x = false := Bool.eq_false_iff.mpr h
      have h2 : (!pred x) = true := by simp [hf]
      simp [hf, h2]
      omega

/-- **Correctness of `SmallestPrimeDivisor` (`lib/partitio.gi`, line 206)**:
    For any `size > 1`, `smallestPrimeDivisor size` is prime and divides `size`. -/
theorem smallestPrimeDivisor_prime_and_dvd {size : ℕ} (h : 1 < size) :
    Nat.Prime (smallestPrimeDivisor size) ∧ smallestPrimeDivisor size ∣ size := by
  have hnot : ¬(size ≤ 1) := by omega
  simp only [smallestPrimeDivisor, if_neg hnot]
  exact ⟨Nat.minFac_prime (by omega), Nat.minFac_dvd size⟩

end GAP.Partitio
