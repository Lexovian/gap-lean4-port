# GAP-0571 — Port tst/teststandard/opers (tests)

- **Task CID:** `baguqeeraikoed5fzndcxyxk4m4zk4kiaezai23nkxssjlridn4u2zwnkg2oa`
- **Layer:** `tests`   **Module:** `tst/teststandard/opers`
- **Size:** 10 file(s), 223 code lines, 1 definitions
- **Estimated effort:** 2.46 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/teststandard/opers/SemidirectDecompositions.tst`  (0.94 person-days)
- source: [tst/teststandard/opers/SemidirectDecompositions.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/opers/SemidirectDecompositions.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Opers.SemidirectDecompositions`
- 84 code lines, 0 definitions

> gap> START_TEST("Semidirectdecompositions.tst");
> gap> List(AllSmallGroups(12),G->List(SemidirectDecompositions(G), NH->[IdGroup(NH[1]), IdGroup(NH[2])]));
> [ [ [ [ 1, 1 ], [ 12, 1 ] ], [ [ 3, 1 ], [ 4, 1 ] ], [ [ 12, 1 ], [ 1, 1 ] ] ]
>     , 
>   [ [ [ 1, 1 ], [ 12, 2 ] ], [ [ 3, 1 ], [ 4, 1 ] ], [ [ 4, 1 ], [ 3, 1 ] ],

### `tst/teststandard/opers/AutomorphismGroup.tst`  (0.44 person-days)
- source: [tst/teststandard/opers/AutomorphismGroup.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/opers/AutomorphismGroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Opers.AutomorphismGroup`
- 38 code lines, 1 definitions

> Assertions at level 2 kill runtime of automorphism group computations

### `tst/teststandard/opers/ComplementClassesRepresentatives.tst`  (0.40 person-days)
- source: [tst/teststandard/opers/ComplementClassesRepresentatives.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/opers/ComplementClassesRepresentatives.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Opers.ComplementClassesRepresentatives`
- 33 code lines, 0 definitions

> @local n, G, N

### `tst/teststandard/opers/PerfectGroups.tst`  (0.16 person-days)
- source: [tst/teststandard/opers/PerfectGroups.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/opers/PerfectGroups.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Opers.PerfectGroups`
- 16 code lines, 0 definitions

> gap> START_TEST("PerfectGroups.tst");
> #
> gap> Sum(SizesPerfectGroups(),NrPerfectGroups);
> 15768
> gap> l:=[61440, 86016, 122880, 172032, 245760, 344064, 368640, 491520,

### `tst/teststandard/opers/Matobjnz.tst`  (0.13 person-days)
- source: [tst/teststandard/opers/Matobjnz.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/opers/Matobjnz.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Opers.Matobjnz`
- 13 code lines, 0 definitions

> gap> START_TEST("Matobjnz.tst");
> #
> gap> p:=NextPrimeInt(MAXSIZE_GF_INTERNAL);;
> gap> g:=AlternatingGroup(5);;
> gap> mo:=IrreducibleModules(g,GF(p));;

### `tst/teststandard/opers/Normalizer.tst`  (0.11 person-days)
- source: [tst/teststandard/opers/Normalizer.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/opers/Normalizer.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Opers.Normalizer`
- 11 code lines, 0 definitions

> gap> START_TEST("Normalizer.tst");
> gap> r:=Integers mod 4;;
> gap> maz:=[ [ [ 3, 1, 2, 1 ], [ 1, 2, 1, 1 ], [ 2, 1, 1, 3 ], [ 1, 1, 3, 2 ] ],
> >   [ [ 1, 1, 3, 2 ], [ 1, 3, 2, 3 ], [ 3, 2, 3, 3 ], [ 2, 3, 3, 1 ] ] ];;
> gap> G:=GL(4,r);;

### `tst/teststandard/opers/IsomorphismGroups.tst`  (0.09 person-days)
- source: [tst/teststandard/opers/IsomorphismGroups.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/opers/IsomorphismGroups.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Opers.IsomorphismGroups`
- 9 code lines, 0 definitions

> Assertions at level 2 kill runtime of automorphism group computations

### `tst/teststandard/opers/Ctbl.tst`  (0.08 person-days)
- source: [tst/teststandard/opers/Ctbl.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/opers/Ctbl.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Opers.Ctbl`
- 8 code lines, 0 definitions

> gap> START_TEST("Ctbl.tst");
> #
> gap> g:=Group((1,2,3),(1,2));;w:=WreathProductImprimitiveAction(g,g);;
> gap> w:=Image(IsomorphismSpecialPcGroup(w));;
> gap> Length(ConjugacyClasses(w));

### `tst/teststandard/opers/Lattice.tst`  (0.06 person-days)
- source: [tst/teststandard/opers/Lattice.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/opers/Lattice.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Opers.Lattice`
- 6 code lines, 0 definitions

> gap> START_TEST("Lattice.tst");
> #
> gap> g:=PerfectGroup(IsPermGroup,30720,10);;
> gap> l:=LowLayerSubgroups(g,2);;
> gap> [Length(l),Sum(l,Size)];

### `tst/teststandard/opers/StructureDescription.tst`  (0.05 person-days)
- source: [tst/teststandard/opers/StructureDescription.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/opers/StructureDescription.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Opers.StructureDescription`
- 5 code lines, 0 definitions

> gap> START_TEST("StructureDescription.tst");
> gap> G := Group([ (6,7,8,9,10), (8,9,10), (1,2)(6,7), (1,2,3,4,5)(6,7,8,9,10) ]);;
> gap> StructureDescription(G);
> "A5 : S5"
> gap> STOP_TEST("StructureDescription.tst");

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraikoed5fzndcxyxk4m4zk4kiaezai23nkxssjlridn4u2zwnkg2oa`, then merge with `tools/merge_tasks.py`.
