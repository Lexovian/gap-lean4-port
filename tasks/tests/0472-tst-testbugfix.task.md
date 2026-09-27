# GAP-0472 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeeratmxmxn2hsx3va4fdn426vwgq22xvqpilal2u3xfn5ujngr36up6a`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 15 file(s), 90 code lines, 0 definitions
- **Estimated effort:** 0.90 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2013-08-11-t00302.tst`  (0.06 person-days)
- source: [tst/testbugfix/2013-08-11-t00302.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2013-08-11-t00302.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20130811T00302`
- 6 code lines, 0 definitions

> 2013/08/11 (MH)

### `tst/testbugfix/2013-08-21-t00295.tst`  (0.06 person-days)
- source: [tst/testbugfix/2013-08-21-t00295.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2013-08-21-t00295.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20130821T00295`
- 6 code lines, 0 definitions

> 2013/08/21 (MH)

### `tst/testbugfix/2015-02-01-t00311.tst`  (0.06 person-days)
- source: [tst/testbugfix/2015-02-01-t00311.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2015-02-01-t00311.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20150201T00311`
- 6 code lines, 0 definitions

> 2015/02/01 (MP, reported by WdG and HD )

### `tst/testbugfix/2015-02-02-t00312.tst`  (0.06 person-days)
- source: [tst/testbugfix/2015-02-02-t00312.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2015-02-02-t00312.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20150202T00312`
- 6 code lines, 0 definitions

> 2015/02/02 (AH, reported by Petr Savicky)

### `tst/testbugfix/2016-05-02-t00336.tst`  (0.06 person-days)
- source: [tst/testbugfix/2016-05-02-t00336.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2016-05-02-t00336.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20160502T00336`
- 6 code lines, 0 definitions

> 2016/5/2 (MP)

### `tst/testbugfix/2017-09-06-CodePcGroup.tst`  (0.06 person-days)
- source: [tst/testbugfix/2017-09-06-CodePcGroup.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2017-09-06-CodePcGroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20170906CodePcGroup`
- 6 code lines, 0 definitions

> Issue #1664 on github.com/gap-system/gap

### `tst/testbugfix/2018-01-30-triv-aff-space.tst`  (0.06 person-days)
- source: [tst/testbugfix/2018-01-30-triv-aff-space.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-01-30-triv-aff-space.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20180130TrivAffSpace`
- 6 code lines, 0 definitions

> Verify that enumerating "extended" vectors" over a trivial vector space
> works as intended (this used to fail, because testing whether the empty
> list [] is contained in the vector space V defined below, which is
> collection, by definition always fails in GAP, even though [] is e.g. equal
> to Zero(V). This is a major problem by itself, but difficult to resolve.
> 
> In any case, we sidestep this larger issue, and just worry about the
> particular case of "extended" vectors.

### `tst/testbugfix/2018-03-21-IsFinitelyGeneratedGroup.tst`  (0.06 person-days)
- source: [tst/testbugfix/2018-03-21-IsFinitelyGeneratedGroup.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-03-21-IsFinitelyGeneratedGroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20180321IsFinitelyGeneratedGroup`
- 6 code lines, 0 definitions

> There was an incorrect method for IsFinitelyGeneratedGroup which assumed
> that a group given by an infinite generating set is not finitely generated,
> which is of course false: any finitely generated infinite group is generated
> by its set of elements.
> 
> Test that this is not the case anymore:

### `tst/testbugfix/2018-11-16-ConjugacyClasses.tst`  (0.06 person-days)
- source: [tst/testbugfix/2018-11-16-ConjugacyClasses.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-11-16-ConjugacyClasses.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20181116ConjugacyClasses`
- 6 code lines, 0 definitions

> Reported in github PR 2990
> Needs a GAP compiled with --enable-valgrind, then run as
> valgrind ./gap, to detect the problem which was fixed.

### `tst/testbugfix/2018-12-06-GroupWithGenerators.tst`  (0.06 person-days)
- source: [tst/testbugfix/2018-12-06-GroupWithGenerators.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-12-06-GroupWithGenerators.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20181206GroupWithGenerators`
- 6 code lines, 0 definitions

> These are undocumented, but should still work

### `tst/testbugfix/2019-04-10-SSortedList.tst`  (0.06 person-days)
- source: [tst/testbugfix/2019-04-10-SSortedList.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2019-04-10-SSortedList.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20190410SSortedList`
- 6 code lines, 0 definitions

> Check we can make non-homogeneous lists into SSortedLists.

### `tst/testbugfix/2022-03-29-MagmaWithInversesByGenerators.tst`  (0.06 person-days)
- source: [tst/testbugfix/2022-03-29-MagmaWithInversesByGenerators.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2022-03-29-MagmaWithInversesByGenerators.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20220329MagmaWithInversesByGenerators`
- 6 code lines, 0 definitions

> Fix family for MagmaWithInversesByGenerators with empty generators

### `tst/testbugfix/2022-04-19-conjcl.tst`  (0.06 person-days)
- source: [tst/testbugfix/2022-04-19-conjcl.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2022-04-19-conjcl.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20220419Conjcl`
- 6 code lines, 0 definitions

> ConjugacyClasses, #4866

### `tst/testbugfix/2022-05-10-SubgroupsSolvableGroup.tst`  (0.06 person-days)
- source: [tst/testbugfix/2022-05-10-SubgroupsSolvableGroup.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2022-05-10-SubgroupsSolvableGroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20220510SubgroupsSolvableGroup`
- 6 code lines, 0 definitions

> Verify SubgroupsSolvableGroup honor retnorm=true if the
> input is a trivial group.
> See https://github.com/gap-system/gap/pull/4855

### `tst/testbugfix/2022-09-09-MinimalGeneratingSet.tst`  (0.06 person-days)
- source: [tst/testbugfix/2022-09-09-MinimalGeneratingSet.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2022-09-09-MinimalGeneratingSet.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20220909MinimalGeneratingSet`
- 6 code lines, 0 definitions

> gap> START_TEST("2022-09-09-MinimalGeneratingSet.tst");
> gap> G:=Group((1,2),(2,3),(3,4));;
> gap> H:=Image(IsomorphismFpGroup(G));;
> gap> MinimalGeneratingSet(H);
> [ F1^-1*F2^-1*F3^-1, F1^-1*F2^-1*F3^-1*F2^-1*F1^-1 ]

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeratmxmxn2hsx3va4fdn426vwgq22xvqpilal2u3xfn5ujngr36up6a`, then merge with `tools/merge_tasks.py`.
