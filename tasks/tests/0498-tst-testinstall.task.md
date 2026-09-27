# GAP-0498 — Port tst/testinstall (tests)

- **Task CID:** `baguqeerah46cphnecyr643cq4sqyokonqyvr7qiw4yii25keodefbb4dzt2a`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 1 file(s), 741 code lines, 0 definitions
- **Estimated effort:** 7.51 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/ffeconway.tst`  (7.51 person-days)
- source: [tst/testinstall/ffeconway.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/ffeconway.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Ffeconway`
- 741 code lines, 0 definitions

> ############################################################################
> #
> #  This  file  tests  the large finite fields.
> #
> @local fieldpairs,fieldsizes,iF,iPI,iW,izs,zs,iFI,x,i,F

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerah46cphnecyr643cq4sqyokonqyvr7qiw4yii25keodefbb4dzt2a`, then merge with `tools/merge_tasks.py`.
