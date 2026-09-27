# GAP-0550 — Port tst/testkernel (tests)

- **Task CID:** `baguqeeraa5yc32dcm4tsbqnujqwmsuss2yf6hkd4xlxsr3ti5plubncfsmzq`
- **Layer:** `tests`   **Module:** `tst/testkernel`
- **Size:** 2 file(s), 162 code lines, 6 definitions
- **Estimated effort:** 1.87 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testkernel/dstruct.c`  (1.60 person-days)
- source: [tst/testkernel/dstruct.c](https://github.com/gap-system/gap/blob/master/tst/testkernel/dstruct.c)
- suggested Lean module: `RequestProject.Gap.Tests.Testkernel.Dstruct`
- 135 code lines, 6 definitions

> Small program to test data structures used by the Julia GC integration.

### `tst/testkernel/dstruct.expect`  (0.27 person-days)
- source: [tst/testkernel/dstruct.expect](https://github.com/gap-system/gap/blob/master/tst/testkernel/dstruct.expect)
- suggested Lean module: `RequestProject.Gap.Tests.Testkernel.Dstruct`
- 27 code lines, 0 definitions

> # Testing balanced trees.
> Tree state: 1048576 nodes, 33 depth.
> Missing nodes: 0
> # Removing half of all nodes.
> Tree state: 524288 nodes, 20 depth.

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraa5yc32dcm4tsbqnujqwmsuss2yf6hkd4xlxsr3ti5plubncfsmzq`, then merge with `tools/merge_tasks.py`.
