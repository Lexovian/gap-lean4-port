# GAP-0336 — Port benchmark/grpconst (groupdata)

- **Task CID:** `baguqeeracypnolbztcnrwpofpoyxml64mogcvmvjmqhfzltcpodxx4yaud4q`
- **Layer:** `groupdata`   **Module:** `benchmark/grpconst`
- **Size:** 4 file(s), 57 code lines, 1 definitions
- **Estimated effort:** 0.45 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `benchmark/grpconst/grpconst.g`  (0.12 person-days)
- source: [benchmark/grpconst/grpconst.g](https://github.com/gap-system/gap/blob/master/benchmark/grpconst/grpconst.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Grpconst.Grpconst`
- 15 code lines, 1 definitions

> LoadPackage( "grpconst" );
> has_errors:=false;
> ConstructAndTestAllGroups := function( size )
> local grps;
> grps := ConstructAllGroups( size );

### `benchmark/grpconst/test1.g`  (0.11 person-days)
- source: [benchmark/grpconst/test1.g](https://github.com/gap-system/gap/blob/master/benchmark/grpconst/test1.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Grpconst.Test1`
- 14 code lines, 0 definitions

> description Construct and test all groups of orders from 1 to 127
> author Alexander Konovalov
> timelimit 1
> cmdlineops
> packages: grpconst

### `benchmark/grpconst/test2.g`  (0.11 person-days)
- source: [benchmark/grpconst/test2.g](https://github.com/gap-system/gap/blob/master/benchmark/grpconst/test2.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Grpconst.Test2`
- 14 code lines, 0 definitions

> description Construct and test all groups of orders from 128 to 255
> author Alexander Konovalov
> timelimit 1
> cmdlineops
> packages: grpconst

### `benchmark/grpconst/test3.g`  (0.11 person-days)
- source: [benchmark/grpconst/test3.g](https://github.com/gap-system/gap/blob/master/benchmark/grpconst/test3.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Grpconst.Test3`
- 14 code lines, 0 definitions

> description Construct and test all groups of orders from 257 to 511
> author Alexander Konovalov
> timelimit 1
> cmdlineops
> packages: grpconst

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeracypnolbztcnrwpofpoyxml64mogcvmvjmqhfzltcpodxx4yaud4q`, then merge with `tools/merge_tasks.py`.
