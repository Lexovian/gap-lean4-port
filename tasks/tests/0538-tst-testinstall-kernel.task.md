# GAP-0538 — Port tst/testinstall/kernel (tests)

- **Task CID:** `baguqeerai2gktec72ubnyur42lfupkohfvcku7zm7lagukle2nnenzr3tmua`
- **Layer:** `tests`   **Module:** `tst/testinstall/kernel`
- **Size:** 4 file(s), 1125 code lines, 24 definitions
- **Estimated effort:** 11.70 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/kernel/ariths.tst`  (3.31 person-days)
- source: [tst/testinstall/kernel/ariths.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/ariths.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Ariths`
- 303 code lines, 12 definitions

> Tests for functions defined in src/ariths.c

### `tst/testinstall/kernel/blister.tst`  (3.22 person-days)
- source: [tst/testinstall/kernel/blister.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/blister.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Blister`
- 310 code lines, 0 definitions

> Tests for functions defined in src/blister.c

### `tst/testinstall/kernel/opers.tst`  (2.71 person-days)
- source: [tst/testinstall/kernel/opers.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/opers.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Opers`
- 266 code lines, 8 definitions

> Tests for functions defined in src/opers.c

### `tst/testinstall/kernel/streams.tst`  (2.46 person-days)
- source: [tst/testinstall/kernel/streams.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/streams.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Streams`
- 246 code lines, 4 definitions

> Tests for functions defined in src/streams.c

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerai2gktec72ubnyur42lfupkohfvcku7zm7lagukle2nnenzr3tmua`, then merge with `tools/merge_tasks.py`.
