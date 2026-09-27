# GAP-0335 — Port benchmark/grpauto (groupdata)

- **Task CID:** `baguqeeraa3krxj6hix4i4i4c2mkrxkvecejydf6tsljijtsoqf5iva6v3yua`
- **Layer:** `groupdata`   **Module:** `benchmark/grpauto`
- **Size:** 3 file(s), 24 code lines, 0 definitions
- **Estimated effort:** 0.19 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `benchmark/grpauto/test1.g`  (0.06 person-days)
- source: [benchmark/grpauto/test1.g](https://github.com/gap-system/gap/blob/master/benchmark/grpauto/test1.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Grpauto.Test1`
- 8 code lines, 0 definitions

> description
> author
> timelimit
> cmdlineops
> packages

### `benchmark/grpauto/test2.g`  (0.06 person-days)
- source: [benchmark/grpauto/test2.g](https://github.com/gap-system/gap/blob/master/benchmark/grpauto/test2.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Grpauto.Test2`
- 8 code lines, 0 definitions

> description
> author
> timelimit
> cmdlineops
> packages

### `benchmark/grpauto/test3.g`  (0.06 person-days)
- source: [benchmark/grpauto/test3.g](https://github.com/gap-system/gap/blob/master/benchmark/grpauto/test3.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Grpauto.Test3`
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

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraa3krxj6hix4i4i4c2mkrxkvecejydf6tsljijtsoqf5iva6v3yua`, then merge with `tools/merge_tasks.py`.
