# GAP-0532 — Port tst/testinstall/MatrixObj (tests)

- **Task CID:** `baguqeera5yfns5fyhvbfgbf5puvo46zughdbcqommucogk5x4tfmsomek3ma`
- **Layer:** `tests`   **Module:** `tst/testinstall/MatrixObj`
- **Size:** 5 file(s), 952 code lines, 20 definitions
- **Estimated effort:** 11.53 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/MatrixObj/testmatobj.g`  (3.96 person-days)
- source: [tst/testinstall/MatrixObj/testmatobj.g](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/testmatobj.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.Testmatobj`
- 242 code lines, 9 definitions

> make an old-fashioned entry-wise copy of this matrix so we can compare
> all changes made there independent of any special properties of the
> matrix representation

### `tst/testinstall/MatrixObj/matobjgeneric.tst`  (3.68 person-days)
- source: [tst/testinstall/MatrixObj/matobjgeneric.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/matobjgeneric.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.Matobjgeneric`
- 363 code lines, 0 definitions

> @local e, v, v2, w, M, z, rows, a, b, c, d, p, ev, n, ai, inv, zm, zs, N, T, R

### `tst/testinstall/MatrixObj/ElementaryMatrices.tst`  (1.60 person-days)
- source: [tst/testinstall/MatrixObj/ElementaryMatrices.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/ElementaryMatrices.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.ElementaryMatrices`
- 160 code lines, 0 definitions

> #########

### `tst/testinstall/MatrixObj/CopySubMatrix.tst`  (1.20 person-days)
- source: [tst/testinstall/MatrixObj/CopySubMatrix.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/CopySubMatrix.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.CopySubMatrix`
- 113 code lines, 10 definitions

> @local m1, m2, m3, m4, m5, AsDummyMatrix, DummyMatrixAsList

### `tst/testinstall/MatrixObj/acthom.tst`  (1.09 person-days)
- source: [tst/testinstall/MatrixObj/acthom.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/MatrixObj/acthom.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.MatrixObj.Acthom`
- 74 code lines, 1 definitions

> @local right_representation, q, F, d, filt, groups, G, basis, xset, vectors
> @local orbs, len, D1, v, D2, D3, D4, actions, D, hom, i, g, img, pre

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera5yfns5fyhvbfgbf5puvo46zughdbcqommucogk5x4tfmsomek3ma`, then merge with `tools/merge_tasks.py`.
