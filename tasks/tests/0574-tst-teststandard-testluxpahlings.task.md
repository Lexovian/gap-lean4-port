# GAP-0574 — Port tst/teststandard/testLuxPahlings (tests)

- **Task CID:** `baguqeeradu5upfbetiasktdpxeppvwi7tso6ccwd6in5j7lkjoacia2346la`
- **Layer:** `tests`   **Module:** `tst/teststandard/testLuxPahlings`
- **Size:** 15 file(s), 891 code lines, 14 definitions
- **Estimated effort:** 10.40 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/teststandard/testLuxPahlings/example_4.5.5.tst`  (1.49 person-days)
- source: [tst/teststandard/testLuxPahlings/example_4.5.5.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/testLuxPahlings/example_4.5.5.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.TestLuxPahlings.Example455`
- 137 code lines, 2 definitions

> @local cond, subs, ct, irrB, ctm23, proj, max, ctu, d, pimsmax
> @local projectives, smallpro, basm, sb, 7sets, basicsets, A, c2, c3, V
> @local comps, ibr, V100, compsV100, ct1, psi, psiG, Psis, W, compsW, cand
> @local x, a, t, preg, perm, permbrau, f, odds, thetas, s, G, trans, g, H
> @local mats, m
> #####################################################################

### `tst/teststandard/testLuxPahlings/example_4.5.4.tst`  (1.24 person-days)
- source: [tst/teststandard/testLuxPahlings/example_4.5.4.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/testLuxPahlings/example_4.5.4.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.TestLuxPahlings.Example454`
- 98 code lines, 2 definitions

> @local isinspan, subs, ct, bl, irrB, basm, rest, sb, def0, proj
> @local max, ctu, d, pimsmax, tens, otherblocks, projectives, smallpro
> @local 5sets, basicsets, A, li, sp, A1, ss, c1, cand, x1, a, x2, y2
> @local x3, y3, x4, y4, x5, u, u1, m, mat

### `tst/teststandard/testLuxPahlings/example_2.7.11.tst`  (1.07 person-days)
- source: [tst/teststandard/testLuxPahlings/example_2.7.11.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/testLuxPahlings/example_2.7.11.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.TestLuxPahlings.Example2711`
- 105 code lines, 0 definitions

> @local t, irr, r, red, y, ll, gram, d, x, dn
> #####################################################################
> This file contains the code of the examples 2.7.11, 2.8.2, 2.8.12
> in the book.
> #####################################################################

### `tst/teststandard/testLuxPahlings/example_4.12.10.tst`  (0.99 person-days)
- source: [tst/teststandard/testLuxPahlings/example_4.12.10.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/testLuxPahlings/example_4.12.10.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.TestLuxPahlings.Example41210`
- 81 code lines, 2 definitions

> @local syl, degblock, s, m, degs, d, dd, t, ind, ll, red, ct, perm
> @local b19, gg, t11, pf, ind1, ind2
> #####################################################################

### `tst/teststandard/testLuxPahlings/example_2.4.5.tst`  (0.85 person-days)
- source: [tst/teststandard/testLuxPahlings/example_2.4.5.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/testLuxPahlings/example_2.4.5.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.TestLuxPahlings.Example245`
- 57 code lines, 2 definitions

> @local G, g, cl, M2, j, w, k, p, F, e, ev, evecs, dom, sp, c, v, scp
> @local d, i, a, b, d1, d2, epsq, phi, x, m
> #####################################################################

### `tst/teststandard/testLuxPahlings/example_4.14.30.tst`  (0.65 person-days)
- source: [tst/teststandard/testLuxPahlings/example_4.14.30.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/testLuxPahlings/example_4.14.30.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.TestLuxPahlings.Example41430`
- 59 code lines, 2 definitions

> @local hat, ct, b1, hchi, res, ct1, hxi, resn, T, J, eps, mu, domain
> @local ctpord, ct1pord, nz
> #####################################################################

### `tst/teststandard/testLuxPahlings/example_1.1.49.tst`  (0.63 person-days)
- source: [tst/teststandard/testLuxPahlings/example_1.1.49.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/testLuxPahlings/example_1.1.49.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.TestLuxPahlings.Example1149`
- 54 code lines, 0 definitions

> @local G, K, KG, o, a, b, V, B, g, dg, c, d, B1, B2, adbas, x, BB
> @local m1, m2
> #####################################################################

### `tst/teststandard/testLuxPahlings/example_1.3.12.tst`  (0.60 person-days)
- source: [tst/teststandard/testLuxPahlings/example_1.3.12.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/testLuxPahlings/example_1.3.12.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.TestLuxPahlings.Example1312`
- 52 code lines, 0 definitions

> @local G, module, bsm, sm, mat, i, j, cf, W, wd, w, Gmat, orbit
> @local Gper, U, nsU
> #####################################################################

### `tst/teststandard/testLuxPahlings/example_3.2.25.tst`  (0.58 person-days)
- source: [tst/teststandard/testLuxPahlings/example_3.2.25.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/testLuxPahlings/example_3.2.25.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.TestLuxPahlings.Example3225`
- 42 code lines, 0 definitions

> @local t, irr, ind, red, l, r, i, M, oe, C, Xli, irrli, j
> #####################################################################

### `tst/teststandard/testLuxPahlings/example_4.7.8.tst`  (0.54 person-days)
- source: [tst/teststandard/testLuxPahlings/example_4.7.8.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/testLuxPahlings/example_4.7.8.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.TestLuxPahlings.Example478`
- 38 code lines, 2 definitions

> @local testmodpi, t, ct, p, omegaBs, pb, inducedblocks, i, h, cth
> @local blh, k, y, z
> #####################################################################

### `tst/teststandard/testLuxPahlings/example_1.6.14.tst`  (0.41 person-days)
- source: [tst/teststandard/testLuxPahlings/example_1.6.14.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/testLuxPahlings/example_1.6.14.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.TestLuxPahlings.Example1614`
- 40 code lines, 1 definitions

> @local cond, G, g1, g2, H, orb, hom, mats, M, compfactors
> #####################################################################

### `tst/teststandard/testLuxPahlings/example_2.8.16.tst`  (0.36 person-days)
- source: [tst/teststandard/testLuxPahlings/example_2.8.16.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/testLuxPahlings/example_2.8.16.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.TestLuxPahlings.Example2816`
- 36 code lines, 0 definitions

> @local t, irr, r, l, red, M, oe, x_1, ch
> #####################################################################

### `tst/teststandard/testLuxPahlings/example_1.2.26.tst`  (0.35 person-days)
- source: [tst/teststandard/testLuxPahlings/example_1.2.26.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/testLuxPahlings/example_1.2.26.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.TestLuxPahlings.Example1226`
- 29 code lines, 0 definitions

> @local G, orb, a, x, y, i, j, k
> #####################################################################

### `tst/teststandard/testLuxPahlings/example_2.7.2.tst`  (0.34 person-days)
- source: [tst/teststandard/testLuxPahlings/example_2.7.2.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/testLuxPahlings/example_2.7.2.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.TestLuxPahlings.Example272`
- 34 code lines, 0 definitions

> @local t, prod, irr, red
> #####################################################################

### `tst/teststandard/testLuxPahlings/example_4.4.18.tst`  (0.30 person-days)
- source: [tst/teststandard/testLuxPahlings/example_4.4.18.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/testLuxPahlings/example_4.4.18.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.TestLuxPahlings.Example4418`
- 29 code lines, 1 definitions

> @localm11, orb, g, V, comps, 3regclassreps, brauchars, V26, comps26
> @local brauchars26
> #####################################################################

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeradu5upfbetiasktdpxeppvwi7tso6ccwd6in5j7lkjoacia2346la`, then merge with `tools/merge_tasks.py`.
