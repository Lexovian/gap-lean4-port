# GAP-0530 — Port tst/testinstall/MatrixObj (tests)

- **Task CID:** `baguqeeraoxey3otz6yg64shhwmhzkkvysdvsgi2xdjuwjjive2d6zt33n65q`
- **Layer:** `tests`   **Module:** `tst/testinstall/MatrixObj`
- **Size:** 15 file(s), 951 code lines, 0 definitions
- **Estimated effort:** 9.61 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/MatrixObj/CompanionMatrix.tst`  (1.06 person-days)
- source: [tst/testinstall/MatrixObj/CompanionMatrix.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/CompanionMatrix.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.CompanionMatrix`
- 106 code lines, 0 definitions

> IsGF2MatrixRep

### `tst/testinstall/MatrixObj/matobjplist.tst`  (1.02 person-days)
- source: [tst/testinstall/MatrixObj/matobjplist.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/matobjplist.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.Matobjplist`
- 102 code lines, 0 definitions

> @local e, v, w, M, v2, z

### `tst/testinstall/MatrixObj/IdentityMatrix.tst`  (0.98 person-days)
- source: [tst/testinstall/MatrixObj/IdentityMatrix.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/IdentityMatrix.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.IdentityMatrix`
- 98 code lines, 0 definitions

> IsGF2MatrixRep

### `tst/testinstall/MatrixObj/ZeroMatrix.tst`  (0.97 person-days)
- source: [tst/testinstall/MatrixObj/ZeroMatrix.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/ZeroMatrix.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.ZeroMatrix`
- 97 code lines, 0 definitions

> IsGF2MatrixRep

### `tst/testinstall/MatrixObj/MultVector.tst`  (0.90 person-days)
- source: [tst/testinstall/MatrixObj/MultVector.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/MultVector.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.MultVector`
- 90 code lines, 0 definitions

> Dense plain lists

### `tst/testinstall/MatrixObj/CopySubVector.tst`  (0.77 person-days)
- source: [tst/testinstall/MatrixObj/CopySubVector.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/CopySubVector.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.CopySubVector`
- 68 code lines, 0 definitions

> @local l1, v1, l2, v2, v3, v4, x, src, dst, expected, from, to, len, one
> @local l3, l4

### `tst/testinstall/MatrixObj/ZeroVector.tst`  (0.73 person-days)
- source: [tst/testinstall/MatrixObj/ZeroVector.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/ZeroVector.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.ZeroVector`
- 73 code lines, 0 definitions

> IsGF2VectorRep

### `tst/testinstall/MatrixObj/RandomMatrix.tst`  (0.57 person-days)
- source: [tst/testinstall/MatrixObj/RandomMatrix.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/RandomMatrix.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.RandomMatrix`
- 57 code lines, 0 definitions

> @local rs, M

### `tst/testinstall/MatrixObj/Matrix.tst`  (0.46 person-days)
- source: [tst/testinstall/MatrixObj/Matrix.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/Matrix.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.Matrix`
- 46 code lines, 0 definitions

> gap> START_TEST("Matrix.tst");
> #
> gap> m := Matrix( [[1,2],[3,4]] );
> <2x2-matrix over Rationals>
> gap> Display(m);

### `tst/testinstall/MatrixObj/BaseDomain.tst`  (0.40 person-days)
- source: [tst/testinstall/MatrixObj/BaseDomain.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/BaseDomain.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.BaseDomain`
- 40 code lines, 0 definitions

> FIXME: BUG:  -> vecmat.gi, code does not check!
> gap> BaseDomain(Matrix(GF(2), m));
> Rationals

### `tst/testinstall/MatrixObj/DiagonalMatrix.tst`  (0.38 person-days)
- source: [tst/testinstall/MatrixObj/DiagonalMatrix.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/DiagonalMatrix.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.DiagonalMatrix`
- 37 code lines, 0 definitions

> @local M

### `tst/testinstall/MatrixObj/RandomInvertibleMatrix.tst`  (0.37 person-days)
- source: [tst/testinstall/MatrixObj/RandomInvertibleMatrix.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/RandomInvertibleMatrix.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.RandomInvertibleMatrix`
- 37 code lines, 0 definitions

> @local rs, M

### `tst/testinstall/MatrixObj/DirectSumMat.tst`  (0.36 person-days)
- source: [tst/testinstall/MatrixObj/DirectSumMat.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/DirectSumMat.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.DirectSumMat`
- 36 code lines, 0 definitions

> @local F, l, N, M

### `tst/testinstall/MatrixObj/DistanceOfVectors.tst`  (0.32 person-days)
- source: [tst/testinstall/MatrixObj/DistanceOfVectors.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/DistanceOfVectors.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.DistanceOfVectors`
- 32 code lines, 0 definitions

> gap> START_TEST( "DistanceOfVectors.tst" );
> gap> l1 := [1,2,3,4,5,6];
> [ 1, 2, 3, 4, 5, 6 ]
> gap> v1 := Vector(IsPlistVectorRep, Rationals, l1);
> <plist vector over Rationals of length 6>

### `tst/testinstall/MatrixObj/PositionNonZero.tst`  (0.32 person-days)
- source: [tst/testinstall/MatrixObj/PositionNonZero.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/PositionNonZero.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.PositionNonZero`
- 32 code lines, 0 definitions

> gap> START_TEST( "PositionNonZero.tst" );
> gap> l1 := [1,2,3,4,5,6];
> [ 1, 2, 3, 4, 5, 6 ]
> gap> v1 := Vector(IsPlistVectorRep, Rationals, l1);
> <plist vector over Rationals of length 6>

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraoxey3otz6yg64shhwmhzkkvysdvsgi2xdjuwjjive2d6zt33n65q`, then merge with `tools/merge_tasks.py`.
