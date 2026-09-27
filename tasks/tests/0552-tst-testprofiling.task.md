# GAP-0552 — Port tst/testprofiling (tests)

- **Task CID:** `baguqeerax2g5nuvafj7mcxyhivttxwqs7m5dz6btbnlglsryrpqkedy2qbya`
- **Layer:** `tests`   **Module:** `tst/testprofiling`
- **Size:** 1 file(s), 53 code lines, 2 definitions
- **Estimated effort:** 0.70 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testprofiling/prof.tst`  (0.70 person-days)
- source: [tst/testprofiling/prof.tst](https://github.com/gap-system/gap/blob/master/tst/testprofiling/prof.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testprofiling.Prof`
- 53 code lines, 2 definitions

> This test would badly break if we run it while profiling is active
> So in that case we just make sure we don't break anything

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerax2g5nuvafj7mcxyhivttxwqs7m5dz6btbnlglsryrpqkedy2qbya`, then merge with `tools/merge_tasks.py`.
