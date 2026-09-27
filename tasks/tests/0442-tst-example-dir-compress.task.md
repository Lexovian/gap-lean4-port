# GAP-0442 — Port tst/example-dir/compress (tests)

- **Task CID:** `baguqeerahpysagje7x3i7dy3cguxjdv32ldpxskk4kb5ddubfal2bd6jznoa`
- **Layer:** `tests`   **Module:** `tst/example-dir/compress`
- **Size:** 1 file(s), 1 code lines, 0 definitions
- **Estimated effort:** 0.01 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/example-dir/compress/not-compressed.txt.gz`  (0.01 person-days)
- source: [tst/example-dir/compress/not-compressed.txt.gz](https://github.com/gap-system/gap/blob/master/tst/example-dir/compress/not-compressed.txt.gz)
- suggested Lean module: `RequestProject.Gap.Tests.ExampleDir.Compress.NotCompressedTxt`
- 1 code lines, 0 definitions

> not compressed

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerahpysagje7x3i7dy3cguxjdv32ldpxskk4kb5ddubfal2bd6jznoa`, then merge with `tools/merge_tasks.py`.
