# GAP-0494 — Port tst/testinstall (tests)

- **Task CID:** `baguqeeralwqqazlvxqymhuckprwnipg37zrmqj4mv34oqzu2ok2u6in36tlq`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 2 file(s), 968 code lines, 14 definitions
- **Estimated effort:** 9.86 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/coll.tst`  (4.98 person-days)
- source: [tst/testinstall/coll.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/coll.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Coll`
- 484 code lines, 11 definitions

> ############################################################################
> #
> #  Test operations defined in coll.gd
> #

### `tst/testinstall/perm.tst`  (4.88 person-days)
- source: [tst/testinstall/perm.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/perm.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Perm`
- 484 code lines, 3 definitions

> @local checklens,n,permAll,permBig,permSml,x,y,moved,p,r,t,l

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeralwqqazlvxqymhuckprwnipg37zrmqj4mv34oqzu2ok2u6in36tlq`, then merge with `tools/merge_tasks.py`.
