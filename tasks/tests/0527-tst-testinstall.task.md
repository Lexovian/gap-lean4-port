# GAP-0527 — Port tst/testinstall (tests)

- **Task CID:** `baguqeerardeqrclxuaga6clomtee4opczr4e4omwmar4seb5nzopkofq6rva`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 12 file(s), 1131 code lines, 45 definitions
- **Estimated effort:** 11.69 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/weakptr.tst`  (1.08 person-days)
- source: [tst/testinstall/weakptr.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/weakptr.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Weakptr`
- 108 code lines, 0 definitions

> Low level access functions

### `tst/testinstall/read.tst`  (1.06 person-days)
- source: [tst/testinstall/read.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/read.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Read`
- 105 code lines, 1 definitions

> @local dir,name,p,x

### `tst/testinstall/semicong.tst`  (1.03 person-days)
- source: [tst/testinstall/semicong.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/semicong.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Semicong`
- 98 code lines, 0 definitions

> @local a,b,c,ec,f,gns,n,rel,s,s1,sgns,sng,sng1,x

### `tst/testinstall/varargs.tst`  (1.01 person-days)
- source: [tst/testinstall/varargs.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/varargs.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Varargs`
- 90 code lines, 25 definitions

> @local f

### `tst/testinstall/sylowhall.tst`  (1.00 person-days)
- source: [tst/testinstall/sylowhall.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/sylowhall.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Sylowhall`
- 94 code lines, 0 definitions

> @local A,D,F,G,fine,p,x,y,pi

### `tst/testinstall/attribute.tst`  (0.96 person-days)
- source: [tst/testinstall/attribute.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/attribute.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Attribute`
- 96 code lines, 18 definitions

> I  Attribute Size of <object> already set to 17, cannot be changed to 16

### `tst/testinstall/trace.tst`  (0.95 person-days)
- source: [tst/testinstall/trace.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/trace.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Trace`
- 91 code lines, 1 definitions

> @local fam,cat,type,a,testTrace

### `tst/testinstall/ctblfuns.tst`  (0.94 person-days)
- source: [tst/testinstall/ctblfuns.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/ctblfuns.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Ctblfuns`
- 90 code lines, 0 definitions

> @local S4,V4,irr,l, tbl, v, g, h, t, chi, t5, irr5

### `tst/testinstall/ctblsolv.tst`  (0.93 person-days)
- source: [tst/testinstall/ctblsolv.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/ctblsolv.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Ctblsolv`
- 89 code lines, 0 definitions

> @local G, pair, mth, all, rks, tbl

### `tst/testinstall/grpmat.tst`  (0.93 person-days)
- source: [tst/testinstall/grpmat.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/grpmat.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Grpmat`
- 93 code lines, 0 definitions

> @local cl,g,gd,gens,hom,i,img,iso,pcgs,u,G,F,o,a,m,nice,H,G2,nice2

### `tst/testinstall/format.tst`  (0.90 person-days)
- source: [tst/testinstall/format.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/format.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Format`
- 89 code lines, 0 definitions

> Some variables we will use for testing printing

### `tst/testinstall/mapphomo.tst`  (0.90 person-days)
- source: [tst/testinstall/mapphomo.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/mapphomo.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Mapphomo`
- 88 code lines, 0 definitions

> @local G,G0,H,H0,a,b,hom,gens,imgs

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerardeqrclxuaga6clomtee4opczr4e4omwmar4seb5nzopkofq6rva`, then merge with `tools/merge_tasks.py`.
