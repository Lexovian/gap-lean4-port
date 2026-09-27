# GAP-0490 — Port tst/testextra (tests)

- **Task CID:** `baguqeeratz66zwnf44f3fso25dhhzdky7jbjisr7xnnub7zs42tqcwkavpca`
- **Layer:** `tests`   **Module:** `tst/testextra`
- **Size:** 6 file(s), 250 code lines, 4 definitions
- **Estimated effort:** 3.55 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testextra/ctbl.tst`  (1.37 person-days)
- source: [tst/testextra/ctbl.tst](https://github.com/gap-system/gap/blob/master/tst/testextra/ctbl.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testextra.Ctbl`
- 83 code lines, 1 definitions

> ############################################################################
> #
> #  excluded from 'testinstall.g' as it takes considerable time
> #
> @local tmpSolvableResiduum, n, i, g, t, l

### `tst/testextra/switch_obj.tst`  (0.96 person-days)
- source: [tst/testextra/switch_obj.tst](https://github.com/gap-system/gap/blob/master/tst/testextra/switch_obj.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testextra.SwitchObj`
- 63 code lines, 1 definitions

> This test is designed to check we handle swapping master pointers in various
> different cases. There are various things we test:
> 1) Do we correctly handle if the swapped objects are young or old?
> 2) Do we correctly handle objects allocated before, between, and after the objects?

### `tst/testextra/ctblpope.tst`  (0.50 person-days)
- source: [tst/testextra/ctblpope.tst](https://github.com/gap-system/gap/blob/master/tst/testextra/ctblpope.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testextra.Ctblpope`
- 46 code lines, 0 definitions

> ############################################################################
> #
> #  excluded from 'testinstall.g' as it takes considerable time
> #

### `tst/testextra/small_groups2.tst`  (0.32 person-days)
- source: [tst/testextra/small_groups2.tst](https://github.com/gap-system/gap/blob/master/tst/testextra/small_groups2.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testextra.SmallGroups2`
- 22 code lines, 0 definitions

> gap> START_TEST("small_groups2.tst");
> gap> bad := [];;
> gap> for n in [1..Length(NAMES_OF_SMALL_GROUPS)] do
> >   if not IsBound(NAMES_OF_SMALL_GROUPS[n]) then continue; fi;
> >   for i in [1..NrSmallGroups(n)] do

### `tst/testextra/perfect.tst`  (0.21 person-days)
- source: [tst/testextra/perfect.tst](https://github.com/gap-system/gap/blob/master/tst/testextra/perfect.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testextra.Perfect`
- 21 code lines, 0 definitions

> ############################################################################
> #
> #  Test for cohomology and isomorphism: Recompute perfect groups
> #

### `tst/testextra/helpsys.tst`  (0.19 person-days)
- source: [tst/testextra/helpsys.tst](https://github.com/gap-system/gap/blob/master/tst/testextra/helpsys.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testextra.Helpsys`
- 15 code lines, 2 definitions

> ############################################################################
> #
> #  This produces the text version of each help section which can be reached
> #  from GAPs help system.
> #

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeratz66zwnf44f3fso25dhhzdky7jbjisr7xnnub7zs42tqcwkavpca`, then merge with `tools/merge_tasks.py`.
