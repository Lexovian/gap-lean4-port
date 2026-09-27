# GAP-0561 — Port tst/testspecial (tests)

- **Task CID:** `baguqeeramz2jneac52g2kkdxzkwmqzn5dpkrawtpwbgitxe4wswtbvepjpoa`
- **Layer:** `tests`   **Module:** `tst/testspecial`
- **Size:** 15 file(s), 644 code lines, 36 definitions
- **Estimated effort:** 7.22 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testspecial/stack-trace-depth.g.out`  (1.03 person-days)
- source: [tst/testspecial/stack-trace-depth.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/stack-trace-depth.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.StackTraceDepthG`
- 92 code lines, 0 definitions

> gap> f11 := function()
> >     Error("foo");
> > end;;
> gap> f10 := function()
> >     return f11();

### `tst/testspecial/trace.g`  (0.72 person-days)
- source: [tst/testspecial/trace.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/trace.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.Trace`
- 66 code lines, 15 definitions

> tracing of operations

### `tst/testspecial/up-down-env.g.out`  (0.70 person-days)
- source: [tst/testspecial/up-down-env.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/up-down-env.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.UpDownEnvG`
- 69 code lines, 0 definitions

> gap> #############################################################################
> gap> ##
> gap> ##  Test UpEnv and DownEnv, and what happens when they are asked to go beyond
> gap> ##  the first/last active execution context.
> gap> ##

### `tst/testspecial/debug-var.g`  (0.55 person-days)
- source: [tst/testspecial/debug-var.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/debug-var.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.DebugVar`
- 49 code lines, 7 definitions

> check coding of dvars

### `tst/testspecial/backtrace2.g`  (0.53 person-days)
- source: [tst/testspecial/backtrace2.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/backtrace2.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.Backtrace2`
- 45 code lines, 3 definitions

> ############################################################################
> #
> #
> #  This file tests the combination of Where and DownEnv/UpEnv, and also the
> #  initial backtrace (for which Where is executed in a slightly different
> #  execution context compared to the later Where invocations from the break
> #  prompt)
> #
> #  We test with three slightly different ways to trigger an error, as they
> #  exhibit slight differences in how they interact with the error handling
> #  code.
> #

### `tst/testspecial/print-formatting.g.out`  (0.52 person-days)
- source: [tst/testspecial/print-formatting.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/print-formatting.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.PrintFormattingG`
- 46 code lines, 0 definitions

> gap> # test formatting status for stdout
> gap> old := PrintFormattingStatus("*stdout*");
> true
> gap> SetPrintFormattingStatus("*stdout*", false);
> gap> PrintFormattingStatus("*stdout*");

### `tst/testspecial/stack-trace-depth.g`  (0.49 person-days)
- source: [tst/testspecial/stack-trace-depth.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/stack-trace-depth.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.StackTraceDepth`
- 39 code lines, 11 definitions

> f11 := function()
>     Error("foo");
> end;;
> f10 := function()
>     return f11();

### `tst/testspecial/stack-depth-func2.g.out`  (0.39 person-days)
- source: [tst/testspecial/stack-depth-func2.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/stack-depth-func2.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.StackDepthFunc2G`
- 35 code lines, 0 definitions

> gap> f := function() local x; x := f(); return x; end;
> function(  ) ... end
> gap> y := f();
> Error, recursion depth trap (5000)
> Stack trace:

### `tst/testspecial/stack-depth-func.g.out`  (0.38 person-days)
- source: [tst/testspecial/stack-depth-func.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/stack-depth-func.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.StackDepthFuncG`
- 35 code lines, 0 definitions

> gap> f := function() f(); end;
> function(  ) ... end
> gap> f();
> Error, recursion depth trap (5000)
> Stack trace:

### `tst/testspecial/syntax-err-eof-sentinel.g.out`  (0.37 person-days)
- source: [tst/testspecial/syntax-err-eof-sentinel.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/syntax-err-eof-sentinel.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.SyntaxErrEofSentinelG`
- 36 code lines, 0 definitions

> gap> # Regression test for a 0xFF byte leak in syntax-error context lines.
> gap> #
> gap> # When a syntax error fires after the scanner has advanced past EOF
> gap> # (e.g. parsing "h := ;" via READ_ALL_COMMANDS from a string with no
> gap> # trailing newline), the input-line buffer is replaced with the

### `tst/testspecial/current-env.g.out`  (0.36 person-days)
- source: [tst/testspecial/current-env.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/current-env.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.CurrentEnvG`
- 28 code lines, 0 definitions

> gap> f := function()
> >     local i;
> >     for i in 1 do
> >         return 1;
> >     od;

### `tst/testspecial/bugfix-2019-09-27-LastPV.g.out`  (0.32 person-days)
- source: [tst/testspecial/bugfix-2019-09-27-LastPV.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/bugfix-2019-09-27-LastPV.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.Bugfix20190927LastPVG`
- 32 code lines, 0 definitions

> gap> filt:=NewFilter("BreakPrint");;
> gap> InstallMethod(ViewObj, [filt], SUM_FLAGS, x -> 0/0);;
> gap> badgroup := Group(());
> Group(())
> gap> SetFilterObj(badgroup, filt);

### `tst/testspecial/line-continuation.g.out`  (0.31 person-days)
- source: [tst/testspecial/line-continuation.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/line-continuation.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.LineContinuationG`
- 29 code lines, 0 definitions

> gap> #
> gap> # Verify that a CRLF after a line continuation increments the current line
> gap> # counter only once, so that both examples below report the error in line 2.
> gap> #
> gap> EvalString("123\\\n45x;");

### `tst/testspecial/run_all.sh`  (0.29 person-days)
- source: [tst/testspecial/run_all.sh](https://github.com/gap-system/gap/blob/master/tst/testspecial/run_all.sh)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.RunAll`
- 21 code lines, 0 definitions

> !/usr/bin/env bash

### `tst/testspecial/method-not-found-where.g.out`  (0.26 person-days)
- source: [tst/testspecial/method-not-found-where.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/method-not-found-where.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.MethodNotFoundWhereG`
- 22 code lines, 0 definitions

> gap> # test method-not-found traceback rendering while preserving helper access
> gap> f := a -> IsDiagonalMat(a);;
> gap> f(());
> Error, no method found! For debugging hints type ?Recovery from NoMethodFound
> Error, no 1st choice method found for `IsDiagonalMatrix' on 1 arguments

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeramz2jneac52g2kkdxzkwmqzn5dpkrawtpwbgitxe4wswtbvepjpoa`, then merge with `tools/merge_tasks.py`.
