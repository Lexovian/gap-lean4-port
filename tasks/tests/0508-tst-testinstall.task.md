# GAP-0508 — Port tst/testinstall (tests)

- **Task CID:** `baguqeera2jecx3jmez3duz5rdmv6433j2fnrnpkfdlgwyidn4t3e4rw7bb6a`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 4 file(s), 1027 code lines, 0 definitions
- **Estimated effort:** 10.32 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/mgmfree.tst`  (2.61 person-days)
- source: [tst/testinstall/mgmfree.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/mgmfree.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Mgmfree`
- 261 code lines, 0 definitions

> @local M

### `tst/testinstall/pgroups.tst`  (2.61 person-days)
- source: [tst/testinstall/pgroups.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/pgroups.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Pgroups`
- 258 code lines, 0 definitions

> @local A,B,C,D,F,G,H,H1,H2,H3,H4,K,L,N,Q,g,hom,myList,newList,r,s

### `tst/testinstall/wordrep.tst`  (2.57 person-days)
- source: [tst/testinstall/wordrep.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/wordrep.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Wordrep`
- 255 code lines, 0 definitions

> ExponentSums

### `tst/testinstall/algmat.tst`  (2.53 person-days)
- source: [tst/testinstall/algmat.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/algmat.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Algmat`
- 253 code lines, 0 definitions

> @local a,b,c,cen,cenu,cenv,d,f,fullcen,l,mat,n,r,rada,radc,sum
> @local u,ua,ub,uc,ud,uz,v,z,zero

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera2jecx3jmez3duz5rdmv6433j2fnrnpkfdlgwyidn4t3e4rw7bb6a`, then merge with `tools/merge_tasks.py`.
