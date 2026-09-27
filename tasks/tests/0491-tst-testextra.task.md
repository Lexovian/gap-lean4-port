# GAP-0491 — Port tst/testextra (tests)

- **Task CID:** `baguqeera4l245qx224bo6jzm6yd6rgp7rjntzexkxixebt2mqftpc36xga6q`
- **Layer:** `tests`   **Module:** `tst/testextra`
- **Size:** 4 file(s), 1025 code lines, 12 definitions
- **Estimated effort:** 11.66 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testextra/makeperfect.g`  (4.06 person-days)
- source: [tst/testextra/makeperfect.g](https://github.com/gap-system/gap/blob/master/tst/testextra/makeperfect.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testextra.Makeperfect`
- 276 code lines, 9 definitions

> construct perfect groups of given order

### `tst/testextra/grpauto.tst`  (2.86 person-days)
- source: [tst/testextra/grpauto.tst](https://github.com/gap-system/gap/blob/master/tst/testextra/grpauto.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testextra.Grpauto`
- 286 code lines, 0 definitions

> ############################################################################
> #
> #  Warning: Later tests need more than the default memory allocation

### `tst/testextra/grpperm.tst`  (2.58 person-days)
- source: [tst/testextra/grpperm.tst](https://github.com/gap-system/gap/blob/master/tst/testextra/grpperm.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testextra.Grpperm`
- 252 code lines, 2 definitions

> ############################################################################
> #
> #  Exclude from testinstall.g as it takes considerable time.
> #

### `tst/testextra/grplatt.tst`  (2.16 person-days)
- source: [tst/testextra/grplatt.tst](https://github.com/gap-system/gap/blob/master/tst/testextra/grplatt.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testextra.Grplatt`
- 211 code lines, 1 definitions

> ############################################################################
> #
> #  This  file  tests the subgroup lattice program
> #
> #  Exclude from testinstall.g as it takes considerable time.
> #

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera4l245qx224bo6jzm6yd6rgp7rjntzexkxixebt2mqftpc36xga6q`, then merge with `tools/merge_tasks.py`.
