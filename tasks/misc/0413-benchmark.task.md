# GAP-0413 — Port benchmark (misc)

- **Task CID:** `baguqeeranb3me2zbbstvqrt7clxcxglqymshiapmh5qdo6zwdeagacdyytfq`
- **Layer:** `misc`   **Module:** `benchmark`
- **Size:** 1 file(s), 47 code lines, 0 definitions
- **Estimated effort:** 0.51 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`

## Files to port

### `benchmark/README`  (0.51 person-days)
- source: [benchmark/README](https://github.com/gap-system/gap/blob/master/benchmark/README)
- suggested Lean module: `RequestProject.Gap.Benchmark.README`
- 47 code lines, 0 definitions

> In discussion here at St Andrews, Alexander (twice), Max and Steve noted the
> desirability to have some larger tests to compare performance of the current
> and the next release, trying to catch problems. These tests would not be
> part of the distribution (not even to package authors), nor require any
> documentation or elaborate options, though they would sit under CVS.

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeranb3me2zbbstvqrt7clxcxglqymshiapmh5qdo6zwdeagacdyytfq`, then merge with `tools/merge_tasks.py`.
