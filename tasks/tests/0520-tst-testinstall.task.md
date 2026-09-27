# GAP-0520 — Port tst/testinstall (tests)

- **Task CID:** `baguqeeraalrjfh63cm5t677f5jkfen7mo6rzmyce7jlfg4s7bumg54ktu3bq`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 1 file(s), 5213 code lines, 2 definitions
- **Estimated effort:** 52.26 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/stringobj.tst`  (52.26 person-days)
- source: [tst/testinstall/stringobj.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/stringobj.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Stringobj`
- 5213 code lines, 2 definitions

> ############################################################################
> #
> #  This file tests various aspects of strings in IsStringRep
> #
> @local OldCopyToStringRep,a2000,a3000,at2000,at3000,cp1,cp2,cp3
> @local ret2000,ret3000,s,tmp,tmpdir,fname,dir,filename,sstream,fstream,t,u,i

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraalrjfh63cm5t677f5jkfen7mo6rzmyce7jlfg4s7bumg54ktu3bq`, then merge with `tools/merge_tasks.py`.
