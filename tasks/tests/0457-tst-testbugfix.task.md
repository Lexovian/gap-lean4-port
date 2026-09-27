# GAP-0457 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeerawcnonpnvtc4joppht5h756avxee4k76nlas5uaim4us2qgtkccia`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 15 file(s), 30 code lines, 1 definitions
- **Estimated effort:** 0.30 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2005-07-22-t00106.tst`  (0.02 person-days)
- source: [tst/testbugfix/2005-07-22-t00106.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-07-22-t00106.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050722T00106`
- 2 code lines, 0 definitions

> 2005/07/22 (SK)

### `tst/testbugfix/2005-07-22-t00107.tst`  (0.02 person-days)
- source: [tst/testbugfix/2005-07-22-t00107.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-07-22-t00107.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050722T00107`
- 2 code lines, 0 definitions

> 2005/07/22 (SK)

### `tst/testbugfix/2005-08-10-t00086.tst`  (0.02 person-days)
- source: [tst/testbugfix/2005-08-10-t00086.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-08-10-t00086.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050810T00086`
- 2 code lines, 1 definitions

> 2005/08/10 (TB)
> 
> Up to now, the method installed for testing the membership of rationals
> in the field of rationals via <span class="code">IsRat</span>
> was not called; instead a more general method was used that called
> <span class="code">Conductor</span> and thus was much slower.
> Now the special method has been ranked up by changing the requirements
> in the method installation.

### `tst/testbugfix/2005-08-11-t00087.tst`  (0.02 person-days)
- source: [tst/testbugfix/2005-08-11-t00087.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-08-11-t00087.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050811T00087`
- 2 code lines, 0 definitions

> 2005/08/11 (JS)

### `tst/testbugfix/2005-08-15-t00088.tst`  (0.02 person-days)
- source: [tst/testbugfix/2005-08-15-t00088.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-08-15-t00088.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050815T00088`
- 2 code lines, 0 definitions

> 2005/08/15 (AH)

### `tst/testbugfix/2005-08-19-t00089.tst`  (0.02 person-days)
- source: [tst/testbugfix/2005-08-19-t00089.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-08-19-t00089.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050819T00089`
- 2 code lines, 0 definitions

> 2005/08/19 (JS)

### `tst/testbugfix/2005-08-25-t00099.tst`  (0.02 person-days)
- source: [tst/testbugfix/2005-08-25-t00099.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-08-25-t00099.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050825T00099`
- 2 code lines, 0 definitions

> 2005/08/25 (JS)

### `tst/testbugfix/2005-08-26-t00100.tst`  (0.02 person-days)
- source: [tst/testbugfix/2005-08-26-t00100.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-08-26-t00100.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050826T00100`
- 2 code lines, 0 definitions

> 2005/08/26 (Max)

### `tst/testbugfix/2005-10-14-t00116.tst`  (0.02 person-days)
- source: [tst/testbugfix/2005-10-14-t00116.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-10-14-t00116.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20051014T00116`
- 2 code lines, 0 definitions

> 2005/10/14 (BH)

### `tst/testbugfix/2005-10-26-t00117.tst`  (0.02 person-days)
- source: [tst/testbugfix/2005-10-26-t00117.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-10-26-t00117.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20051026T00117`
- 2 code lines, 0 definitions

> 2005/10/26 (JS)

### `tst/testbugfix/2005-10-28-t00118.tst`  (0.02 person-days)
- source: [tst/testbugfix/2005-10-28-t00118.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-10-28-t00118.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20051028T00118`
- 2 code lines, 0 definitions

> 2005/10/28 (TB)

### `tst/testbugfix/2005-10-28-t00119.tst`  (0.02 person-days)
- source: [tst/testbugfix/2005-10-28-t00119.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-10-28-t00119.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20051028T00119`
- 2 code lines, 0 definitions

> 2005/10/28 (TB)

### `tst/testbugfix/2005-11-28-t00123.tst`  (0.02 person-days)
- source: [tst/testbugfix/2005-11-28-t00123.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-11-28-t00123.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20051128T00123`
- 2 code lines, 0 definitions

> 2005/11/28 (FL)

### `tst/testbugfix/2005-11-29-t00125.tst`  (0.02 person-days)
- source: [tst/testbugfix/2005-11-29-t00125.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-11-29-t00125.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20051129T00125`
- 2 code lines, 0 definitions

> 2005/11/29 (TB)

### `tst/testbugfix/2005-11-29-t00126.tst`  (0.02 person-days)
- source: [tst/testbugfix/2005-11-29-t00126.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-11-29-t00126.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20051129T00126`
- 2 code lines, 0 definitions

> 2005/11/29 (TB)

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerawcnonpnvtc4joppht5h756avxee4k76nlas5uaim4us2qgtkccia`, then merge with `tools/merge_tasks.py`.
