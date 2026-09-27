# GAP-0453 — Port tst/test-compile (tests)

- **Task CID:** `baguqeeranntoc2ddxkuhqepdcmqkcxvyd5rnqdinjqwsgtsytmw22wam5kqa`
- **Layer:** `tests`   **Module:** `tst/test-compile`
- **Size:** 4 file(s), 1002 code lines, 23 definitions
- **Estimated effort:** 11.82 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/test-compile/ranges.g.dynamic.c`  (3.78 person-days)
- source: [tst/test-compile/ranges.g.dynamic.c](https://github.com/gap-system/gap/blob/master/tst/test-compile/ranges.g.dynamic.c)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.RangesGDynamic`
- 339 code lines, 4 definitions

> C file produced by GAC */

### `tst/test-compile/basics.g`  (3.01 person-days)
- source: [tst/test-compile/basics.g](https://github.com/gap-system/gap/blob/master/tst/test-compile/basics.g)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.Basics`
- 221 code lines, 11 definitions

> Test all kinds of basic features of the compiler, e.g.
> whether it compiles constants correctly.

### `tst/test-compile/assert.g.dynamic.c`  (2.71 person-days)
- source: [tst/test-compile/assert.g.dynamic.c](https://github.com/gap-system/gap/blob/master/tst/test-compile/assert.g.dynamic.c)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.AssertGDynamic`
- 232 code lines, 4 definitions

> C file produced by GAC */

### `tst/test-compile/info.g.dynamic.c`  (2.32 person-days)
- source: [tst/test-compile/info.g.dynamic.c](https://github.com/gap-system/gap/blob/master/tst/test-compile/info.g.dynamic.c)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.InfoGDynamic`
- 210 code lines, 4 definitions

> C file produced by GAC */

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeranntoc2ddxkuhqepdcmqkcxvyd5rnqdinjqwsgtsytmw22wam5kqa`, then merge with `tools/merge_tasks.py`.
