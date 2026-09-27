# GAP-0523 — Port tst/testinstall (tests)

- **Task CID:** `baguqeerasl3adzmcxvwvdl3scdtpt3gddn35xoaaakt6bpancwjriy4itora`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 15 file(s), 856 code lines, 13 definitions
- **Estimated effort:** 9.47 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/type.tst`  (0.71 person-days)
- source: [tst/testinstall/type.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/type.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Type`
- 70 code lines, 0 definitions

> @local test,filters

### `tst/testinstall/zmodnze.tst`  (0.71 person-days)
- source: [tst/testinstall/zmodnze.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/zmodnze.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Zmodnze`
- 71 code lines, 0 definitions

> @local R,a,b,c,d

### `tst/testinstall/associate.tst`  (0.68 person-days)
- source: [tst/testinstall/associate.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/associate.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Associate`
- 47 code lines, 1 definitions

> @local checkStandardAssociate, A, x, R

### `tst/testinstall/error.tst`  (0.68 person-days)
- source: [tst/testinstall/error.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/error.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Error`
- 41 code lines, 5 definitions

> #
> gap> function() 123; end;
> Syntax error: while parsing a function: statement or 'end' expected in stream:\
> 1
> function() 123; end;

### `tst/testinstall/oprt.tst`  (0.68 person-days)
- source: [tst/testinstall/oprt.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/oprt.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Oprt`
- 68 code lines, 0 definitions

> @local G,c5,d,eo,es,ess,gens,res

### `tst/testinstall/straight.tst`  (0.68 person-days)
- source: [tst/testinstall/straight.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/straight.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Straight`
- 68 code lines, 0 definitions

> #  IntegratedStraightLineProgram:
> #  'prg0' returns an empty list,
> #  'prg1' is overwriting and returns an element,
> #  'prg2' is non-overwriting and returns an element,
> #  'prg3' is overwriting and returns a nonempty list of elements.
> #  Test all combinations of these programs.
> #

### `tst/testinstall/action.tst`  (0.64 person-days)
- source: [tst/testinstall/action.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/action.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Action`
- 56 code lines, 0 definitions

> The following session documents what happens currently
> if one specifies "group actions" that are in fact not actions.
> (When some of these tests fail then parts of the documentation
> may have to be changed.)

### `tst/testinstall/restrictedperm.tst`  (0.64 person-days)
- source: [tst/testinstall/restrictedperm.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/restrictedperm.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Restrictedperm`
- 64 code lines, 0 definitions

> RestrictedPerm misbehaved when given non-integer values

### `tst/testinstall/gprdmat.tst`  (0.61 person-days)
- source: [tst/testinstall/gprdmat.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/gprdmat.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Gprdmat`
- 61 code lines, 0 definitions

> MatDirectProduct

### `tst/testinstall/rationals.tst`  (0.61 person-days)
- source: [tst/testinstall/rationals.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/rationals.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Rationals`
- 60 code lines, 0 definitions

> 'Rat' -- converting things to a rational

### `tst/testinstall/switch.tst`  (0.61 person-days)
- source: [tst/testinstall/switch.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/switch.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Switch`
- 59 code lines, 0 definitions

> @local x,x2,y,y2
> # Test SWITCH_OBJ and FORCE_SWITCH_OBJ

### `tst/testinstall/morpheus.tst`  (0.59 person-days)
- source: [tst/testinstall/morpheus.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/morpheus.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Morpheus`
- 57 code lines, 0 definitions

> ############################################################################
> #
> #  This  file  tests the automorphism routines
> #
> @local a,autd8,d8,g,inn,inn2,iso1,iso2,iso3,iso4,p,r,s4

### `tst/testinstall/help.tst`  (0.57 person-days)
- source: [tst/testinstall/help.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/help.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Help`
- 32 code lines, 3 definitions

> Test help

### `tst/testinstall/bound.tst`  (0.53 person-days)
- source: [tst/testinstall/bound.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/bound.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Bound`
- 49 code lines, 4 definitions

> @local S,f,r

### `tst/testinstall/primality.tst`  (0.53 person-days)
- source: [tst/testinstall/primality.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/primality.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Primality`
- 53 code lines, 0 definitions

> @local p, proof

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerasl3adzmcxvwvdl3scdtpt3gddn35xoaaakt6bpancwjriy4itora`, then merge with `tools/merge_tasks.py`.
