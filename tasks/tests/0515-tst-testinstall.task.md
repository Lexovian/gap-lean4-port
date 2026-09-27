# GAP-0515 — Port tst/testinstall (tests)

- **Task CID:** `baguqeera5ovyttja5orelatmex5lofxd64zl3jl2phjn5g56sudez2doze4q`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 1 file(s), 800 code lines, 3 definitions
- **Estimated effort:** 8.01 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/reesmat.tst`  (8.01 person-days)
- source: [tst/testinstall/reesmat.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/reesmat.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Reesmat`
- 800 code lines, 3 definitions

> @local D,F,R,S,T,U,enum,inv,iso,x,z

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera5ovyttja5orelatmex5lofxd64zl3jl2phjn5g56sudez2doze4q`, then merge with `tools/merge_tasks.py`.
