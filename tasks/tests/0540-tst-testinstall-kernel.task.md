# GAP-0540 — Port tst/testinstall/kernel (tests)

- **Task CID:** `baguqeeraswhsm66jpww5umwziirpgaplbi52opl4gteosay43ssp6rbavo7a`
- **Layer:** `tests`   **Module:** `tst/testinstall/kernel`
- **Size:** 9 file(s), 1138 code lines, 45 definitions
- **Estimated effort:** 11.86 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/kernel/gap.tst`  (2.14 person-days)
- source: [tst/testinstall/kernel/gap.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/gap.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Gap`
- 209 code lines, 10 definitions

> Tests for functions defined in src/gap.c

### `tst/testinstall/kernel/read.tst`  (2.00 person-days)
- source: [tst/testinstall/kernel/read.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/read.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Read`
- 178 code lines, 19 definitions

> Tests for functions defined in src/read.c

### `tst/testinstall/kernel/range.tst`  (1.23 person-days)
- source: [tst/testinstall/kernel/range.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/range.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Range`
- 123 code lines, 0 definitions

> Tests for functions defined in src/range.c

### `tst/testinstall/kernel/permutat.tst`  (1.17 person-days)
- source: [tst/testinstall/kernel/permutat.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/permutat.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Permutat`
- 110 code lines, 2 definitions

> Tests for functions defined in src/permutat.cc

### `tst/testinstall/kernel/calls.tst`  (1.12 person-days)
- source: [tst/testinstall/kernel/calls.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/calls.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Calls`
- 110 code lines, 8 definitions

> Tests for functions defined in src/calls.c

### `tst/testinstall/kernel/stringobj.tst`  (1.11 person-days)
- source: [tst/testinstall/kernel/stringobj.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/stringobj.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Stringobj`
- 111 code lines, 0 definitions

> Tests for functions defined in src/strinobj.c

### `tst/testinstall/kernel/lists.tst`  (1.08 person-days)
- source: [tst/testinstall/kernel/lists.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/lists.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Lists`
- 102 code lines, 3 definitions

> Tests for functions defined in src/lists.c

### `tst/testinstall/kernel/listfunc.tst`  (1.02 person-days)
- source: [tst/testinstall/kernel/listfunc.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/listfunc.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Listfunc`
- 96 code lines, 3 definitions

> Tests for functions defined in src/listfunc.c

### `tst/testinstall/kernel/vecffe.tst`  (0.99 person-days)
- source: [tst/testinstall/kernel/vecffe.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/vecffe.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Vecffe`
- 99 code lines, 0 definitions

> Tests for functions defined in src/vecffe.c

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraswhsm66jpww5umwziirpgaplbi52opl4gteosay43ssp6rbavo7a`, then merge with `tools/merge_tasks.py`.
