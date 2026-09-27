# GAP-0395 — Port hpcgap/demo (groupdata)

- **Task CID:** `baguqeera6dhr2fbadt34zydujmyn5anp4bqzuddpalqmwo37p7tbdtcxujva`
- **Layer:** `groupdata`   **Module:** `hpcgap/demo`
- **Size:** 5 file(s), 27 code lines, 2 definitions
- **Estimated effort:** 0.18 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `hpcgap/demo/cancel.g`  (0.07 person-days)
- source: [hpcgap/demo/cancel.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/cancel.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Cancel`
- 10 code lines, 2 definitions

> task := RunTask(function()
>   while true do
>     OnTaskCancellation({}->99);
>   od;
> end);

### `hpcgap/demo/serialize.g`  (0.07 person-days)
- source: [hpcgap/demo/serialize.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/serialize.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Serialize`
- 10 code lines, 0 definitions

> Declare globals

### `hpcgap/demo/testtasks.g`  (0.03 person-days)
- source: [hpcgap/demo/testtasks.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/testtasks.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Testtasks`
- 5 code lines, 0 definitions

> ReadGapRoot("demo/unittest.g");
> TestPrefix("Concurrent Method Dispatch");
> TestEqual(TaskResult(RunTask(x->SortedList(x), [3,2,1])), [1,2,3], "Sorting");
> TestEqual(TaskResult(RunTask(x->Factorial(x), 99)), Factorial(99), "Factorial");
> TestReportAndExit();

### `hpcgap/demo/debugview.g`  (0.01 person-days)
- source: [hpcgap/demo/debugview.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/debugview.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Debugview`
- 1 code lines, 0 definitions

> CustomView := UNSAFE_VIEW;

### `hpcgap/demo/view.g`  (0.01 person-days)
- source: [hpcgap/demo/view.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/view.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.View`
- 1 code lines, 0 definitions

> CustomView := ViewSharedObj;

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera6dhr2fbadt34zydujmyn5anp4bqzuddpalqmwo37p7tbdtcxujva`, then merge with `tools/merge_tasks.py`.
