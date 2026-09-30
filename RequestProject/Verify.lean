import RequestProject.Gap.Permutation
import RequestProject.Gap.Atlas
import RequestProject.Gap.Library.Zmodnz
import RequestProject.Gap.Library.Partitio
import RequestProject.Gap.Library.Zmodnze
import RequestProject.Gap.Library.Stbc

/-!
# Rung 3 Axiomatic Rollup Audit
Every theorem here is audited for standard Lean 4 axiomatic purity.
Expected: [propext, Classical.choice, Quot.sound]
Unproven axioms (sorry / admit / custom): 0
-/

-- 1. Permutation Kernel (src/permutat.cc)
#print axioms GAP.GapPerm.app_mul
#print axioms GAP.GapPerm.toEquiv_mul

-- 2. Modular Residue Rings (lib/zmodnz.gi - GAP-0331)
#print axioms GAP.ZModnZObj.isUnit_iff
#print axioms GAP.ZModnZObj.inverseOpExec_correct

-- 3. Backtrack Ordered Partitions (lib/partitio.gi - GAP-0332)
#print axioms GAP.Partitio.splitCellByPred_disjoint
#print axioms GAP.Partitio.splitCellByPred_union
#print axioms GAP.Partitio.splitCellByPred_length_sum

-- 4. Cyclotomic Extension Rings (lib/zmodnze.gi - GAP-0332)
#print axioms GAP.Zmodnze.ZmodnZepsObj.card_eq

-- 5. Schreier-Sims Stabiliser Chains (lib/stbc.gi - GAP-0299)
#print axioms GAP.Stbc.siftOneLevel_fixes_basePoint
#print axioms GAP.Stbc.siftFull_fixes_all_basePoints
#print axioms GAP.Stbc.membershipTestKnownBase_sound
#print axioms GAP.Stbc.membershipTestKnownBase_iff_mem
#print axioms GAP.Stbc.extendSchreierPoint_invariant
