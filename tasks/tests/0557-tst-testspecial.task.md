# GAP-0557 — Port tst/testspecial (tests)

- **Task CID:** `baguqeeraeawba5dwbep3cadnihs4sqjxwpwtkldhs32woi7abuprjzhnhlia`
- **Layer:** `tests`   **Module:** `tst/testspecial`
- **Size:** 7 file(s), 1006 code lines, 32 definitions
- **Estimated effort:** 11.19 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testspecial/func-and-proc-call-trace.g.out`  (2.73 person-days)
- source: [tst/testspecial/func-and-proc-call-trace.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/func-and-proc-call-trace.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.FuncAndProcCallTraceG`
- 241 code lines, 0 definitions

> gap> informproc0 := function(l)
> > Add(l,1);
> > l();
> > end;;
> gap> informproc0([]);

### `tst/testspecial/debug-var.g.out`  (1.98 person-days)
- source: [tst/testspecial/debug-var.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/debug-var.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.DebugVarG`
- 189 code lines, 0 definitions

> gap> x:=1;;
> gap> f:=function(a)
> >   local g, y, unbound_higher;
> >   y:=2;
> >   g := function(b)

### `tst/testspecial/trace.g.out`  (1.62 person-days)
- source: [tst/testspecial/trace.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/trace.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.TraceG`
- 156 code lines, 0 definitions

> gap> #
> gap> # tracing of operations
> gap> #
> gap> 
> gap> # create a dummy operation

### `tst/testspecial/broken-test.g.out`  (1.37 person-days)
- source: [tst/testspecial/broken-test.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/broken-test.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BrokenTestG`
- 123 code lines, 0 definitions

> gap> Test("broken-test-2.tst", rec(width := 800));
> Error, Invalid test file: #@ command found in the middle of a single test at broken-test-2.tst:5
> Stack trace:
> *[1] ErrorNoReturn( s, " at ", fnam, ":", i );
>    @ GAPROOT/lib/test.gi:LINE

### `tst/testspecial/backtrace.g`  (1.29 person-days)
- source: [tst/testspecial/backtrace.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/backtrace.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.Backtrace`
- 82 code lines, 16 definitions

> ############################################################################
> #
> #  This file tests Where and WhereWithVars, and in particular how backtraces
> #  are reported for different kinds of statements; there used to be various
> #  bugs related to that in the past.
> #

### `tst/testspecial/func-and-proc-call-trace.g`  (1.12 person-days)
- source: [tst/testspecial/func-and-proc-call-trace.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/func-and-proc-call-trace.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.FuncAndProcCallTrace`
- 112 code lines, 16 definitions

> informproc0 := function(l)
> Add(l,1);
> l();
> end;;
> informproc0([]);

### `tst/testspecial/stack-depth-rec.g.out`  (1.08 person-days)
- source: [tst/testspecial/stack-depth-rec.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/stack-depth-rec.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.StackDepthRecG`
- 103 code lines, 0 definitions

> gap> r := rec(); for i in [1..10000] do r := rec(a := r); od;
> rec(  )
> gap> Print(r);
> rec(
>   a := rec(

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraeawba5dwbep3cadnihs4sqjxwpwtkldhs32woi7abuprjzhnhlia`, then merge with `tools/merge_tasks.py`.
