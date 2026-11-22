import RequestProject.Gap.Permutation
import RequestProject.Gap.Atlas
import RequestProject.Gap.Library.Zmodnz
import RequestProject.Gap.Library.Partitio
import RequestProject.Gap.Library.Zmodnze
import RequestProject.Gap.Library.Stbc
import RequestProject.Gap.Library.Grpperm
import RequestProject.Gap.Library.Oprtperm

/-!
# Rung 3 Axiomatic Rollup Audit
Every theorem here is audited for standard Lean 4 axiomatic purity.
Expected: [propext, Classical.choice, Quot.sound]
Unproven axioms (sorry / admit / custom): 0
-/

-- 1. Permutation Kernel (src/permutat.cc - GAP-0050)
#print axioms GAP.GapPerm.app_mul
#print axioms GAP.GapPerm.toEquiv_mul

-- 2. Modular Residue Rings (lib/zmodnz.gi - GAP-0331)
#print axioms GAP.ZModnZObj.isUnit_iff
#print axioms GAP.ZModnZObj.inverseOpExec_correct

-- 3. Backtrack Ordered Partitions (lib/partitio.gi - GAP-0332)
#print axioms GAP.Partitio.splitCellByPred_disjoint
#print axioms GAP.Partitio.mem_splitCellByPred_iff
#print axioms GAP.Partitio.splitCellByPred_length_sum

-- 4. Cyclotomic Extension Rings (lib/zmodnze.gi - GAP-0332)
#print axioms GAP.Zmodnze.ZmodnZepsObj.card_eq

-- 5. Schreier-Sims Stabiliser Chains (lib/stbc.gi - GAP-0299)
#print axioms GAP.Stbc.siftOneLevel_fixes_basePoint
#print axioms GAP.Stbc.siftFull_fixes_all_basePoints
#print axioms GAP.Stbc.membershipTestKnownBase_sound
#print axioms GAP.Stbc.membershipTestKnownBase_iff_mem
#print axioms GAP.Stbc.extendSchreierPoint_invariant

-- 6. Permutation Groups & Group Order Formula (lib/grpperm.gi - GAP-0190, Phase 3 Section 1)
#print axioms GAP.Grpperm.transversalWords_length_eq_sizeStabChain
#print axioms GAP.Grpperm.permGroup_order_eq_prod_basicOrbits

-- 7. Permutation Group Actions, Orbits & Orbit-Stabilizer (lib/oprtperm.gi - GAP-0247, Phase 3 Section 2)
#print axioms GAP.Oprtperm.onPoints_mul
#print axioms GAP.Oprtperm.onPairs_mul
#print axioms GAP.Oprtperm.onSets_mul
#print axioms GAP.Oprtperm.onSets_card
#print axioms GAP.Oprtperm.onPoints_fixed_outside_support
#print axioms GAP.Oprtperm.orbitOfPoint_eq_orbitFinset
#print axioms GAP.Oprtperm.mem_orbitOfPoint_iff
#print axioms GAP.Oprtperm.orbitOfPoint_eq_or_disjoint
#print axioms GAP.Oprtperm.orbit_partition
#print axioms GAP.Oprtperm.allOrbits_pairwiseDisjoint
#print axioms GAP.Oprtperm.orbit_stabilizer_order_relation
#print axioms GAP.Oprtperm.orbit_stabilizer_natCard
#print axioms GAP.Oprtperm.transversalRepresentatives_eval_basePoint
#print axioms GAP.Oprtperm.transversalRepresentatives_bijOn_orbit
#print axioms GAP.Oprtperm.orbit_stabilizer_matches_stabChain
