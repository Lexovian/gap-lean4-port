# GAP-0506 — Port tst/testinstall (tests)

- **Task CID:** `baguqeera5h5eblogx7w5od6wadk4wsyrta22u44ctaynqimqvudmfyz7u55q`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 2 file(s), 779 code lines, 22 definitions
- **Estimated effort:** 8.48 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/listindex.tst`  (4.26 person-days)
- source: [tst/testinstall/listindex.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/listindex.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Listindex`
- 382 code lines, 21 definitions

> ############################################################################
> #
> A  listindex.tst               GAP 4.0 library                   Steve Linton
> #
> #
> #
> #
> @local foo,l,o,r,res,s,t,x

### `tst/testinstall/ffe.tst`  (4.22 person-days)
- source: [tst/testinstall/ffe.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/ffe.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Ffe`
- 397 code lines, 1 definitions

> @local Rochambeau,e,F,f1,f2,f3,p,pol,qs,r,x,bigPrime,z,odds,evens
> @local r1,r2,r3,sf1,sf2,sf3,q,q2,Fp,fields,C,coeffs,B

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera5h5eblogx7w5od6wadk4wsyrta22u44ctaynqimqvudmfyz7u55q`, then merge with `tools/merge_tasks.py`.
