# GAP-0337 — Port benchmark/matobj (groupdata)

- **Task CID:** `baguqeerad5dushcuubia3csls4cvenmcbpt36qrd4nmejnuzt4gbqsroh3bq`
- **Layer:** `groupdata`   **Module:** `benchmark/matobj`
- **Size:** 6 file(s), 520 code lines, 54 definitions
- **Estimated effort:** 3.84 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `benchmark/matobj/bench-matelm-access.g`  (1.08 person-days)
- source: [benchmark/matobj/bench-matelm-access.g](https://github.com/gap-system/gap/blob/master/benchmark/matobj/bench-matelm-access.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Matobj.BenchMatelmAccess`
- 138 code lines, 11 definitions

> ReadGapRoot("benchmark/matobj/bench.g");
> TestReadingMatrix := function(m)
>     local f;
>     PrintHeadline("m[i][j]");
>     MyBench(function()

### `benchmark/matobj/bench.g`  (0.74 person-days)
- source: [benchmark/matobj/bench.g](https://github.com/gap-system/gap/blob/master/benchmark/matobj/bench.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Matobj.Bench`
- 101 code lines, 7 definitions

> Benchmark( func[, optrec] )
> 
> func - a function taking no arguments
> optrec - an optional record with various options
> 
> Measures how long executing the given function "func" takes.
> In order to improve accuracy, it invokes the function repeatedly.
> Before each repetition, the garbage collector is run, and
> (unless turned off by an option) the random number generators
> are reset.
> At the end, it outputs the average, median, and std deviation.

### `benchmark/matobj/bench-matobj-creation.g`  (0.67 person-days)
- source: [benchmark/matobj/bench-matobj-creation.g](https://github.com/gap-system/gap/blob/master/benchmark/matobj/bench-matobj-creation.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Matobj.BenchMatobjCreation`
- 90 code lines, 12 definitions

> test for old-style matrix constructors, as reference

### `benchmark/matobj/bench-submat.g`  (0.47 person-days)
- source: [benchmark/matobj/bench-submat.g](https://github.com/gap-system/gap/blob/master/benchmark/matobj/bench-submat.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Matobj.BenchSubmat`
- 66 code lines, 7 definitions

> TODO: also add cvec matrices

### `benchmark/matobj/bench-subvec.g`  (0.46 person-days)
- source: [benchmark/matobj/bench-subvec.g](https://github.com/gap-system/gap/blob/master/benchmark/matobj/bench-subvec.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Matobj.BenchSubvec`
- 64 code lines, 7 definitions

> ReadGapRoot("benchmark/matobj/bench.g");
> TestExtractingSubvector := function(v)
>     local cols;
>     cols := [3..Length(v)-1];
>     if not IsPlistVectorRep(v) then

### `benchmark/matobj/bench-vecobj-creation.g`  (0.41 person-days)
- source: [benchmark/matobj/bench-vecobj-creation.g](https://github.com/gap-system/gap/blob/master/benchmark/matobj/bench-vecobj-creation.g)
- suggested Lean module: `RequestProject.Gap.Benchmark.Matobj.BenchVecobjCreation`
- 61 code lines, 10 definitions

> test for old-style vector constructors, as reference

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerad5dushcuubia3csls4cvenmcbpt36qrd4nmejnuzt4gbqsroh3bq`, then merge with `tools/merge_tasks.py`.
