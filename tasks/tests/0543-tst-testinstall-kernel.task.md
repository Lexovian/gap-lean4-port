# GAP-0543 — Port tst/testinstall/kernel (tests)

- **Task CID:** `baguqeeray64qgzsumivkpgobonqai67o4y5rxrvs56qsx42hpaqzmtr3f33q`
- **Layer:** `tests`   **Module:** `tst/testinstall/kernel`
- **Size:** 2 file(s), 930 code lines, 8 definitions
- **Estimated effort:** 9.44 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/kernel/vecgf2.tst`  (5.89 person-days)
- source: [tst/testinstall/kernel/vecgf2.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/vecgf2.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Vecgf2`
- 575 code lines, 3 definitions

> Tests for functions defined in src/vecgf2.c

### `tst/testinstall/kernel/scanner.tst`  (3.55 person-days)
- source: [tst/testinstall/kernel/scanner.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/scanner.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Scanner`
- 355 code lines, 5 definitions

> Tests for functions defined in src/scanner.c

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeray64qgzsumivkpgobonqai67o4y5rxrvs56qsx42hpaqzmtr3f33q`, then merge with `tools/merge_tasks.py`.
