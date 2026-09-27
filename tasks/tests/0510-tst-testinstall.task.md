# GAP-0510 — Port tst/testinstall (tests)

- **Task CID:** `baguqeerapfydz2lowk4nv36glaapoild6vvgx2s7ptobdag3d6ineqk2cwfq`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 1 file(s), 665 code lines, 5 definitions
- **Estimated effort:** 7.48 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/package.tst`  (7.48 person-days)
- source: [tst/testinstall/package.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/package.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Package`
- 665 code lines, 5 definitions

> @local entry,equ,pair,sml,oldTermEncoding,pkginfo,info,mockpkgpath,old_warning_level,p,n,filename,IsDateFormatValid,loadinfo,eval_loadinfo

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerapfydz2lowk4nv36glaapoild6vvgx2s7ptobdag3d6ineqk2cwfq`, then merge with `tools/merge_tasks.py`.
