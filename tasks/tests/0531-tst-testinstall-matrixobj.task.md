# GAP-0531 — Port tst/testinstall/MatrixObj (tests)

- **Task CID:** `baguqeera3uzun3jjjfbbia6djcw743e3o225zpmohhm74zwikripim75ltcq`
- **Layer:** `tests`   **Module:** `tst/testinstall/MatrixObj`
- **Size:** 12 file(s), 238 code lines, 0 definitions
- **Estimated effort:** 2.44 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/MatrixObj/WeightOfVector.tst`  (0.32 person-days)
- source: [tst/testinstall/MatrixObj/WeightOfVector.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/WeightOfVector.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.WeightOfVector`
- 32 code lines, 0 definitions

> gap> START_TEST( "WeightOfVector.tst" );
> gap> l1 := [1,2,3,4,5,6];
> [ 1, 2, 3, 4, 5, 6 ]
> gap> v1 := Vector(IsPlistVectorRep, Rationals, l1);
> <plist vector over Rationals of length 6>

### `tst/testinstall/MatrixObj/ListOp.tst`  (0.29 person-days)
- source: [tst/testinstall/MatrixObj/ListOp.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/ListOp.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.ListOp`
- 29 code lines, 0 definitions

> gap> START_TEST("ListOp.tst");
> gap> ll := [1,2,3,4,5,6];
> [ 1, 2, 3, 4, 5, 6 ]
> gap> v1 := Vector(IsPlistVectorRep, Rationals, ll);
> <plist vector over Rationals of length 6>

### `tst/testinstall/MatrixObj/DeterminantMatrix.tst`  (0.24 person-days)
- source: [tst/testinstall/MatrixObj/DeterminantMatrix.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/DeterminantMatrix.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.DeterminantMatrix`
- 20 code lines, 0 definitions

> @local M, mat

### `tst/testinstall/MatrixObj/ExtractSubMatrix.tst`  (0.24 person-days)
- source: [tst/testinstall/MatrixObj/ExtractSubMatrix.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/ExtractSubMatrix.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.ExtractSubMatrix`
- 24 code lines, 0 definitions

> IsGF2MatrixRep

### `tst/testinstall/MatrixObj/Randomize.tst`  (0.24 person-days)
- source: [tst/testinstall/MatrixObj/Randomize.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/Randomize.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.Randomize`
- 24 code lines, 0 definitions

> gap> START_TEST("Randomize.tst");
> gap> ll := [1,2,3,4,5,6];
> [ 1, 2, 3, 4, 5, 6 ]
> gap> v1 := Vector(IsPlistVectorRep, Rationals, ll);
> <plist vector over Rationals of length 6>

### `tst/testinstall/MatrixObj/ConcatenationOfVectors.tst`  (0.23 person-days)
- source: [tst/testinstall/MatrixObj/ConcatenationOfVectors.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/ConcatenationOfVectors.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.ConcatenationOfVectors`
- 23 code lines, 0 definitions

> gap> START_TEST("ConcatenationOfVectors.tst");
> gap> l1 := [1,2,3,4,5,6];
> [ 1, 2, 3, 4, 5, 6 ]
> gap> l2 := [6,2,7,4,5,6];
> [ 6, 2, 7, 4, 5, 6 ]

### `tst/testinstall/MatrixObj/arith.tst`  (0.21 person-days)
- source: [tst/testinstall/MatrixObj/arith.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/arith.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.Arith`
- 21 code lines, 0 definitions

> @local F, matobj, mat

### `tst/testinstall/MatrixObj/RankMatrix.tst`  (0.18 person-days)
- source: [tst/testinstall/MatrixObj/RankMatrix.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/RankMatrix.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.RankMatrix`
- 16 code lines, 0 definitions

> @local M, mat

### `tst/testinstall/MatrixObj/ExtractSubvector.tst`  (0.16 person-days)
- source: [tst/testinstall/MatrixObj/ExtractSubvector.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/ExtractSubvector.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.ExtractSubvector`
- 16 code lines, 0 definitions

> gap> START_TEST("ExtractSubVector.tst");
> gap> l1 := [1,2,3,4,5,6];
> [ 1, 2, 3, 4, 5, 6 ]
> gap> ExtractSubVector( l1, [1,2,4] );
> [ 1, 2, 4 ]

### `tst/testinstall/MatrixObj/TraceMat.tst`  (0.13 person-days)
- source: [tst/testinstall/MatrixObj/TraceMat.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/TraceMat.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.TraceMat`
- 13 code lines, 0 definitions

> gap> START_TEST( "TraceMat.tst" );
> gap> l := [[1,2],[3,4]];
> [ [ 1, 2 ], [ 3, 4 ] ]
> gap> m1 := Matrix(l);;
> gap> m2 := Matrix(Integers,l);;

### `tst/testinstall/MatrixObj/Unpack.tst`  (0.12 person-days)
- source: [tst/testinstall/MatrixObj/Unpack.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/Unpack.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.Unpack`
- 12 code lines, 0 definitions

> gap> START_TEST("Unpack.tst");
> gap> ll := [1,2,3,4,5,6];
> [ 1, 2, 3, 4, 5, 6 ]
> gap> v1 := Vector(IsPlistVectorRep, Rationals, ll);
> <plist vector over Rationals of length 6>

### `tst/testinstall/MatrixObj/Eigenvalues.tst`  (0.08 person-days)
- source: [tst/testinstall/MatrixObj/Eigenvalues.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/Eigenvalues.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.Eigenvalues`
- 8 code lines, 0 definitions

> gap> mat := [[1,2,1],[1,0,1],[0,0,1]];
> [ [ 1, 2, 1 ], [ 1, 0, 1 ], [ 0, 0, 1 ] ]
> gap> Eigenvalues(Rationals,mat);
> [ 2, 1, -1 ]
> gap> matObj1 := NewMatrix(IsPlistMatrixRep,GF(5),3,mat*Z(5)^0);

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera3uzun3jjjfbbia6djcw743e3o225zpmohhm74zwikripim75ltcq`, then merge with `tools/merge_tasks.py`.
