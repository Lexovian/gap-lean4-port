# GAP-0537 — Port tst/testinstall/hpc (tests)

- **Task CID:** `baguqeerasyirqpncz6dz6hngbcraoft66u2h6vjkf4qokmtis2dfjxzzhaua`
- **Layer:** `tests`   **Module:** `tst/testinstall/hpc`
- **Size:** 4 file(s), 134 code lines, 9 definitions
- **Estimated effort:** 1.47 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/hpc/stdtasks.tst`  (0.76 person-days)
- source: [tst/testinstall/hpc/stdtasks.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/hpc/stdtasks.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Hpc.Stdtasks`
- 72 code lines, 3 definitions

> @if IsHPCGAP

### `tst/testinstall/hpc/threads.tst`  (0.60 person-days)
- source: [tst/testinstall/hpc/threads.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/hpc/threads.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Hpc.Threads`
- 51 code lines, 5 definitions

> gap> START_TEST("threads.tst");
> gap> if IsHPCGAP or ARCH_IS_WINDOWS() then tasks := 100; else tasks := 10; fi;;
> gap> taskssum := (tasks*(tasks+1))/2;;
> gap> f := function(val) local x; MicroSleep(tasks*100); x := val; MicroSleep(tasks*100); return x; end;;
> gap> l := List([1..tasks], x -> RunTask(f, x));;

### `tst/testinstall/hpc/demo.tst`  (0.07 person-days)
- source: [tst/testinstall/hpc/demo.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/hpc/demo.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Hpc.Demo`
- 7 code lines, 0 definitions

> @if IsHPCGAP
> 
> run some of the demos from hpcgap/demo/

### `tst/testinstall/hpc/fix-coverage.tst`  (0.04 person-days)
- source: [tst/testinstall/hpc/fix-coverage.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/hpc/fix-coverage.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Hpc.FixCoverage`
- 4 code lines, 1 definitions

> @if IsHPCGAP
> 
> some tests to specifically trigger code which causes the coverage reports on
> codecov to fluctuate (due to indeterminism in the multi threaded execution).
> 
> ideally, these should be moved to better fitting test files in the future.

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerasyirqpncz6dz6hngbcraoft66u2h6vjkf4qokmtis2dfjxzzhaua`, then merge with `tools/merge_tasks.py`.
