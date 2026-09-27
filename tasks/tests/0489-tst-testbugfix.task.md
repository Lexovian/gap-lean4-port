# GAP-0489 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeera5c52ly4bsyf2l5b2y3jr3xczhu7rngvsoq2wpv3tkgyrqep7hvta`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 15 file(s), 321 code lines, 25 definitions
- **Estimated effort:** 3.44 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2026-04-20-issue-5771.tst`  (0.27 person-days)
- source: [tst/testbugfix/2026-04-20-issue-5771.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2026-04-20-issue-5771.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20260420Issue5771`
- 24 code lines, 1 definitions

> # Regression test for #5771. The MinimalGeneratingSet method for pc-groups
> # greedily appended a fifth generator, even though later adjustments make
> # that generator redundant. The minimal generating set for this group has
> # size 4, but GAP gave one of size 5, with one redundant generator.

### `tst/testbugfix/2021-04-08-empty-FreeSemigroup.tst`  (0.25 person-days)
- source: [tst/testbugfix/2021-04-08-empty-FreeSemigroup.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2021-04-08-empty-FreeSemigroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20210408EmptyFreeSemigroup`
- 25 code lines, 0 definitions

> See https://github.com/gap-system/gap/issues/1385

### `tst/testbugfix/2026-02-26-ShortestVectors-positive.tst`  (0.25 person-days)
- source: [tst/testbugfix/2026-02-26-ShortestVectors-positive.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2026-02-26-ShortestVectors-positive.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20260226ShortestVectorsPositive`
- 24 code lines, 0 definitions

> Fix: ShortestVectors(..., "positive") should also accept vectors
> that are nonpositive by replacing them with their negation.

### `tst/testbugfix/2017-10-19-IsomorphismPartialPermSemigroup.tst`  (0.24 person-days)
- source: [tst/testbugfix/2017-10-19-IsomorphismPartialPermSemigroup.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2017-10-19-IsomorphismPartialPermSemigroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20171019IsomorphismPartialPermSemigroup`
- 24 code lines, 6 definitions

> Issue related to IsomorphismPartialPermSemigroup and
> IsomorphismPartialPermMonoid for a trivial perm group with 0 generators
> Examples reported on issue #1783 on github.com/gap-system/gap

### `tst/testbugfix/2024-10-11-alt-stab.tst`  (0.24 person-days)
- source: [tst/testbugfix/2024-10-11-alt-stab.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2024-10-11-alt-stab.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20241011AltStab`
- 22 code lines, 2 definitions

> Fix for https://github.com/gap-system/gap/issues/5808
> See also https://github.com/gap-system/gap/pull/5811

### `tst/testbugfix/2006-07-28-t00147.tst`  (0.23 person-days)
- source: [tst/testbugfix/2006-07-28-t00147.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2006-07-28-t00147.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20060728T00147`
- 23 code lines, 0 definitions

> 2006/07/28 (RFM)

### `tst/testbugfix/2013-02-28-t00287.tst`  (0.23 person-days)
- source: [tst/testbugfix/2013-02-28-t00287.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2013-02-28-t00287.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20130228T00287`
- 23 code lines, 0 definitions

> 2013/02/28 (MH)

### `tst/testbugfix/2017-05-14-lvars.tst`  (0.23 person-days)
- source: [tst/testbugfix/2017-05-14-lvars.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2017-05-14-lvars.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20170514Lvars`
- 19 code lines, 9 definitions

> gap> GetCurrentLVars();
> <lvars bag>
> gap> ContentsLVars(GetCurrentLVars());
> fail
> gap> f := function() return ContentsLVars(GetCurrentLVars()); end;

### `tst/testbugfix/2018-10-08-OnLeftInverse.tst`  (0.22 person-days)
- source: [tst/testbugfix/2018-10-08-OnLeftInverse.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-10-08-OnLeftInverse.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20181008OnLeftInverse`
- 22 code lines, 0 definitions

> Ensure OnLeftInverse preserves the mutability of its
> input arguments.

### `tst/testbugfix/2021-08-19-FuncCallOptionEvalOrder.tst`  (0.22 person-days)
- source: [tst/testbugfix/2021-08-19-FuncCallOptionEvalOrder.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2021-08-19-FuncCallOptionEvalOrder.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20210819FuncCallOptionEvalOrder`
- 20 code lines, 4 definitions

> @local myfunc, func_call, proc_call
> Fix GitHub issue #4631: The evaluation order of arguments versus
> options in function and procedure calls differed between the immediate
> interpreter, and the executor for coded statements.

### `tst/testbugfix/2024-10-11-orbit-hash.tst`  (0.22 person-days)
- source: [tst/testbugfix/2024-10-11-orbit-hash.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2024-10-11-orbit-hash.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20241011OrbitHash`
- 18 code lines, 0 definitions

> Fix a bug reported by Leonard Soicher caused by a bug in
> the hash function for lists of small positive integers.

### `tst/testbugfix/2005-12-08-t00323.tst`  (0.21 person-days)
- source: [tst/testbugfix/2005-12-08-t00323.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-12-08-t00323.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20051208T00323`
- 18 code lines, 0 definitions

> 2005/12/08 (TB)

### `tst/testbugfix/2012-09-06-t00253.tst`  (0.21 person-days)
- source: [tst/testbugfix/2012-09-06-t00253.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-09-06-t00253.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20120906T00253`
- 17 code lines, 3 definitions

> Crash when reading certain pieces of syntactically invalid code
> Fix and test case added by MH on 2012-09-06.

### `tst/testbugfix/2018-05-24-IntermediateSubgroups.tst`  (0.21 person-days)
- source: [tst/testbugfix/2018-05-24-IntermediateSubgroups.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-05-24-IntermediateSubgroups.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20180524IntermediateSubgroups`
- 21 code lines, 0 definitions

> test for MaximalSubgroupClassReps with options (reported through
> observation by S.Alavi with IntermediateGroup
> More complicated to construct w/o AtlasSubgroup to ensure the 325 points
> action, as it is too slow otherwise.
> Also construct the smaller subgroup
> s1 directly.  Finally do not slow down with assertions that don't need
> testing here

### `tst/testbugfix/2019-07-15-StoredInv.tst`  (0.21 person-days)
- source: [tst/testbugfix/2019-07-15-StoredInv.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2019-07-15-StoredInv.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20190715StoredInv`
- 21 code lines, 0 definitions

> When TRIM_PERM causes a permutation 'p' to change TNAM, the stored inverse
> must be cleared, as the stored inverse of 'p' must have the
> same TNAM as 'p'

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera5c52ly4bsyf2l5b2y3jr3xczhu7rngvsoq2wpv3tkgyrqep7hvta`, then merge with `tools/merge_tasks.py`.
