# GAP-0504 — Port tst/testinstall (tests)

- **Task CID:** `baguqeeraes6a7a74tb6vnblrpyk3r7bff45yyfapgo5qvx2xv22ayfduwgja`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 5 file(s), 972 code lines, 22 definitions
- **Estimated effort:** 11.26 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/interpreter.tst`  (2.39 person-days)
- source: [tst/testinstall/interpreter.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/interpreter.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Interpreter`
- 198 code lines, 0 definitions

> @local f,r,l
> 
> Tests for the GAP interpreter logic.
> 
> For now this mostly focuses on testing edge cases and error
> handling in the interpreter.
> 
> The files coder.tst and interpreter.tst closely mirror each other.

### `tst/testinstall/strings.tst`  (2.26 person-days)
- source: [tst/testinstall/strings.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/strings.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Strings`
- 219 code lines, 0 definitions

> ############################################################################
> #
> #  This file tests output methods (mainly for strings)
> #
> @local hadHome, len, savedHome, str, x

### `tst/testinstall/break.tst`  (2.24 person-days)
- source: [tst/testinstall/break.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/break.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Break`
- 126 code lines, 20 definitions

> @local f, i

### `tst/testinstall/grppc.tst`  (2.21 person-days)
- source: [tst/testinstall/grppc.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/grppc.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Grppc`
- 214 code lines, 1 definitions

> @local F,G,S,c,cl,f,g,g1,g10,g3,gens,h,hh,i,m,n,pcgs,r,rws,sys,u,v,x,y,iso

### `tst/testinstall/listgen.tst`  (2.16 person-days)
- source: [tst/testinstall/listgen.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/listgen.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Listgen`
- 215 code lines, 1 definitions

> @local g,h,l,l2,p2,perm,t,filt,lcpy,permsp,old_paras,G,U,tr

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraes6a7a74tb6vnblrpyk3r7bff45yyfapgo5qvx2xv22ayfduwgja`, then merge with `tools/merge_tasks.py`.
