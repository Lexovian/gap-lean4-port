# GAP-0565 — Port tst/teststandard (tests)

- **Task CID:** `baguqeera6j6p4t5fvq5rvzuw7xymovltsky5jaq2gta7kgdkp7h4usnrraha`
- **Layer:** `tests`   **Module:** `tst/teststandard`
- **Size:** 2 file(s), 1088 code lines, 4 definitions
- **Estimated effort:** 11.17 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/teststandard/grppcnrm.tst`  (5.69 person-days)
- source: [tst/teststandard/grppcnrm.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/grppcnrm.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Grppcnrm`
- 557 code lines, 1 definitions

> ############################################################################

### `tst/teststandard/matrix.tst`  (5.48 person-days)
- source: [tst/teststandard/matrix.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/matrix.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Matrix`
- 531 code lines, 3 definitions

> ############################################################################
> #
> #  Exclude from testinstall.g: why? (takes a few seconds to run)
> #

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera6j6p4t5fvq5rvzuw7xymovltsky5jaq2gta7kgdkp7h4usnrraha`, then merge with `tools/merge_tasks.py`.
