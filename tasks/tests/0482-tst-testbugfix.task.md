# GAP-0482 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeerampzwvj6e4i23utjuis6cjdhzgkhfsmazum6xrueql7jd3qcfjkoa`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 15 file(s), 125 code lines, 0 definitions
- **Estimated effort:** 1.30 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2024-05-06-IsomorphismPermGroupOrFailFpGroup.tst`  (0.10 person-days)
- source: [tst/testbugfix/2024-05-06-IsomorphismPermGroupOrFailFpGroup.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2024-05-06-IsomorphismPermGroupOrFailFpGroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20240506IsomorphismPermGroupOrFailFpGroup`
- 10 code lines, 0 definitions

> Verify regression in IsomorphismPermGroupOrFailFpGroup is
> resolved, see <https://github.com/gap-system/gap/issues/5697>

### `tst/testbugfix/2005-05-17-t00074.tst`  (0.09 person-days)
- source: [tst/testbugfix/2005-05-17-t00074.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-05-17-t00074.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050517T00074`
- 9 code lines, 0 definitions

> 2005/05/17 (AH)

### `tst/testbugfix/2011-02-22-t00003.tst`  (0.09 person-days)
- source: [tst/testbugfix/2011-02-22-t00003.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2011-02-22-t00003.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20110222T00003`
- 9 code lines, 0 definitions

> #  Check that a new SpecialPcgs is created for which
> #    LGWeights can be set properly
> #    see my mail of 2011/02/22 to gap-dev for details. BH
> #

### `tst/testbugfix/2013-03-07-t00283.tst`  (0.09 person-days)
- source: [tst/testbugfix/2013-03-07-t00283.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2013-03-07-t00283.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20130307T00283`
- 9 code lines, 0 definitions

> 2013/03/07 (MH)

### `tst/testbugfix/2016-08-18-t00346.tst`  (0.09 person-days)
- source: [tst/testbugfix/2016-08-18-t00346.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2016-08-18-t00346.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20160818T00346`
- 9 code lines, 0 definitions

> 2016/8/18 (AH)

### `tst/testbugfix/2019-07-17-cyclic-size.tst`  (0.09 person-days)
- source: [tst/testbugfix/2019-07-17-cyclic-size.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2019-07-17-cyclic-size.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20190717CyclicSize`
- 9 code lines, 0 definitions

> Fix a bug that only occurs if all packages are loaded

### `tst/testbugfix/2021-02-04-ObjectsWithMemoryEquality.tst`  (0.09 person-days)
- source: [tst/testbugfix/2021-02-04-ObjectsWithMemoryEquality.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2021-02-04-ObjectsWithMemoryEquality.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20210204ObjectsWithMemoryEquality`
- 9 code lines, 0 definitions

> Equality operation for x with objects with memory, Pull Request #4239

### `tst/testbugfix/2023-01-19-vector-types.tst`  (0.09 person-days)
- source: [tst/testbugfix/2023-01-19-vector-types.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2023-01-19-vector-types.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20230119VectorTypes`
- 8 code lines, 0 definitions

> see https://github.com/gap-system/gap/issues/5330

### `tst/testbugfix/2023-06-28-MTC.tst`  (0.09 person-days)
- source: [tst/testbugfix/2023-06-28-MTC.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2023-06-28-MTC.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20230628MTC`
- 9 code lines, 0 definitions

> Overly eager cyclic replace in MTC, #5467

### `tst/testbugfix/00021.tst`  (0.08 person-days)
- source: [tst/testbugfix/00021.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00021.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00021`
- 8 code lines, 0 definitions

> #  bugs 12 and 14 for fix 4

### `tst/testbugfix/00029.tst`  (0.08 person-days)
- source: [tst/testbugfix/00029.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00029.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00029`
- 8 code lines, 0 definitions

> #  bug 10 for fix 5

### `tst/testbugfix/2005-05-18-t00075.tst`  (0.08 person-days)
- source: [tst/testbugfix/2005-05-18-t00075.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-05-18-t00075.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050518T00075`
- 6 code lines, 0 definitions

> 2005/05/18 (TB)

### `tst/testbugfix/2005-08-29-t00318.tst`  (0.08 person-days)
- source: [tst/testbugfix/2005-08-29-t00318.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-08-29-t00318.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050829T00318`
- 6 code lines, 0 definitions

> 2005/08/29 (TB)

### `tst/testbugfix/2012-12-06-t00266.tst`  (0.08 person-days)
- source: [tst/testbugfix/2012-12-06-t00266.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-12-06-t00266.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20121206T00266`
- 8 code lines, 0 definitions

> 2012/12/06 (AK)

### `tst/testbugfix/2013-01-17-t00276.tst`  (0.08 person-days)
- source: [tst/testbugfix/2013-01-17-t00276.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2013-01-17-t00276.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20130117T00276`
- 8 code lines, 0 definitions

> 2013/01/17 (AK)

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerampzwvj6e4i23utjuis6cjdhzgkhfsmazum6xrueql7jd3qcfjkoa`, then merge with `tools/merge_tasks.py`.
