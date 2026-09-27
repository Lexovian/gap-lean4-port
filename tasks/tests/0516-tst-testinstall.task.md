# GAP-0516 — Port tst/testinstall (tests)

- **Task CID:** `baguqeerasxkd4ghlximn7gtwpzy67f545miygnpy666hj7zamunmkleoxzja`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 15 file(s), 523 code lines, 15 definitions
- **Estimated effort:** 5.43 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/ringpoly.tst`  (0.41 person-days)
- source: [tst/testinstall/ringpoly.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/ringpoly.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Ringpoly`
- 41 code lines, 0 definitions

> @local R,P,F,fam,f,PP,PF,old_ITER_POLY_WARN

### `tst/testinstall/misc.tst`  (0.40 person-days)
- source: [tst/testinstall/misc.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/misc.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Misc`
- 37 code lines, 0 definitions

> test InstallAttributeMethodByGroupGeneralMappingByImages indirectly

### `tst/testinstall/obsolete.tst`  (0.40 person-days)
- source: [tst/testinstall/obsolete.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/obsolete.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Obsolete`
- 39 code lines, 2 definitions

> I  'obsoletetestfunc' is obsolete.
> I  It may be removed in a future release of GAP.
> I  Use newfunc instead.

### `tst/testinstall/upoly.tst`  (0.40 person-days)
- source: [tst/testinstall/upoly.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/upoly.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Upoly`
- 40 code lines, 0 definitions

> gap> START_TEST("upoly.tst");
> #
> gap> CyclotomicPol(501);
> [ 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, 
>   -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1,

### `tst/testinstall/domain.tst`  (0.38 person-days)
- source: [tst/testinstall/domain.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/domain.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Domain`
- 37 code lines, 0 definitions

> equality for a list and an infinite domain

### `tst/testinstall/oper.tst`  (0.38 person-days)
- source: [tst/testinstall/oper.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/oper.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Oper`
- 33 code lines, 0 definitions

> @local newop

### `tst/testinstall/dir.tst`  (0.37 person-days)
- source: [tst/testinstall/dir.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/dir.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Dir`
- 34 code lines, 0 definitions

> @local badbase,baddirbase,base,dirTest,dirbase,dirs

### `tst/testinstall/fpmon.tst`  (0.37 person-days)
- source: [tst/testinstall/fpmon.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/fpmon.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Fpmon`
- 37 code lines, 0 definitions

> @local F,M,S,inv,iso,map,rels,x,y

### `tst/testinstall/auto.tst`  (0.36 person-days)
- source: [tst/testinstall/auto.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/auto.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Auto`
- 36 code lines, 3 definitions

> @if IsHPCGAP

### `tst/testinstall/constructor.tst`  (0.36 person-days)
- source: [tst/testinstall/constructor.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/constructor.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Constructor`
- 34 code lines, 5 definitions

> constructors with zero arguments cannot be created

### `tst/testinstall/modifiers.tst`  (0.35 person-days)
- source: [tst/testinstall/modifiers.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/modifiers.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Modifiers`
- 35 code lines, 3 definitions

> @local l,x,y

### `tst/testinstall/object.tst`  (0.34 person-days)
- source: [tst/testinstall/object.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/object.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Object`
- 34 code lines, 0 definitions

> Tests for objectify

### `tst/testinstall/depth.tst`  (0.32 person-days)
- source: [tst/testinstall/depth.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/depth.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Depth`
- 27 code lines, 1 definitions

> @local curdepth,dive

### `tst/testinstall/table.tst`  (0.30 person-days)
- source: [tst/testinstall/table.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/table.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Table`
- 30 code lines, 1 definitions

> @local u,v, check

### `tst/testinstall/grpreps.tst`  (0.29 person-days)
- source: [tst/testinstall/grpreps.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/grpreps.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Grpreps`
- 29 code lines, 0 definitions

> @local G1, G2, F, res1, res2;

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerasxkd4ghlximn7gtwpzy67f545miygnpy666hj7zamunmkleoxzja`, then merge with `tools/merge_tasks.py`.
