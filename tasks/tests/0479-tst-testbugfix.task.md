# GAP-0479 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeerazy43hprfitxa7fgiyha66i6yjuc5e6wtdachymf2kireae4lvzja`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 15 file(s), 150 code lines, 4 definitions
- **Estimated effort:** 1.67 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2022-03-20-AlternatingDegree.tst`  (0.12 person-days)
- source: [tst/testbugfix/2022-03-20-AlternatingDegree.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2022-03-20-AlternatingDegree.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20220320AlternatingDegree`
- 11 code lines, 1 definitions

> Very fix for infinite recursion in AlternatingDegree and SymmetricDegree,
> see https://github.com/gap-system/gap/issues/4826

### `tst/testbugfix/2025-08-25-InterpolatedPolynomial.tst`  (0.12 person-days)
- source: [tst/testbugfix/2025-08-25-InterpolatedPolynomial.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2025-08-25-InterpolatedPolynomial.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20250825InterpolatedPolynomial`
- 12 code lines, 0 definitions

> InterpolatedPolynomial should always return a polynomial.
> Reported by István Szöllősi during GAP Days 2025.

### `tst/testbugfix/00319.tst`  (0.11 person-days)
- source: [tst/testbugfix/00319.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00319.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00319`
- 7 code lines, 0 definitions

> #  Bug 18 for fix 4

### `tst/testbugfix/2005-10-05-t00115.tst`  (0.11 person-days)
- source: [tst/testbugfix/2005-10-05-t00115.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-10-05-t00115.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20051005T00115`
- 5 code lines, 0 definitions

> 2005/10/05 (SL and MN)

### `tst/testbugfix/2005-10-29-t00321.tst`  (0.11 person-days)
- source: [tst/testbugfix/2005-10-29-t00321.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-10-29-t00321.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20051029T00321`
- 7 code lines, 0 definitions

> 2005/10/29 (TB)

### `tst/testbugfix/2006-04-02-t00154.tst`  (0.11 person-days)
- source: [tst/testbugfix/2006-04-02-t00154.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2006-04-02-t00154.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20060402T00154`
- 11 code lines, 0 definitions

> 2006/04/02 (AH)

### `tst/testbugfix/2011-09-29-t00236.tst`  (0.11 person-days)
- source: [tst/testbugfix/2011-09-29-t00236.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2011-09-29-t00236.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20110929T00236`
- 11 code lines, 0 definitions

> Reported by Radoslav Kirov on 2011/06/11, added by MH on 2011/09/29

### `tst/testbugfix/2012-03-16-t00241.tst`  (0.11 person-days)
- source: [tst/testbugfix/2012-03-16-t00241.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-03-16-t00241.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20120316T00241`
- 11 code lines, 0 definitions

> Reported by Burkhard Hoefling on 2012/3/14, added by SL on 2012/3/16
> SHIFT_LEFT_VEC8BIT can fail to clean space to its right, which can then
> be picked up by a subsequent add to a longer vector

### `tst/testbugfix/2012-09-14-t00272.tst`  (0.11 person-days)
- source: [tst/testbugfix/2012-09-14-t00272.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-09-14-t00272.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20120914T00272`
- 11 code lines, 0 definitions

> 2012/09/14 (SL)

### `tst/testbugfix/2013-06-14-t00300.tst`  (0.11 person-days)
- source: [tst/testbugfix/2013-06-14-t00300.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2013-06-14-t00300.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20130614T00300`
- 10 code lines, 2 definitions

> 2013/06/14 (AK, MH)

### `tst/testbugfix/2017-08-05-algfld.tst`  (0.11 person-days)
- source: [tst/testbugfix/2017-08-05-algfld.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2017-08-05-algfld.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20170805Algfld`
- 11 code lines, 1 definitions

> AlgebraicExtension used to fail for finite fields of size over 256

### `tst/testbugfix/2018-06-27-ExtendedVectors.tst`  (0.11 person-days)
- source: [tst/testbugfix/2018-06-27-ExtendedVectors.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-06-27-ExtendedVectors.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20180627ExtendedVectors`
- 11 code lines, 0 definitions

> ExtendedVectors was relying on some specific internal behavior
> of vector space enumerators; but that was brittle, as a change in
> rank can lead to a different enumerator being installed. Make sure
> this is not the case anymore

### `tst/testbugfix/2018-06-28-grplatt.tst`  (0.11 person-days)
- source: [tst/testbugfix/2018-06-28-grplatt.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-06-28-grplatt.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20180628Grplatt`
- 11 code lines, 0 definitions

> verify fix for bug #2586 on GitHub

### `tst/testbugfix/2021-03-25-IsSemiband.tst`  (0.11 person-days)
- source: [tst/testbugfix/2021-03-25-IsSemiband.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2021-03-25-IsSemiband.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20210325IsSemiband`
- 11 code lines, 0 definitions

> #
> gap> tab := [[4, 2, 1, 4], [2, 2, 2, 3], [2, 4, 3, 1], [4, 1, 1, 4]];;
> gap> m := MagmaByMultiplicationTable(tab);;
> gap> m = Submagma(m, Filtered(m, IsIdempotent));
> true

### `tst/testbugfix/2023-10-18-SetDimension.tst`  (0.11 person-days)
- source: [tst/testbugfix/2023-10-18-SetDimension.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2023-10-18-SetDimension.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20231018SetDimension`
- 10 code lines, 0 definitions

> issue reported by Michel Lavrauw on 18 October 2023
> @if LoadPackage("fining",false) <> fail

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerazy43hprfitxa7fgiyha66i6yjuc5e6wtdachymf2kireae4lvzja`, then merge with `tools/merge_tasks.py`.
