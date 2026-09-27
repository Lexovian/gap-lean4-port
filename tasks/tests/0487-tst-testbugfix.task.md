# GAP-0487 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeeratcti5bkbamjehjz4o5ynhgiwyadn4roeqxdsa4rirc3z6jyxevba`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 15 file(s), 257 code lines, 7 definitions
- **Estimated effort:** 2.75 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2025-10-02-char0-matrixgroups.tst`  (0.21 person-days)
- source: [tst/testbugfix/2025-10-02-char0-matrixgroups.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2025-10-02-char0-matrixgroups.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20251002Char0Matrixgroups`
- 21 code lines, 0 definitions

> \in incorrectly returned 'false' for finite rational matrix groups if the
> matrix being tested was not integral.
> See <https://github.com/gap-system/gap/issues/6133>.

### `tst/testbugfix/2005-05-03-t00069.tst`  (0.20 person-days)
- source: [tst/testbugfix/2005-05-03-t00069.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-05-03-t00069.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050503T00069`
- 20 code lines, 0 definitions

> 2005/05/03 (SK)

### `tst/testbugfix/2018-06-29-CurrLHSGVar.tst`  (0.20 person-days)
- source: [tst/testbugfix/2018-06-29-CurrLHSGVar.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-06-29-CurrLHSGVar.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20180629CurrLHSGVar`
- 16 code lines, 0 definitions

> This always produced a warning"

### `tst/testbugfix/00020.tst`  (0.19 person-days)
- source: [tst/testbugfix/00020.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00020.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00020`
- 17 code lines, 0 definitions

> # Semigroup/Monoid rewriting system bug for fix 4

### `tst/testbugfix/2005-08-23-t00320.tst`  (0.19 person-days)
- source: [tst/testbugfix/2005-08-23-t00320.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-08-23-t00320.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050823T00320`
- 15 code lines, 0 definitions

> 2005/08/23 (TB)

### `tst/testbugfix/2015-02-16-t00313b.tst`  (0.19 person-days)
- source: [tst/testbugfix/2015-02-16-t00313b.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2015-02-16-t00313b.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20150216T00313b`
- 13 code lines, 6 definitions

> 2015/02/16 (CJ, reported by TB)

### `tst/testbugfix/2018-02-28-IsSubsetLocallyFiniteGroup.tst`  (0.19 person-days)
- source: [tst/testbugfix/2018-02-28-IsSubsetLocallyFiniteGroup.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-02-28-IsSubsetLocallyFiniteGroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20180228IsSubsetLocallyFiniteGroup`
- 19 code lines, 0 definitions

> there used to be a bad implication from IsFFECollection and IsMagma to
> IsSubsetLocallyFiniteGroup, which caused all finite fields to be in filter
> IsSubsetLocallyFiniteGroup -- verify this is not the case anymore.

### `tst/testbugfix/2018-08-08-bicosets.tst`  (0.19 person-days)
- source: [tst/testbugfix/2018-08-08-bicosets.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-08-08-bicosets.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20180808Bicosets`
- 18 code lines, 0 definitions

> We used to allow multiplying and inverting right cosets for which this
> was not valid. This test verifies this is not the case anymore.
> See <https://github.com/gap-system/gap/issues/2555>

### `tst/testbugfix/2012-06-15-t00247.tst`  (0.18 person-days)
- source: [tst/testbugfix/2012-06-15-t00247.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-06-15-t00247.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20120615T00247`
- 18 code lines, 0 definitions

> 2012/06/15 (AH)

### `tst/testbugfix/2020-04-22-Polyratgcd.tst`  (0.18 person-days)
- source: [tst/testbugfix/2020-04-22-Polyratgcd.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2020-04-22-Polyratgcd.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20200422Polyratgcd`
- 18 code lines, 0 definitions

> Rational Gcd, Case that uses Chinese Remainder.
> reported by Willed de Graaf

### `tst/testbugfix/2023-06-05-CycloGroup.tst`  (0.18 person-days)
- source: [tst/testbugfix/2023-06-05-CycloGroup.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2023-06-05-CycloGroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20230605CycloGroup`
- 18 code lines, 0 definitions

> Verify that creating a group of cyclotomics is not possible

### `tst/testbugfix/2005-12-22-t00139.tst`  (0.17 person-days)
- source: [tst/testbugfix/2005-12-22-t00139.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-12-22-t00139.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20051222T00139`
- 17 code lines, 0 definitions

> 2005/12/22 (Robert F. Morse)

### `tst/testbugfix/00005.tst`  (0.16 person-days)
- source: [tst/testbugfix/00005.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00005.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00005`
- 16 code lines, 0 definitions

> #  Check the fix in OrbitStabilizerAlgorithm (Error 4) for infinite groups.
> #

### `tst/testbugfix/00030.tst`  (0.16 person-days)
- source: [tst/testbugfix/00030.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00030.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00030`
- 16 code lines, 0 definitions

> # bug 11 for fix 5

### `tst/testbugfix/2006-02-14-t00133.tst`  (0.16 person-days)
- source: [tst/testbugfix/2006-02-14-t00133.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2006-02-14-t00133.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20060214T00133`
- 15 code lines, 1 definitions

> 2006/02/14 (SK)

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeratcti5bkbamjehjz4o5ynhgiwyadn4roeqxdsa4rirc3z6jyxevba`, then merge with `tools/merge_tasks.py`.
