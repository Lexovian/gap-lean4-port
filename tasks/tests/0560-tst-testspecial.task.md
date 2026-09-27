# GAP-0560 — Port tst/testspecial (tests)

- **Task CID:** `baguqeera5txdgezin27z6j477shqmleqrp3wm6g7pagtlawy4pz5cogtwfwa`
- **Layer:** `tests`   **Module:** `tst/testspecial`
- **Size:** 15 file(s), 259 code lines, 1 definitions
- **Estimated effort:** 2.90 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testspecial/repl-syntax-err.g.out`  (0.24 person-days)
- source: [tst/testspecial/repl-syntax-err.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/repl-syntax-err.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.ReplSyntaxErrG`
- 21 code lines, 0 definitions

> gap> # see <https://github.com/gap-system/gap/issues/4188>
> gap> # we need a line with a statement that gets executed by the immediate
> gap> # interpreter before running into a syntax error (here: a colon instead
> gap> # of a semicolon); this leads to a break loop which we quit; the syntax
> gap> # error then is displayed. The next line then contains another syntax

### `tst/testspecial/break-loop-loop.g.out`  (0.22 person-days)
- source: [tst/testspecial/break-loop-loop.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/break-loop-loop.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BreakLoopLoopG`
- 19 code lines, 0 definitions

> gap> # test iterating over local variables from within a break loop
> gap> f:=function(x) local y; y:=42; Error("bar"); end;;
> gap> i:=0;
> 0
> gap> f(1);

### `tst/testspecial/bad-minus.g.out`  (0.21 person-days)
- source: [tst/testspecial/bad-minus.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/bad-minus.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BadMinusG`
- 18 code lines, 0 definitions

> gap> f := function()
> >     return 1 - "abc";
> > end;
> function(  ) ... end
> gap> f();

### `tst/testspecial/bad-array-int-0.g.out`  (0.20 person-days)
- source: [tst/testspecial/bad-array-int-0.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/bad-array-int-0.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BadArrayInt0G`
- 16 code lines, 0 definitions

> gap> f := function()
> >     local l;
> >     l := [];
> >     return l[0];
> > end;

### `tst/testspecial/broken-test.g`  (0.20 person-days)
- source: [tst/testspecial/broken-test.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/broken-test.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BrokenTest`
- 20 code lines, 0 definitions

> Test("broken-test-2.tst", rec(width := 800));
> quit;
> Test("broken-test-3.tst", rec(width := 800));
> quit;
> Test("broken-test-4.tst", rec(width := 800));

### `tst/testspecial/mem-overflow.g.out`  (0.20 person-days)
- source: [tst/testspecial/mem-overflow.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/mem-overflow.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.MemOverflowG`
- 16 code lines, 0 definitions

> gap> # double a list until there is a memory overflow
> gap> l:=[1];; while true do Append(l,l); od;
> Error, reached the pre-set memory limit
> (change it with the -o command line option)
> Stack trace:

### `tst/testspecial/testing-test.g.out`  (0.20 person-days)
- source: [tst/testspecial/testing-test.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/testing-test.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.TestingTestG`
- 20 code lines, 0 definitions

> gap> Test("test-1.tst", rec(width := 800));
> ########> Diff in test-1.tst:3
> # Input is:
> a:=SymmetricGroup(1 0);;
> # Expected output:

### `tst/testspecial/print-formatting.g`  (0.19 person-days)
- source: [tst/testspecial/print-formatting.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/print-formatting.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.PrintFormatting`
- 19 code lines, 0 definitions

> test formatting status for stdout

### `tst/testspecial/bad-array-double-1.g.out`  (0.18 person-days)
- source: [tst/testspecial/bad-array-double-1.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/bad-array-double-1.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BadArrayDouble1G`
- 14 code lines, 0 definitions

> gap> f := function()
> >     return "abc"[1,1];
> > end;
> function(  ) ... end
> gap> f();

### `tst/testspecial/bad-array-string.g.out`  (0.18 person-days)
- source: [tst/testspecial/bad-array-string.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/bad-array-string.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BadArrayStringG`
- 14 code lines, 0 definitions

> gap> f := function()
> >     return 1["abc"];
> > end;
> function(  ) ... end
> gap> f();

### `tst/testspecial/bugfix-2019-09-27-LastPV.g`  (0.18 person-days)
- source: [tst/testspecial/bugfix-2019-09-27-LastPV.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/bugfix-2019-09-27-LastPV.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.Bugfix20190927LastPV`
- 18 code lines, 1 definitions

> filt:=NewFilter("BreakPrint");;
> InstallMethod(ViewObj, [filt], SUM_FLAGS, x -> 0/0);;
> badgroup := Group(());
> SetFilterObj(badgroup, filt);
> old_OnBreak:=OnBreak;;

### `tst/testspecial/syntax-err-eof-sentinel.g`  (0.18 person-days)
- source: [tst/testspecial/syntax-err-eof-sentinel.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/syntax-err-eof-sentinel.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.SyntaxErrEofSentinel`
- 18 code lines, 0 definitions

> Regression test for a 0xFF byte leak in syntax-error context lines.
> 
> When a syntax error fires after the scanner has advanced past EOF
> (e.g. parsing "h := ;" via READ_ALL_COMMANDS from a string with no
> trailing newline), the input-line buffer is replaced with the
> scanner's end-of-input sentinel (0xFF). Before the fix in
> src/scanner.c the SyntaxErrorOrWarning() pretty-printer would dump
> that sentinel verbatim alongside the error message — visible as a
> stray `ÿ` glyph in any UTF-8 / log-file consumer of *errout*
> (e.g. the JupyterKernel package).

### `tst/testspecial/syntax-tree-error.g.out`  (0.18 person-days)
- source: [tst/testspecial/syntax-tree-error.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/syntax-tree-error.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.SyntaxTreeErrorG`
- 17 code lines, 0 definitions

> gap> func := function ( )
> >     Error( "oops" );
> > end;
> function(  ) ... end
> gap>

### `tst/testspecial/bad-add.g.out`  (0.17 person-days)
- source: [tst/testspecial/bad-add.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/bad-add.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BadAddG`
- 14 code lines, 0 definitions

> gap> f := function()
> >     return 1 + "abc";
> > end;
> function(  ) ... end
> gap> f();

### `tst/testspecial/bad-array-undef-1.g.out`  (0.17 person-days)
- source: [tst/testspecial/bad-array-undef-1.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/bad-array-undef-1.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BadArrayUndef1G`
- 15 code lines, 0 definitions

> gap> f := function()
> >     local l,m;
> >     l := [];
> >     return l[m];
> > end;

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera5txdgezin27z6j477shqmleqrp3wm6g7pagtlawy4pz5cogtwfwa`, then merge with `tools/merge_tasks.py`.
