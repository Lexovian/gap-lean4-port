# GAP-0446 — Port tst/mockpkg/src (tests)

- **Task CID:** `baguqeerappkotehx4xn2v3cvfbhpp3vnzj65ljtqfauzg2md5sibumg5ob4q`
- **Layer:** `tests`   **Module:** `tst/mockpkg/src`
- **Size:** 1 file(s), 29 code lines, 4 definitions
- **Estimated effort:** 0.33 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/mockpkg/src/mockpkg.c`  (0.33 person-days)
- source: [tst/mockpkg/src/mockpkg.c](https://github.com/gap-system/gap/blob/master/tst/mockpkg/src/mockpkg.c)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.Src.Mockpkg`
- 29 code lines, 4 definitions

> Table of functions to export

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerappkotehx4xn2v3cvfbhpp3vnzj65ljtqfauzg2md5sibumg5ob4q`, then merge with `tools/merge_tasks.py`.
