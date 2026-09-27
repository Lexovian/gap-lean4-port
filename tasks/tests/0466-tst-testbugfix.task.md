# GAP-0466 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeerazd6fsz2kefqx3tmr2j5cbzwb2aas2k763alokxr4rwxjgsqpkmcq`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 15 file(s), 202 code lines, 0 definitions
- **Estimated effort:** 2.06 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2008-08-13-t00200.tst`  (0.14 person-days)
- source: [tst/testbugfix/2008-08-13-t00200.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2008-08-13-t00200.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20080813T00200`
- 14 code lines, 0 definitions

> 2008/08/13 (SL)

### `tst/testbugfix/2013-03-08-t00284.tst`  (0.14 person-days)
- source: [tst/testbugfix/2013-03-08-t00284.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2013-03-08-t00284.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20130308T00284`
- 14 code lines, 0 definitions

> 2013/03/08 (MH)

### `tst/testbugfix/2015-05-12-t00314.tst`  (0.14 person-days)
- source: [tst/testbugfix/2015-05-12-t00314.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2015-05-12-t00314.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20150512T00314`
- 14 code lines, 0 definitions

> 2015/05/12 (WdG, reported by Istvan Szollosi)

### `tst/testbugfix/2016-04-14-t00316.tst`  (0.14 person-days)
- source: [tst/testbugfix/2016-04-14-t00316.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2016-04-14-t00316.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20160414T00316`
- 14 code lines, 0 definitions

> 2016/04/14 (Chris Jefferson)

### `tst/testbugfix/2017-07-09-blowup.tst`  (0.14 person-days)
- source: [tst/testbugfix/2017-07-09-blowup.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2017-07-09-blowup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20170709Blowup`
- 14 code lines, 0 definitions

> Fixes https://github.com/gap-system/gap/issues/826
> Modified BlownUpMat to return fail for invalid input

### `tst/testbugfix/2018-12-11-fphomgenmix.tst`  (0.14 person-days)
- source: [tst/testbugfix/2018-12-11-fphomgenmix.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-12-11-fphomgenmix.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20181211Fphomgenmix`
- 14 code lines, 0 definitions

> test for fpgroup homs on mixed generators (fixing #3100)

### `tst/testbugfix/2020-01-13-OnSets-Mutability.tst`  (0.14 person-days)
- source: [tst/testbugfix/2020-01-13-OnSets-Mutability.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2020-01-13-OnSets-Mutability.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20200113OnSetsMutability`
- 14 code lines, 0 definitions

> OnSets would sometimes return a mutable list when it should have returned an
> immutable one; in HPC-GAP this got worse, as the final object was a mutable
> and *public* list.
> 
> This only happened if the acting element was not internal, i.e., not a
> permutation, partial permutation or transformation.

### `tst/testbugfix/2025-01-16-Comm-for-group-automorphisms.tst`  (0.14 person-days)
- source: [tst/testbugfix/2025-01-16-Comm-for-group-automorphisms.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2025-01-16-Comm-for-group-automorphisms.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20250116CommForGroupAutomorphisms`
- 14 code lines, 0 definitions

> @local F,x1,x2,x3,x4,A,u,v,hom
> The 'IsBijective' and 'Comm's call below used to trigger coset enumeration.
> See issue https://github.com/gap-system/gap/issues/3898 and also
> https://github.com/gap-system/gap/issues/5910

### `tst/testbugfix/2025-02-10-Isomorphism.tst`  (0.14 person-days)
- source: [tst/testbugfix/2025-02-10-Isomorphism.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2025-02-10-Isomorphism.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20250210Isomorphism`
- 14 code lines, 0 definitions

> Fix #5931 Isomorphism test / Characteristic matching

### `tst/testbugfix/2025-09-11-LowerCentralSeriesOfGroup.tst`  (0.14 person-days)
- source: [tst/testbugfix/2025-09-11-LowerCentralSeriesOfGroup.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2025-09-11-LowerCentralSeriesOfGroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20250911LowerCentralSeriesOfGroup`
- 14 code lines, 0 definitions

> @local D,G
> Fix a bug in LowerCentralSeriesOfGroup for trivial groups
> See https://github.com/gap-system/gap/issues/6108

### `tst/testbugfix/2026-03-23-issue-6270.tst`  (0.14 person-days)
- source: [tst/testbugfix/2026-03-23-issue-6270.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2026-03-23-issue-6270.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20260323Issue6270`
- 14 code lines, 0 definitions

> gap> m := NewMatrix( IsPlistMatrixRep, GF(3), 2,
> >                    [ [ 0*Z(3), Z(3) ], [ Z(3)^0, 0*Z(3) ] ] );;
> gap> l := Unpack( m );;
> gap> IsMatrix( m );
> false

### `tst/testbugfix/00036.tst`  (0.13 person-days)
- source: [tst/testbugfix/00036.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/00036.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.00036`
- 13 code lines, 0 definitions

> #  bug 8 for fix 1

### `tst/testbugfix/2005-08-15-t00111.tst`  (0.13 person-days)
- source: [tst/testbugfix/2005-08-15-t00111.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-08-15-t00111.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20050815T00111`
- 13 code lines, 0 definitions

> 2005/08/15 (SK)

### `tst/testbugfix/2005-12-08-t00322.tst`  (0.13 person-days)
- source: [tst/testbugfix/2005-12-08-t00322.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-12-08-t00322.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20051208T00322`
- 9 code lines, 0 definitions

> 2005/12/08 (TB)

### `tst/testbugfix/2005-12-22-t00129.tst`  (0.13 person-days)
- source: [tst/testbugfix/2005-12-22-t00129.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2005-12-22-t00129.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20051222T00129`
- 13 code lines, 0 definitions

> 2005/12/22 (Robert F. Morse)
> 2011/09/13 (Updated by AK as suggested by JM)
> 2013/09/04 (Updated by JM)

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerazd6fsz2kefqx3tmr2j5cbzwb2aas2k763alokxr4rwxjgsqpkmcq`, then merge with `tools/merge_tasks.py`.
