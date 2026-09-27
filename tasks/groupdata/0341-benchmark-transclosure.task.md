# GAP-0341 — Port benchmark/transclosure (groupdata)

- **Task CID:** `baguqeerajaced4efwvgh43jc3qp2u4j7ej67y6jjp7rbiligiihg2mvay4lq`
- **Layer:** `groupdata`   **Module:** `benchmark/transclosure`
- **Size:** 3 file(s), 28 code lines, 0 definitions
- **Estimated effort:** 0.17 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `benchmark/transclosure/test1.g`  (0.07 person-days)
- source: [benchmark/transclosure/test1.g](https://github.com/gap-system/gap/blob/master/benchmark/transclosure/test1.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Transclosure.Test1`
- 10 code lines, 0 definitions

> description transitive closure of binary relations
> author Alexander Konovalov
> timelimit 1
> cmdlineops
> packages: FR (only to construct binary relations for the test)

### `benchmark/transclosure/test2.g`  (0.05 person-days)
- source: [benchmark/transclosure/test2.g](https://github.com/gap-system/gap/blob/master/benchmark/transclosure/test2.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Transclosure.Test2`
- 9 code lines, 0 definitions

> description transitive closure of binary relations
> author Alexander Konovalov
> timelimit 1
> cmdlineops -o 1g
> packages: FR (only to construct binary relations for the test)

### `benchmark/transclosure/test3.g`  (0.05 person-days)
- source: [benchmark/transclosure/test3.g](https://github.com/gap-system/gap/blob/master/benchmark/transclosure/test3.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Transclosure.Test3`
- 9 code lines, 0 definitions

> description transitive closure of binary relations
> author Alexander Konovalov
> timelimit 1
> cmdlineops -o 1g
> packages: FR (only to construct binary relations for the test)

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerajaced4efwvgh43jc3qp2u4j7ej67y6jjp7rbiligiihg2mvay4lq`, then merge with `tools/merge_tasks.py`.
