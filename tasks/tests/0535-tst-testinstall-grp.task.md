# GAP-0535 — Port tst/testinstall/grp (tests)

- **Task CID:** `baguqeeraparlscuwby5erwgid6jps4wrle6pxr3lb32xufnxmji36d4zwcua`
- **Layer:** `tests`   **Module:** `tst/testinstall/grp`
- **Size:** 10 file(s), 882 code lines, 5 definitions
- **Estimated effort:** 9.60 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/grp/classic-G.tst`  (2.48 person-days)
- source: [tst/testinstall/grp/classic-G.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/grp/classic-G.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Grp.ClassicG`
- 231 code lines, 0 definitions

> Tests for the "general" group constructors: GL, GO, GU, GammaL
> 
> @local G, H, d, q, S, grps, gens, w, form, g, fld

### `tst/testinstall/grp/classic-PG.tst`  (1.43 person-days)
- source: [tst/testinstall/grp/classic-PG.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/grp/classic-PG.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Grp.ClassicPG`
- 116 code lines, 0 definitions

> Tests for the "projective general" group constructors:
> PGL, PGO, POmega, PGU, PGammaL

### `tst/testinstall/grp/classic-S.tst`  (1.33 person-days)
- source: [tst/testinstall/grp/classic-S.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/grp/classic-S.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Grp.ClassicS`
- 127 code lines, 0 definitions

> Tests for the "special" group constructors: SL, SO, SU, Sp, SigmaL

### `tst/testinstall/grp/glzmodmz.tst`  (1.22 person-days)
- source: [tst/testinstall/grp/glzmodmz.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/grp/glzmodmz.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Grp.Glzmodmz`
- 110 code lines, 5 definitions

> test over non-prime-power rings

### `tst/testinstall/grp/perf.tst`  (1.01 person-days)
- source: [tst/testinstall/grp/perf.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/grp/perf.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Grp.Perf`
- 101 code lines, 0 definitions

> I Perfect group 1:  trivial group

### `tst/testinstall/grp/classic-PS.tst`  (0.80 person-days)
- source: [tst/testinstall/grp/classic-PS.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/grp/classic-PS.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Grp.ClassicPS`
- 72 code lines, 0 definitions

> Tests for the "projective special" group constructors:
> PSL, PSO, PSU, PSp, PSigmaL

### `tst/testinstall/grp/imf.tst`  (0.51 person-days)
- source: [tst/testinstall/grp/imf.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/grp/imf.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Grp.Imf`
- 51 code lines, 0 definitions

> I Z-class 3.1.1:  Solvable, size = 2^4*3
> I   isomorphism type = C2 wr S3 = C2 x S4 = W(B3)
> I   elementary divisors = 1^3
> I   orbit size = 6, minimal norm = 1

### `tst/testinstall/grp/ree.tst`  (0.29 person-days)
- source: [tst/testinstall/grp/ree.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/grp/ree.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Grp.Ree`
- 27 code lines, 0 definitions

> gap> START_TEST("ree.tst");
> #
> gap> G:=ReeGroup(3);
> Ree(3)
> gap> IsMatrixGroup(G);

### `tst/testinstall/grp/suzuki.tst`  (0.29 person-days)
- source: [tst/testinstall/grp/suzuki.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/grp/suzuki.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Grp.Suzuki`
- 27 code lines, 0 definitions

> gap> START_TEST("suzuki.tst");
> #
> gap> G:=SuzukiGroup(2);
> Sz(2)
> gap> IsMatrixGroup(G);

### `tst/testinstall/grp/clasmax.tst`  (0.24 person-days)
- source: [tst/testinstall/grp/clasmax.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/grp/clasmax.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Grp.Clasmax`
- 20 code lines, 0 definitions

> #
> gap> List(ClassicalMaximals("L",3,2), Size);
> [ 24, 24, 21 ]
> gap> List(ClassicalMaximals("L",3,3), Size);
> [ 432, 432, 39, 24 ]

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraparlscuwby5erwgid6jps4wrle6pxr3lb32xufnxmji36d4zwcua`, then merge with `tools/merge_tasks.py`.
