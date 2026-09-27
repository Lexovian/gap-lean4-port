# GAP-0441 — Port tst/example-dir (tests)

- **Task CID:** `baguqeeras7xzj6yydiocve6l3v3utos6vrl45d2vbu3bbhivuqhujfrdixiq`
- **Layer:** `tests`   **Module:** `tst/example-dir`
- **Size:** 1 file(s), 8 code lines, 0 definitions
- **Estimated effort:** 0.10 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/example-dir/readme.txt`  (0.10 person-days)
- source: [tst/example-dir/readme.txt](https://github.com/gap-system/gap/blob/master/tst/example-dir/readme.txt)
- suggested Lean module: `RequestProject.Gap.Tests.ExampleDir.Readme`
- 8 code lines, 0 definitions

> This directory is here to allow us to have a known directory,
> with known files, in a known place, for the purposes of testing GAP
> functions which read and write files.
> Explanation
> -----------

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeras7xzj6yydiocve6l3v3utos6vrl45d2vbu3bbhivuqhujfrdixiq`, then merge with `tools/merge_tasks.py`.
