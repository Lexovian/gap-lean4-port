# GAP-0473 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeerawsbobvlfga4bhqedf5tvovnpnfamk2rowotbp56qj7ref4uovaoq`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 15 file(s), 43 code lines, 0 definitions
- **Estimated effort:** 0.43 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2014-09-05-t00306.tst`  (0.03 person-days)
- source: [tst/testbugfix/2014-09-05-t00306.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2014-09-05-t00306.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20140905T00306`
- 3 code lines, 0 definitions

> 2014/09/05 (TB, reported by Benjamin Sambale)

### `tst/testbugfix/2015-04-01-t00329.tst`  (0.03 person-days)
- source: [tst/testbugfix/2015-04-01-t00329.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2015-04-01-t00329.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20150401T00329`
- 3 code lines, 0 definitions

> 2015/04/01 (SL)

### `tst/testbugfix/2016-05-30-t00341.tst`  (0.03 person-days)
- source: [tst/testbugfix/2016-05-30-t00341.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2016-05-30-t00341.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20160530T00341`
- 3 code lines, 0 definitions

> 2016/05/30 (CJ, bug reported github #798)

### `tst/testbugfix/2017-11-08-ExteriorPower.tst`  (0.03 person-days)
- source: [tst/testbugfix/2017-11-08-ExteriorPower.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2017-11-08-ExteriorPower.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20171108ExteriorPower`
- 3 code lines, 0 definitions

> if ExteriorPower(V,n) is called with n > Dimension(V), the space returned is marked
> as 1-dimensional rather than 0-dimensional.

### `tst/testbugfix/2018-07-18-sortex.tst`  (0.03 person-days)
- source: [tst/testbugfix/2018-07-18-sortex.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-07-18-sortex.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20180718Sortex`
- 3 code lines, 0 definitions

> gap> ll:= [ 1, 2, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 2, 1, 1, 1, 2, 1, 2, 1, 2, 2, 1, 2 ];;
> gap> Sortex( ll );
> (2,13,19,10,5,15,7,16,8,4)(3,14,20,22,23,24,12,6)(9,17)(11,18,21)

### `tst/testbugfix/2018-08-01-SaveWorkspace.tst`  (0.03 person-days)
- source: [tst/testbugfix/2018-08-01-SaveWorkspace.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-08-01-SaveWorkspace.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20180801SaveWorkspace`
- 3 code lines, 0 definitions

> SaveWorkspace used to return 'true' even if it failed to open the
> output file. Also, the error message was not trailed by a newline.
> See https://github.com/gap-system/gap/issues/2673

### `tst/testbugfix/2020-01-13-wordprint.tst`  (0.03 person-days)
- source: [tst/testbugfix/2020-01-13-wordprint.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2020-01-13-wordprint.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20200113Wordprint`
- 3 code lines, 0 definitions

> Assoc. word printing, #3845

### `tst/testbugfix/2021-12-11-LatticeSubgroups.tst`  (0.03 person-days)
- source: [tst/testbugfix/2021-12-11-LatticeSubgroups.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2021-12-11-LatticeSubgroups.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20211211LatticeSubgroups`
- 3 code lines, 0 definitions

> see https://github.com/gap-system/gap/issues/4717

### `tst/testbugfix/2023-04-19-WeylFp.tst`  (0.03 person-days)
- source: [tst/testbugfix/2023-04-19-WeylFp.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2023-04-19-WeylFp.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20230419WeylFp`
- 3 code lines, 0 definitions

> Weyl group E8 presentation typo

### `tst/testbugfix/2023-07-23-Lattice.tst`  (0.03 person-days)
- source: [tst/testbugfix/2023-07-23-Lattice.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2023-07-23-Lattice.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20230723Lattice`
- 3 code lines, 0 definitions

> Missing perfect subgroups, causing problems for lattice.

### `tst/testbugfix/2025-01-09-IsomorphismPermGroupOrFailFpGroup.tst`  (0.03 person-days)
- source: [tst/testbugfix/2025-01-09-IsomorphismPermGroupOrFailFpGroup.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2025-01-09-IsomorphismPermGroupOrFailFpGroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20250109IsomorphismPermGroupOrFailFpGroup`
- 3 code lines, 0 definitions

> IsomorphismPermGroupOrFailFpGroup ignored its second argument
> which is supposed to limit the number of cosets that get defined
> before it gives up

### `tst/testbugfix/2025-11-06-perfectsubs.tst`  (0.03 person-days)
- source: [tst/testbugfix/2025-11-06-perfectsubs.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2025-11-06-perfectsubs.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20251106Perfectsubs`
- 3 code lines, 0 definitions

> missing subgroups when finding perfect subgroups
> See <https://github.com/gap-system/gap/issues/6157>.

### `tst/testbugfix/2026-04-19-PlainListCopy.tst`  (0.03 person-days)
- source: [tst/testbugfix/2026-04-19-PlainListCopy.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2026-04-19-PlainListCopy.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20260419PlainListCopy`
- 3 code lines, 0 definitions

> Fix PlainListCopy for lists which are small but do not know it yet know they
> are in filter `IsSmallList`; this is e.g. needed for the semigroups test
> suite

### `tst/testbugfix/00022.tst`  (0.02 person-days)
- source: [tst/testbugfix/00022.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00022.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00022`
- 2 code lines, 0 definitions

> #  bug 16 for fix 4

### `tst/testbugfix/00025.tst`  (0.02 person-days)
- source: [tst/testbugfix/00025.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00025.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00025`
- 2 code lines, 0 definitions

> #  bug 5 for fix 5

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerawsbobvlfga4bhqedf5tvovnpnfamk2rowotbp56qj7ref4uovaoq`, then merge with `tools/merge_tasks.py`.
