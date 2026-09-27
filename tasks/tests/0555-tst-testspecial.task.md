# GAP-0555 — Port tst/testspecial (tests)

- **Task CID:** `baguqeeratycygck5wmypjbu27aafcxz5oapmtgttad7g72mqwds7avuhdpnq`
- **Layer:** `tests`   **Module:** `tst/testspecial`
- **Size:** 15 file(s), 45 code lines, 4 definitions
- **Estimated effort:** 0.47 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testspecial/broken-test-8.tst`  (0.04 person-days)
- source: [tst/testspecial/broken-test-8.tst](https://github.com/gap-system/gap/blob/master/tst/testspecial/broken-test-8.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BrokenTest8`
- 4 code lines, 0 definitions

> @elif 1 = 1

### `tst/testspecial/broken-test-9.tst`  (0.04 person-days)
- source: [tst/testspecial/broken-test-9.tst](https://github.com/gap-system/gap/blob/master/tst/testspecial/broken-test-9.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BrokenTest9`
- 4 code lines, 0 definitions

> @if 1 = 1

### `tst/testspecial/funccall-ReadEvalError.g`  (0.04 person-days)
- source: [tst/testspecial/funccall-ReadEvalError.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/funccall-ReadEvalError.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.FunccallReadEvalError`
- 4 code lines, 0 definitions

> Read(InputTextString("quit;")); # trigger GAP_THROW in EvalOrExecCall
> 1+1;
> READ(InputTextString("quit;")); # trigger GAP_THROW in IntrFuncCallEnd
> 1+1;

### `tst/testspecial/line-continuation.g`  (0.04 person-days)
- source: [tst/testspecial/line-continuation.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/line-continuation.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.LineContinuation`
- 4 code lines, 0 definitions

> Verify that a CRLF after a line continuation increments the current line
> counter only once, so that both examples below report the error in line 2.

### `tst/testspecial/stack-depth-func.g`  (0.04 person-days)
- source: [tst/testspecial/stack-depth-func.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/stack-depth-func.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.StackDepthFunc`
- 3 code lines, 1 definitions

> f := function() f(); end;
> f();
> return; # try once more

### `tst/testspecial/at-exit.g`  (0.03 person-days)
- source: [tst/testspecial/at-exit.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/at-exit.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.AtExit`
- 3 code lines, 3 definitions

> Check InstallAtExit is run in reverse order

### `tst/testspecial/broken-test-2.tst`  (0.03 person-days)
- source: [tst/testspecial/broken-test-2.tst](https://github.com/gap-system/gap/blob/master/tst/testspecial/broken-test-2.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BrokenTest2`
- 3 code lines, 0 definitions

> @if 2 = 1

### `tst/testspecial/broken-test-3.tst`  (0.03 person-days)
- source: [tst/testspecial/broken-test-3.tst](https://github.com/gap-system/gap/blob/master/tst/testspecial/broken-test-3.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BrokenTest3`
- 3 code lines, 0 definitions

> @if 2 = 1

### `tst/testspecial/good.g`  (0.03 person-days)
- source: [tst/testspecial/good.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/good.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.Good`
- 3 code lines, 0 definitions

> Mess with lvl to check that it doesn't affect the execution context elsewhere.

### `tst/testspecial/last-access.g`  (0.03 person-days)
- source: [tst/testspecial/last-access.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/last-access.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.LastAccess`
- 3 code lines, 0 definitions

> 1;2;3;[last,last2,last3];
> Error("err");
> 1;2;3;[last,last2,last3];

### `tst/testspecial/method-not-found.g`  (0.03 person-days)
- source: [tst/testspecial/method-not-found.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/method-not-found.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.MethodNotFound`
- 2 code lines, 0 definitions

> test returning from a 'method not found' error

### `tst/testspecial/repl-syntax-err.g`  (0.03 person-days)
- source: [tst/testspecial/repl-syntax-err.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/repl-syntax-err.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.ReplSyntaxErr`
- 3 code lines, 0 definitions

> see <https://github.com/gap-system/gap/issues/4188>
> we need a line with a statement that gets executed by the immediate
> interpreter before running into a syntax error (here: a colon instead
> of a semicolon); this leads to a break loop which we quit; the syntax
> error then is displayed. The next line then contains another syntax
> error, which wasn't reported correctly before the above issues was
> fixed.

### `tst/testspecial/array_access.g`  (0.02 person-days)
- source: [tst/testspecial/array_access.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/array_access.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.ArrayAccess`
- 2 code lines, 0 definitions

> a := false;;
> a{{1..1}};

### `tst/testspecial/broken-test-4.tst`  (0.02 person-days)
- source: [tst/testspecial/broken-test-4.tst](https://github.com/gap-system/gap/blob/master/tst/testspecial/broken-test-4.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BrokenTest4`
- 2 code lines, 0 definitions

> @if 1 = 1
> @if 2 = 2

### `tst/testspecial/error-in-InputTextString.g`  (0.02 person-days)
- source: [tst/testspecial/error-in-InputTextString.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/error-in-InputTextString.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.ErrorInInputTextString`
- 2 code lines, 0 definitions

> Read(InputTextString("Print(1 + [()]);"));
> quit;

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeratycygck5wmypjbu27aafcxz5oapmtgttad7g72mqwds7avuhdpnq`, then merge with `tools/merge_tasks.py`.
