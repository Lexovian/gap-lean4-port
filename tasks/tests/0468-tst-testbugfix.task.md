# GAP-0468 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeeraqoqnzlfr3arrcpi6ke75pxisk423m3n4d3vc6iu6dhi63vcmvesa`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 15 file(s), 60 code lines, 0 definitions
- **Estimated effort:** 0.60 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2011-01-16-t00230.tst`  (0.04 person-days)
- source: [tst/testbugfix/2011-01-16-t00230.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2011-01-16-t00230.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20110116T00230`
- 4 code lines, 0 definitions

> Reported by FL on 2010/05/05, added by AK on 2011/01/16

### `tst/testbugfix/2011-03-24-t00233.tst`  (0.04 person-days)
- source: [tst/testbugfix/2011-03-24-t00233.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2011-03-24-t00233.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20110324T00233`
- 4 code lines, 0 definitions

> Problem with printing when GAP is compiled with GMP 5.0.1 under macOS
> in 32-bit mode. Does not occur with GMP 4.3.2 or in 64-bit mode.
> Reported by BH on 2011/02/06, added by AK on 2011/03/24

### `tst/testbugfix/2011-12-18-t00239.tst`  (0.04 person-days)
- source: [tst/testbugfix/2011-12-18-t00239.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2011-12-18-t00239.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20111218T00239`
- 4 code lines, 0 definitions

> Reported by Ilko Brauch on 2011/12/16, added by MH on 2011/12/18

### `tst/testbugfix/2012-06-15-t00246.tst`  (0.04 person-days)
- source: [tst/testbugfix/2012-06-15-t00246.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-06-15-t00246.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20120615T00246`
- 4 code lines, 0 definitions

> 2012/06/15 (AH)

### `tst/testbugfix/2012-09-11-t00254.tst`  (0.04 person-days)
- source: [tst/testbugfix/2012-09-11-t00254.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-09-11-t00254.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20120911T00254`
- 4 code lines, 0 definitions

> Check that overloading of a loaded help book by another one works. This
> makes sense if a book of a not loaded package is loaded in a workspace
> and GAP is started with a root path that contains a newer version.
> Reported by Sebastian Gutsche, fixed by FL on 2012-09-11

### `tst/testbugfix/2012-10-26-t00261.tst`  (0.04 person-days)
- source: [tst/testbugfix/2012-10-26-t00261.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-10-26-t00261.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20121026T00261`
- 4 code lines, 0 definitions

> 2012/10/26 (SL)
> Fix a crash when a logfile opened with LogTo() is closed with LogInputTo()

### `tst/testbugfix/2012-11-10-t00273.tst`  (0.04 person-days)
- source: [tst/testbugfix/2012-11-10-t00273.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-11-10-t00273.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20121110T00273`
- 4 code lines, 0 definitions

> 2012/11/10 (SL)

### `tst/testbugfix/2012-11-26-t00265.tst`  (0.04 person-days)
- source: [tst/testbugfix/2012-11-26-t00265.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-11-26-t00265.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20121126T00265`
- 4 code lines, 0 definitions

> 2012/11/26 (MN)

### `tst/testbugfix/2013-03-27-t00288.tst`  (0.04 person-days)
- source: [tst/testbugfix/2013-03-27-t00288.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2013-03-27-t00288.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20130327T00288`
- 4 code lines, 0 definitions

> 2013/03/27 (AK)

### `tst/testbugfix/2015-02-16-t00313.tst`  (0.04 person-days)
- source: [tst/testbugfix/2015-02-16-t00313.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2015-02-16-t00313.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20150216T00313`
- 4 code lines, 0 definitions

> 2015/02/16 (CJ, Reported by TB)

### `tst/testbugfix/2016-02-04-t00330.tst`  (0.04 person-days)
- source: [tst/testbugfix/2016-02-04-t00330.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2016-02-04-t00330.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20160204T00330`
- 4 code lines, 0 definitions

> 2016/2/4 (AH)

### `tst/testbugfix/2016-04-29-t00339.tst`  (0.04 person-days)
- source: [tst/testbugfix/2016-04-29-t00339.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2016-04-29-t00339.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20160429T00339`
- 4 code lines, 0 definitions

> 2016/04/29 (FL) and a third bug

### `tst/testbugfix/2017-01-09-t00350.tst`  (0.04 person-days)
- source: [tst/testbugfix/2017-01-09-t00350.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2017-01-09-t00350.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20170109T00350`
- 4 code lines, 0 definitions

> 2017-01-09 (MH); see also issue #817

### `tst/testbugfix/2017-08-03-StringFilterSetter.tst`  (0.04 person-days)
- source: [tst/testbugfix/2017-08-03-StringFilterSetter.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2017-08-03-StringFilterSetter.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20170803StringFilterSetter`
- 4 code lines, 0 definitions

> Bug: NewSetterFilter from opers.c was being called before the
> InitLibrary function from opers.c was, leading to StringFilterSetter
> not being initialized. This would cause the setter for IS_MUTABLE_OBJ
> to get an essentially undefined name, resp. "garbage".

### `tst/testbugfix/2018-04-30-IteratorOfCartesianProduct.tst`  (0.04 person-days)
- source: [tst/testbugfix/2018-04-30-IteratorOfCartesianProduct.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-04-30-IteratorOfCartesianProduct.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20180430IteratorOfCartesianProduct`
- 4 code lines, 0 definitions

> test iterating over an empty cartesian product;
> see https://github.com/gap-system/gap/issues/2420

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraqoqnzlfr3arrcpi6ke75pxisk423m3n4d3vc6iu6dhi63vcmvesa`, then merge with `tools/merge_tasks.py`.
