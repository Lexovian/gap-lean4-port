# GAP-0507 — Port tst/testinstall (tests)

- **Task CID:** `baguqeerabp3i2dasiln5dinn6sd5zu6doszidc5lvikpra2hgcdes2fosxqa`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 2 file(s), 1102 code lines, 0 definitions
- **Estimated effort:** 11.05 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/mat8bit.tst`  (6.05 person-days)
- source: [tst/testinstall/mat8bit.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/mat8bit.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Mat8bit`
- 602 code lines, 0 definitions

> @local m, z, zm, mz, mm;

### `tst/testinstall/mapping.tst`  (5.00 person-days)
- source: [tst/testinstall/mapping.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/mapping.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Mapping`
- 500 code lines, 0 definitions

> @local A,B,C,M,anticomp,com,comp,conj,d,g,g2,i,i2,inv,j,map,map1,map2
> @local mapBijective,nice,res,t,t1,t2,tuples,vecs,hom,aut,dp

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerabp3i2dasiln5dinn6sd5zu6doszidc5lvikpra2hgcdes2fosxqa`, then merge with `tools/merge_tasks.py`.
