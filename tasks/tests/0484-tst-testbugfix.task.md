# GAP-0484 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeeram42nwy4jhp7kgmgfibtomzrbbv5e7lhcel6vzznmouvcovpaayfa`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 15 file(s), 442 code lines, 6 definitions
- **Estimated effort:** 4.60 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2024_10_24_WreathProductWIthTrivialGroups.tst`  (0.35 person-days)
- source: [tst/testbugfix/2024_10_24_WreathProductWIthTrivialGroups.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2024_10_24_WreathProductWIthTrivialGroups.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20241024WreathProductWIthTrivialGroups`
- 34 code lines, 1 definitions

> Generators should not contain the identity element,
> unless the group is trivial.

### `tst/testbugfix/2025-03-28-ModuleAutomorphisms.tst`  (0.35 person-days)
- source: [tst/testbugfix/2025-03-28-ModuleAutomorphisms.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2025-03-28-ModuleAutomorphisms.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20250328ModuleAutomorphisms`
- 35 code lines, 0 definitions

> bug reported by David Roe on the GAP Forum: the command
> AutomorphismGroup(TransitiveGroup(45, 3878));
> sometimes gives a result that is too small. Traced back to
> a bug in MTX.ModuleAutomorphisms

### `tst/testbugfix/2005-04-12-t00057.tst`  (0.34 person-days)
- source: [tst/testbugfix/2005-04-12-t00057.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-04-12-t00057.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050412T00057`
- 32 code lines, 0 definitions

> 2005/04/12 (AH)

### `tst/testbugfix/2012-08-12-t00251.tst`  (0.34 person-days)
- source: [tst/testbugfix/2012-08-12-t00251.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-08-12-t00251.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20120812T00251`
- 33 code lines, 2 definitions

> Fix of very large (more than 1024 digit) integers not being coded
> correctly in function bodies unless the integer limb size was 16 bits.
> Reported by Stefan Kohl, fixed by SL on 2012-08-12

### `tst/testbugfix/2018-03-01-if-elif-crash.tst`  (0.33 person-days)
- source: [tst/testbugfix/2018-03-01-if-elif-crash.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-03-01-if-elif-crash.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20180301IfElifCrash`
- 21 code lines, 3 definitions

> Test for parser regression; the following code caused a segfault for
> a time. See https://github.com/gap-system/gap/issues/2226

### `tst/testbugfix/00015.tst`  (0.32 person-days)
- source: [tst/testbugfix/00015.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00015.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00015`
- 32 code lines, 0 definitions

> #  bugs 2, 3, 6, 7, 20 for fix 2.

### `tst/testbugfix/2014-08-13-t00304.tst`  (0.31 person-days)
- source: [tst/testbugfix/2014-08-13-t00304.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2014-08-13-t00304.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20140813T00304`
- 31 code lines, 0 definitions

> 2014/08/13 (TB, AK). A bug that may cause ShortestVectors
> to return an incomplete list (reported by Florian Beye).

### `tst/testbugfix/2024-01-25-MaxAbQuot.tst`  (0.31 person-days)
- source: [tst/testbugfix/2024-01-25-MaxAbQuot.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2024-01-25-MaxAbQuot.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20240125MaxAbQuot`
- 31 code lines, 0 definitions

> Reported by don't know, # 5609

### `tst/testbugfix/2013-03-12-t00285.tst`  (0.30 person-days)
- source: [tst/testbugfix/2013-03-12-t00285.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2013-03-12-t00285.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20130312T00285`
- 30 code lines, 0 definitions

> 2013/03/12 (MH)
> 
> The following tests used to crash. This is because for compressed FFE
> vectors, we install custom methods for ELMS_LIST (ELMS_VEC8BIT,
> ELMS_GF2VEC...) which return compressed vectors again -- which are not plain
> lists. But the code in ElmsListLevel etc. assumes that its first input is a
> plain list. Indeed, the documentation for ElmsListFuncs states:
> 
> > If the result is a list of lists, then it also *must* create a new list
> > that has the same representation as a plain list.
> 
> Now, ELMS_VEC8BIT etc. are not wrong: as they do not return a list of lists,

### `tst/testbugfix/2018-01-15-jennings.tst`  (0.29 person-days)
- source: [tst/testbugfix/2018-01-15-jennings.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-01-15-jennings.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20180115Jennings`
- 29 code lines, 0 definitions

> test for JenningsLieAlgebra (fixing a bug reported by Laurent Bartholdi):

### `tst/testbugfix/00012.tst`  (0.28 person-days)
- source: [tst/testbugfix/00012.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00012.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00012`
- 28 code lines, 0 definitions

> # Testing if Green's D classes can be compared for finite semigroups

### `tst/testbugfix/2008-11-16-t00214.tst`  (0.27 person-days)
- source: [tst/testbugfix/2008-11-16-t00214.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2008-11-16-t00214.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20081116T00214`
- 25 code lines, 0 definitions

> 2008/11/16 (TB)

### `tst/testbugfix/2012-08-31-t00252.tst`  (0.27 person-days)
- source: [tst/testbugfix/2012-08-31-t00252.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-08-31-t00252.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20120831T00252`
- 27 code lines, 0 definitions

> Fix of Crash in garbage collection following call to AClosVec for a GF(2) code
> Reported by Volker Brown, fixed by SL on 2012-08-31

### `tst/testbugfix/2017-09-06-reesmat.tst`  (0.27 person-days)
- source: [tst/testbugfix/2017-09-06-reesmat.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2017-09-06-reesmat.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20170906Reesmat`
- 27 code lines, 0 definitions

> Bug in IsFinite
> Example reported on issue #1659 on github.com/gap-system/gap

### `tst/testbugfix/2026-04-15-issue-5923.tst`  (0.27 person-days)
- source: [tst/testbugfix/2026-04-15-issue-5923.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2026-04-15-issue-5923.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20260415Issue5923`
- 27 code lines, 0 definitions

> Regression test for issue #5923: the 8-bit kernel path for
> CosetLeadersMatFFE must not leave holes in the result list.

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeram42nwy4jhp7kgmgfibtomzrbbv5e7lhcel6vzznmouvcovpaayfa`, then merge with `tools/merge_tasks.py`.
