# GAP-0493 — Port tst/testinstall (tests)

- **Task CID:** `baguqeeramktzpztvheru4vcnakcg76yj3ynscldg2ab2bpkhkgq42itd6hfq`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 4 file(s), 870 code lines, 91 definitions
- **Estimated effort:** 10.91 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/coder.tst`  (2.84 person-days)
- source: [tst/testinstall/coder.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/coder.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Coder`
- 235 code lines, 54 definitions

> @local f,r,l
> 
> Tests for the GAP coder logic.
> 
> For now this mostly focuses on testing edge cases and error
> handling in the coder.
> 
> The files coder.tst and interpreter.tst closely mirror each other.

### `tst/testinstall/meataxe.tst`  (2.75 person-days)
- source: [tst/testinstall/meataxe.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/meataxe.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Meataxe`
- 270 code lines, 1 definitions

> @local G,M,M2,M3,M4,M5,M6,V,bf,bo,cf,homs,m,mat,qf,randM,res,sf,subs,mats,Q,orig,S,dim,F,i

### `tst/testinstall/coding.tst`  (2.71 person-days)
- source: [tst/testinstall/coding.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/coding.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Coding`
- 110 code lines, 36 definitions

> Test the GAP function coder

### `tst/testinstall/grpfree.tst`  (2.61 person-days)
- source: [tst/testinstall/grpfree.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/grpfree.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Grpfree`
- 255 code lines, 0 definitions

> @local a,b,enum,F,H,first50,firstfifty,g,gens,iter,rho,S,i,G

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeramktzpztvheru4vcnakcg76yj3ynscldg2ab2bpkhkgq42itd6hfq`, then merge with `tools/merge_tasks.py`.
