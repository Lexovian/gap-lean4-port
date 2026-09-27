# GAP-0488 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeeraiiotl6gqn7cthd4oapff4jmdiz7vd3zm2ngbtgfvown4t4wmx4ga`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 15 file(s), 89 code lines, 2 definitions
- **Estimated effort:** 0.91 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2026-03-04-DirectProductElement-Multiply-Integer-Error.tst`  (0.07 person-days)
- source: [tst/testbugfix/2026-03-04-DirectProductElement-Multiply-Integer-Error.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2026-03-04-DirectProductElement-Multiply-Integer-Error.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20260304DirectProductElementMultiplyIntegerError`
- 7 code lines, 2 definitions

> Tests that specific method for multiplying IsDirectProductElement
> and IsInt is used (the generic method for IsDirectProductElement
> and IsObject has a lower rank than IsAddetiveElement and IsObject).
> @local d

### `tst/testbugfix/00010.tst`  (0.06 person-days)
- source: [tst/testbugfix/00010.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00010.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00010`
- 6 code lines, 0 definitions

> # Costantini bug, in inverting lists of compressed vectors

### `tst/testbugfix/00016.tst`  (0.06 person-days)
- source: [tst/testbugfix/00016.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00016.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00016`
- 6 code lines, 0 definitions

> #  bug 2 for fix 4.

### `tst/testbugfix/00023.tst`  (0.06 person-days)
- source: [tst/testbugfix/00023.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00023.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00023`
- 6 code lines, 0 definitions

> # bug 17 for fix 4

### `tst/testbugfix/00028.tst`  (0.06 person-days)
- source: [tst/testbugfix/00028.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00028.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00028`
- 6 code lines, 0 definitions

> # bug 9 for fix 5

### `tst/testbugfix/00032.tst`  (0.06 person-days)
- source: [tst/testbugfix/00032.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00032.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00032`
- 6 code lines, 0 definitions

> #  bug 17 for fix 5 (example taken from `vspcmat.tst')

### `tst/testbugfix/00317.tst`  (0.06 person-days)
- source: [tst/testbugfix/00317.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00317.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00317`
- 4 code lines, 0 definitions

> #  bug 2 for fix 6

### `tst/testbugfix/2005-03-08-t00054.tst`  (0.06 person-days)
- source: [tst/testbugfix/2005-03-08-t00054.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-03-08-t00054.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050308T00054`
- 6 code lines, 0 definitions

> 2005/03/08 (AH)

### `tst/testbugfix/2005-07-20-t00084.tst`  (0.06 person-days)
- source: [tst/testbugfix/2005-07-20-t00084.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-07-20-t00084.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050720T00084`
- 6 code lines, 0 definitions

> 2005/07/20 (TB)

### `tst/testbugfix/2005-08-24-t00112.tst`  (0.06 person-days)
- source: [tst/testbugfix/2005-08-24-t00112.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-08-24-t00112.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050824T00112`
- 6 code lines, 0 definitions

> 2005/08/24 (SL, FL)

### `tst/testbugfix/2005-09-07-t00113.tst`  (0.06 person-days)
- source: [tst/testbugfix/2005-09-07-t00113.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-09-07-t00113.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050907T00113`
- 6 code lines, 0 definitions

> 2005/09/07 (TB)

### `tst/testbugfix/2006-02-20-t00136.tst`  (0.06 person-days)
- source: [tst/testbugfix/2006-02-20-t00136.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2006-02-20-t00136.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20060220T00136`
- 6 code lines, 0 definitions

> 2006/2/20 (AH)

### `tst/testbugfix/2006-07-06-t00156.tst`  (0.06 person-days)
- source: [tst/testbugfix/2006-07-06-t00156.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2006-07-06-t00156.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20060706T00156`
- 6 code lines, 0 definitions

> 2006/07/06 (SL)

### `tst/testbugfix/2006-07-27-t00146.tst`  (0.06 person-days)
- source: [tst/testbugfix/2006-07-27-t00146.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2006-07-27-t00146.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20060727T00146`
- 6 code lines, 0 definitions

> 2006/07/27 (SK)

### `tst/testbugfix/2007-01-22-t00169.tst`  (0.06 person-days)
- source: [tst/testbugfix/2007-01-22-t00169.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2007-01-22-t00169.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20070122T00169`
- 6 code lines, 0 definitions

> 2007/01/22 (SL)

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraiiotl6gqn7cthd4oapff4jmdiz7vd3zm2ngbtgfvown4t4wmx4ga`, then merge with `tools/merge_tasks.py`.
