# GAP-0526 — Port tst/testinstall (tests)

- **Task CID:** `baguqeerafom3awhdjrdxbcmebp5bfkc7534apf2cwwy7f6kywynuikc56y5a`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 3 file(s), 802 code lines, 20 definitions
- **Estimated effort:** 10.10 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/vspcrow.tst`  (3.44 person-days)
- source: [tst/testinstall/vspcrow.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/vspcrow.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Vspcrow`
- 336 code lines, 0 definitions

> ############################################################################
> #
> #  (The test file `vspcmat.tst' should contain the same tests,
> #  applied to matrix spaces.)
> #
> @local A,F,b,c,c1,c2,dims,erg,f,i,im,iter,l,lc,m,mb,n,nv,p,subsp
> @local u,uu,uuu,uuuu,v,w,ww,z,vecs,g

### `tst/testinstall/constant.tst`  (3.33 person-days)
- source: [tst/testinstall/constant.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/constant.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Constant`
- 164 code lines, 11 definitions

> @local f
> @exec boolfalsevar := 0;
> @exec booltruevar := 0;
> @exec newtestvar := 0;
> @exec testvar := 0;
> create a plain global var and perform some test

### `tst/testinstall/semitran.tst`  (3.33 person-days)
- source: [tst/testinstall/semitran.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/semitran.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Semitran`
- 302 code lines, 9 definitions

> @local BruteForceAntiIsoCheck,BruteForceInverseCheck,BruteForceIsoCheck
> @local G,H,I,S,T,enum,inv,map,x,y

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerafom3awhdjrdxbcmebp5bfkc7534apf2cwwy7f6kywynuikc56y5a`, then merge with `tools/merge_tasks.py`.
