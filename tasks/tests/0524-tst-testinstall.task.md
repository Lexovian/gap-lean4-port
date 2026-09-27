# GAP-0524 — Port tst/testinstall (tests)

- **Task CID:** `baguqeera5jm3fdrrflvt6djxiwcq5bwwlaihdjltkqkh3kayvohqnpvqpkfq`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 2 file(s), 769 code lines, 91 definitions
- **Estimated effort:** 8.90 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/vspchom.tst`  (4.62 person-days)
- source: [tst/testinstall/vspchom.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/vspchom.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Vspchom`
- 462 code lines, 0 definitions

> @local a,b,bf,bm,bt,bv,bw,comp1,comp2,comp3,endo,endoendo,f,funs,hom,id,m
> @local map,map1,map2,map3,map4,map5,map6,map7,map8,mb,nathom,sub,sum,t
> @local triv,v,w,zero

### `tst/testinstall/function.tst`  (4.28 person-days)
- source: [tst/testinstall/function.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/function.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Function`
- 307 code lines, 91 definitions

> @local f,g,h,l,mh,r,x,makeCounter,funcloop,funcstr

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera5jm3fdrrflvt6djxiwcq5bwwlaihdjltkqkh3kayvohqnpvqpkfq`, then merge with `tools/merge_tasks.py`.
