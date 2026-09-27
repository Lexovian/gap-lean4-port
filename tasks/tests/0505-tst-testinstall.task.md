# GAP-0505 — Port tst/testinstall (tests)

- **Task CID:** `baguqeeraqgm3unm7qjoimrm4tkwr5mvoig6ispyvvg77w3aypn76osrsocbq`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 1 file(s), 609 code lines, 1 definitions
- **Estimated effort:** 6.34 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/list.tst`  (6.34 person-days)
- source: [tst/testinstall/list.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/list.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.List`
- 609 code lines, 1 definitions

> EQ: for two small lists, 1

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraqgm3unm7qjoimrm4tkwr5mvoig6ispyvvg77w3aypn76osrsocbq`, then merge with `tools/merge_tasks.py`.
