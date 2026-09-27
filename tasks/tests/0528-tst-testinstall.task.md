# GAP-0528 — Port tst/testinstall (tests)

- **Task CID:** `baguqeeraqmguogsw7bcpl2onfvjxo4dg7cmc3g26bonfvykeafitrfmc4ika`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 7 file(s), 76 code lines, 0 definitions
- **Estimated effort:** 0.78 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/zlattice.tst`  (0.15 person-days)
- source: [tst/testinstall/zlattice.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/zlattice.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Zlattice`
- 15 code lines, 0 definitions

> @local A

### `tst/testinstall/eigen.tst`  (0.12 person-days)
- source: [tst/testinstall/eigen.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/eigen.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Eigen`
- 12 code lines, 0 definitions

> @local A

### `tst/testinstall/teaching.tst`  (0.12 person-days)
- source: [tst/testinstall/teaching.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/teaching.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Teaching`
- 10 code lines, 0 definitions

> @local H, G

### `tst/testinstall/triviso.tst`  (0.12 person-days)
- source: [tst/testinstall/triviso.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/triviso.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Triviso`
- 12 code lines, 0 definitions

> @local G,inv,phi

### `tst/testinstall/tuples.tst`  (0.11 person-days)
- source: [tst/testinstall/tuples.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/tuples.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Tuples`
- 11 code lines, 0 definitions

> gap> START_TEST("tuples.tst");
> gap> D8 := DihedralGroup(IsPermGroup, 8);;
> gap> fam := FamilyObj(D8);
> <Family: "CollectionsFamily(...)">
> gap> ElementsFamily(fam);

### `tst/testinstall/polyrat.tst`  (0.10 person-days)
- source: [tst/testinstall/polyrat.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/polyrat.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Polyrat`
- 10 code lines, 0 definitions

> @local A,Fam7,Fam8,Famp,G,R,enum,l,len,m,m2,m3,m4,one,p
> @local rings,x,z0,z1,z2,z3,i,a,b,y

### `tst/testinstall/stbcbckt.tst`  (0.06 person-days)
- source: [tst/testinstall/stbcbckt.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/stbcbckt.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Stbcbckt`
- 6 code lines, 0 definitions

> @local G,p

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraqmguogsw7bcpl2onfvjxo4dg7cmc3g26bonfvykeafitrfmc4ika`, then merge with `tools/merge_tasks.py`.
