# GAP-0495 — Port tst/testinstall (tests)

- **Task CID:** `baguqeerazdgdcemuyvwzhnt7w5gl7qtc7qz4nors32nav6yw3ck7fael4ufa`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 1 file(s), 633 code lines, 0 definitions
- **Estimated effort:** 7.17 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/combinat.tst`  (7.17 person-days)
- source: [tst/testinstall/combinat.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/combinat.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Combinat`
- 633 code lines, 0 definitions

> ############################################################################
> #
> #  This  file  tests  the functions that  mainly  deal  with  combinatorics.
> #
> @local n,mset,comb1,comb2,comb3,it,pn1,pn2,s,k,x,y

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerazdgdcemuyvwzhnt7w5gl7qtc7qz4nors32nav6yw3ck7fael4ufa`, then merge with `tools/merge_tasks.py`.
