# GAP-0483 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeerabjvwfbppxh6rfid2g4f6dqotii5ndxazzjflyludvj3np5oxhfyq`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 15 file(s), 790 code lines, 3 definitions
- **Estimated effort:** 8.25 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2024-09-14-actdomain.tst`  (0.84 person-days)
- source: [tst/testbugfix/2024-09-14-actdomain.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2024-09-14-actdomain.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20240914Actdomain`
- 84 code lines, 0 definitions

> Fix #5786 and error reported by Len Soicher in support list

### `tst/testbugfix/2025-04-12-ClusterConjugacy.tst`  (0.81 person-days)
- source: [tst/testbugfix/2025-04-12-ClusterConjugacy.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2025-04-12-ClusterConjugacy.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20250412ClusterConjugacy`
- 81 code lines, 0 definitions

> Fix #5981 ClusterConjugacy

### `tst/testbugfix/2012-04-13-t00244.tst`  (0.78 person-days)
- source: [tst/testbugfix/2012-04-13-t00244.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2012-04-13-t00244.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20120413T00244`
- 78 code lines, 0 definitions

> 2012/04/13 (MN)

### `tst/testbugfix/2026-01-26-IsomorphismPermGroupForMatrixGroup.tst`  (0.75 person-days)
- source: [tst/testbugfix/2026-01-26-IsomorphismPermGroupForMatrixGroup.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2026-01-26-IsomorphismPermGroupForMatrixGroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20260126IsomorphismPermGroupForMatrixGroup`
- 75 code lines, 0 definitions

> Fix bug in IsomorphismPermGroupForMatrixGroup, see #6205
> @local G, iso, H, nice

### `tst/testbugfix/2024-03-16-FpGroups.tst`  (0.59 person-days)
- source: [tst/testbugfix/2024-03-16-FpGroups.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2024-03-16-FpGroups.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20240316FpGroups`
- 59 code lines, 0 definitions

> Issue #6031 - too small max. cosets

### `tst/testbugfix/2017-10-20-runprocess.tst`  (0.58 person-days)
- source: [tst/testbugfix/2017-10-20-runprocess.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2017-10-20-runprocess.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20171020Runprocess`
- 40 code lines, 2 definitions

> This is based on an older fragile test - 2006/01/11 (MC)
> We want to check two cases:
> Firstly we ensure we read a whole line, by using a while loop

### `tst/testbugfix/2005-05-03-t00324.tst`  (0.52 person-days)
- source: [tst/testbugfix/2005-05-03-t00324.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-05-03-t00324.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050503T00324`
- 38 code lines, 0 definitions

> 2005/05/03 (BH)

### `tst/testbugfix/2021-04-08-non-associative-semigroup.tst`  (0.48 person-days)
- source: [tst/testbugfix/2021-04-08-non-associative-semigroup.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2021-04-08-non-associative-semigroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20210408NonAssociativeSemigroup`
- 48 code lines, 0 definitions

> https://github.com/gap-system/gap/issues/4030

### `tst/testbugfix/2021-05-11-LeftModHom.tst`  (0.48 person-days)
- source: [tst/testbugfix/2021-05-11-LeftModHom.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2021-05-11-LeftModHom.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20210511LeftModHom`
- 46 code lines, 0 definitions

> 4481, issue reported by Chris Wensley

### `tst/testbugfix/2024-03-25-compressed-mat-scalar.tst`  (0.46 person-days)
- source: [tst/testbugfix/2024-03-25-compressed-mat-scalar.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2024-03-25-compressed-mat-scalar.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20240325CompressedMatScalar`
- 46 code lines, 0 definitions

> Multiplying a compressed matrix by a scalar could result
> in corrupt data. See <https://github.com/gap-system/gap/issues/5684>

### `tst/testbugfix/2017-09-07-FroidurePinExtendedAlg.tst`  (0.42 person-days)
- source: [tst/testbugfix/2017-09-07-FroidurePinExtendedAlg.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2017-09-07-FroidurePinExtendedAlg.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20170907FroidurePinExtendedAlg`
- 41 code lines, 1 definitions

> Issue related to FroidurePinExtendedAlg
> Examples reported on issue #1674 on github.com/gap-system/gap

### `tst/testbugfix/2020-02-12-Conjtest.tst`  (0.42 person-days)
- source: [tst/testbugfix/2020-02-12-Conjtest.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2020-02-12-Conjtest.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20200212Conjtest`
- 42 code lines, 0 definitions

> Conjugacy test using Solvable radical method.

### `tst/testbugfix/2022-12-24-IsomorphismGroups.tst`  (0.38 person-days)
- source: [tst/testbugfix/2022-12-24-IsomorphismGroups.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2022-12-24-IsomorphismGroups.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20221224IsomorphismGroups`
- 38 code lines, 0 definitions

> Reported by B.Sambale on 12/24/22 and 01/19/23 in the forum

### `tst/testbugfix/2018-05-09-submagma.tst`  (0.37 person-days)
- source: [tst/testbugfix/2018-05-09-submagma.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-05-09-submagma.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20180509Submagma`
- 37 code lines, 0 definitions

> There was a bug where we marked a sub additive magma
> with empty generator list as trivial, even though it is empty.
> 
> There was also a wrong implication, from "IsFiniteOrderElementCollection and
> IsMagma" to IsMagmaWithInverses. But a collection with the former filters may
> be empty, and then it isn't a IsMagmaWithInverses.

### `tst/testbugfix/2019-09-17-Maxsub.tst`  (0.37 person-days)
- source: [tst/testbugfix/2019-09-17-Maxsub.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2019-09-17-Maxsub.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20190917Maxsub`
- 37 code lines, 0 definitions

> Fix a bug in `MaximalSubgroupClassReps`, reported by Andries Brouwer

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerabjvwfbppxh6rfid2g4f6dqotii5ndxazzjflyludvj3np5oxhfyq`, then merge with `tools/merge_tasks.py`.
