# GAP-0517 — Port tst/testinstall (tests)

- **Task CID:** `baguqeeraxo4yglcxz7hu3h3lzbe7jfahkc7rjzyj7ohq2ewbpcqfrg5a4ffq`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 1 file(s), 763 code lines, 0 definitions
- **Estimated effort:** 7.90 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/rwspcgrp.tst`  (7.90 person-days)
- source: [tst/testinstall/rwspcgrp.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/rwspcgrp.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Rwspcgrp`
- 763 code lines, 0 definitions

> @local a,f,f1,f10,f11,f12,f13,f14,f15,f16,f17,f18,f19,f2,f20,f21,f22,f23,f24
> @local f25,f26,f27,f28,f29,f3,f30,f31,f32,f33,f34,f35,f36,f37,f38,f39,f4,f40
> @local f41,f42,f43,f44,f45,f46,f47,f48,f49,f5,f50,f51,f52,f53,f54,f55,f56
> @local f57,f58,f59,f6,f60,f61,f7,f8,f9,g,grp,l,p,r,rws,w,x,i

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraxo4yglcxz7hu3h3lzbe7jfahkc7rjzyj7ohq2ewbpcqfrg5a4ffq`, then merge with `tools/merge_tasks.py`.
