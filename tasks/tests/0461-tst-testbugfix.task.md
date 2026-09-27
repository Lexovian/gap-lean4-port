# GAP-0461 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeeracijm5qb5vdidnc772hoiaxfb453v7ddidbzosetawtqunrvjfziq`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 9 file(s), 9 code lines, 0 definitions
- **Estimated effort:** 0.09 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2006-05-12-t00144.tst`  (0.01 person-days)
- source: [tst/testbugfix/2006-05-12-t00144.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2006-05-12-t00144.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20060512T00144`
- 1 code lines, 0 definitions

> 2006/05/12 (TB)

### `tst/testbugfix/2006-08-28-t00161.tst`  (0.01 person-days)
- source: [tst/testbugfix/2006-08-28-t00161.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2006-08-28-t00161.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20060828T00161`
- 1 code lines, 0 definitions

> 2006/08/28 (FL)

### `tst/testbugfix/2006-10-04-t00162.tst`  (0.01 person-days)
- source: [tst/testbugfix/2006-10-04-t00162.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2006-10-04-t00162.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20061004T00162`
- 1 code lines, 0 definitions

> 2006/10/04 (TB)

### `tst/testbugfix/2006-10-04-t00165.tst`  (0.01 person-days)
- source: [tst/testbugfix/2006-10-04-t00165.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2006-10-04-t00165.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20061004T00165`
- 1 code lines, 0 definitions

> 2006/10/4 (AH)

### `tst/testbugfix/2006-11-13-t00166.tst`  (0.01 person-days)
- source: [tst/testbugfix/2006-11-13-t00166.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2006-11-13-t00166.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20061113T00166`
- 1 code lines, 0 definitions

> 2006/11/13 (AH)

### `tst/testbugfix/2006-11-14-t00167.tst`  (0.01 person-days)
- source: [tst/testbugfix/2006-11-14-t00167.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2006-11-14-t00167.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20061114T00167`
- 1 code lines, 0 definitions

> 2006/11/14 (FL)

### `tst/testbugfix/2007-03-21-t00186.tst`  (0.01 person-days)
- source: [tst/testbugfix/2007-03-21-t00186.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2007-03-21-t00186.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20070321T00186`
- 1 code lines, 0 definitions

> 2007/03/21 (TB)

### `tst/testbugfix/2007-10-10-t00194.tst`  (0.01 person-days)
- source: [tst/testbugfix/2007-10-10-t00194.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2007-10-10-t00194.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20071010T00194`
- 1 code lines, 0 definitions

> 2007/10/10 (TB)

### `tst/testbugfix/2013-09-25-t00297.tst`  (0.01 person-days)
- source: [tst/testbugfix/2013-09-25-t00297.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2013-09-25-t00297.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20130925T00297`
- 1 code lines, 0 definitions

> 2013/09/25 (AK, CJ)

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeracijm5qb5vdidnc772hoiaxfb453v7ddidbzosetawtqunrvjfziq`, then merge with `tools/merge_tasks.py`.
