# GAP-0439 — Port benchmark/grpauto (tests)

- **Task CID:** `baguqeerav5z6zpyrwevfcin22xtq4ski2rqigaqdanhjncaq3u5ebi2riijq`
- **Layer:** `tests`   **Module:** `benchmark/grpauto`
- **Size:** 3 file(s), 152 code lines, 0 definitions
- **Estimated effort:** 1.52 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `benchmark/grpauto/hardest.tst`  (0.58 person-days)
- source: [benchmark/grpauto/hardest.tst](https://github.com/gap-system/gap/blob/master/benchmark/grpauto/hardest.tst)
- suggested Lean module: `RequestProject.Gap.Benchmark.Grpauto.Hardest`
- 58 code lines, 0 definitions

> ############################################################################
> #
> # Warning: most of the later tests need more than the default memory allocation

### `benchmark/grpauto/permiso.tst`  (0.56 person-days)
- source: [benchmark/grpauto/permiso.tst](https://github.com/gap-system/gap/blob/master/benchmark/grpauto/permiso.tst)
- suggested Lean module: `RequestProject.Gap.Benchmark.Grpauto.Permiso`
- 56 code lines, 0 definitions

> ############################################################################
> #
> # Warning: most of the later tests need more than the default memory allocation

### `benchmark/grpauto/hardiso.tst`  (0.38 person-days)
- source: [benchmark/grpauto/hardiso.tst](https://github.com/gap-system/gap/blob/master/benchmark/grpauto/hardiso.tst)
- suggested Lean module: `RequestProject.Gap.Benchmark.Grpauto.Hardiso`
- 38 code lines, 0 definitions

> ############################################################################
> #
> # Warning: most of the later tests need more than the default memory allocation

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerav5z6zpyrwevfcin22xtq4ski2rqigaqdanhjncaq3u5ebi2riijq`, then merge with `tools/merge_tasks.py`.
