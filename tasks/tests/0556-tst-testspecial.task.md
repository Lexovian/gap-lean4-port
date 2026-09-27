# GAP-0556 — Port tst/testspecial (tests)

- **Task CID:** `baguqeerawplgja6ytgyvmfpizo4jvixuor47xbmnwuh2s5dyhtjravmuxtlq`
- **Layer:** `tests`   **Module:** `tst/testspecial`
- **Size:** 15 file(s), 66 code lines, 8 definitions
- **Estimated effort:** 0.78 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testspecial/child-process.g.out`  (0.06 person-days)
- source: [tst/testspecial/child-process.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/child-process.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.ChildProcessG`
- 6 code lines, 0 definitions

> gap> d := DirectoryCurrent();;
> gap> f := Filename(DirectoriesSystemPrograms(), "rev");;
> gap> s := InputOutputLocalProcess(d,f,[]);;
> gap> Sleep(1);
> gap> CloseStream(s); Print("\n");

### `tst/testspecial/help.g`  (0.06 person-days)
- source: [tst/testspecial/help.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/help.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.Help`
- 4 code lines, 0 definitions

> trick: in general, we cannot assume the GAP documentation was built
> prior to running this test; but that of GAPDoc definitely is available

### `tst/testspecial/test-1.tst`  (0.06 person-days)
- source: [tst/testspecial/test-1.tst](https://github.com/gap-system/gap/blob/master/tst/testspecial/test-1.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.Test1`
- 5 code lines, 0 definitions

> gap> a:=SymmetricGroup(5);;
> gap> # ... do some tests
> gap> a:=SymmetricGroup(1 0);;
> gap> Length(Elements(a)) = Factorial(10);
> true

### `tst/testspecial/bad-add.g`  (0.05 person-days)
- source: [tst/testspecial/bad-add.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/bad-add.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BadAdd`
- 4 code lines, 1 definitions

> f := function()
>     return 1 + "abc";
> end;
> f();

### `tst/testspecial/bad-array-double-1.g`  (0.05 person-days)
- source: [tst/testspecial/bad-array-double-1.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/bad-array-double-1.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BadArrayDouble1`
- 4 code lines, 1 definitions

> f := function()
>     return "abc"[1,1];
> end;
> f();

### `tst/testspecial/bad-array-int-1.g`  (0.05 person-days)
- source: [tst/testspecial/bad-array-int-1.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/bad-array-int-1.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BadArrayInt1`
- 4 code lines, 1 definitions

> f := function()
>     return 1[1];
> end;
> f();

### `tst/testspecial/bad-array-string.g`  (0.05 person-days)
- source: [tst/testspecial/bad-array-string.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/bad-array-string.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BadArrayString`
- 4 code lines, 1 definitions

> f := function()
>     return 1["abc"];
> end;
> f();

### `tst/testspecial/bad-minus.g`  (0.05 person-days)
- source: [tst/testspecial/bad-minus.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/bad-minus.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BadMinus`
- 4 code lines, 1 definitions

> f := function()
>     return 1 - "abc";
> end;
> f();

### `tst/testspecial/broken-test-1.tst`  (0.05 person-days)
- source: [tst/testspecial/broken-test-1.tst](https://github.com/gap-system/gap/blob/master/tst/testspecial/broken-test-1.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BrokenTest1`
- 5 code lines, 0 definitions

> @if false

### `tst/testspecial/child-process.g`  (0.05 person-days)
- source: [tst/testspecial/child-process.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/child-process.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.ChildProcess`
- 5 code lines, 0 definitions

> d := DirectoryCurrent();;
> f := Filename(DirectoriesSystemPrograms(), "rev");;
> s := InputOutputLocalProcess(d,f,[]);;
> Sleep(1);
> CloseStream(s); Print("\n");

### `tst/testspecial/mem-overflow.g`  (0.05 person-days)
- source: [tst/testspecial/mem-overflow.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/mem-overflow.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.MemOverflow`
- 3 code lines, 0 definitions

> double a list until there is a memory overflow

### `tst/testspecial/method-not-found-where.g`  (0.05 person-days)
- source: [tst/testspecial/method-not-found-where.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/method-not-found-where.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.MethodNotFoundWhere`
- 5 code lines, 0 definitions

> test method-not-found traceback rendering while preserving helper access

### `tst/testspecial/stack-depth-func2.g`  (0.05 person-days)
- source: [tst/testspecial/stack-depth-func2.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/stack-depth-func2.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.StackDepthFunc2`
- 3 code lines, 1 definitions

> f := function() local x; x := f(); return x; end;
> y := f();
> return; # try once more

### `tst/testspecial/stack-trace-label.g`  (0.05 person-days)
- source: [tst/testspecial/stack-trace-label.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/stack-trace-label.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.StackTraceLabel`
- 5 code lines, 1 definitions

> f := function()
>     Error("foo");
> end;;
> f();
> quit;

### `tst/testspecial/syntax-tree-error.g`  (0.05 person-days)
- source: [tst/testspecial/syntax-tree-error.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/syntax-tree-error.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.SyntaxTreeError`
- 5 code lines, 1 definitions

> func := function ( )
>     Error( "oops" );
> end;
> func := SYNTAX_TREE_CODE( SYNTAX_TREE( func ) );
> func( );

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerawplgja6ytgyvmfpizo4jvixuor47xbmnwuh2s5dyhtjravmuxtlq`, then merge with `tools/merge_tasks.py`.
