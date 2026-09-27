# GAP-0497 — Port tst/testinstall (tests)

- **Task CID:** `baguqeera4orb7qvfkev3fscq2i7hgsxwkf5eb5ggxtkh4q4ahv32u4n3xpuq`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 3 file(s), 915 code lines, 0 definitions
- **Estimated effort:** 9.39 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/cyclotom.tst`  (3.26 person-days)
- source: [tst/testinstall/cyclotom.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/cyclotom.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Cyclotom`
- 317 code lines, 0 definitions

> @local a,b,cyc,gm,i,l1,l2,l3,mat,n,r,ranges,s,x,y,z,sets,lists

### `tst/testinstall/ctblmono.tst`  (3.19 person-days)
- source: [tst/testinstall/ctblmono.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/ctblmono.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Ctblmono`
- 304 code lines, 0 definitions

> @local S4,Sl23,chi,cln,n,test,g,irr
> @local TestMonomialUseLattice_Orig,g1,g2,g3,g4,g5,g6

### `tst/testinstall/fldabnum.tst`  (2.94 person-days)
- source: [tst/testinstall/fldabnum.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/fldabnum.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Fldabnum`
- 294 code lines, 0 definitions

> @local aut,auts,c,f,g,id,pol,x,F,gens,A

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera4orb7qvfkev3fscq2i7hgsxwkf5eb5ggxtkh4q4ahv32u4n3xpuq`, then merge with `tools/merge_tasks.py`.
