# GAP-0451 — Port tst/test-compile (tests)

- **Task CID:** `baguqeerallzilp2drnwdjcoz6yj6fssgbrd223gbqmqoivrpxyddmvdxp54a`
- **Layer:** `tests`   **Module:** `tst/test-compile`
- **Size:** 2 file(s), 1020 code lines, 8 definitions
- **Estimated effort:** 11.85 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/test-compile/function_types.g.dynamic.c`  (6.11 person-days)
- source: [tst/test-compile/function_types.g.dynamic.c](https://github.com/gap-system/gap/blob/master/tst/test-compile/function_types.g.dynamic.c)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.FunctionTypesGDynamic`
- 538 code lines, 4 definitions

> C file produced by GAC */

### `tst/test-compile/and_filter.g.dynamic.c`  (5.74 person-days)
- source: [tst/test-compile/and_filter.g.dynamic.c](https://github.com/gap-system/gap/blob/master/tst/test-compile/and_filter.g.dynamic.c)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.AndFilterGDynamic`
- 482 code lines, 4 definitions

> C file produced by GAC */

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerallzilp2drnwdjcoz6yj6fssgbrd223gbqmqoivrpxyddmvdxp54a`, then merge with `tools/merge_tasks.py`.
