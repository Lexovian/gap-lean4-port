# GAP-0450 — Port tst/test-compile (tests)

- **Task CID:** `baguqeeradn3hz73u7xu6a4l4ls3x56g3jnw6gsbkekpekfp3izn3gkt3ajoa`
- **Layer:** `tests`   **Module:** `tst/test-compile`
- **Size:** 1 file(s), 956 code lines, 4 definitions
- **Estimated effort:** 10.96 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/test-compile/callfunc.g.dynamic.c`  (10.96 person-days)
- source: [tst/test-compile/callfunc.g.dynamic.c](https://github.com/gap-system/gap/blob/master/tst/test-compile/callfunc.g.dynamic.c)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.CallfuncGDynamic`
- 956 code lines, 4 definitions

> C file produced by GAC */

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeradn3hz73u7xu6a4l4ls3x56g3jnw6gsbkekpekfp3izn3gkt3ajoa`, then merge with `tools/merge_tasks.py`.
