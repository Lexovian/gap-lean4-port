# GAP-0549 — Port tst/testinstall/testunix (tests)

- **Task CID:** `baguqeerahe7cwaynoszezbqk6bkzwn7hopigbx5qoflpyieeyiaq4tbexada`
- **Layer:** `tests`   **Module:** `tst/testinstall/testunix`
- **Size:** 2 file(s), 61 code lines, 1 definitions
- **Estimated effort:** 0.74 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/testunix/streamio.tst`  (0.53 person-days)
- source: [tst/testinstall/testunix/streamio.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/testunix/streamio.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Testunix.Streamio`
- 42 code lines, 1 definitions

> @local scriptdir, write, checkPartialRead, process, c

### `tst/testinstall/testunix/streams.tst`  (0.21 person-days)
- source: [tst/testinstall/testunix/streams.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/testunix/streams.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Testunix.Streams`
- 19 code lines, 0 definitions

> input/output streams

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerahe7cwaynoszezbqk6bkzwn7hopigbx5qoflpyieeyiaq4tbexada`, then merge with `tools/merge_tasks.py`.
