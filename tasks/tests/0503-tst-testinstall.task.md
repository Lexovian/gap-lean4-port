# GAP-0503 — Port tst/testinstall (tests)

- **Task CID:** `baguqeeraemabomndipsiznlveenvhmbaolraoxak3ogpmuyzivce6szll63q`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 1 file(s), 1290 code lines, 3 definitions
- **Estimated effort:** 13.36 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/intarith.tst`  (13.36 person-days)
- source: [tst/testinstall/intarith.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/intarith.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Intarith`
- 1290 code lines, 3 definitions

> @local POWERMODINT_GAP,b,bigPos,bigNeg,checkPValuationInt,data,dataHex
> @local dataInv,dataNonZero,e,f,g,i,k,m,mysource,pow,r,smlNeg,smlPos,x,y
> @local naivQM,ps,checkROOT_INT,P,a,n,p,x1,x2

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraemabomndipsiznlveenvhmbaolraoxak3ogpmuyzivce6szll63q`, then merge with `tools/merge_tasks.py`.
