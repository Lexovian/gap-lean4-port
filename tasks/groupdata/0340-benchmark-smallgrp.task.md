# GAP-0340 — Port benchmark/smallgrp (groupdata)

- **Task CID:** `baguqeera4b5l7mf7e6jqrdqs66nxxrjyuotdj5od6h5jywqwc27f3n763cga`
- **Layer:** `groupdata`   **Module:** `benchmark/smallgrp`
- **Size:** 4 file(s), 66 code lines, 1 definitions
- **Estimated effort:** 0.54 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `benchmark/smallgrp/testgrps.g`  (0.19 person-days)
- source: [benchmark/smallgrp/testgrps.g](https://github.com/gap-system/gap/blob/master/benchmark/smallgrp/testgrps.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Smallgrp.Testgrps`
- 21 code lines, 1 definitions

> Check that the sum of the orders of conjugacy classes
> equals to the order of the group

### `benchmark/smallgrp/test1.g`  (0.12 person-days)
- source: [benchmark/smallgrp/test1.g](https://github.com/gap-system/gap/blob/master/benchmark/smallgrp/test1.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Smallgrp.Test1`
- 15 code lines, 0 definitions

> description Consistency checks for the small groups library
> author Alexander Konovalov
> timelimit 1
> cmdlineops
> packages

### `benchmark/smallgrp/test2.g`  (0.12 person-days)
- source: [benchmark/smallgrp/test2.g](https://github.com/gap-system/gap/blob/master/benchmark/smallgrp/test2.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Smallgrp.Test2`
- 15 code lines, 0 definitions

> description Consistency checks for the small groups library
> author Alexander Konovalov
> timelimit 1
> cmdlineops
> packages

### `benchmark/smallgrp/test3.g`  (0.12 person-days)
- source: [benchmark/smallgrp/test3.g](https://github.com/gap-system/gap/blob/master/benchmark/smallgrp/test3.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Smallgrp.Test3`
- 15 code lines, 0 definitions

> description Consistency checks for the small groups library
> author Alexander Konovalov
> timelimit 1
> cmdlineops
> packages

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera4b5l7mf7e6jqrdqs66nxxrjyuotdj5od6h5jywqwc27f3n763cga`, then merge with `tools/merge_tasks.py`.
