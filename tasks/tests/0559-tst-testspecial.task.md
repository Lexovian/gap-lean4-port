# GAP-0559 — Port tst/testspecial (tests)

- **Task CID:** `baguqeera7srv2ab27vhfqygvn5jtr627dokgrmggfqkchoii4y7mtuo3uceq`
- **Layer:** `tests`   **Module:** `tst/testspecial`
- **Size:** 15 file(s), 181 code lines, 2 definitions
- **Estimated effort:** 2.07 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testspecial/last-access.g.out`  (0.17 person-days)
- source: [tst/testspecial/last-access.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/last-access.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.LastAccessG`
- 16 code lines, 0 definitions

> gap> 1;2;3;[last,last2,last3];
> 1
> 2
> 3
> [ 3, 2, 1 ]

### `tst/testspecial/method-not-found.g.out`  (0.17 person-days)
- source: [tst/testspecial/method-not-found.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/method-not-found.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.MethodNotFoundG`
- 13 code lines, 0 definitions

> gap> # test returning from a 'method not found' error
> gap> f:=a->a+a;; f(());
> Error, no method found! For debugging hints type ?Recovery from NoMethodFound
> Error, no 1st choice method found for `+' on 2 arguments
> Stack trace:

### `tst/testspecial/up-down-env.g`  (0.17 person-days)
- source: [tst/testspecial/up-down-env.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/up-down-env.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.UpDownEnv`
- 17 code lines, 0 definitions

> ############################################################################
> #
> #  Test UpEnv and DownEnv, and what happens when they are asked to go beyond
> #  the first/last active execution context.
> #

### `tst/testspecial/bad-array-undef-0.g.out`  (0.16 person-days)
- source: [tst/testspecial/bad-array-undef-0.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/bad-array-undef-0.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BadArrayUndef0G`
- 14 code lines, 0 definitions

> gap> f := function()
> >     local l;
> >     return l[1];
> > end;
> function(  ) ... end

### `tst/testspecial/current-env.g`  (0.16 person-days)
- source: [tst/testspecial/current-env.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/current-env.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.CurrentEnv`
- 12 code lines, 1 definitions

> f := function()
>     local i;
>     for i in 1 do
>         return 1;
>     od;

### `tst/testspecial/regenerate_tests.sh`  (0.16 person-days)
- source: [tst/testspecial/regenerate_tests.sh](https://github.com/gap-system/gap/blob/master/tst/testspecial/regenerate_tests.sh)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.RegenerateTests`
- 11 code lines, 0 definitions

> !/usr/bin/env bash

### `tst/testspecial/bad-array-int-1.g.out`  (0.15 person-days)
- source: [tst/testspecial/bad-array-int-1.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/bad-array-int-1.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BadArrayInt1G`
- 13 code lines, 0 definitions

> gap> f := function()
> >     return 1[1];
> > end;
> function(  ) ... end
> gap> f();

### `tst/testspecial/stack-trace-label.g.out`  (0.15 person-days)
- source: [tst/testspecial/stack-trace-label.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/stack-trace-label.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.StackTraceLabelG`
- 14 code lines, 0 definitions

> gap> f := function()
> >     Error("foo");
> > end;;
> gap> f();
> Error, foo

### `tst/testspecial/syntax-tree-current-statement.g.out`  (0.15 person-days)
- source: [tst/testspecial/syntax-tree-current-statement.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/syntax-tree-current-statement.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.SyntaxTreeCurrentStatementG`
- 14 code lines, 0 definitions

> gap> func := function ( )
> >     return CURRENT_STATEMENT_LOCATION(GetCurrentLVars());
> > end;
> function(  ) ... end
> gap>

### `tst/testspecial/help.g.out`  (0.12 person-days)
- source: [tst/testspecial/help.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/help.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.HelpG`
- 10 code lines, 0 definitions

> gap> SetUserPreference("Pager", "builtin");
> gap> ?IsNonExistentKeyWord
> Help: no matching entry found
> gap> 
> gap> # trick: in general, we cannot assume the GAP documentation was built

### `tst/testspecial/run_gap.sh`  (0.12 person-days)
- source: [tst/testspecial/run_gap.sh](https://github.com/gap-system/gap/blob/master/tst/testspecial/run_gap.sh)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.RunGap`
- 12 code lines, 0 definitions

> !/usr/bin/env bash

### `tst/testspecial/at-exit.g.out`  (0.11 person-days)
- source: [tst/testspecial/at-exit.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/at-exit.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.AtExitG`
- 11 code lines, 0 definitions

> gap> # Check InstallAtExit is run in reverse order
> gap> InstallAtExit(function() Print("First Call\n"); end);
> gap> 
> gap> # Check InstallAtExit recovers from Errors
> gap> InstallAtExit(function() Print("Step 1\n"); Error("ERROR!"); Print("Step 2\n"); end);

### `tst/testspecial/print-compiled-func.g.out`  (0.10 person-days)
- source: [tst/testspecial/print-compiled-func.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/print-compiled-func.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.PrintCompiledFuncG`
- 10 code lines, 0 definitions

> gap> Print(INSTALL_METHOD_FLAGS,"\n");
> function ( opr, info, rel, flags, baserank, method )
>     <<compiled GAP code>> from GAPROOT/lib/oper1.g:LINE
> end
> gap> Display(InstallMethod);

### `tst/testspecial/broken-test-6.tst`  (0.09 person-days)
- source: [tst/testspecial/broken-test-6.tst](https://github.com/gap-system/gap/blob/master/tst/testspecial/broken-test-6.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BrokenTest6`
- 7 code lines, 1 definitions

> gap> # continuation prompt followed by a tab leads to an error
> gap> f := function()
> >	local a;
> >	if a = 0 then
> >		Error("a is zero");

### `tst/testspecial/error-in-InputTextString.g.out`  (0.09 person-days)
- source: [tst/testspecial/error-in-InputTextString.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/error-in-InputTextString.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.ErrorInInputTextStringG`
- 7 code lines, 0 definitions

> gap> Read(InputTextString("Print(1 + [()]);"));
> Error, no method found! For debugging hints type ?Recovery from NoMethodFound
> Error, no 1st choice method found for `+' on 2 arguments
> called from read-eval loop at stream:1
> you can enter 'quit;' to quit to outer loop

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera7srv2ab27vhfqygvn5jtr627dokgrmggfqkchoii4y7mtuo3uceq`, then merge with `tools/merge_tasks.py`.
