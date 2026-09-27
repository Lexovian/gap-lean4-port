# GAP-0467 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeeraqgulkla52u57jctuwvzn5ivey5x2pvuy5jxudgdaymhviw6ahd7q`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 15 file(s), 30 code lines, 2 definitions
- **Estimated effort:** 0.30 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2010-10-27-t00228.tst`  (0.02 person-days)
- source: [tst/testbugfix/2010-10-27-t00228.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2010-10-27-t00228.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20101027T00228`
- 2 code lines, 0 definitions

> 2010/10/27 (TB)

### `tst/testbugfix/2010-11-11-t00229.tst`  (0.02 person-days)
- source: [tst/testbugfix/2010-11-11-t00229.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2010-11-11-t00229.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20101111T00229`
- 2 code lines, 0 definitions

> 2010/11/11 (AH)

### `tst/testbugfix/2011-03-09-t00232.tst`  (0.02 person-days)
- source: [tst/testbugfix/2011-03-09-t00232.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2011-03-09-t00232.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20110309T00232`
- 2 code lines, 0 definitions

> Reported by WDeMeo on 2011/02/19, added by JS on 2011/03/09
> IntermediateSubgroups(G,normal) included non-maximal inclusions

### `tst/testbugfix/2011-09-29-t00237.tst`  (0.02 person-days)
- source: [tst/testbugfix/2011-09-29-t00237.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2011-09-29-t00237.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20110929T00237`
- 2 code lines, 0 definitions

> 2011/09/29 (FL)

### `tst/testbugfix/2011-12-20-t00240.tst`  (0.02 person-days)
- source: [tst/testbugfix/2011-12-20-t00240.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2011-12-20-t00240.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20111220T00240`
- 2 code lines, 0 definitions

> 2011/12/20 (FL)

### `tst/testbugfix/2012-04-03-t00243.tst`  (0.02 person-days)
- source: [tst/testbugfix/2012-04-03-t00243.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-04-03-t00243.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20120403T00243`
- 2 code lines, 0 definitions

> Bug with non-square matrices in ElementaryDivisorsMat, added by MH on 2012/4/3.
> Since ElementaryDivisorsMat just calls SmithNormalFormIntegerMat when
> the base ring R equals Integers, we use GaussianIntegers instead to
> ensure the generic ElementaryDivisorsMat method is tested.

### `tst/testbugfix/2012-06-24-t00249.tst`  (0.02 person-days)
- source: [tst/testbugfix/2012-06-24-t00249.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-06-24-t00249.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20120624T00249`
- 2 code lines, 0 definitions

> The GL and SL constructors did not correctly handle GL(filter,dim,ring).
> Reported and fixed by JS on 2012-06-24

### `tst/testbugfix/2012-08-13-t00257.tst`  (0.02 person-days)
- source: [tst/testbugfix/2012-08-13-t00257.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-08-13-t00257.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20120813T00257`
- 2 code lines, 0 definitions

> 2012/08/13 (AK)

### `tst/testbugfix/2012-09-13-t00255.tst`  (0.02 person-days)
- source: [tst/testbugfix/2012-09-13-t00255.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-09-13-t00255.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20120913T00255`
- 2 code lines, 0 definitions

> Check of the membership test after fixing a method for coefficients
> to check after Gaussian elimination that the coefficients actually
> lie in the left-acting-domain of the vector space.
> Reported by Kevin Watkins, fixed by TB (via AK) on 2012-09-13

### `tst/testbugfix/2012-10-05-t00260.tst`  (0.02 person-days)
- source: [tst/testbugfix/2012-10-05-t00260.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-10-05-t00260.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20121005T00260`
- 2 code lines, 0 definitions

> 2012/10/05 (AH)

### `tst/testbugfix/2012-12-17-t00275.tst`  (0.02 person-days)
- source: [tst/testbugfix/2012-12-17-t00275.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-12-17-t00275.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20121217T00275`
- 2 code lines, 2 definitions

> 2012/12/17 (SL)

### `tst/testbugfix/2013-02-07-t00278.tst`  (0.02 person-days)
- source: [tst/testbugfix/2013-02-07-t00278.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2013-02-07-t00278.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20130207T00278`
- 2 code lines, 0 definitions

> 2013/02/07 (AK)

### `tst/testbugfix/2013-03-06-t00282.tst`  (0.02 person-days)
- source: [tst/testbugfix/2013-03-06-t00282.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2013-03-06-t00282.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20130306T00282`
- 2 code lines, 0 definitions

> 2013/03/06 (MH)

### `tst/testbugfix/2014-08-21-t00305.tst`  (0.02 person-days)
- source: [tst/testbugfix/2014-08-21-t00305.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2014-08-21-t00305.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20140821T00305`
- 2 code lines, 0 definitions

> 2014/08/21 (AK, CJ)

### `tst/testbugfix/2014-10-22-t00306b.tst`  (0.02 person-days)
- source: [tst/testbugfix/2014-10-22-t00306b.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2014-10-22-t00306b.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20141022T00306b`
- 2 code lines, 0 definitions

> 2014/10/22 (CJ)

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraqgulkla52u57jctuwvzn5ivey5x2pvuy5jxudgdaymhviw6ahd7q`, then merge with `tools/merge_tasks.py`.
