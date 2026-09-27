# GAP-0437 — Port hpcgap (build)

- **Task CID:** `baguqeerat2tiuwkw7v4oxiankx4f4qry4gm2tfxjvtsg2y6qq2e6klmjazpa`
- **Layer:** `build`   **Module:** `hpcgap`
- **Size:** 1 file(s), 1 code lines, 0 definitions
- **Estimated effort:** 0.00 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`

## Files to port

### `hpcgap/remove-duplicates.sh`  (0.00 person-days)
- source: [hpcgap/remove-duplicates.sh](https://github.com/gap-system/gap/blob/master/hpcgap/remove-duplicates.sh)
- suggested Lean module: `RequestProject.Gap.HpcGap.RemoveDuplicates`
- 1 code lines, 0 definitions

> !/bin/sh -e
> 
> Find and remove any files which are identical in the root GAP
> directory and the hpcgap subdirectory.

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerat2tiuwkw7v4oxiankx4f4qry4gm2tfxjvtsg2y6qq2e6klmjazpa`, then merge with `tools/merge_tasks.py`.
