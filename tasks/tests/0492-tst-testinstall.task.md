# GAP-0492 — Port tst/testinstall (tests)

- **Task CID:** `baguqeerahmtizhd5l5gja3t4ub6zloj2m32sukbpmwjpks746xypjw66i25q`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 1 file(s), 854 code lines, 0 definitions
- **Estimated effort:** 8.55 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/algsc.tst`  (8.55 person-days)
- source: [tst/testinstall/algsc.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/algsc.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Algsc`
- 854 code lines, 0 definitions

> @local T0,T1,T2,T3,a,b,c,coeff,der,e,fam,g,gens,i,id,j,k,l1,l2,l3,lcs,orb
> @local TestMonomialUseLattice_Orig,permgrp,ps,q,s,s1,s2,s3,sc,t,theta
> @local U,ucs,v,vecs,vectors,w,z,A,V,W
> @local L,l

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerahmtizhd5l5gja3t4ub6zloj2m32sukbpmwjpks746xypjw66i25q`, then merge with `tools/merge_tasks.py`.
