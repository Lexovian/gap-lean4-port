# GAP-0334 — Port benchmark/doublecoset (groupdata)

- **Task CID:** `baguqeeracay6zsovynwrlgijkku5szavare6jhlynma3hubg2gsxni6js2eq`
- **Layer:** `groupdata`   **Module:** `benchmark/doublecoset`
- **Size:** 3 file(s), 24 code lines, 0 definitions
- **Estimated effort:** 0.19 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `benchmark/doublecoset/test1.g`  (0.06 person-days)
- source: [benchmark/doublecoset/test1.g](https://github.com/gap-system/gap/blob/master/benchmark/doublecoset/test1.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Doublecoset.Test1`
- 8 code lines, 0 definitions

> description
> author
> timelimit
> cmdlineops
> packages

### `benchmark/doublecoset/test2.g`  (0.06 person-days)
- source: [benchmark/doublecoset/test2.g](https://github.com/gap-system/gap/blob/master/benchmark/doublecoset/test2.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Doublecoset.Test2`
- 8 code lines, 0 definitions

> description
> author
> timelimit
> cmdlineops
> packages

### `benchmark/doublecoset/test3.g`  (0.06 person-days)
- source: [benchmark/doublecoset/test3.g](https://github.com/gap-system/gap/blob/master/benchmark/doublecoset/test3.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Doublecoset.Test3`
- 8 code lines, 0 definitions

> description
> author
> timelimit
> cmdlineops
> packages

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeracay6zsovynwrlgijkku5szavare6jhlynma3hubg2gsxni6js2eq`, then merge with `tools/merge_tasks.py`.
