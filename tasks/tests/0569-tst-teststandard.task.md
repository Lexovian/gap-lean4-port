# GAP-0569 — Port tst/teststandard (tests)

- **Task CID:** `baguqeera36fi5cgywan4pnjlhb36gp3opsqqolxy5pftg6e3pnpfynkyalha`
- **Layer:** `tests`   **Module:** `tst/teststandard`
- **Size:** 14 file(s), 1006 code lines, 22 definitions
- **Estimated effort:** 11.71 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/teststandard/stablesort.tst`  (2.10 person-days)
- source: [tst/teststandard/stablesort.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/stablesort.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Stablesort`
- 133 code lines, 14 definitions

> This aims to test the various implementations of StableSort.
> There are a few cases we must cover:
> 
> * We can choose if we pass a comparator
> * We can do Sort or SortParallel
> * We specialise for plain lists
> Most of these checks are generate a whole bunch of random tests
> 
> We check StableSort implements Sort correctly
> and also have a special 'stability' check.

### `tst/teststandard/ctblisoc.tst`  (1.52 person-days)
- source: [tst/teststandard/ctblisoc.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/ctblisoc.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Ctblisoc`
- 141 code lines, 0 definitions

> @local g, t, iso, t3, iso3, orders, n, iso2, filt, outer, c, ord, pi, sort

### `tst/teststandard/direct_factors.tst`  (1.32 person-days)
- source: [tst/teststandard/direct_factors.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/direct_factors.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.DirectFactors`
- 124 code lines, 0 definitions

> @local D, Df, U, V, G, N, n, C, Q, F, x, y

### `tst/teststandard/permgrp.tst`  (1.27 person-days)
- source: [tst/teststandard/permgrp.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/permgrp.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Permgrp`
- 123 code lines, 0 definitions

> ############################################################################
> #
> #  Some tests for permutation groups and friends(takes a few seconds to run)
> #
> @local g, dc, ac, p, s, dc1, u, part, iso,l,it,i,w,d,a,hom,act

### `tst/teststandard/twocohom.tst`  (0.85 person-days)
- source: [tst/teststandard/twocohom.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/twocohom.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Twocohom`
- 85 code lines, 0 definitions

> Extensions nonsolvable

### `tst/teststandard/union.tst`  (0.84 person-days)
- source: [tst/teststandard/union.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/union.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Union`
- 64 code lines, 0 definitions

> gap> START_TEST("union.tst");
> gap> for i in [-4..4] do
> >      for j in [-3,-2,-1,1,2,3] do
> >        for k in [-2..2] do
> >          for a in [-6..6] do

### `tst/teststandard/innerfunc.tst`  (0.71 person-days)
- source: [tst/teststandard/innerfunc.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/innerfunc.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Innerfunc`
- 60 code lines, 8 definitions

> @local len, y, list1, list2, list3, i
> @local captureLocal, deepCaptureLocal, changeCaptureLocal

### `tst/teststandard/ctblfuns.tst`  (0.51 person-days)
- source: [tst/teststandard/ctblfuns.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/ctblfuns.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Ctblfuns`
- 51 code lines, 0 definitions

> @local ordtbl, modtbl, irr, chi, const, ibr, phi

### `tst/teststandard/ctblsymm.tst`  (0.49 person-days)
- source: [tst/teststandard/ctblsymm.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/ctblsymm.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Ctblsymm`
- 45 code lines, 0 definitions

> @local c3, n, wr, irr, betas, i, G, reps, t, G1, t1, charparam1, classparam1
> @local pi, G2, t2, tr

### `tst/teststandard/simplegrpit.tst`  (0.47 person-days)
- source: [tst/teststandard/simplegrpit.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/simplegrpit.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Simplegrpit`
- 43 code lines, 0 definitions

> # The independence test is not really correct because the simple groups
> # iterator is not required to output the finite simple groups in order.

### `tst/teststandard/algext.tst`  (0.43 person-days)
- source: [tst/teststandard/algext.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/algext.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Algext`
- 43 code lines, 0 definitions

> ############################################################################
> #
> #  Test of algebraic extensions.
> #
> @local t, f0, p1, f1, p2, f2, p3, f3, p4, f4, x, l, a, ll, b, pol, K, xinv, c

### `tst/teststandard/hash2.tst`  (0.42 person-days)
- source: [tst/teststandard/hash2.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/hash2.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Hash2`
- 34 code lines, 0 definitions

> ############################################################################
> #
> #  Test orbit algorithms, which use hashing
> #  Exclude from testinstall.g as it takes considerable time.
> #

### `tst/teststandard/stabchain.tst`  (0.40 person-days)
- source: [tst/teststandard/stabchain.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/stabchain.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Stabchain`
- 38 code lines, 0 definitions

> ############################################################################
> #
> #  Test orbit algorithms, which use hashing
> #  Also a few direct tests of SCRSift, since I have been working on it.
> #     SL
> #  Exclude from testinstall.g as it takes considerable time.
> #
> @local G, S, it, it2, a, b, l, m

### `tst/teststandard/arith.tst`  (0.38 person-days)
- source: [tst/teststandard/arith.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/arith.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Arith`
- 22 code lines, 0 definitions

> @local x, D

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera36fi5cgywan4pnjlhb36gp3opsqqolxy5pftg6e3pnpfynkyalha`, then merge with `tools/merge_tasks.py`.
