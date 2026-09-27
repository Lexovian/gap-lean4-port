# GAP-0342 — Port benchmark/transgrp (groupdata)

- **Task CID:** `baguqeeracbvxx6zdhdouwlq26aq5egtzrhf4ojwx6bshjmfsjzpetg2hby2a`
- **Layer:** `groupdata`   **Module:** `benchmark/transgrp`
- **Size:** 5 file(s), 365 code lines, 5 definitions
- **Estimated effort:** 2.79 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `benchmark/transgrp/pnormea.g`  (2.20 person-days)
- source: [benchmark/transgrp/pnormea.g](https://github.com/gap-system/gap/blob/master/benchmark/transgrp/pnormea.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Transgrp.Pnormea`
- 272 code lines, 5 definitions

> check which classes are already orbits under approx

### `benchmark/transgrp/mintransind.g`  (0.32 person-days)
- source: [benchmark/transgrp/mintransind.g](https://github.com/gap-system/gap/blob/master/benchmark/transgrp/mintransind.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Transgrp.Mintransind`
- 54 code lines, 0 definitions

> indices of minimally transitive groups

### `benchmark/transgrp/test1.g`  (0.09 person-days)
- source: [benchmark/transgrp/test1.g](https://github.com/gap-system/gap/blob/master/benchmark/transgrp/test1.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Transgrp.Test1`
- 13 code lines, 0 definitions

> description Construct the transitive groups of degree 12
> author Alexander Hulpke
> timelimit 1
> cmdlineops
> packages

### `benchmark/transgrp/test2.g`  (0.09 person-days)
- source: [benchmark/transgrp/test2.g](https://github.com/gap-system/gap/blob/master/benchmark/transgrp/test2.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Transgrp.Test2`
- 13 code lines, 0 definitions

> description Construct the transitive groups of degree 16
> author Alexander Hulpke
> timelimit 1
> cmdlineops
> packages

### `benchmark/transgrp/test3.g`  (0.09 person-days)
- source: [benchmark/transgrp/test3.g](https://github.com/gap-system/gap/blob/master/benchmark/transgrp/test3.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Transgrp.Test3`
- 13 code lines, 0 definitions

> description Construct the transitive groups of degree 20
> author Alexander Hulpke
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

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeracbvxx6zdhdouwlq26aq5egtzrhf4ojwx6bshjmfsjzpetg2hby2a`, then merge with `tools/merge_tasks.py`.
