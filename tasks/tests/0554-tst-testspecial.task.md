# GAP-0554 — Port tst/testspecial (tests)

- **Task CID:** `baguqeerajjgsxehdydlycfnzg23t2e2fbpggexhzlviurp63c64qyb3m2ahq`
- **Layer:** `tests`   **Module:** `tst/testspecial`
- **Size:** 15 file(s), 92 code lines, 5 definitions
- **Estimated effort:** 1.03 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testspecial/break-loop-loop.g`  (0.08 person-days)
- source: [tst/testspecial/break-loop-loop.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/break-loop-loop.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BreakLoopLoop`
- 6 code lines, 1 definitions

> test iterating over local variables from within a break loop

### `tst/testspecial/funccall-ReadEvalError.g.out`  (0.08 person-days)
- source: [tst/testspecial/funccall-ReadEvalError.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/funccall-ReadEvalError.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.FunccallReadEvalErrorG`
- 8 code lines, 0 definitions

> gap> Read(InputTextString("quit;")); # trigger GAP_THROW in EvalOrExecCall
> gap> 1+1;
> 2
> gap> 
> gap> READ(InputTextString("quit;")); # trigger GAP_THROW in IntrFuncCallEnd

### `tst/testspecial/leading-empty-line.g.out`  (0.08 person-days)
- source: [tst/testspecial/leading-empty-line.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/leading-empty-line.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.LeadingEmptyLineG`
- 8 code lines, 0 definitions

> gap> Test("leading-empty-line.tst", rec(width := 800, ignoreComments := false));
> ########> Diff in leading-empty-line.tst:1
> # Input is:
> # Expected output:
> # But found:

### `tst/testspecial/README.md`  (0.07 person-days)
- source: [tst/testspecial/README.md](https://github.com/gap-system/gap/blob/master/tst/testspecial/README.md)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.README`
- 7 code lines, 0 definitions

> These tests are designed to check GAP's output in the break loop.
> Most of the cleverness is in `./run_gap.sh`, where we make sure we capture
> all of GAP's output, stop GAP attaching to the terminal, and rewrite any
> filenames which occur in output.
> `./run_gap.sh` : This runs GAP, capturing its input/output

### `tst/testspecial/bad-array-int-0.g`  (0.07 person-days)
- source: [tst/testspecial/bad-array-int-0.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/bad-array-int-0.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BadArrayInt0`
- 6 code lines, 1 definitions

> f := function()
>     local l;
>     l := [];
>     return l[0];
> end;

### `tst/testspecial/bad-array-undef-1.g`  (0.07 person-days)
- source: [tst/testspecial/bad-array-undef-1.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/bad-array-undef-1.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BadArrayUndef1`
- 6 code lines, 1 definitions

> f := function()
>     local l,m;
>     l := [];
>     return l[m];
> end;

### `tst/testspecial/good.g.out`  (0.07 person-days)
- source: [tst/testspecial/good.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/good.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.GoodG`
- 7 code lines, 0 definitions

> gap> Print("All is well\n");
> All is well
> gap> # Mess with lvl to check that it doesn't affect the execution context elsewhere.
> gap> lvl := 42;
> 42

### `tst/testspecial/stack-depth-rec.g`  (0.07 person-days)
- source: [tst/testspecial/stack-depth-rec.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/stack-depth-rec.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.StackDepthRec`
- 4 code lines, 0 definitions

> r := rec(); for i in [1..10000] do r := rec(a := r); od;
> Print(r);
> String(r);
> return; # try once more

### `tst/testspecial/syntax-tree-current-statement.g`  (0.07 person-days)
- source: [tst/testspecial/syntax-tree-current-statement.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/syntax-tree-current-statement.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.SyntaxTreeCurrentStatement`
- 6 code lines, 1 definitions

> func := function ( )
>     return CURRENT_STATEMENT_LOCATION(GetCurrentLVars());
> end;
> func( );
> func := SYNTAX_TREE_CODE( SYNTAX_TREE( func ) );

### `tst/testspecial/top-level-error.g.out`  (0.07 person-days)
- source: [tst/testspecial/top-level-error.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/top-level-error.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.TopLevelErrorG`
- 6 code lines, 0 definitions

> gap> Error("foo");
> Error, foo
> not in any function at *stdin*:2
> you can enter 'quit;' to quit to outer loop, or
> you can enter 'return;' to continue

### `tst/testspecial/ShowDeclarationsOfOperation.g.out`  (0.06 person-days)
- source: [tst/testspecial/ShowDeclarationsOfOperation.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/ShowDeclarationsOfOperation.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.ShowDeclarationsOfOperationG`
- 5 code lines, 0 definitions

> gap> ShowDeclarationsOfOperation(Position);
> Available declarations for operation <Operation "Position">:
>   1: GAPROOT/lib/list.gd:LINE with 2 arguments, and filters [ IsList, IsObject ]
>   2: GAPROOT/lib/list.gd:LINE with 3 arguments, and filters [ IsList, IsObject, IsInt ]
> gap> QUIT;

### `tst/testspecial/array_access.g.out`  (0.06 person-days)
- source: [tst/testspecial/array_access.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/array_access.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.ArrayAccessG`
- 6 code lines, 0 definitions

> gap> a := false;;
> gap> a{{1..1}};
> Syntax error: identifier expected
> a{{1..1}};
>    ^

### `tst/testspecial/bad-array-undef-0.g`  (0.06 person-days)
- source: [tst/testspecial/bad-array-undef-0.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/bad-array-undef-0.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BadArrayUndef0`
- 5 code lines, 1 definitions

> f := function()
>     local l;
>     return l[1];
> end;
> f();

### `tst/testspecial/broken-test-5.tst`  (0.06 person-days)
- source: [tst/testspecial/broken-test-5.tst](https://github.com/gap-system/gap/blob/master/tst/testspecial/broken-test-5.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BrokenTest5`
- 6 code lines, 0 definitions

> @if 1 = 1

### `tst/testspecial/broken-test-7.tst`  (0.06 person-days)
- source: [tst/testspecial/broken-test-7.tst](https://github.com/gap-system/gap/blob/master/tst/testspecial/broken-test-7.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BrokenTest7`
- 6 code lines, 0 definitions

> @if 1 = 1

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerajjgsxehdydlycfnzg23t2e2fbpggexhzlviurp63c64qyb3m2ahq`, then merge with `tools/merge_tasks.py`.
