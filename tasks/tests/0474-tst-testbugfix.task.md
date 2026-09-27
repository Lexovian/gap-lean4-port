# GAP-0474 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeerabckizqpon66uyvksapybajokclxy54uccypud2q3lwo5d74hwnaa`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 15 file(s), 30 code lines, 1 definitions
- **Estimated effort:** 0.30 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2014-12-05-t00307.tst`  (0.02 person-days)
- source: [tst/testbugfix/2014-12-05-t00307.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2014-12-05-t00307.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20141205T00307`
- 2 code lines, 0 definitions

> # For bugfixes
> 2014/12/05 (CJ, reported by Matt Fayers; see also tst/union.tst)

### `tst/testbugfix/2015-01-08-t00310.tst`  (0.02 person-days)
- source: [tst/testbugfix/2015-01-08-t00310.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2015-01-08-t00310.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20150108T00310`
- 2 code lines, 0 definitions

> 2015/01/08 (JM, reported by Nick Loughlin)

### `tst/testbugfix/2016-03-16-t00334.tst`  (0.02 person-days)
- source: [tst/testbugfix/2016-03-16-t00334.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2016-03-16-t00334.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20160316T00334`
- 2 code lines, 0 definitions

> 2016/3/16 (AH, issue #675)

### `tst/testbugfix/2016-04-29-t00337.tst`  (0.02 person-days)
- source: [tst/testbugfix/2016-04-29-t00337.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2016-04-29-t00337.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20160429T00337`
- 2 code lines, 0 definitions

> 2016/04/29 (FL, bug reported on support list)

### `tst/testbugfix/2016-04-29-t00338.tst`  (0.02 person-days)
- source: [tst/testbugfix/2016-04-29-t00338.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2016-04-29-t00338.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20160429T00338`
- 2 code lines, 0 definitions

> 2016/04/29 (FL) another bug, detected when fixing the previous one

### `tst/testbugfix/2016-07-20-t00343.tst`  (0.02 person-days)
- source: [tst/testbugfix/2016-07-20-t00343.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2016-07-20-t00343.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20160720T00343`
- 2 code lines, 0 definitions

> 2016/07/20 (CJ, github issue #861)

### `tst/testbugfix/2017-04-25-pr1248.tst`  (0.02 person-days)
- source: [tst/testbugfix/2017-04-25-pr1248.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2017-04-25-pr1248.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20170425Pr1248`
- 2 code lines, 0 definitions

> gap> Stabilizer(PrimitiveGroup(3,1), [ [  ], [ 1, 4, 5, 7, 8, 10, 12 ], [ 2, 3 ], [ 6, 11 ], [ 9 ] ], OnSetsDisjointSets);
> Group(())

### `tst/testbugfix/2017-11-02-PRINT_CURRENT_STATEMENT.tst`  (0.02 person-days)
- source: [tst/testbugfix/2017-11-02-PRINT_CURRENT_STATEMENT.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2017-11-02-PRINT_CURRENT_STATEMENT.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20171102PRINTCURRENTSTATEMENT`
- 2 code lines, 0 definitions

> PRINT_CURRENT_STATEMENT could lead to crashes when invoked on
> kernel functions.
> See <https://github.com/gap-system/gap/issues/1844>

### `tst/testbugfix/2018-12-01-Nathom.tst`  (0.02 person-days)
- source: [tst/testbugfix/2018-12-01-Nathom.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-12-01-Nathom.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20181201Nathom`
- 2 code lines, 0 definitions

> Reported in github PR 3070
> Degenerate example where the subgroup can be formed without finiteness test (as the group
> is cyclic).

### `tst/testbugfix/2019-01-29-gac-arg-names.tst`  (0.02 person-days)
- source: [tst/testbugfix/2019-01-29-gac-arg-names.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2019-01-29-gac-arg-names.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20190129GacArgNames`
- 2 code lines, 1 definitions

> verify that gac preserve function argument names

### `tst/testbugfix/2019-10-02-Irreps.tst`  (0.02 person-days)
- source: [tst/testbugfix/2019-10-02-Irreps.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2019-10-02-Irreps.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20191002Irreps`
- 2 code lines, 0 definitions

> representations for trivial group, #3681

### `tst/testbugfix/2019-11-28-IrrConlon.tst`  (0.02 person-days)
- source: [tst/testbugfix/2019-11-28-IrrConlon.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2019-11-28-IrrConlon.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20191128IrrConlon`
- 2 code lines, 0 definitions

> the following used to run into an error
> reported by Benjamin Sambale

### `tst/testbugfix/2021-06-07-Exponents.tst`  (0.02 person-days)
- source: [tst/testbugfix/2021-06-07-Exponents.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2021-06-07-Exponents.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20210607Exponents`
- 2 code lines, 0 definitions

> Fix GitHub issue #4541: A wrong improvement of calculating exponents WRT canonical pcgs
> caused the following code to fail

### `tst/testbugfix/2022-09-06-ConjugacyClassesSubgroups.tst`  (0.02 person-days)
- source: [tst/testbugfix/2022-09-06-ConjugacyClassesSubgroups.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2022-09-06-ConjugacyClassesSubgroups.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20220906ConjugacyClassesSubgroups`
- 2 code lines, 0 definitions

> The following used to work in GAP 4.10, but was broken in GAP
> 4.11.x and also 4.12.0.
> See https://github.com/gap-system/gap/issues/4854

### `tst/testbugfix/2024-05-28-Mindeg.tst`  (0.02 person-days)
- source: [tst/testbugfix/2024-05-28-Mindeg.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2024-05-28-Mindeg.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20240528Mindeg`
- 2 code lines, 0 definitions

> Fix #5729

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerabckizqpon66uyvksapybajokclxy54uccypud2q3lwo5d74hwnaa`, then merge with `tools/merge_tasks.py`.
