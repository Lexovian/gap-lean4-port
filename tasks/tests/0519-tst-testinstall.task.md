# GAP-0519 — Port tst/testinstall (tests)

- **Task CID:** `baguqeera6g5h4aomjfrpvld4hzhbkb3hufvmeru7kiivjzioxufnmwh7czia`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 3 file(s), 1100 code lines, 15 definitions
- **Estimated effort:** 11.46 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/semipperm.tst`  (3.91 person-days)
- source: [tst/testinstall/semipperm.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/semipperm.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Semipperm`
- 366 code lines, 12 definitions

> @local BruteForceInverseCheck,BruteForceIsoCheck,I,PPermDisplayLimit
> @local PPermNotation,S,inv,x,f,T

### `tst/testinstall/vecmat.tst`  (3.81 person-days)
- source: [tst/testinstall/vecmat.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/vecmat.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Vecmat`
- 364 code lines, 2 definitions

> @local F,F9,TestReadMatEntry,dim,m,v,w,checkShift,testlens,types,vecs,i,j
> @local v1,v2,G

### `tst/testinstall/ctbl.tst`  (3.74 person-days)
- source: [tst/testinstall/ctbl.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/ctbl.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Ctbl`
- 370 code lines, 1 definitions

> @local g,t,lin,G

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera6g5h4aomjfrpvld4hzhbkb3hufvmeru7kiivjzioxufnmwh7czia`, then merge with `tools/merge_tasks.py`.
