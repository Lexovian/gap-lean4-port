# GAP-0536 — Port tst/testinstall/hpc (tests)

- **Task CID:** `baguqeeram35lrcvkv3j7yrq25jkn6e6yzsi6o4xkvat6qfg2bkogfg66x3cq`
- **Layer:** `tests`   **Module:** `tst/testinstall/hpc`
- **Size:** 9 file(s), 1032 code lines, 55 definitions
- **Estimated effort:** 11.62 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/hpc/atomic_list.tst`  (1.97 person-days)
- source: [tst/testinstall/hpc/atomic_list.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/hpc/atomic_list.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Hpc.AtomicList`
- 188 code lines, 1 definitions

> @local EqualLists,a,l,s

### `tst/testinstall/hpc/atomic_basic.tst`  (1.74 person-days)
- source: [tst/testinstall/hpc/atomic_basic.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/hpc/atomic_basic.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Hpc.AtomicBasic`
- 132 code lines, 42 definitions

> ############################################################################
> #
> #  This test checks the 'atomic' statement for compatibility with original
> #  GAP. It does not do any interesting thread-safe behaviour
> #
> @local L,M,f,g,h,h2,h3,h4,h5,x

### `tst/testinstall/hpc/serialize.tst`  (1.63 person-days)
- source: [tst/testinstall/hpc/serialize.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/hpc/serialize.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Hpc.Serialize`
- 146 code lines, 5 definitions

> @if IsHPCGAP

### `tst/testinstall/hpc/atomic_compare.tst`  (1.55 person-days)
- source: [tst/testinstall/hpc/atomic_compare.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/hpc/atomic_compare.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Hpc.AtomicCompare`
- 137 code lines, 0 definitions

> @if IsHPCGAP

### `tst/testinstall/hpc/queue.tst`  (1.09 person-days)
- source: [tst/testinstall/hpc/queue.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/hpc/queue.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Hpc.Queue`
- 94 code lines, 3 definitions

> @if IsHPCGAP
> 
> test queue.g code

### `tst/testinstall/hpc/channels.tst`  (1.06 person-days)
- source: [tst/testinstall/hpc/channels.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/hpc/channels.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Hpc.Channels`
- 96 code lines, 2 definitions

> @if IsHPCGAP
> Tests for HPC-GAP channels
> 
> TODO: right now these tests are all using a single thread; add some which
> use multiple threads, and also non-dynamic (i.e., blocking) channels.
> 
> create a dynamic channel

### `tst/testinstall/hpc/comprvec.tst`  (0.91 person-days)
- source: [tst/testinstall/hpc/comprvec.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/hpc/comprvec.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Hpc.Comprvec`
- 91 code lines, 0 definitions

> @if IsHPCGAP

### `tst/testinstall/hpc/atomic_list_hpc.tst`  (0.86 person-days)
- source: [tst/testinstall/hpc/atomic_list_hpc.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/hpc/atomic_list_hpc.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Hpc.AtomicListHpc`
- 68 code lines, 1 definitions

> @if IsHPCGAP

### `tst/testinstall/hpc/tasks.tst`  (0.81 person-days)
- source: [tst/testinstall/hpc/tasks.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/hpc/tasks.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Hpc.Tasks`
- 80 code lines, 1 definitions

> gap> START_TEST("tasks.tst");
> gap> CallAsTask := function(arg)
> > return TaskResult( RunTask( CallFuncList, arg[1], arg{[2..Length(arg)]} ) );
> > end;;
> gap> TaskResult(RunTask(Factorial, 99)) = Factorial(99);

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeram35lrcvkv3j7yrq25jkn6e6yzsi6o4xkvat6qfg2bkogfg66x3cq`, then merge with `tools/merge_tasks.py`.
