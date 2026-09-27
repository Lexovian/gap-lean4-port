# GAP-0558 — Port tst/testspecial (tests)

- **Task CID:** `baguqeeraooeix2k2bejwqxffwg3csfwdime2obmxllwdjjcflk3quob4i3lq`
- **Layer:** `tests`   **Module:** `tst/testspecial`
- **Size:** 10 file(s), 13 code lines, 1 definitions
- **Estimated effort:** 0.13 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testspecial/invalidtestfile.tst`  (0.02 person-days)
- source: [tst/testspecial/invalidtestfile.tst](https://github.com/gap-system/gap/blob/master/tst/testspecial/invalidtestfile.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.Invalidtestfile`
- 2 code lines, 0 definitions

> This file contains some valid GAP code which is not
> a valid tst file, to check error reporting.
> 
> It has a ".txt" extension to avoid it being found by
> Any code which looks through testinstall for .g or .tst files

### `tst/testspecial/leading-empty-line.tst`  (0.02 person-days)
- source: [tst/testspecial/leading-empty-line.tst](https://github.com/gap-system/gap/blob/master/tst/testspecial/leading-empty-line.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.LeadingEmptyLine`
- 2 code lines, 0 definitions

> @if true

### `tst/testspecial/print-compiled-func.g`  (0.02 person-days)
- source: [tst/testspecial/print-compiled-func.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/print-compiled-func.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.PrintCompiledFunc`
- 2 code lines, 1 definitions

> Print(INSTALL_METHOD_FLAGS,"\n");
> Display(InstallMethod);

### `tst/testspecial/ShowDeclarationsOfOperation.g`  (0.01 person-days)
- source: [tst/testspecial/ShowDeclarationsOfOperation.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/ShowDeclarationsOfOperation.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.ShowDeclarationsOfOperation`
- 1 code lines, 0 definitions

> ShowDeclarationsOfOperation(Position);

### `tst/testspecial/exit-in-InputTextString.g`  (0.01 person-days)
- source: [tst/testspecial/exit-in-InputTextString.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/exit-in-InputTextString.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.ExitInInputTextString`
- 1 code lines, 0 definitions

> Read(InputTextString("Print(QuitGap(0));"));

### `tst/testspecial/exit-in-InputTextString.g.out`  (0.01 person-days)
- source: [tst/testspecial/exit-in-InputTextString.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/exit-in-InputTextString.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.ExitInInputTextStringG`
- 1 code lines, 0 definitions

> gap> Read(InputTextString("Print(QuitGap(0));"));

### `tst/testspecial/leading-empty-line.g`  (0.01 person-days)
- source: [tst/testspecial/leading-empty-line.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/leading-empty-line.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.LeadingEmptyLine`
- 1 code lines, 0 definitions

> Test("leading-empty-line.tst", rec(width := 800, ignoreComments := false));

### `tst/testspecial/testing-test.g`  (0.01 person-days)
- source: [tst/testspecial/testing-test.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/testing-test.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.TestingTest`
- 1 code lines, 0 definitions

> Test("test-1.tst", rec(width := 800));

### `tst/testspecial/tinytest.tst`  (0.01 person-days)
- source: [tst/testspecial/tinytest.tst](https://github.com/gap-system/gap/blob/master/tst/testspecial/tinytest.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.Tinytest`
- 1 code lines, 0 definitions

> gap> 1;;

### `tst/testspecial/top-level-error.g`  (0.01 person-days)
- source: [tst/testspecial/top-level-error.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/top-level-error.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.TopLevelError`
- 1 code lines, 0 definitions

> Error("foo");

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraooeix2k2bejwqxffwg3csfwdime2obmxllwdjjcflk3quob4i3lq`, then merge with `tools/merge_tasks.py`.
