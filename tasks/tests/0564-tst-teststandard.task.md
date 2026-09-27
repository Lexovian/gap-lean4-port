# GAP-0564 — Port tst/teststandard (tests)

- **Task CID:** `baguqeerakn3ha2ln3gx373mfdpepk5rv36utmzkn5gezgt46wgfsxu3kbewq`
- **Layer:** `tests`   **Module:** `tst/teststandard`
- **Size:** 9 file(s), 162 code lines, 5 definitions
- **Estimated effort:** 1.72 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/teststandard/function.tst`  (0.33 person-days)
- source: [tst/teststandard/function.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/function.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Function`
- 23 code lines, 4 definitions

> @local r,x,funcstr,func

### `tst/teststandard/nrclclass.tst`  (0.32 person-days)
- source: [tst/teststandard/nrclclass.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/nrclclass.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Nrclclass`
- 32 code lines, 0 definitions

> gap> START_TEST("nrclclass.tst");
> gap> NrConjugacyClassesGL(24,27);
> 22528399544939174406067288580609952
> gap> NrConjugacyClassesGL(14,27);
> 109418989131110078784

### `tst/teststandard/ctblmono.tst`  (0.26 person-days)
- source: [tst/teststandard/ctblmono.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/ctblmono.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Ctblmono`
- 26 code lines, 0 definitions

> the following test comes from https://github.com/gap-system/gap/issues/4452
> this used to give method not found for non-solvable groups

### `tst/teststandard/arithlst.tst`  (0.21 person-days)
- source: [tst/teststandard/arithlst.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/arithlst.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Arithlst`
- 21 code lines, 0 definitions

> ############################################################################
> #
> #  Exclude from testinstall.g because it runs too long.
> #

### `tst/teststandard/varnames.tst`  (0.20 person-days)
- source: [tst/teststandard/varnames.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/varnames.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Varnames`
- 20 code lines, 1 definitions

> ############################################################################
> #
> #  Exclude from testinstall.g: too sensitive to the context
> #

### `tst/teststandard/algebra.tst`  (0.14 person-days)
- source: [tst/teststandard/algebra.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/algebra.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Algebra`
- 14 code lines, 0 definitions

> @local f, gens, a, q, dec

### `tst/teststandard/ctblmoli.tst`  (0.11 person-days)
- source: [tst/teststandard/ctblmoli.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/ctblmoli.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Ctblmoli`
- 11 code lines, 0 definitions

> the following test comes from https://github.com/gap-system/gap/issues/300
> this used to give a wrong value for ValueMolienSeries(m,0) of 26/27 instead
> of the correct value 1

### `tst/teststandard/ideal.tst`  (0.08 person-days)
- source: [tst/teststandard/ideal.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/ideal.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Ideal`
- 8 code lines, 0 definitions

> @local f, a, gens

### `tst/teststandard/pcgrp.tst`  (0.07 person-days)
- source: [tst/teststandard/pcgrp.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/pcgrp.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Pcgrp`
- 7 code lines, 0 definitions

> big abelian groups

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerakn3ha2ln3gx373mfdpepk5rv36utmzkn5gezgt46wgfsxu3kbewq`, then merge with `tools/merge_tasks.py`.
