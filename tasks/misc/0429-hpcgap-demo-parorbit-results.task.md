# GAP-0429 — Port hpcgap/demo/parorbit/results (misc)

- **Task CID:** `baguqeera3panimouxgddwbi2w3cnrxbphn5kuqe4x54bohnz7xkc22sczstq`
- **Layer:** `misc`   **Module:** `hpcgap/demo/parorbit/results`
- **Size:** 1 file(s), 96 code lines, 0 definitions
- **Estimated effort:** 0.96 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`

## Files to port

### `hpcgap/demo/parorbit/results/resultsHNladybank03`  (0.96 person-days)
- source: [hpcgap/demo/parorbit/results/resultsHNladybank03](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/results/resultsHNladybank03)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Results.ResultsHNladybank03`
- 96 code lines, 0 definitions

> gap> NHASH = 1, NWORK = 1, TIME = 21.711197
> gap> NHASH = 1, NWORK = 2, TIME = 11.364078
> gap> NHASH = 1, NWORK = 3, TIME = 8.700588
> gap> NHASH = 1, NWORK = 4, TIME = 8.192916
> gap> NHASH = 1, NWORK = 5, TIME = 7.334946

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera3panimouxgddwbi2w3cnrxbphn5kuqe4x54bohnz7xkc22sczstq`, then merge with `tools/merge_tasks.py`.
