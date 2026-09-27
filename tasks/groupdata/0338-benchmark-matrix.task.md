# GAP-0338 — Port benchmark/matrix (groupdata)

- **Task CID:** `baguqeeraki2cfsdiaah4buc7xhxhkx5l33kape6qjfbotbwhnlzrclh374pq`
- **Layer:** `groupdata`   **Module:** `benchmark/matrix`
- **Size:** 1 file(s), 229 code lines, 14 definitions
- **Estimated effort:** 1.77 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `benchmark/matrix/mattests.g`  (1.77 person-days)
- source: [benchmark/matrix/mattests.g](https://github.com/gap-system/gap/blob/master/benchmark/matrix/mattests.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Matrix.Mattests`
- 229 code lines, 14 definitions

> Matrix arithmetic benchmarks

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraki2cfsdiaah4buc7xhxhkx5l33kape6qjfbotbwhnlzrclh374pq`, then merge with `tools/merge_tasks.py`.
