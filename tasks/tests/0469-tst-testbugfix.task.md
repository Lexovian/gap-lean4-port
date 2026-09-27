# GAP-0469 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeerajq4npcu6dsxn7r2udx62hhum22aimmi2sp6gkburxxicvhwu6dba`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 15 file(s), 105 code lines, 0 definitions
- **Estimated effort:** 1.05 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2012-09-07-t00253b.tst`  (0.07 person-days)
- source: [tst/testbugfix/2012-09-07-t00253b.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-09-07-t00253b.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20120907T00253b`
- 7 code lines, 0 definitions

> Check that \in method works for groups handled by a nice monomorphism
> created with a custom SeedFaithfulAction.
> Fix and test case added by MH on 2012-09-07.

### `tst/testbugfix/2012-11-25-t00264.tst`  (0.07 person-days)
- source: [tst/testbugfix/2012-11-25-t00264.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-11-25-t00264.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20121125T00264`
- 7 code lines, 0 definitions

> 2012/11/25 (AK)
> Fix of a bug that was reproducible in GAP 4.5.6 with FGA 1.1.1

### `tst/testbugfix/2012-12-17-t00269.tst`  (0.07 person-days)
- source: [tst/testbugfix/2012-12-17-t00269.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-12-17-t00269.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20121217T00269`
- 7 code lines, 0 definitions

> 2012/12/17 (SL)

### `tst/testbugfix/2013-02-27-t00280.tst`  (0.07 person-days)
- source: [tst/testbugfix/2013-02-27-t00280.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2013-02-27-t00280.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20130227T00280`
- 7 code lines, 0 definitions

> 2013/02/27 (AK)

### `tst/testbugfix/2013-04-01-t00289.tst`  (0.07 person-days)
- source: [tst/testbugfix/2013-04-01-t00289.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2013-04-01-t00289.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20130401T00289`
- 7 code lines, 0 definitions

> 2013/04/01 (MN)

### `tst/testbugfix/2013-08-20-t00293.tst`  (0.07 person-days)
- source: [tst/testbugfix/2013-08-20-t00293.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2013-08-20-t00293.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20130820T00293`
- 7 code lines, 0 definitions

> 2013/08/20 (MH)

### `tst/testbugfix/2013-08-29-t00296.tst`  (0.07 person-days)
- source: [tst/testbugfix/2013-08-29-t00296.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2013-08-29-t00296.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20130829T00296`
- 7 code lines, 0 definitions

> 2013/08/29 (MH)

### `tst/testbugfix/2015-10-20-t00315.tst`  (0.07 person-days)
- source: [tst/testbugfix/2015-10-20-t00315.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2015-10-20-t00315.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20151020T00315`
- 7 code lines, 0 definitions

> 2015/10/20 (Chris Jefferson)

### `tst/testbugfix/2016-03-01-t00331.tst`  (0.07 person-days)
- source: [tst/testbugfix/2016-03-01-t00331.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2016-03-01-t00331.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20160301T00331`
- 7 code lines, 0 definitions

> 2016/3/1 (AH)

### `tst/testbugfix/2016-08-22-t00347.tst`  (0.07 person-days)
- source: [tst/testbugfix/2016-08-22-t00347.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2016-08-22-t00347.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20160822T00347`
- 7 code lines, 0 definitions

> 2016/8/22 (AH)

### `tst/testbugfix/2018-06-11-mapping.tst`  (0.07 person-days)
- source: [tst/testbugfix/2018-06-11-mapping.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-06-11-mapping.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20180611Mapping`
- 7 code lines, 0 definitions

> There was a bug where composition of an identity mapping and another
> mapping x where the Source of the identity mapping contained the
> ImagesSource of x, but not its whole range, simply returned x,
> resulting in a composition whose Range was strictly bigger than that
> of its first argument, and causing problems in IsomorphismPermGroup

### `tst/testbugfix/2021-09-25-RootSystem.tst`  (0.07 person-days)
- source: [tst/testbugfix/2021-09-25-RootSystem.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2021-09-25-RootSystem.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20210925RootSystem`
- 7 code lines, 0 definitions

> Fix GitHub issue #4661, reported by Lars Göttgens

### `tst/testbugfix/2024-07-29-fpgroup-enum.tst`  (0.07 person-days)
- source: [tst/testbugfix/2024-07-29-fpgroup-enum.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2024-07-29-fpgroup-enum.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20240729FpgroupEnum`
- 7 code lines, 0 definitions

> Sometimes GAP was able to compute the size of an fp group but then
> for any further action failed to compute a permutation representation.
> See https://github.com/gap-system/gap/issues/5764 for the report,
> and https://github.com/gap-system/gap/pull/5770 for the fix.

### `tst/testbugfix/2025-06-11-DoubleCosets-Error.tst`  (0.07 person-days)
- source: [tst/testbugfix/2025-06-11-DoubleCosets-Error.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2025-06-11-DoubleCosets-Error.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20250611DoubleCosetsError`
- 7 code lines, 0 definitions

> gap> S := SymmetricGroup( 4 );; A := AlternatingGroup( 4 );;
> gap> DoubleCosets( A, S, A );
> Error, not contained
> gap> DoubleCosets( A, A, S );
> Error, not contained

### `tst/testbugfix/2025-11-06-PermrepExtension.tst`  (0.07 person-days)
- source: [tst/testbugfix/2025-11-06-PermrepExtension.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2025-11-06-PermrepExtension.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20251106PermrepExtension`
- 7 code lines, 0 definitions

> permrep of extension, computed automatically
> See <https://github.com/gap-system/gap/issues/6151>.

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerajq4npcu6dsxn7r2udx62hhum22aimmi2sp6gkburxxicvhwu6dba`, then merge with `tools/merge_tasks.py`.
