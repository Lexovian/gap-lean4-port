# GAP-0339 — Port benchmark/primgrp (groupdata)

- **Task CID:** `baguqeera2hpdr3fgrnwj6367pbnlr5b7ttoie5btpogsgkiueipfvvkh6nwa`
- **Layer:** `groupdata`   **Module:** `benchmark/primgrp`
- **Size:** 4 file(s), 66 code lines, 2 definitions
- **Estimated effort:** 0.53 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `benchmark/primgrp/testprim.g`  (0.18 person-days)
- source: [benchmark/primgrp/testprim.g](https://github.com/gap-system/gap/blob/master/benchmark/primgrp/testprim.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Primgrp.Testprim`
- 21 code lines, 2 definitions

> Checks that the sum of the orders of conjugacy classes
> equals to the order of the group

### `benchmark/primgrp/test1.g`  (0.12 person-days)
- source: [benchmark/primgrp/test1.g](https://github.com/gap-system/gap/blob/master/benchmark/primgrp/test1.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Primgrp.Test1`
- 15 code lines, 0 definitions

> description Consistency checks for the primitive groups library
> author Alexander Konovalov
> timelimit 1
> cmdlineops

### `benchmark/primgrp/test2.g`  (0.12 person-days)
- source: [benchmark/primgrp/test2.g](https://github.com/gap-system/gap/blob/master/benchmark/primgrp/test2.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Primgrp.Test2`
- 15 code lines, 0 definitions

> description Consistency checks for the primitive groups library
> author Alexander Konovalov
> timelimit 1
> cmdlineops

### `benchmark/primgrp/test3.g`  (0.12 person-days)
- source: [benchmark/primgrp/test3.g](https://github.com/gap-system/gap/blob/master/benchmark/primgrp/test3.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Primgrp.Test3`
- 15 code lines, 0 definitions

> description Consistency checks for the primitive groups library
> author Alexander Konovalov
> timelimit 1
> cmdlineops

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera2hpdr3fgrnwj6367pbnlr5b7ttoie5btpogsgkiueipfvvkh6nwa`, then merge with `tools/merge_tasks.py`.
