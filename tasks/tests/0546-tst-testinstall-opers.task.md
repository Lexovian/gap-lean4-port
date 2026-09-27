# GAP-0546 — Port tst/testinstall/opers (tests)

- **Task CID:** `baguqeerakml3w32ctfexeggkooym54dwdma2c4jc5n64jwkuf3fd2y6ccgwq`
- **Layer:** `tests`   **Module:** `tst/testinstall/opers`
- **Size:** 15 file(s), 295 code lines, 1 definitions
- **Estimated effort:** 2.99 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/opers/HallSubgroup.tst`  (0.28 person-days)
- source: [tst/testinstall/opers/HallSubgroup.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/HallSubgroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.HallSubgroup`
- 28 code lines, 0 definitions

> @if IsPackageMarkedForLoading( "smallgrp", "" )

### `tst/testinstall/opers/SolvableQuotient.tst`  (0.27 person-days)
- source: [tst/testinstall/opers/SolvableQuotient.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/SolvableQuotient.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.SolvableQuotient`
- 27 code lines, 0 definitions

> gap> START_TEST("SolvableQuotient.tst");
> #
> gap> f := FreeGroup( "a", "b", "c", "d" );;
> gap> fp := f / [ f.1^2, f.2^2, f.3^2, f.4^2, f.1*f.2*f.1*f.2*f.1*f.2,
> >  f.2*f.3*f.2*f.3*f.2*f.3*f.2*f.3, f.3*f.4*f.3*f.4*f.3*f.4,

### `tst/testinstall/opers/CyclesFromList.tst`  (0.26 person-days)
- source: [tst/testinstall/opers/CyclesFromList.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/CyclesFromList.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.CyclesFromList`
- 26 code lines, 0 definitions

> Errors

### `tst/testinstall/opers/SubdirectProduct.tst`  (0.26 person-days)
- source: [tst/testinstall/opers/SubdirectProduct.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/SubdirectProduct.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.SubdirectProduct`
- 26 code lines, 0 definitions

> gap> START_TEST("SubdirectProduct.tst");
> gap> f:=FreeGroup("a", "b");;
> gap> g:=f/[ f.1^6, f.2^4, f.1^3*f.2^(-2), f.2^(-1)*f.1*f.2*f.1];;
> gap> Size(g);
> 12

### `tst/testinstall/opers/AutomorphismGroup.tst`  (0.23 person-days)
- source: [tst/testinstall/opers/AutomorphismGroup.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/AutomorphismGroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.AutomorphismGroup`
- 23 code lines, 0 definitions

> abelian group

### `tst/testinstall/opers/TriangulizedMat.tst`  (0.23 person-days)
- source: [tst/testinstall/opers/TriangulizedMat.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/TriangulizedMat.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.TriangulizedMat`
- 23 code lines, 0 definitions

> gap> START_TEST("TriangulizedMat.tst");
> #
> gap> a:=[];;
> gap> b:=TriangulizedMat(a);
> [  ]

### `tst/testinstall/opers/IsFinitelyGenerated.tst`  (0.21 person-days)
- source: [tst/testinstall/opers/IsFinitelyGenerated.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/IsFinitelyGenerated.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.IsFinitelyGenerated`
- 21 code lines, 0 definitions

> gap> START_TEST("IsFinitelyGenerated.tst");
> #
> gap> R:=RingWithOne([1,1/2]);
> <ring-with-one, with 2 generators>
> gap> IsMonoid(R);

### `tst/testinstall/opers/LocationFunc.tst`  (0.20 person-days)
- source: [tst/testinstall/opers/LocationFunc.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/LocationFunc.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.LocationFunc`
- 20 code lines, 1 definitions

> regular GAP function

### `tst/testinstall/opers/StructuralCopy.tst`  (0.20 person-days)
- source: [tst/testinstall/opers/StructuralCopy.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/StructuralCopy.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.StructuralCopy`
- 20 code lines, 0 definitions

> Blist

### `tst/testinstall/opers/ListBlist.tst`  (0.18 person-days)
- source: [tst/testinstall/opers/ListBlist.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/ListBlist.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.ListBlist`
- 18 code lines, 0 definitions

> gap> START_TEST("ListBlist.tst");
> #
> gap> ListBlist([],[false,true]);
> Error, LIST_BLIST: <blist> must have the same length as <list> (lengths are 2 \
> and 0)

### `tst/testinstall/opers/LatticeByCyclicExtension.tst`  (0.17 person-days)
- source: [tst/testinstall/opers/LatticeByCyclicExtension.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/LatticeByCyclicExtension.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.LatticeByCyclicExtension`
- 17 code lines, 0 definitions

> construct SmallGroup(500,1)

### `tst/testinstall/opers/Concatenation.tst`  (0.14 person-days)
- source: [tst/testinstall/opers/Concatenation.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/Concatenation.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.Concatenation`
- 14 code lines, 0 definitions

> gap> START_TEST("Concatenation.tst");
> #
> gap> Concatenation( );
> [  ]
> gap> Concatenation( [ ] );

### `tst/testinstall/opers/InverseMatMod.tst`  (0.14 person-days)
- source: [tst/testinstall/opers/InverseMatMod.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/InverseMatMod.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.InverseMatMod`
- 10 code lines, 0 definitions

> gap> START_TEST("InverseMatMod.tst");
> #
> gap> for d in [1..10] do
> >     id:=IdentityMat(d);
> >     m:=RandomUnimodularMat(d);

### `tst/testinstall/opers/CyclotomicField.tst`  (0.13 person-days)
- source: [tst/testinstall/opers/CyclotomicField.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/CyclotomicField.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.CyclotomicField`
- 13 code lines, 0 definitions

> gap> START_TEST("CyclotomicField.tst");
> gap> x := List([1..8], CyclotomicField);
> [ Rationals, Rationals, CF(3), GaussianRationals, CF(5), CF(3), CF(7), CF(8) ]
> gap> y := List([1..8], CyclotomicField);
> [ Rationals, Rationals, CF(3), GaussianRationals, CF(5), CF(3), CF(7), CF(8) ]

### `tst/testinstall/opers/IsPNilpotent.tst`  (0.09 person-days)
- source: [tst/testinstall/opers/IsPNilpotent.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/IsPNilpotent.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.IsPNilpotent`
- 9 code lines, 0 definitions

> gap> START_TEST("IsPNilpotent.tst");
> #
> gap> G:=SymmetricGroup(3);;
> gap> List([2,3,5], p -> IsPNilpotent(G,p));
> [ true, false, true ]

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerakml3w32ctfexeggkooym54dwdma2c4jc5n64jwkuf3fd2y6ccgwq`, then merge with `tools/merge_tasks.py`.
