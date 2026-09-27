# GAP-0499 — Port tst/testinstall (tests)

- **Task CID:** `baguqeera3cba5xgr3mbwrhuyptyzit7nel6faq2m2ij6wb7mobqcppsykg3q`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 1 file(s), 711 code lines, 9 definitions
- **Estimated effort:** 7.48 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/float.tst`  (7.48 person-days)
- source: [tst/testinstall/float.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/float.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Float`
- 711 code lines, 9 definitions

> @local neginf,posinf,r,nan,l,f,g,a,b,e1,e2

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera3cba5xgr3mbwrhuyptyzit7nel6faq2m2ij6wb7mobqcppsykg3q`, then merge with `tools/merge_tasks.py`.
