# GAP-0529 — Port tst/testinstall (tests)

- **Task CID:** `baguqeeraojt2rmh34nrvtrq4p2myzr6aeod7zf6ttf35rd2dfuifrkrgd7xa`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 2 file(s), 931 code lines, 1 definitions
- **Estimated effort:** 9.35 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/zmodnz.tst`  (4.69 person-days)
- source: [tst/testinstall/zmodnz.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/zmodnz.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Zmodnz`
- 465 code lines, 0 definitions

> @local A,Fam7,Fam8,Famp,G,R,enum,l,len,m,m2,m3,m4,one,p
> @local rings,x,z0,z1,z2,z3,i,a,b,y

### `tst/testinstall/semigrp.tst`  (4.66 person-days)
- source: [tst/testinstall/semigrp.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/semigrp.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Semigrp`
- 466 code lines, 1 definitions

> @local C,G,G0,J,K,L,M,M4,O4,QM4,S,T,a,b,c,cc1,cc2,cong,cong3,congM4,csi,d,e
> @local e2,eM4,el,eqm4,er,erp,f,f2,f3,g,g1,g2,g3,g4,gens,gens3,i,k,m,o4,phi
> @local q3,rels,rels3,s,s1,s2,s3,t,t1,t2,t3,u,x,x1,x2,y1,y2

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraojt2rmh34nrvtrq4p2myzr6aeod7zf6ttf35rd2dfuifrkrgd7xa`, then merge with `tools/merge_tasks.py`.
