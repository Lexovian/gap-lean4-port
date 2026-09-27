# GAP-0551 — Port tst/testlibgap (tests)

- **Task CID:** `baguqeeraywsdz66ajbeynxxcvqq3wnntcwkt25wpumqxslu5fugpfhnxqr4a`
- **Layer:** `tests`   **Module:** `tst/testlibgap`
- **Size:** 12 file(s), 383 code lines, 15 definitions
- **Estimated effort:** 4.03 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testlibgap/api.c`  (2.04 person-days)
- source: [tst/testlibgap/api.c](https://github.com/gap-system/gap/blob/master/tst/testlibgap/api.c)
- suggested Lean module: `RequestProject.Gap.Tests.Testlibgap.Api`
- 200 code lines, 9 definitions

> Small program to test libgap api functions.
> 
> Note that we only test whether the API functions
> work to a reasonable extent, the functionality of
> the GAP system is tested in extensive tests of the
> system itself.
> 
> TODO: Test error handling

### `tst/testlibgap/trycatch.c`  (0.39 person-days)
- source: [tst/testlibgap/trycatch.c](https://github.com/gap-system/gap/blob/master/tst/testlibgap/trycatch.c)
- suggested Lean module: `RequestProject.Gap.Tests.Testlibgap.Trycatch`
- 32 code lines, 2 definitions

> Small program to test libgap linkability and basic working

### `tst/testlibgap/common.c`  (0.25 person-days)
- source: [tst/testlibgap/common.c](https://github.com/gap-system/gap/blob/master/tst/testlibgap/common.c)
- suggested Lean module: `RequestProject.Gap.Tests.Testlibgap.Common`
- 21 code lines, 1 definitions

> Small program to test libgap linkability and basic working

### `tst/testlibgap/trycatch.expect`  (0.24 person-days)
- source: [tst/testlibgap/trycatch.expect](https://github.com/gap-system/gap/blob/master/tst/testlibgap/trycatch.expect)
- suggested Lean module: `RequestProject.Gap.Tests.Testlibgap.Trycatch`
- 22 code lines, 0 definitions

> # Initializing GAP...
> gap> OnBreak := false;;
> gap> MakeReadWriteGVar("ERROR_OUTPUT");
> gap> ERROR_OUTPUT := MakeImmutable("*stdout*");;
> gap> Display(CALL_WITH_CATCH(function() return 314; end, []));;

### `tst/testlibgap/wsload.c`  (0.22 person-days)
- source: [tst/testlibgap/wsload.c](https://github.com/gap-system/gap/blob/master/tst/testlibgap/wsload.c)
- suggested Lean module: `RequestProject.Gap.Tests.Testlibgap.Wsload`
- 21 code lines, 1 definitions

> Small program to test libgap ability to load workspaces.
> Also shows how to directly pass command line arguments to libgap.

### `tst/testlibgap/basic.expect`  (0.18 person-days)
- source: [tst/testlibgap/basic.expect](https://github.com/gap-system/gap/blob/master/tst/testlibgap/basic.expect)
- suggested Lean module: `RequestProject.Gap.Tests.Testlibgap.Basic`
- 18 code lines, 0 definitions

> # Initializing GAP...
> gap> 1+2+3;
> 6
> gap> g:=FreeGroup(2);
> <free group on the generators [ f1, f2 ]>

### `tst/testlibgap/basic.c`  (0.17 person-days)
- source: [tst/testlibgap/basic.c](https://github.com/gap-system/gap/blob/master/tst/testlibgap/basic.c)
- suggested Lean module: `RequestProject.Gap.Tests.Testlibgap.Basic`
- 16 code lines, 1 definitions

> Small program to test libgap linkability and basic working

### `tst/testlibgap/wscreate.c`  (0.14 person-days)
- source: [tst/testlibgap/wscreate.c](https://github.com/gap-system/gap/blob/master/tst/testlibgap/wscreate.c)
- suggested Lean module: `RequestProject.Gap.Tests.Testlibgap.Wscreate`
- 13 code lines, 1 definitions

> Small program to test libgap ability to save workspaces.
> Ought to be used with wsload.c

### `tst/testlibgap/wscreate.expect`  (0.13 person-days)
- source: [tst/testlibgap/wscreate.expect](https://github.com/gap-system/gap/blob/master/tst/testlibgap/wscreate.expect)
- suggested Lean module: `RequestProject.Gap.Tests.Testlibgap.Wscreate`
- 13 code lines, 0 definitions

> gap> g:=FreeGroup(2);
> <free group on the generators [ f1, f2 ]>
> gap> a:=g.1;
> f1
> gap> b:=g.2;

### `tst/testlibgap/wsload.expect`  (0.12 person-days)
- source: [tst/testlibgap/wsload.expect](https://github.com/gap-system/gap/blob/master/tst/testlibgap/wsload.expect)
- suggested Lean module: `RequestProject.Gap.Tests.Testlibgap.Wsload`
- 12 code lines, 0 definitions

> # looking at saved stuff...
> gap> g;
> <free group on the generators [ f1, f2 ]>
> gap> a;
> f1

### `tst/testlibgap/api.expect`  (0.10 person-days)
- source: [tst/testlibgap/api.expect](https://github.com/gap-system/gap/blob/master/tst/testlibgap/api.expect)
- suggested Lean module: `RequestProject.Gap.Tests.Testlibgap.Api`
- 10 code lines, 0 definitions

> # Initializing GAP...
> # Testing strings... success
> # Testing records... success
> # Testing lists... success
> # Testing ranges... success

### `tst/testlibgap/common.h`  (0.05 person-days)
- source: [tst/testlibgap/common.h](https://github.com/gap-system/gap/blob/master/tst/testlibgap/common.h)
- suggested Lean module: `RequestProject.Gap.Tests.Testlibgap.Common`
- 5 code lines, 0 definitions

> #include <stdio.h>
> #include <unistd.h>
> #include <libgap-api.h>
> extern char ** environ;
> void test_eval(const char * cmd);

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraywsdz66ajbeynxxcvqq3wnntcwkt25wpumqxslu5fugpfhnxqr4a`, then merge with `tools/merge_tasks.py`.
