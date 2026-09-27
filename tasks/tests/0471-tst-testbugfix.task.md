# GAP-0471 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeeraub6siuarddlxorwzdz3mgkova2lpklbrx2h2ccqi4rcplyflx4ra`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 15 file(s), 119 code lines, 3 definitions
- **Estimated effort:** 1.20 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2013-08-08-t00301.tst`  (0.08 person-days)
- source: [tst/testbugfix/2013-08-08-t00301.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2013-08-08-t00301.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20130808T00301`
- 8 code lines, 0 definitions

> 2013/08/08 (AH)

### `tst/testbugfix/2016-02-03-mapping.tst`  (0.08 person-days)
- source: [tst/testbugfix/2016-02-03-mapping.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2016-02-03-mapping.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20160203Mapping`
- 8 code lines, 0 definitions

> The following test verifies we handle pcgs with large primes in them efficiently.
> See also GitHub pull requests #576 and #578

### `tst/testbugfix/2016-11-08-t00348.tst`  (0.08 person-days)
- source: [tst/testbugfix/2016-11-08-t00348.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2016-11-08-t00348.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20161108T00348`
- 8 code lines, 0 definitions

> 2016/11/08 (MP), #838, output of OrthognalEmbeddings is very long

### `tst/testbugfix/2017-02-18-t00351.tst`  (0.08 person-days)
- source: [tst/testbugfix/2017-02-18-t00351.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2017-02-18-t00351.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20170218T00351`
- 8 code lines, 0 definitions

> 2017-02-18 (MH): Comparing recursive data structures should not
> crash. See issue #1150

### `tst/testbugfix/2017-06-19-repaction.tst`  (0.08 person-days)
- source: [tst/testbugfix/2017-06-19-repaction.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2017-06-19-repaction.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20170619Repaction`
- 8 code lines, 0 definitions

> These functions all worked incorrectly when given symmetric or alternating groups
> which were not defined on a domain of the form [1..n]

### `tst/testbugfix/2017-07-06-DoImmutableMatrix.tst`  (0.08 person-days)
- source: [tst/testbugfix/2017-07-06-DoImmutableMatrix.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2017-07-06-DoImmutableMatrix.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20170706DoImmutableMatrix`
- 8 code lines, 0 definitions

> handling of finite fields of size q <= 256 but not GF(q)

### `tst/testbugfix/2017-07-27.tst`  (0.08 person-days)
- source: [tst/testbugfix/2017-07-27.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2017-07-27.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20170727`
- 8 code lines, 0 definitions

> RepresentativeAction used to produce incorrect answers for both
> symmetric and alternating groups, with both OnTuples and OnSets, by
> producing elements outside the group.
> This bug was originally reported by Mun See Chang.

### `tst/testbugfix/2017-09-13-PrimePGroup.tst`  (0.08 person-days)
- source: [tst/testbugfix/2017-09-13-PrimePGroup.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2017-09-13-PrimePGroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20170913PrimePGroup`
- 8 code lines, 0 definitions

> Issue related to PrimePGroup for filter IsPGroup and HasDirectProductInfo
> Examples reported on issue #1719 on github.com/gap-system/gap

### `tst/testbugfix/2017-10-23-MagmaWith.tst`  (0.08 person-days)
- source: [tst/testbugfix/2017-10-23-MagmaWith.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2017-10-23-MagmaWith.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20171023MagmaWith`
- 8 code lines, 0 definitions

> Issue related to MagmaWith[One|Inverses] with family specified

### `tst/testbugfix/2018-01-29-NUMBER_VEC.tst`  (0.08 person-days)
- source: [tst/testbugfix/2018-01-29-NUMBER_VEC.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-01-29-NUMBER_VEC.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20180129NUMBERVEC`
- 8 code lines, 0 definitions

> Fix NUMBER_GF2VEC crash if input is empty vector
> See https://github.com/gap-system/gap/issues/2121

### `tst/testbugfix/2018-03-27-float-group.tst`  (0.08 person-days)
- source: [tst/testbugfix/2018-03-27-float-group.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-03-27-float-group.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20180327FloatGroup`
- 8 code lines, 0 definitions

> Disallow creating groups with non-associative generators.
> See issue #823

### `tst/testbugfix/2018-06-28-varadic.tst`  (0.08 person-days)
- source: [tst/testbugfix/2018-06-28-varadic.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-06-28-varadic.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20180628Varadic`
- 7 code lines, 1 definitions

> gap> f := atomic function(readwrite a, readwrite b...)
> >     return b;
> > end;;
> gap> f(1);
> [  ]

### `tst/testbugfix/2019-01-18-grplatt.tst`  (0.08 person-days)
- source: [tst/testbugfix/2019-01-18-grplatt.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2019-01-18-grplatt.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20190118Grplatt`
- 8 code lines, 2 definitions

> gap> LatticeSubgroups(Group(()));
> <subgroup lattice of Group(()), 1 class, 1 subgroup>
> gap> IsomorphismFpGroup(SymmetricGroup(1));
> MappingByFunction( Group(()), <fp group on the generators 
> [  ]>, function( x ) ... end, function( x ) ... end )

### `tst/testbugfix/2019-03-08-IsomorphismGroups.tst`  (0.08 person-days)
- source: [tst/testbugfix/2019-03-08-IsomorphismGroups.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2019-03-08-IsomorphismGroups.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20190308IsomorphismGroups`
- 8 code lines, 0 definitions

> see https://github.com/gap-system/gap/pull/3331

### `tst/testbugfix/2019-04-09-Lattice.tst`  (0.08 person-days)
- source: [tst/testbugfix/2019-04-09-Lattice.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2019-04-09-Lattice.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20190409Lattice`
- 8 code lines, 0 definitions

> see https://github.com/gap-system/gap/pull/3397
> and https://github.com/gap-system/gap/issues/3496

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraub6siuarddlxorwzdz3mgkova2lpklbrx2h2ccqi4rcplyflx4ra`, then merge with `tools/merge_tasks.py`.
