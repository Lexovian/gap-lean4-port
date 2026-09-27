# GAP-0511 — Port tst/testinstall (tests)

- **Task CID:** `baguqeeranwqzjznak2s3mf4yfvi7macn2b24jixuddlkxopoawwmtiljcgca`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 1 file(s), 3614 code lines, 7 definitions
- **Estimated effort:** 36.55 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/pperm.tst`  (36.55 person-days)
- source: [tst/testinstall/pperm.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/pperm.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Pperm`
- 3614 code lines, 7 definitions

> @local display,e,f,g,h,i,notationpp,notationt,p,x,PPerm4,Perm4,im,coll,p1,p2
> #
> # takes around 4 seconds to run

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeranwqzjznak2s3mf4yfvi7macn2b24jixuddlkxopoawwmtiljcgca`, then merge with `tools/merge_tasks.py`.
