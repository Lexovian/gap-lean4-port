# GAP-0496 — Port tst/testinstall (tests)

- **Task CID:** `baguqeerabgagbhbxpmyvgszfhiydsqraunbv4qzqj4ndsxhgzflvzgpm6b6q`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 15 file(s), 662 code lines, 27 definitions
- **Estimated effort:** 6.78 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/ctblmoli.tst`  (0.52 person-days)
- source: [tst/testinstall/ctblmoli.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/ctblmoli.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Ctblmoli`
- 52 code lines, 0 definitions

> @local G,molser,psi,x,y,tbl,irr,lin,deg3,ser,ser2,m2

### `tst/testinstall/magma.tst`  (0.49 person-days)
- source: [tst/testinstall/magma.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/magma.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Magma`
- 49 code lines, 0 definitions

> @local F,M,T

### `tst/testinstall/onecohom.tst`  (0.48 person-days)
- source: [tst/testinstall/onecohom.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/onecohom.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Onecohom`
- 48 code lines, 0 definitions

> @local b,com,g,n,ocr

### `tst/testinstall/gprd.tst`  (0.47 person-days)
- source: [tst/testinstall/gprd.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/gprd.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Gprd`
- 47 code lines, 0 definitions

> @local g1,g2,g3,d1,d2,d3,d4

### `tst/testinstall/xgap.tst`  (0.47 person-days)
- source: [tst/testinstall/xgap.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/xgap.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Xgap`
- 47 code lines, 0 definitions

> @local c2,e,f,g,gg,i,k,l,n,t,a,b

### `tst/testinstall/method-rankfns.tst`  (0.46 person-days)
- source: [tst/testinstall/method-rankfns.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/method-rankfns.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MethodRankfns`
- 46 code lines, 5 definitions

> @local myOp, myC, xxx, obj, myUprankFilt
> @exec myFilt:= NewFilter("myFilt", 0);;
> @exec myAltFilt:= NewFilter("myAltFilt", 0);;

### `tst/testinstall/declarefunction.tst`  (0.45 person-days)
- source: [tst/testinstall/declarefunction.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/declarefunction.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Declarefunction`
- 44 code lines, 10 definitions

> @local name, testfunctionA, func

### `tst/testinstall/method-reordering.tst`  (0.45 person-days)
- source: [tst/testinstall/method-reordering.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/method-reordering.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MethodReordering`
- 40 code lines, 5 definitions

> gap> START_TEST("method-reordering.tst");
> gap> CheckReorder := function(explicit)
> >    local  f1, f2, f3, myOp, fam, t, o, o2, myC;
> >    CHECK_ALL_METHOD_RANKS();
> >    f1 := NewFilter("filter1",100);

### `tst/testinstall/sha256.tst`  (0.45 person-days)
- source: [tst/testinstall/sha256.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/sha256.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Sha256`
- 45 code lines, 0 definitions

> test input validation for the kernel functions

### `tst/testinstall/startendwith.tst`  (0.44 person-days)
- source: [tst/testinstall/startendwith.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/startendwith.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Startendwith`
- 44 code lines, 0 definitions

> @local

### `tst/testinstall/weakptr-badargs.tst`  (0.44 person-days)
- source: [tst/testinstall/weakptr-badargs.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/weakptr-badargs.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.WeakptrBadargs`
- 44 code lines, 0 definitions

> ############################################################################
> @local w

### `tst/testinstall/invsgp.tst`  (0.42 person-days)
- source: [tst/testinstall/invsgp.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/invsgp.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Invsgp`
- 42 code lines, 0 definitions

> @local S

### `tst/testinstall/meatauto.tst`  (0.42 person-days)
- source: [tst/testinstall/meatauto.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/meatauto.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Meatauto`
- 42 code lines, 0 definitions

> @local F, e, M, v, N, G, p, hc, A

### `tst/testinstall/linecontinuation.tst`  (0.41 person-days)
- source: [tst/testinstall/linecontinuation.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/linecontinuation.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Linecontinuation`
- 41 code lines, 2 definitions

> This file tests line continuations, i.e., GAP commands which span multiple
> lines with help of a backslash just before the new line, inside various
> kinds of GAP expressions

### `tst/testinstall/method.tst`  (0.41 person-days)
- source: [tst/testinstall/method.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/method.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Method`
- 31 code lines, 5 definitions

> Check names are set correctly

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerabgagbhbxpmyvgszfhiydsqraunbv4qzqj4ndsxhgzflvzgpm6b6q`, then merge with `tools/merge_tasks.py`.
