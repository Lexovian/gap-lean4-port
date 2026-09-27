# GAP-0448 — Port tst/test-compile (tests)

- **Task CID:** `baguqeera5fi7f7zgvuu5dlkkguhvzpz3in4sh3x74iily456aonge2i7bjma`
- **Layer:** `tests`   **Module:** `tst/test-compile`
- **Size:** 10 file(s), 50 code lines, 2 definitions
- **Estimated effort:** 0.51 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/test-compile/and_filter.g.out`  (0.09 person-days)
- source: [tst/test-compile/and_filter.g.out](https://github.com/gap-system/gap/blob/master/tst/test-compile/and_filter.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.AndFilterG`
- 9 code lines, 0 definitions

> false
> true
> false
> true
> <Property "IsAssociative">

### `tst/test-compile/run_interpreted.sh`  (0.09 person-days)
- source: [tst/test-compile/run_interpreted.sh](https://github.com/gap-system/gap/blob/master/tst/test-compile/run_interpreted.sh)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.RunInterpreted`
- 9 code lines, 0 definitions

> !/usr/bin/env bash

### `tst/test-compile/print_various.g`  (0.07 person-days)
- source: [tst/test-compile/print_various.g](https://github.com/gap-system/gap/blob/master/tst/test-compile/print_various.g)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.PrintVarious`
- 7 code lines, 1 definitions

> runtest := function()
>     Print(1,"\n");
>     Print("abc","\n");
>     Print((1,2)(5,6),"\n");
>     Print([1,"abc"],"\n");

### `tst/test-compile/README.md`  (0.06 person-days)
- source: [tst/test-compile/README.md](https://github.com/gap-system/gap/blob/master/tst/test-compile/README.md)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.README`
- 6 code lines, 0 definitions

> These tests are designed to check the GAP -> C compiler
> ./run_compiled_dynamic.sh : Run a single test, after compiling it
>    into a dynamic module and loading it
> ./run_interpreted.sh : Run a single test without compiling it
> ./run_all.sh : Run all tests with and without compiling

### `tst/test-compile/info.g.out`  (0.05 person-days)
- source: [tst/test-compile/info.g.out](https://github.com/gap-system/gap/blob/master/tst/test-compile/info.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.InfoG`
- 5 code lines, 0 definitions

> 1
> #I  print this A
> 2
> #I  print this B
> #I  print this C

### `tst/test-compile/print_various.g.out`  (0.05 person-days)
- source: [tst/test-compile/print_various.g.out](https://github.com/gap-system/gap/blob/master/tst/test-compile/print_various.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.PrintVariousG`
- 5 code lines, 0 definitions

> 1
> abc
> (1,2)(5,6)
> [ 1, "abc" ]
> Group( [ (1,2,3) ] )

### `tst/test-compile/plus.g`  (0.04 person-days)
- source: [tst/test-compile/plus.g](https://github.com/gap-system/gap/blob/master/tst/test-compile/plus.g)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.Plus`
- 3 code lines, 1 definitions

> runtest := function()
>     return 1 + 2;
> end;

### `tst/test-compile/assert.g.out`  (0.03 person-days)
- source: [tst/test-compile/assert.g.out](https://github.com/gap-system/gap/blob/master/tst/test-compile/assert.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.AssertG`
- 3 code lines, 0 definitions

> 0
> 2
> Error, Assertion failure: pass!

### `tst/test-compile/.gitignore`  (0.02 person-days)
- source: [tst/test-compile/.gitignore](https://github.com/gap-system/gap/blob/master/tst/test-compile/.gitignore)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.Mod`
- 2 code lines, 0 definitions

> *.bad
> *.tmp

### `tst/test-compile/plus.g.out`  (0.01 person-days)
- source: [tst/test-compile/plus.g.out](https://github.com/gap-system/gap/blob/master/tst/test-compile/plus.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.TestCompile.PlusG`
- 1 code lines, 0 definitions

> 3

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera5fi7f7zgvuu5dlkkguhvzpz3in4sh3x74iily456aonge2i7bjma`, then merge with `tools/merge_tasks.py`.
