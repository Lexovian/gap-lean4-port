# GAP-0522 — Port tst/testinstall (tests)

- **Task CID:** `baguqeera7grhdtnbcocpcrieu6hv36hu6m6vqzlgybemc73qygydoxhb7nra`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 1 file(s), 2990 code lines, 4 definitions
- **Estimated effort:** 29.98 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/trans.tst`  (29.98 person-days)
- source: [tst/testinstall/trans.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/trans.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Trans`
- 2990 code lines, 4 definitions

> @local S,b,comps,display,e,f,g,h,imglist,imgset,ind,ker,m,max,notation,p,per
> @local q,tmp,val,x,y

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera7grhdtnbcocpcrieu6hv36hu6m6vqzlgybemc73qygydoxhb7nra`, then merge with `tools/merge_tasks.py`.
