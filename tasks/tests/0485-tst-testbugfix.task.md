# GAP-0485 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeerapuuvah52xbda2yvjkwf4wfd4chsigzsdhrfmtmclt5rbqim5vdga`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 15 file(s), 96 code lines, 0 definitions
- **Estimated effort:** 1.09 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2025-01-17-HasDomain-for-matrix-with-memory.tst`  (0.08 person-days)
- source: [tst/testbugfix/2025-01-17-HasDomain-for-matrix-with-memory.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2025-01-17-HasDomain-for-matrix-with-memory.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20250117HasDomainForMatrixWithMemory`
- 8 code lines, 0 definitions

> gap> G := GroupWithMemory([One(GL(3,4))]);;
> gap> mat := G.1;;
> gap> HasBaseDomain(mat);
> true
> gap> BaseDomain(mat);

### `tst/testbugfix/2026-01-20-IsomorphismSimpleGroups.tst`  (0.08 person-days)
- source: [tst/testbugfix/2026-01-20-IsomorphismSimpleGroups.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2026-01-20-IsomorphismSimpleGroups.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20260120IsomorphismSimpleGroups`
- 8 code lines, 0 definitions

> Fix #6200 IsomorphismSimpleGroups
> @local G, x, H

### `tst/testbugfix/2026-04-16-DeterminantMat.tst`  (0.08 person-days)
- source: [tst/testbugfix/2026-04-16-DeterminantMat.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2026-04-16-DeterminantMat.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20260416DeterminantMat`
- 8 code lines, 0 definitions

> Fix inconsistent error handling in DeterminantMat, see #5264

### `tst/testbugfix/2026-06-05-ConjugateGroup.tst`  (0.08 person-days)
- source: [tst/testbugfix/2026-06-05-ConjugateGroup.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2026-06-05-ConjugateGroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20260605ConjugateGroup`
- 8 code lines, 0 definitions

> Fix an unexpected error in ConjugateGroup when applied to
> a matrix group not over a field
> See https://github.com/gap-system/gap/issues/6423

### `tst/testbugfix/00043.tst`  (0.07 person-days)
- source: [tst/testbugfix/00043.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00043.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00043`
- 7 code lines, 0 definitions

> # bug 16-18 for fix 4

### `tst/testbugfix/2005-06-23-t00325.tst`  (0.07 person-days)
- source: [tst/testbugfix/2005-06-23-t00325.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-06-23-t00325.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050623T00325`
- 5 code lines, 0 definitions

> 2005/06/23 (AH)

### `tst/testbugfix/2005-08-23-t00094.tst`  (0.07 person-days)
- source: [tst/testbugfix/2005-08-23-t00094.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-08-23-t00094.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050823T00094`
- 6 code lines, 0 definitions

> 2005/08/23 (TB)
> At that time, the fix meant to exit from a method that computes
> the degrees, in order to get into a method that uses the stored
> irreducibles.
> With the changes from 'https://github.com/gap-system/gap/pull/6075',
> the method that uses the stored irreducibles has higher rank,
> thus a delegation via 'TryNextMethod' is not necessary anymore.

### `tst/testbugfix/2006-03-03-t00135b.tst`  (0.07 person-days)
- source: [tst/testbugfix/2006-03-03-t00135b.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2006-03-03-t00135b.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20060303T00135b`
- 5 code lines, 0 definitions

> 2006/03/03 (FL)

### `tst/testbugfix/2007-07-02-t00180.tst`  (0.07 person-days)
- source: [tst/testbugfix/2007-07-02-t00180.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2007-07-02-t00180.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20070702T00180`
- 5 code lines, 0 definitions

> 2007/07/02 (SK)

### `tst/testbugfix/2007-08-31-t00192.tst`  (0.07 person-days)
- source: [tst/testbugfix/2007-08-31-t00192.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2007-08-31-t00192.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20070831T00192`
- 7 code lines, 0 definitions

> 2007/08/31 (FL)

### `tst/testbugfix/2008-11-16-t00213.tst`  (0.07 person-days)
- source: [tst/testbugfix/2008-11-16-t00213.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2008-11-16-t00213.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20081116T00213`
- 7 code lines, 0 definitions

> 2008/11/16 (TB)

### `tst/testbugfix/2012-03-17-t00242.tst`  (0.07 person-days)
- source: [tst/testbugfix/2012-03-17-t00242.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-03-17-t00242.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20120317T00242`
- 7 code lines, 0 definitions

> Reported by Burkhard Hoefling on 2012/3/17, added by SL on 2012/3/17
> Converting a compressed vector of length 0 to a bigger field failed.

### `tst/testbugfix/2012-06-05-t00245.tst`  (0.07 person-days)
- source: [tst/testbugfix/2012-06-05-t00245.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-06-05-t00245.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20120605T00245`
- 7 code lines, 0 definitions

> Bug with commutator subgroups of fp groups, was causing infinite recursion,
> also when computing automorphism groups
> Fix and test case added by MH on 2012-06-05.

### `tst/testbugfix/2012-06-18-t00327.tst`  (0.07 person-days)
- source: [tst/testbugfix/2012-06-18-t00327.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-06-18-t00327.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20120618T00327`
- 5 code lines, 0 definitions

> 2012/06/18 (FL)

### `tst/testbugfix/2012-06-18-t00328.tst`  (0.07 person-days)
- source: [tst/testbugfix/2012-06-18-t00328.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-06-18-t00328.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20120618T00328`
- 3 code lines, 0 definitions

> 2012/06/18 (MH)

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerapuuvah52xbda2yvjkwf4wfd4chsigzsdhrfmtmclt5rbqim5vdga`, then merge with `tools/merge_tasks.py`.
