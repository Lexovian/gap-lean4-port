# GAP-0521 — Port tst/testinstall (tests)

- **Task CID:** `baguqeerahgtgxiorhk5ocqvgbc5swymdkedxesvttmtc2exv4ls3y62zreyq`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 1 file(s), 3363 code lines, 88 definitions
- **Estimated effort:** 35.22 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/syntaxtree.tst`  (35.22 person-days)
- source: [tst/testinstall/syntaxtree.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/syntaxtree.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Syntaxtree`
- 3363 code lines, 88 definitions

> Just try compiling all functions we can find in the workspace
> to see nothing crashes.

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerahgtgxiorhk5ocqvgbc5swymdkedxesvttmtc2exv4ls3y62zreyq`, then merge with `tools/merge_tasks.py`.
