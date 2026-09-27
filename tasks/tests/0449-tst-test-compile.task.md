# GAP-0449 — Port tst/test-compile (tests)

- **Task CID:** `baguqeerajaoii5zgcrsqwnnuc2rko7r3wtwi56547bvsn5in4xdmxjamun5q`
- **Layer:** `tests`   **Module:** `tst/test-compile`
- **Size:** 1 file(s), 2236 code lines, 4 definitions
- **Estimated effort:** 27.47 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/test-compile/basics.g.dynamic.c`  (27.47 person-days)
- source: [tst/test-compile/basics.g.dynamic.c](https://github.com/gap-system/gap/blob/master/tst/test-compile/basics.g.dynamic.c)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.BasicsGDynamic`
- 2236 code lines, 4 definitions

> C file produced by GAC */

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerajaoii5zgcrsqwnnuc2rko7r3wtwi56547bvsn5in4xdmxjamun5q`, then merge with `tools/merge_tasks.py`.
