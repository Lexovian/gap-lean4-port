# GAP-0509 — Port tst/testinstall (tests)

- **Task CID:** `baguqeerakh3ik7tlkdo5foyoe726txghdydssb32oxffc4kyxty7dbecn6aq`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 14 file(s), 1007 code lines, 68 definitions
- **Estimated effort:** 11.33 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/oper1.tst`  (0.89 person-days)
- source: [tst/testinstall/oper1.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/oper1.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Oper1`
- 75 code lines, 20 definitions

> verify that no new methods were added

### `tst/testinstall/gaussian.tst`  (0.88 person-days)
- source: [tst/testinstall/gaussian.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/gaussian.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Gaussian`
- 88 code lines, 0 definitions

> @local

### `tst/testinstall/numtheor.tst`  (0.88 person-days)
- source: [tst/testinstall/numtheor.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/numtheor.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Numtheor`
- 65 code lines, 1 definitions

> @local JACOBI_INT_GAP,c,d,jac,m,n,oldLevel,t

### `tst/testinstall/DirectProductElement.tst`  (0.86 person-days)
- source: [tst/testinstall/DirectProductElement.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/DirectProductElement.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.DirectProductElement`
- 84 code lines, 0 definitions

> Embryonic test for DirectProductElement objects, could be expanded.

### `tst/testinstall/kbsemi.tst`  (0.83 person-days)
- source: [tst/testinstall/kbsemi.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kbsemi.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kbsemi`
- 75 code lines, 0 definitions

> Some more tests for Knuth-Bendix rewriting

### `tst/testinstall/objlist.tst`  (0.82 person-days)
- source: [tst/testinstall/objlist.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/objlist.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Objlist`
- 82 code lines, 11 definitions

> Create a list-like object, to test functionality of GAP for objects which implement
> IsSmallList

### `tst/testinstall/set.tst`  (0.82 person-days)
- source: [tst/testinstall/set.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/set.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Set`
- 82 code lines, 0 definitions

> @local a,b,c,g,l

### `tst/testinstall/bitfields.tst`  (0.81 person-days)
- source: [tst/testinstall/bitfields.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/bitfields.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Bitfields`
- 64 code lines, 8 definitions

> @local bf,i,j,vals,x,y,z

### `tst/testinstall/info.tst`  (0.81 person-days)
- source: [tst/testinstall/info.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/info.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Info`
- 81 code lines, 0 definitions

> printing and arithmetic of info classes

### `tst/testinstall/memoize.tst`  (0.78 person-days)
- source: [tst/testinstall/memoize.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/memoize.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Memoize`
- 76 code lines, 2 definitions

> test flushing caches

### `tst/testinstall/unknown.tst`  (0.75 person-days)
- source: [tst/testinstall/unknown.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/unknown.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Unknown`
- 75 code lines, 0 definitions

> @local u

### `tst/testinstall/euclidean.tst`  (0.74 person-days)
- source: [tst/testinstall/euclidean.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/euclidean.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Euclidean`
- 48 code lines, 1 definitions

> @local checkEuclideanRing

### `tst/testinstall/stabchain.tst`  (0.74 person-days)
- source: [tst/testinstall/stabchain.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/stabchain.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Stabchain`
- 55 code lines, 1 definitions

> @local TestGens,m,gensets

### `tst/testinstall/unbound.tst`  (0.72 person-days)
- source: [tst/testinstall/unbound.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/unbound.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Unbound`
- 57 code lines, 24 definitions

> @local f

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerakh3ik7tlkdo5foyoe726txghdydssb32oxffc4kyxty7dbecn6aq`, then merge with `tools/merge_tasks.py`.
