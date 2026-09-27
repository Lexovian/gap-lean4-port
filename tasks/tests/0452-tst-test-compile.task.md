# GAP-0452 — Port tst/test-compile (tests)

- **Task CID:** `baguqeerankyxn6jejgaxbxqobsqkdixms5e4dj5ju4az35ysk6evc2mxpajq`
- **Layer:** `tests`   **Module:** `tst/test-compile`
- **Size:** 15 file(s), 645 code lines, 38 definitions
- **Estimated effort:** 7.18 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/test-compile/print_various.g.dynamic.c`  (2.03 person-days)
- source: [tst/test-compile/print_various.g.dynamic.c](https://github.com/gap-system/gap/blob/master/tst/test-compile/print_various.g.dynamic.c)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.PrintVariousGDynamic`
- 184 code lines, 4 definitions

> C file produced by GAC */

### `tst/test-compile/basics.g.out`  (1.42 person-days)
- source: [tst/test-compile/basics.g.out](https://github.com/gap-system/gap/blob/master/tst/test-compile/basics.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.BasicsG`
- 119 code lines, 0 definitions

> 100000
> 100000
> true
> -100000
> -100000

### `tst/test-compile/plus.g.dynamic.c`  (0.85 person-days)
- source: [tst/test-compile/plus.g.dynamic.c](https://github.com/gap-system/gap/blob/master/tst/test-compile/plus.g.dynamic.c)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.PlusGDynamic`
- 78 code lines, 4 definitions

> C file produced by GAC */

### `tst/test-compile/callfunc.g.out`  (0.57 person-days)
- source: [tst/test-compile/callfunc.g.out](https://github.com/gap-system/gap/blob/master/tst/test-compile/callfunc.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.CallfuncG`
- 45 code lines, 0 definitions

> test with a regular function
> p0
> p1
> p7
> f0

### `tst/test-compile/callfunc.g`  (0.54 person-days)
- source: [tst/test-compile/callfunc.g](https://github.com/gap-system/gap/blob/master/tst/test-compile/callfunc.g)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.Callfunc`
- 54 code lines, 17 definitions

> proc calls

### `tst/test-compile/run_all.sh`  (0.36 person-days)
- source: [tst/test-compile/run_all.sh](https://github.com/gap-system/gap/blob/master/tst/test-compile/run_all.sh)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.RunAll`
- 28 code lines, 0 definitions

> !/usr/bin/env bash

### `tst/test-compile/function_types.g`  (0.31 person-days)
- source: [tst/test-compile/function_types.g](https://github.com/gap-system/gap/blob/master/tst/test-compile/function_types.g)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.FunctionTypes`
- 31 code lines, 6 definitions

> weird function argument names...

### `tst/test-compile/ranges.g`  (0.19 person-days)
- source: [tst/test-compile/ranges.g](https://github.com/gap-system/gap/blob/master/tst/test-compile/ranges.g)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.Ranges`
- 19 code lines, 1 definitions

> ensure we don't abort after an error

### `tst/test-compile/assert.g`  (0.17 person-days)
- source: [tst/test-compile/assert.g](https://github.com/gap-system/gap/blob/master/tst/test-compile/assert.g)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.Assert`
- 17 code lines, 2 definitions

> ensure we don't abort after an error

### `tst/test-compile/and_filter.g`  (0.14 person-days)
- source: [tst/test-compile/and_filter.g](https://github.com/gap-system/gap/blob/master/tst/test-compile/and_filter.g)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.AndFilter`
- 12 code lines, 3 definitions

> ensure we don't abort after an error

### `tst/test-compile/ranges.g.out`  (0.14 person-days)
- source: [tst/test-compile/ranges.g.out](https://github.com/gap-system/gap/blob/master/tst/test-compile/ranges.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.RangesG`
- 14 code lines, 0 definitions

> Error, Range: <last> must be a small integer (not a large positive integer)
> Error, Range: <first> must be a small integer (not a large negative integer)
> Error, Range: <last> must be a small integer (not a large positive integer)
> Error, Range: <first> must be a small integer (not a large negative integer)
> Error, Range: <second> must be a small integer (not a large positive integer)

### `tst/test-compile/function_types.g.out`  (0.13 person-days)
- source: [tst/test-compile/function_types.g.out](https://github.com/gap-system/gap/blob/master/tst/test-compile/function_types.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.FunctionTypesG`
- 13 code lines, 0 definitions

> f1:2
> f2:2:3
> f3:[  ]
> f3:[ 2 ]
> f3:[ 2, 3, 4 ]

### `tst/test-compile/run_compiled_dynamic.sh`  (0.12 person-days)
- source: [tst/test-compile/run_compiled_dynamic.sh](https://github.com/gap-system/gap/blob/master/tst/test-compile/run_compiled_dynamic.sh)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.RunCompiledDynamic`
- 12 code lines, 0 definitions

> !/usr/bin/env bash

### `tst/test-compile/regenerate_tests.sh`  (0.11 person-days)
- source: [tst/test-compile/regenerate_tests.sh](https://github.com/gap-system/gap/blob/master/tst/test-compile/regenerate_tests.sh)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.RegenerateTests`
- 9 code lines, 0 definitions

> !/usr/bin/env bash

### `tst/test-compile/info.g`  (0.10 person-days)
- source: [tst/test-compile/info.g](https://github.com/gap-system/gap/blob/master/tst/test-compile/info.g)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.Info`
- 10 code lines, 1 definitions

> runtest := function()
>     Print(InfoLevel(InfoDebug),"\n");
>     Info(InfoDebug, 2, "Do not print");
>     Info(InfoDebug, 1, "print this A");
>     SetInfoLevel(InfoDebug, 2);

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerankyxn6jejgaxbxqobsqkdixms5e4dj5ju4az35ysk6evc2mxpajq`, then merge with `tools/merge_tasks.py`.
