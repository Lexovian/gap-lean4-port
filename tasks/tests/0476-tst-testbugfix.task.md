# GAP-0476 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeerawzmpqk2t72zsemgkeegjdjr2qehmtqlkjwcdrtiwaxts23ztjxoq`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 15 file(s), 75 code lines, 0 definitions
- **Estimated effort:** 0.75 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2019-02-19-cornercase-mtc.tst`  (0.05 person-days)
- source: [tst/testbugfix/2019-02-19-cornercase-mtc.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2019-02-19-cornercase-mtc.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20190219CornercaseMtc`
- 5 code lines, 0 definitions

> gap> F := FreeGroup(1);;
> gap> rels := [F.1^2, One(F)];;
> gap> G := F / rels;;
> gap> Order(G);
> 2

### `tst/testbugfix/2019-07-14-NrCols-for-empty-IsMatrix.tst`  (0.05 person-days)
- source: [tst/testbugfix/2019-07-14-NrCols-for-empty-IsMatrix.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2019-07-14-NrCols-for-empty-IsMatrix.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20190714NrColsForEmptyIsMatrix`
- 5 code lines, 0 definitions

> https://github.com/gap-system/gap/issues/3570

### `tst/testbugfix/2019-08-31-MinialFaithfulPermutationDegree.tst`  (0.05 person-days)
- source: [tst/testbugfix/2019-08-31-MinialFaithfulPermutationDegree.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2019-08-31-MinialFaithfulPermutationDegree.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20190831MinialFaithfulPermutationDegree`
- 5 code lines, 0 definitions

> Fix a bug in `MinimalFaithfulPermutationDegree`, #3636

### `tst/testbugfix/2020-01-22-SubgroupByFittingFreeData.tst`  (0.05 person-days)
- source: [tst/testbugfix/2020-01-22-SubgroupByFittingFreeData.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2020-01-22-SubgroupByFittingFreeData.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20200122SubgroupByFittingFreeData`
- 5 code lines, 0 definitions

> Induced FFLS, Issue #3864

### `tst/testbugfix/2021-02-07-IntermediateGroup.tst`  (0.05 person-days)
- source: [tst/testbugfix/2021-02-07-IntermediateGroup.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2021-02-07-IntermediateGroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20210207IntermediateGroup`
- 5 code lines, 0 definitions

> IntermediateGroup in large index, reported in Forum (Breuer/Anvita) on 2/7/21

### `tst/testbugfix/2021-03-15-chevallaut.tst`  (0.05 person-days)
- source: [tst/testbugfix/2021-03-15-chevallaut.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2021-03-15-chevallaut.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20210315Chevallaut`
- 5 code lines, 0 definitions

> Outer automorphisms Chevalley groups miscomputed with triality, #4318

### `tst/testbugfix/2021-08-05-Automorphisms.tst`  (0.05 person-days)
- source: [tst/testbugfix/2021-08-05-Automorphisms.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2021-08-05-Automorphisms.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20210805Automorphisms`
- 5 code lines, 0 definitions

> Fix GitHub issue #4624   (second issue), reported by Graham Erskine
> When extending the series, must reduce radical automorphisms to valid ones

### `tst/testbugfix/2021-09-22-MatWreathProduct.tst`  (0.05 person-days)
- source: [tst/testbugfix/2021-09-22-MatWreathProduct.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2021-09-22-MatWreathProduct.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20210922MatWreathProduct`
- 5 code lines, 0 definitions

> Generators of Matrix Wreath Product with Intransitive Top Group # 4663

### `tst/testbugfix/2022-09-17-AllHomomorphisms.tst`  (0.05 person-days)
- source: [tst/testbugfix/2022-09-17-AllHomomorphisms.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2022-09-17-AllHomomorphisms.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20220917AllHomomorphisms`
- 5 code lines, 0 definitions

> Verify AllHomomorphisms works for finite solvable groups
> which are not in the filter CanEasilyComputePcgs: for such groups,
> we used to invoke MinimalGeneratingSet, but it is not actually
> implemented for them...

### `tst/testbugfix/2022-12-06-EvalString-syntax-error.tst`  (0.05 person-days)
- source: [tst/testbugfix/2022-12-06-EvalString-syntax-error.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2022-12-06-EvalString-syntax-error.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20221206EvalStringSyntaxError`
- 5 code lines, 0 definitions

> make sure that syntax error messages during EvalString are displayed correctly
> See https://github.com/gap-system/gap/issues/5242

### `tst/testbugfix/2024-05-24-Cluster.tst`  (0.05 person-days)
- source: [tst/testbugfix/2024-05-24-Cluster.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2024-05-24-Cluster.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20240524Cluster`
- 5 code lines, 0 definitions

> Fix #5717

### `tst/testbugfix/2024-Halloween-IsomorphismFp.tst`  (0.05 person-days)
- source: [tst/testbugfix/2024-Halloween-IsomorphismFp.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2024-Halloween-IsomorphismFp.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.2024HalloweenIsomorphismFp`
- 5 code lines, 0 definitions

> Fix for bug in IsomorphismFp
> reported by Andries Brouwer, 10/31/24

### `tst/testbugfix/2025-05-09-ratfun-zero-string.tst`  (0.05 person-days)
- source: [tst/testbugfix/2025-05-09-ratfun-zero-string.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2025-05-09-ratfun-zero-string.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20250509RatfunZeroString`
- 5 code lines, 0 definitions

> Fix #5987 ExtRepOfPolynomial_String for zero polynomial

### `tst/testbugfix/2025-10-15-CompatiblePairs.tst`  (0.05 person-days)
- source: [tst/testbugfix/2025-10-15-CompatiblePairs.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2025-10-15-CompatiblePairs.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20251015CompatiblePairs`
- 5 code lines, 0 definitions

> CompatiblePairs used to ignore the first optional argument in certain cases.
> In the example below, the last command used to produce the output
> [ 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96 ]
> 
> Reported by Heiko Dietrich, together with a helpful analysis of the problem
> that made a fix quite easy.

### `tst/testbugfix/2026-03-23-meataxe.tst`  (0.05 person-days)
- source: [tst/testbugfix/2026-03-23-meataxe.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2026-03-23-meataxe.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20260323Meataxe`
- 5 code lines, 0 definitions

> Handling of irreducible Meataxe modules with lots of generators was far
> slower than necessary at least via the "high level" Meataxe APIs.
> See also <https://github.com/gap-system/gap/issues/6271>.
> 
> The main test here is for performance: before the fix for issue #6271 this
> would have run for minutes, with the fix it should take far less than a
> second on a modern computer.

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerawzmpqk2t72zsemgkeegjdjr2qehmtqlkjwcdrtiwaxts23ztjxoq`, then merge with `tools/merge_tasks.py`.
