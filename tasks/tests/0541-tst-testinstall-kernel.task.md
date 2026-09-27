# GAP-0541 — Port tst/testinstall/kernel (tests)

- **Task CID:** `baguqeeramf4m7vqwybx5tymj6nu2hmf53emsoswe6t5ysfn3cjtmvembeh3q`
- **Layer:** `tests`   **Module:** `tst/testinstall/kernel`
- **Size:** 15 file(s), 607 code lines, 38 definitions
- **Estimated effort:** 6.24 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/kernel/integer.tst`  (0.93 person-days)
- source: [tst/testinstall/kernel/integer.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/integer.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Integer`
- 93 code lines, 0 definitions

> Tests for functions defined in src/integer.c

### `tst/testinstall/kernel/exprs.tst`  (0.88 person-days)
- source: [tst/testinstall/kernel/exprs.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/exprs.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Exprs`
- 79 code lines, 9 definitions

> Tests for functions defined in src/exprs.c

### `tst/testinstall/kernel/objects.tst`  (0.71 person-days)
- source: [tst/testinstall/kernel/objects.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/objects.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Objects`
- 69 code lines, 0 definitions

> Tests for functions defined in src/objects.c
> 
> @local x, t1c, t2c, t1p, t2p

### `tst/testinstall/kernel/set.tst`  (0.63 person-days)
- source: [tst/testinstall/kernel/set.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/set.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Set`
- 63 code lines, 7 definitions

> Tests for functions defined in src/set.c

### `tst/testinstall/kernel/records.tst`  (0.61 person-days)
- source: [tst/testinstall/kernel/records.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/records.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Records`
- 59 code lines, 5 definitions

> Tests for functions defined in src/records.c

### `tst/testinstall/kernel/sctable.tst`  (0.43 person-days)
- source: [tst/testinstall/kernel/sctable.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/sctable.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Sctable`
- 43 code lines, 0 definitions

> Tests for functions defined in src/sctable.c

### `tst/testinstall/kernel/stats.tst`  (0.35 person-days)
- source: [tst/testinstall/kernel/stats.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/stats.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Stats`
- 31 code lines, 17 definitions

> Tests for functions defined in src/stats.c

### `tst/testinstall/kernel/plist.tst`  (0.31 person-days)
- source: [tst/testinstall/kernel/plist.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/plist.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Plist`
- 31 code lines, 0 definitions

> Tests for functions defined in src/plist.c

### `tst/testinstall/kernel/macfloat.tst`  (0.28 person-days)
- source: [tst/testinstall/kernel/macfloat.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/macfloat.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Macfloat`
- 28 code lines, 0 definitions

> Tests for functions defined in src/macfloat.c

### `tst/testinstall/kernel/bool.tst`  (0.26 person-days)
- source: [tst/testinstall/kernel/bool.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/bool.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Bool`
- 26 code lines, 0 definitions

> Tests for functions defined in src/bool.c

### `tst/testinstall/kernel/intrprtr.tst`  (0.25 person-days)
- source: [tst/testinstall/kernel/intrprtr.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/intrprtr.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Intrprtr`
- 25 code lines, 0 definitions

> Tests for functions defined in src/intrprtr.c

### `tst/testinstall/kernel/pperm.tst`  (0.19 person-days)
- source: [tst/testinstall/kernel/pperm.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/pperm.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Pperm`
- 19 code lines, 0 definitions

> Tests for functions defined in src/pperm.cc

### `tst/testinstall/kernel/intfuncs.tst`  (0.16 person-days)
- source: [tst/testinstall/kernel/intfuncs.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/intfuncs.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Intfuncs`
- 16 code lines, 0 definitions

> Tests for functions defined in src/intfuncs.c

### `tst/testinstall/kernel/objfgelm.tst`  (0.14 person-days)
- source: [tst/testinstall/kernel/objfgelm.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/objfgelm.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Objfgelm`
- 14 code lines, 0 definitions

> Tests for functions defined in src/objfgelm.c

### `tst/testinstall/kernel/modules.tst`  (0.11 person-days)
- source: [tst/testinstall/kernel/modules.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/modules.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Modules`
- 11 code lines, 0 definitions

> Tests for functions defined in src/modules.c

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeramf4m7vqwybx5tymj6nu2hmf53emsoswe6t5ysfn3cjtmvembeh3q`, then merge with `tools/merge_tasks.py`.
