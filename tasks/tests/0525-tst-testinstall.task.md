# GAP-0525 — Port tst/testinstall (tests)

- **Task CID:** `baguqeeraikqj4rgk7spa6gyjaoml4zui3qfctxd5iavaabpwaawvj7ti3uvq`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 3 file(s), 1072 code lines, 2 definitions
- **Estimated effort:** 10.75 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/vspcmali.tst`  (3.73 person-days)
- source: [tst/testinstall/vspcmali.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/vspcmali.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Vspcmali`
- 373 code lines, 0 definitions

> ############################################################################
> #
> #  This file contains tests for vector spaces of Lie matrices.
> #
> #  (The test files 'vspcrow.tst' and 'vspcmat.tst' should contain the same
> #  tests.)
> #
> @local b,bv,c,c1,c2,f,lc,mb,n,u,uu,uuu,uuuu,v,w,ww,z

### `tst/testinstall/range.tst`  (3.57 person-days)
- source: [tst/testinstall/range.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/range.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Range`
- 354 code lines, 2 definitions

> @local TestPrintRangeRep,g,ranges,x,y,z,a,f

### `tst/testinstall/vspcmat.tst`  (3.45 person-days)
- source: [tst/testinstall/vspcmat.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/vspcmat.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Vspcmat`
- 345 code lines, 0 definitions

> ############################################################################
> #
> #  (The test file 'vspcrow.tst' should contain the same tests.)
> #
> @local b,bv,c,c1,c2,f,lc,mb,n,u,uu,uuu,uuuu,v,w,ww,z

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraikqj4rgk7spa6gyjaoml4zui3qfctxd5iavaabpwaawvj7ti3uvq`, then merge with `tools/merge_tasks.py`.
