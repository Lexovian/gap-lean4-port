# GAP-0438 — Port benchmark/doublecoset (tests)

- **Task CID:** `baguqeeragjihrwjhte5akbkodolire2en2j3cjkkdyijwc2xv6sseyvty55q`
- **Layer:** `tests`   **Module:** `benchmark/doublecoset`
- **Size:** 3 file(s), 27 code lines, 0 definitions
- **Estimated effort:** 0.27 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `benchmark/doublecoset/doublecoset1.tst`  (0.09 person-days)
- source: [benchmark/doublecoset/doublecoset1.tst](https://github.com/gap-system/gap/blob/master/benchmark/doublecoset/doublecoset1.tst)
- suggested Lean module: `RequestProject.Gap.Benchmark.Doublecoset.Doublecoset1`
- 9 code lines, 0 definitions

> ############################################################################
> #
> #  This  file  tests for double coset calculations
> #

### `benchmark/doublecoset/doublecoset2.tst`  (0.09 person-days)
- source: [benchmark/doublecoset/doublecoset2.tst](https://github.com/gap-system/gap/blob/master/benchmark/doublecoset/doublecoset2.tst)
- suggested Lean module: `RequestProject.Gap.Benchmark.Doublecoset.Doublecoset2`
- 9 code lines, 0 definitions

> ############################################################################
> #
> #  This  file  tests for double coset calculations
> #

### `benchmark/doublecoset/doublecoset3.tst`  (0.09 person-days)
- source: [benchmark/doublecoset/doublecoset3.tst](https://github.com/gap-system/gap/blob/master/benchmark/doublecoset/doublecoset3.tst)
- suggested Lean module: `RequestProject.Gap.Benchmark.Doublecoset.Doublecoset3`
- 9 code lines, 0 definitions

> ############################################################################
> #
> #  This  file  tests for double coset calculations
> #

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeragjihrwjhte5akbkodolire2en2j3cjkkdyijwc2xv6sseyvty55q`, then merge with `tools/merge_tasks.py`.
