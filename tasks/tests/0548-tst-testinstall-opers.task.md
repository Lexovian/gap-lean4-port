# GAP-0548 — Port tst/testinstall/opers (tests)

- **Task CID:** `baguqeeraggjmgx7t74xco6ael2qlyw5qrrtv4lytw7nitx3errzy4hesbauq`
- **Layer:** `tests`   **Module:** `tst/testinstall/opers`
- **Size:** 15 file(s), 672 code lines, 9 definitions
- **Estimated effort:** 7.36 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/opers/Socle.tst`  (0.96 person-days)
- source: [tst/testinstall/opers/Socle.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/Socle.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.Socle`
- 96 code lines, 0 definitions

> @if IsPackageMarkedForLoading( "smallgrp", "" )

### `tst/testinstall/opers/MemoryUsage.tst`  (0.71 person-days)
- source: [tst/testinstall/opers/MemoryUsage.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/MemoryUsage.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.MemoryUsage`
- 71 code lines, 0 definitions

> test internal objects

### `tst/testinstall/opers/RandomInvertibleMat.tst`  (0.68 person-days)
- source: [tst/testinstall/opers/RandomInvertibleMat.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/RandomInvertibleMat.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.RandomInvertibleMat`
- 44 code lines, 1 definitions

> default ring = Integers

### `tst/testinstall/opers/FrattiniSubgroup.tst`  (0.66 person-days)
- source: [tst/testinstall/opers/FrattiniSubgroup.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/FrattiniSubgroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.FrattiniSubgroup`
- 66 code lines, 0 definitions

> @if IsPackageMarkedForLoading( "smallgrp", "" )

### `tst/testinstall/opers/IsCentral.tst`  (0.54 person-days)
- source: [tst/testinstall/opers/IsCentral.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/IsCentral.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.IsCentral`
- 54 code lines, 0 definitions

> for groups

### `tst/testinstall/opers/MaximalNormalSubgroups.tst`  (0.54 person-days)
- source: [tst/testinstall/opers/MaximalNormalSubgroups.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/MaximalNormalSubgroups.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.MaximalNormalSubgroups`
- 54 code lines, 0 definitions

> some infinite fp-groups

### `tst/testinstall/opers/BindingsOfClosure.tst`  (0.46 person-days)
- source: [tst/testinstall/opers/BindingsOfClosure.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/BindingsOfClosure.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.BindingsOfClosure`
- 40 code lines, 6 definitions

> Test bad input

### `tst/testinstall/opers/RandomMat.tst`  (0.46 person-days)
- source: [tst/testinstall/opers/RandomMat.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/RandomMat.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.RandomMat`
- 30 code lines, 1 definitions

> gap> START_TEST("RandomMat.tst");
> #
> gap> check:=function(M, m, n, R)
> >   Assert(0, Length(M) = m, "bad row count");
> >   Assert(0, ForAll(M, row -> Length(row) = n), "bad row length");

### `tst/testinstall/opers/HexStringBlist.tst`  (0.42 person-days)
- source: [tst/testinstall/opers/HexStringBlist.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/HexStringBlist.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.HexStringBlist`
- 34 code lines, 0 definitions

> Test corner cases

### `tst/testinstall/opers/RandomUnimodularMat.tst`  (0.38 person-days)
- source: [tst/testinstall/opers/RandomUnimodularMat.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/RandomUnimodularMat.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.RandomUnimodularMat`
- 30 code lines, 1 definitions

> check with default random source

### `tst/testinstall/opers/FittingSubgroup.tst`  (0.36 person-days)
- source: [tst/testinstall/opers/FittingSubgroup.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/FittingSubgroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.FittingSubgroup`
- 36 code lines, 0 definitions

> @if IsPackageMarkedForLoading( "smallgrp", "" )

### `tst/testinstall/opers/IsInfiniteAbelianizationGroup.tst`  (0.31 person-days)
- source: [tst/testinstall/opers/IsInfiniteAbelianizationGroup.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/IsInfiniteAbelianizationGroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.IsInfiniteAbelianizationGroup`
- 31 code lines, 0 definitions

> Finite groups never have infinite abelianization

### `tst/testinstall/opers/NormalClosure.tst`  (0.31 person-days)
- source: [tst/testinstall/opers/NormalClosure.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/NormalClosure.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.NormalClosure`
- 29 code lines, 0 definitions

> @local S4, A4, S5, F, H, N

### `tst/testinstall/opers/SubdirectProducts.tst`  (0.29 person-days)
- source: [tst/testinstall/opers/SubdirectProducts.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/SubdirectProducts.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.SubdirectProducts`
- 29 code lines, 0 definitions

> for the next couple tests, StructureDescription gives different outputs
> depending on which packages are loaded; e.g. for SubdirectProducts(H, H):
> [ "((C2 x C2 x C2 x C2) : C3) : C2", "(A4 x A4) : C2", "S4", "S4 x S4" ]
> [ "(C2 x C2) : ((C3 x A4) : C2)", "(C2 x C2) : S4", "S4", "S4 x S4" ]
> thus we use IdGroup if available, and else fall back to a weaker size test.
> @if IsPackageMarkedForLoading( "smallgrp", "" )

### `tst/testinstall/opers/EmptyPlist.tst`  (0.28 person-days)
- source: [tst/testinstall/opers/EmptyPlist.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/EmptyPlist.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.EmptyPlist`
- 28 code lines, 0 definitions

> gap> START_TEST("EmptyPlist.tst");
> #
> gap> EmptyPlist(-1);
> Error, EmptyPlist: <len> must be a non-negative small integer (not the integer\
>  -1)

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraggjmgx7t74xco6ael2qlyw5qrrtv4lytw7nitx3errzy4hesbauq`, then merge with `tools/merge_tasks.py`.
