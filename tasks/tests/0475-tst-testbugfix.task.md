# GAP-0475 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeeranmcxbfoo47xn4wo3w4sf55npi2aa7ddunqtoux3ce7lxbwimuuka`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 15 file(s), 57 code lines, 1 definitions
- **Estimated effort:** 0.60 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2018-07-02-MakeImmutablePRec.tst`  (0.04 person-days)
- source: [tst/testbugfix/2018-07-02-MakeImmutablePRec.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-07-02-MakeImmutablePRec.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20180702MakeImmutablePRec`
- 4 code lines, 0 definitions

> the following used to crash GAP due to infinite recursion

### `tst/testbugfix/2018-08-22-IsConjugatorAutomorphism.tst`  (0.04 person-days)
- source: [tst/testbugfix/2018-08-22-IsConjugatorAutomorphism.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-08-22-IsConjugatorAutomorphism.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20180822IsConjugatorAutomorphism`
- 4 code lines, 0 definitions

> gap> a:=Group((9,11)(10,12)(13,15)(14,16), (1,5,3,7)(2,6,4,8));;
> gap> hom:=GroupHomomorphismByImages(a,a,[a.1,a.2*a.1],[a.1,a.2]);;
> gap> IsConjugatorAutomorphism(hom);
> false

### `tst/testbugfix/2018-12-11-fphomord.tst`  (0.04 person-days)
- source: [tst/testbugfix/2018-12-11-fphomord.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-12-11-fphomord.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20181211Fphomord`
- 4 code lines, 0 definitions

> hom. order of infinite group in special case (fixing #3097)

### `tst/testbugfix/2018-12-17-gquotient.tst`  (0.04 person-days)
- source: [tst/testbugfix/2018-12-17-gquotient.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-12-17-gquotient.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20181217Gquotient`
- 4 code lines, 0 definitions

> reported by Giles Gardam. The code for eliminating element orders can run astray if
> a quotent by a generator power is cyclic, but also has cyclic subgroups of infinite
> index.

### `tst/testbugfix/2018-12-28-IsMonomialMatrix.tst`  (0.04 person-days)
- source: [tst/testbugfix/2018-12-28-IsMonomialMatrix.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-12-28-IsMonomialMatrix.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20181228IsMonomialMatrix`
- 4 code lines, 0 definitions

> gap> Number(SL(2,2), IsMonomialMatrix);
> 2
> gap> Number(SL(2,3), IsMonomialMatrix);
> 4

### `tst/testbugfix/2018-12-30-clashom.tst`  (0.04 person-days)
- source: [tst/testbugfix/2018-12-30-clashom.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-12-30-clashom.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20181230Clashom`
- 4 code lines, 0 definitions

> Bug #3139

### `tst/testbugfix/2020-08-19-Uniz.tst`  (0.04 person-days)
- source: [tst/testbugfix/2020-08-19-Uniz.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2020-08-19-Uniz.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20200819Uniz`
- 4 code lines, 0 definitions

> Units in nonassociative algebra # 4096

### `tst/testbugfix/2021-03-25-InstallMethod.tst`  (0.04 person-days)
- source: [tst/testbugfix/2021-03-25-InstallMethod.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2021-03-25-InstallMethod.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20210325InstallMethod`
- 3 code lines, 1 definitions

> Installing an operation as a method for itself is forbidden (now, at least;
> it used to lead to a segfault if you ever managed to trigger that "method")
> Fixes GitHub issues #1286 and #4340.

### `tst/testbugfix/2021-04-13-TryMaximals.tst`  (0.04 person-days)
- source: [tst/testbugfix/2021-04-13-TryMaximals.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2021-04-13-TryMaximals.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20210413TryMaximals`
- 4 code lines, 0 definitions

> 4395, reported by Andries Brouwer

### `tst/testbugfix/2022-03-20-pcisom.tst`  (0.04 person-days)
- source: [tst/testbugfix/2022-03-20-pcisom.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2022-03-20-pcisom.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20220320Pcisom`
- 4 code lines, 0 definitions

> Pc Isomorphism #4827

### `tst/testbugfix/2022-09-07-Centre.tst`  (0.04 person-days)
- source: [tst/testbugfix/2022-09-07-Centre.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2022-09-07-Centre.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20220907Centre`
- 3 code lines, 0 definitions

> Centre for PcGroups sometimes returned wrong results.
> See https://github.com/gap-system/gap/issues/3940

### `tst/testbugfix/2022-21-10-InfinityLoopFloatMatrices.tst`  (0.04 person-days)
- source: [tst/testbugfix/2022-21-10-InfinityLoopFloatMatrices.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2022-21-10-InfinityLoopFloatMatrices.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20222110InfinityLoopFloatMatrices`
- 3 code lines, 0 definitions

> Make sure that 'characteristic' exists for entries of a matrix
> See https://github.com/gap-system/gap/issues/5134

### `tst/testbugfix/2023-01-24-IsomorphismPermGroup.tst`  (0.04 person-days)
- source: [tst/testbugfix/2023-01-24-IsomorphismPermGroup.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2023-01-24-IsomorphismPermGroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20230124IsomorphismPermGroup`
- 4 code lines, 0 definitions

> see <https://github.com/gap-system/gap/issues/3601>

### `tst/testbugfix/2023-08-25-Agemo.tst`  (0.04 person-days)
- source: [tst/testbugfix/2023-08-25-Agemo.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2023-08-25-Agemo.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20230825Agemo`
- 4 code lines, 0 definitions

> fix Agemo(G,p) for trivial G

### `tst/testbugfix/2023-10-28-GQuotients.tst`  (0.04 person-days)
- source: [tst/testbugfix/2023-10-28-GQuotients.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2023-10-28-GQuotients.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20231028GQuotients`
- 4 code lines, 0 definitions

> Fix unexpected error in GQuotients.
> See https://github.com/gap-system/gap/issues/5525

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeranmcxbfoo47xn4wo3w4sf55npi2aa7ddunqtoux3ce7lxbwimuuka`, then merge with `tools/merge_tasks.py`.
