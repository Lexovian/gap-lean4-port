# GAP-0480 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeeraj2rpottv2e4wl4vvb6a4l3jerredtpe4lhgvlyp2n6bkzhe4tpkq`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 15 file(s), 78 code lines, 5 definitions
- **Estimated effort:** 0.81 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2022-09-15-Orbits.tst`  (0.06 person-days)
- source: [tst/testbugfix/2022-09-15-Orbits.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2022-09-15-Orbits.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20220915Orbits`
- 5 code lines, 1 definitions

> Verify that Orbits works when the given seeds are a range
> See https://github.com/gap-system/gap/issues/5056

### `tst/testbugfix/2023-11-09-ConjugacyClasses.tst`  (0.06 person-days)
- source: [tst/testbugfix/2023-11-09-ConjugacyClasses.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2023-11-09-ConjugacyClasses.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20231109ConjugacyClasses`
- 6 code lines, 0 definitions

> Reported by Sumi Toshio Nov/9/2023

### `tst/testbugfix/2024-05-06-Isom.tst`  (0.06 person-days)
- source: [tst/testbugfix/2024-05-06-Isom.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2024-05-06-Isom.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20240506Isom`
- 6 code lines, 0 definitions

> Fix #5708

### `tst/testbugfix/2025-04-07-DoubleCosets.tst`  (0.06 person-days)
- source: [tst/testbugfix/2025-04-07-DoubleCosets.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2025-04-07-DoubleCosets.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20250407DoubleCosets`
- 6 code lines, 0 definitions

> Fix #5969 Double Cosets

### `tst/testbugfix/2025-06-06-IsomorphismFpGroup-rewrite.tst`  (0.06 person-days)
- source: [tst/testbugfix/2025-06-06-IsomorphismFpGroup-rewrite.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2025-06-06-IsomorphismFpGroup-rewrite.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20250606IsomorphismFpGroupRewrite`
- 6 code lines, 0 definitions

> From https://github.com/gap-system/gap/issues/6001

### `tst/testbugfix/2026-04-15-CosetLeadersMatFFE-errors.tst`  (0.06 person-days)
- source: [tst/testbugfix/2026-04-15-CosetLeadersMatFFE-errors.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2026-04-15-CosetLeadersMatFFE-errors.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20260415CosetLeadersMatFFEErrors`
- 6 code lines, 0 definitions

> Regression test for square matrices and invalid dependent input in
> CosetLeadersMatFFE.

### `tst/testbugfix/00004.tst`  (0.05 person-days)
- source: [tst/testbugfix/00004.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00004.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00004`
- 5 code lines, 0 definitions

> #  Check to see if the strongly connected component (Error 3) fix has been
> #     installed
> #

### `tst/testbugfix/00019.tst`  (0.05 person-days)
- source: [tst/testbugfix/00019.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00019.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00019`
- 5 code lines, 0 definitions

> # Rees Matrix bug fix 4

### `tst/testbugfix/2005-03-05-t00053.tst`  (0.05 person-days)
- source: [tst/testbugfix/2005-03-05-t00053.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-03-05-t00053.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050305T00053`
- 5 code lines, 0 definitions

> 2005/03/05 (AH)

### `tst/testbugfix/2005-06-17-t00078.tst`  (0.05 person-days)
- source: [tst/testbugfix/2005-06-17-t00078.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-06-17-t00078.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050617T00078`
- 5 code lines, 0 definitions

> 2005/06/17 (SL)

### `tst/testbugfix/2005-07-20-t00083.tst`  (0.05 person-days)
- source: [tst/testbugfix/2005-07-20-t00083.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-07-20-t00083.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050720T00083`
- 5 code lines, 0 definitions

> 2005/07/20 (TB)

### `tst/testbugfix/2005-08-11-t00110.tst`  (0.05 person-days)
- source: [tst/testbugfix/2005-08-11-t00110.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-08-11-t00110.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050811T00110`
- 4 code lines, 3 definitions

> 2005/08/11 (TB)

### `tst/testbugfix/2005-08-22-t00093.tst`  (0.05 person-days)
- source: [tst/testbugfix/2005-08-22-t00093.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-08-22-t00093.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050822T00093`
- 4 code lines, 0 definitions

> 2005/08/22 (JS+AH)

### `tst/testbugfix/2005-08-23-t00095.tst`  (0.05 person-days)
- source: [tst/testbugfix/2005-08-23-t00095.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-08-23-t00095.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050823T00095`
- 5 code lines, 1 definitions

> 2005/08/23 (TB)

### `tst/testbugfix/2007-02-14-t00170.tst`  (0.05 person-days)
- source: [tst/testbugfix/2007-02-14-t00170.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2007-02-14-t00170.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20070214T00170`
- 5 code lines, 0 definitions

> 2007/02/14 (SL)

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraj2rpottv2e4wl4vvb6a4l3jerredtpe4lhgvlyp2n6bkzhe4tpkq`, then merge with `tools/merge_tasks.py`.
