# GAP-0534 — Port tst/testinstall/grp (tests)

- **Task CID:** `baguqeera2szbdmtkad33lelemzg3st5czgvnigune2lw3uzyctfupmxd26uq`
- **Layer:** `tests`   **Module:** `tst/testinstall/grp`
- **Size:** 2 file(s), 822 code lines, 18 definitions
- **Estimated effort:** 9.71 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/grp/basic.tst`  (5.60 person-days)
- source: [tst/testinstall/grp/basic.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/grp/basic.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Grp.Basic`
- 484 code lines, 0 definitions

> @local A,inputs,ints,filt,G,Q,F,gens,n,i

### `tst/testinstall/grp/classic-forms.tst`  (4.11 person-days)
- source: [tst/testinstall/grp/classic-forms.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/grp/classic-forms.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Grp.ClassicForms`
- 338 code lines, 18 definitions

> @local CheckGeneratorsInvertible, CheckGeneratorsSpecial, CheckField
> @local CheckBilinearForm, CheckBilinearFormUpToScalars
> @local CheckQuadraticForm, frob, CheckSesquilinearForm
> @local CheckSize, CheckClasses, CheckMembershipFromForm
> @local CheckMembershipBilinear, CheckMembershipBilinear2
> @local CheckMembershipBilinearUpToScalars
> @local CheckMembershipBilinearUpToScalars2
> @local CheckMembershipSesquilinear
> @local CheckMembershipQuadratic, CheckMembershipQuadratic2
> @local grps1, grps2, grps, d, q, G, m
> 
> Tests invariant forms of classic groups

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera2szbdmtkad33lelemzg3st5czgvnigune2lw3uzyctfupmxd26uq`, then merge with `tools/merge_tasks.py`.
