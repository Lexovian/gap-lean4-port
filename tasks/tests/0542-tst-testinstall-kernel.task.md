# GAP-0542 — Port tst/testinstall/kernel (tests)

- **Task CID:** `baguqeerabzrmpmyhiy6ltt6adfeahrrwdgfyh3p2m3pl3xqrsws4nqwhhoca`
- **Layer:** `tests`   **Module:** `tst/testinstall/kernel`
- **Size:** 1 file(s), 751 code lines, 5 definitions
- **Estimated effort:** 7.67 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/kernel/vec8bit.tst`  (7.67 person-days)
- source: [tst/testinstall/kernel/vec8bit.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/vec8bit.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Vec8bit`
- 751 code lines, 5 definitions

> Tests for functions defined in src/vec8bit.c

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerabzrmpmyhiy6ltt6adfeahrrwdgfyh3p2m3pl3xqrsws4nqwhhoca`, then merge with `tools/merge_tasks.py`.
