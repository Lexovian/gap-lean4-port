# GAP-0513 — Port tst/testinstall (tests)

- **Task CID:** `baguqeeramosvj4eialfohjfaqb5watke4ute5yzq2w376wvv67etwv4wosfa`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 10 file(s), 1015 code lines, 69 definitions
- **Estimated effort:** 11.78 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/random.tst`  (1.31 person-days)
- source: [tst/testinstall/random.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/random.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Random`
- 120 code lines, 3 definitions

> @local R,a,rm,g,orbs,orb,i,getOneInt

### `tst/testinstall/cset.tst`  (1.29 person-days)
- source: [tst/testinstall/cset.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/cset.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Cset`
- 128 code lines, 1 definitions

> ############################################################################
> #
> #  test of group intersection and RightCoset
> #

### `tst/testinstall/methwhy.tst`  (1.24 person-days)
- source: [tst/testinstall/methwhy.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/methwhy.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Methwhy`
- 96 code lines, 29 definitions

> also install multi argument methods, to make sure that there
> is no bug which just happens to work with 1 argument

### `tst/testinstall/testrandom.g`  (1.24 person-days)
- source: [tst/testinstall/testrandom.g](https://github.com/gap-system/gap/blob/master/tst/testinstall/testrandom.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Testrandom`
- 87 code lines, 3 definitions

> Perform a variety of tests on Random Sources and functions which create
> random objects.
> 
> This function is used for a variety is different tests:
> 
> Test that 'Random(C)' and 'Random(GlobalMersenneTwister, C)' produce
> the same answer.
> 
> Test that 'Random(rs,C)' only uses 'rs', and no other source of random
> 
> Test Random and RandomList

### `tst/testinstall/dt.tst`  (1.15 person-days)
- source: [tst/testinstall/dt.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/dt.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Dt`
- 100 code lines, 1 definitions

> ############################################################################
> #
> #  Test the (undocumented!) deep thought collector code implemented by
> #  src/dt.{c,h}, src/dteval.{c,h}, lib/dt.g, lib/rwsdt.gi, lib/rwspcclt.gd
> #
> @local g,UnitriangularPcGroup,G,H,iso,k,famG,collG,famH,collH,i,h

### `tst/testinstall/alghom.tst`  (1.13 person-days)
- source: [tst/testinstall/alghom.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/alghom.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Alghom`
- 112 code lines, 2 definitions

> @local A,B,C,ExampleRing,I,O,P,Q,R,T,b,coker,f,gensq,id,ker,m1,m2,map,pols
> @local pr,q,x,y,z,inv,gens,map1,map2

### `tst/testinstall/objset.tst`  (1.12 person-days)
- source: [tst/testinstall/objset.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/objset.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Objset`
- 94 code lines, 0 definitions

> @local a,b,c,p,setvals,x,i,y,result

### `tst/testinstall/algrep.tst`  (1.11 person-days)
- source: [tst/testinstall/algrep.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/algrep.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Algrep`
- 110 code lines, 0 definitions

> creating subalgebra

### `tst/testinstall/xfuncs.tst`  (1.11 person-days)
- source: [tst/testinstall/xfuncs.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/xfuncs.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Xfuncs`
- 92 code lines, 29 definitions

> @local list,set,sum,sumlim,testXfuncs

### `tst/testinstall/testenumerator.g`  (1.08 person-days)
- source: [tst/testinstall/testenumerator.g](https://github.com/gap-system/gap/blob/master/tst/testinstall/testenumerator.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Testenumerator`
- 76 code lines, 1 definitions

> ############################################################################
> #
> F  TestConsistencyOfEnumeratorByFunctions( <enum> )
> #
> #  This (currently undocumented) function is thought for checking newly
> #  implemented enumerators in `IsEnumeratorByFunctions'.
> #  Whenever a test fails then a message about this is printed, and `false'
> #  is returned in the end.
> #  If no obvious errors are found then `true' is returned.
> #  (Note that for enumerators of length up to 1000, also access to too large
> #  positions is checked.)
> #

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeramosvj4eialfohjfaqb5watke4ute5yzq2w376wvv67etwv4wosfa`, then merge with `tools/merge_tasks.py`.
