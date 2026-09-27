# GAP-0500 — Port tst/testinstall (tests)

- **Task CID:** `baguqeeraprmcz5ff2soexyd7o7lbde5gz3pkqpsujait6u44ge3o2hi7nmwa`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 15 file(s), 292 code lines, 8 definitions
- **Estimated effort:** 3.15 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/flush.tst`  (0.27 person-days)
- source: [tst/testinstall/flush.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/flush.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Flush`
- 27 code lines, 0 definitions

> @local

### `tst/testinstall/mgmring.tst`  (0.27 person-days)
- source: [tst/testinstall/mgmring.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/mgmring.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Mgmring`
- 27 code lines, 0 definitions

> @local centre,img,m,membrm,r,rembrm,rm

### `tst/testinstall/print-formatting.tst`  (0.26 person-days)
- source: [tst/testinstall/print-formatting.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/print-formatting.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.PrintFormatting`
- 24 code lines, 2 definitions

> for comparison

### `tst/testinstall/ElmsBlist.tst`  (0.25 person-days)
- source: [tst/testinstall/ElmsBlist.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/ElmsBlist.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.ElmsBlist`
- 17 code lines, 1 definitions

> gap> START_TEST("ElmsBlist.tst");
> gap> doTests := function(startrange, lengthrange)
> >    local source, s, l, copy, i;    
> >    source := BlistStringDecode("DEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF");
> >    for s in startrange do

### `tst/testinstall/dict.tst`  (0.24 person-days)
- source: [tst/testinstall/dict.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/dict.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Dict`
- 22 code lines, 0 definitions

> @local dict,i

### `tst/testinstall/hashkeybag.tst`  (0.24 person-days)
- source: [tst/testinstall/hashkeybag.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/hashkeybag.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Hashkeybag`
- 24 code lines, 0 definitions

> @local

### `tst/testinstall/maxsub.tst`  (0.24 person-days)
- source: [tst/testinstall/maxsub.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/maxsub.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Maxsub`
- 24 code lines, 0 definitions

> @if IsPackageMarkedForLoading( "primgrp", "" )

### `tst/testinstall/pragma.tst`  (0.22 person-days)
- source: [tst/testinstall/pragma.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/pragma.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Pragma`
- 18 code lines, 4 definitions

> % pragma

### `tst/testinstall/stbc.tst`  (0.19 person-days)
- source: [tst/testinstall/stbc.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/stbc.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Stbc`
- 19 code lines, 0 definitions

> @local sc

### `tst/testinstall/ring.tst`  (0.18 person-days)
- source: [tst/testinstall/ring.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/ring.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Ring`
- 18 code lines, 0 definitions

> ####################################################################
> 
> Tests for IsIntegralRing
> 
> Trivial ring

### `tst/testinstall/dlog.tst`  (0.17 person-days)
- source: [tst/testinstall/dlog.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/dlog.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Dlog`
- 17 code lines, 0 definitions

> @local R, o

### `tst/testinstall/ConjNatSym.tst`  (0.16 person-days)
- source: [tst/testinstall/ConjNatSym.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/ConjNatSym.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.ConjNatSym`
- 16 code lines, 0 definitions

> The following two test use the new version for natural symmetric group

### `tst/testinstall/oprtperm.tst`  (0.16 person-days)
- source: [tst/testinstall/oprtperm.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/oprtperm.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Oprtperm`
- 16 code lines, 0 definitions

> @local

### `tst/testinstall/ctblmaps.tst`  (0.15 person-days)
- source: [tst/testinstall/ctblmaps.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/ctblmaps.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Ctblmaps`
- 11 code lines, 0 definitions

> @local s, t, maps

### `tst/testinstall/nanoseconds.tst`  (0.15 person-days)
- source: [tst/testinstall/nanoseconds.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/nanoseconds.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Nanoseconds`
- 12 code lines, 1 definitions

> @local f,t,t2

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraprmcz5ff2soexyd7o7lbde5gz3pkqpsujait6u44ge3o2hi7nmwa`, then merge with `tools/merge_tasks.py`.
