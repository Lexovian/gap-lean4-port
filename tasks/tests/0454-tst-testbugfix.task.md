# GAP-0454 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeeraizbqlj4euedg5zrjm742exzabcryj2bc6hot73aekksm5ow7qgfa`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 15 file(s), 60 code lines, 2 definitions
- **Estimated effort:** 0.60 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/00000.tst`  (0.04 person-days)
- source: [tst/testbugfix/00000.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00000.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00000`
- 4 code lines, 0 definitions

> gap> DeclareGlobalVariable("foo73");
> gap> InstallValue(foo73,true);
> Error, InstallValue: <value> cannot be immediate, boolean or character, and it\
>  should rather be a record or a list

### `tst/testbugfix/00006.tst`  (0.04 person-days)
- source: [tst/testbugfix/00006.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00006.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00006`
- 4 code lines, 0 definitions

> # iterated autgp (5)

### `tst/testbugfix/00009.tst`  (0.04 person-days)
- source: [tst/testbugfix/00009.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00009.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00009`
- 4 code lines, 0 definitions

> # GQuotients

### `tst/testbugfix/00011.tst`  (0.04 person-days)
- source: [tst/testbugfix/00011.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00011.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00011`
- 4 code lines, 0 definitions

> # Testing if an element is in a Green's D equivalence class (fix 2 no. 12)

### `tst/testbugfix/00017.tst`  (0.04 person-days)
- source: [tst/testbugfix/00017.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00017.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00017`
- 4 code lines, 0 definitions

> #  bug 11 for fix 4.

### `tst/testbugfix/00018.tst`  (0.04 person-days)
- source: [tst/testbugfix/00018.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00018.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00018`
- 4 code lines, 0 definitions

> bug in ReducedSCTable:

### `tst/testbugfix/00037.tst`  (0.04 person-days)
- source: [tst/testbugfix/00037.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00037.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00037`
- 4 code lines, 0 definitions

> # bug 3 for fix 2

### `tst/testbugfix/00038.tst`  (0.04 person-days)
- source: [tst/testbugfix/00038.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00038.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00038`
- 4 code lines, 0 definitions

> # bug 5 for fix 2

### `tst/testbugfix/00040.tst`  (0.04 person-days)
- source: [tst/testbugfix/00040.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00040.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00040`
- 4 code lines, 0 definitions

> # bug 10 for fix 2

### `tst/testbugfix/2005-04-21-t00066.tst`  (0.04 person-days)
- source: [tst/testbugfix/2005-04-21-t00066.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-04-21-t00066.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050421T00066`
- 4 code lines, 0 definitions

> 2005/04/21 (FL)

### `tst/testbugfix/2005-04-26-t00067.tst`  (0.04 person-days)
- source: [tst/testbugfix/2005-04-26-t00067.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-04-26-t00067.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050426T00067`
- 4 code lines, 1 definitions

> 2005/04/26 (SL, FL)

### `tst/testbugfix/2005-06-08-t00101.tst`  (0.04 person-days)
- source: [tst/testbugfix/2005-06-08-t00101.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-06-08-t00101.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050608T00101`
- 4 code lines, 0 definitions

> 2005/06/08 (SL)

### `tst/testbugfix/2005-07-20-t00104.tst`  (0.04 person-days)
- source: [tst/testbugfix/2005-07-20-t00104.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-07-20-t00104.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050720T00104`
- 4 code lines, 0 definitions

> 2005/07/20 (TB)

### `tst/testbugfix/2005-07-21-t00105.tst`  (0.04 person-days)
- source: [tst/testbugfix/2005-07-21-t00105.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-07-21-t00105.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050721T00105`
- 4 code lines, 0 definitions

> 2005/07/21 (FL)

### `tst/testbugfix/2005-08-19-t00090.tst`  (0.04 person-days)
- source: [tst/testbugfix/2005-08-19-t00090.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-08-19-t00090.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050819T00090`
- 4 code lines, 1 definitions

> 2005/08/19 (JS)

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraizbqlj4euedg5zrjm742exzabcryj2bc6hot73aekksm5ow7qgfa`, then merge with `tools/merge_tasks.py`.
