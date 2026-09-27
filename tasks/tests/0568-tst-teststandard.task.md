# GAP-0568 — Port tst/teststandard (tests)

- **Task CID:** `baguqeera6q6wph2pwqf4qxb3gwbqxvehxudxtzuk5seqpehzxtxqpmcxjp5q`
- **Layer:** `tests`   **Module:** `tst/teststandard`
- **Size:** 1 file(s), 1067 code lines, 4 definitions
- **Estimated effort:** 10.92 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/teststandard/reesmat.tst`  (10.92 person-days)
- source: [tst/teststandard/reesmat.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/reesmat.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Reesmat`
- 1067 code lines, 4 definitions

> gap> S:=FullTransformationSemigroup(5);;
> gap> d:=GreensDClasses(S)[3];;
> gap> R:=AssociatedReesMatrixSemigroupOfDClass(d);;

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera6q6wph2pwqf4qxb3gwbqxvehxudxtzuk5seqpehzxtxqpmcxjp5q`, then merge with `tools/merge_tasks.py`.
