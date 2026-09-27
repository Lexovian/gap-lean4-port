# GAP-0397 — Port hpcgap/demo (groupdata)

- **Task CID:** `baguqeeraklekuo77m6tnn7cmwnkagvw7lo4qcm2yg5r4a5io26csl3hdxsia`
- **Layer:** `groupdata`   **Module:** `hpcgap/demo`
- **Size:** 15 file(s), 329 code lines, 41 definitions
- **Estimated effort:** 2.43 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `hpcgap/demo/serialize3.g`  (0.31 person-days)
- source: [hpcgap/demo/serialize3.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/serialize3.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Serialize3`
- 43 code lines, 2 definitions

> CheckSerialization := function(x)
>   local err, x2;
>   x2 := DeserializeNativeString(SerializeToNativeString(x));
>   if DeserializeNativeString(SerializeToNativeString(x)) <> x or
>      TNUM_OBJ(x) <> TNUM_OBJ(x2) then

### `hpcgap/demo/serialize4.g`  (0.28 person-days)
- source: [hpcgap/demo/serialize4.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/serialize4.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Serialize4`
- 35 code lines, 8 definitions

> InstallSerializer("8-bit vectors", [ Is8BitVectorRep ], function(obj)
>   return [1, "Vec8Bit", obj, Q_VEC8BIT(obj), IS_MUTABLE_OBJ(obj)];
> end);
> InstallDeserializer("Vec8Bit", function(obj, q, mut)
>   SET_TYPE_OBJ(obj, TYPE_VEC8BIT(q, mut));

### `hpcgap/demo/fibtasks.g`  (0.27 person-days)
- source: [hpcgap/demo/fibtasks.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/fibtasks.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Fibtasks`
- 33 code lines, 3 definitions

> ReadGapRoot("demo/unittest.g");
> ResetCache := function()
>   UNBIND_GLOBAL("FibCache");
>   BIND_GLOBAL("FibCache", AtomicList(1024, -1));
>   MakeReadWriteGVar("FibCache");

### `hpcgap/demo/rec-perf.g`  (0.24 person-days)
- source: [hpcgap/demo/rec-perf.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/rec-perf.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.RecPerf`
- 26 code lines, 8 definitions

> Populate RNam table

### `hpcgap/demo/gc-bench.g`  (0.23 person-days)
- source: [hpcgap/demo/gc-bench.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/gc-bench.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.GcBench`
- 30 code lines, 2 definitions

> This file can be read in HPC-GAP and legacy GAP
> 
> All runtimes are in seconds, time taken by gettimeofday syscall

### `hpcgap/demo/threads.g`  (0.16 person-days)
- source: [hpcgap/demo/threads.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/threads.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Threads`
- 25 code lines, 5 definitions

> ############################################################################
> 
> Prototypes of functions for shared memory programming in GAP
> 
> ############################################################################

### `hpcgap/demo/actortest.g`  (0.13 person-days)
- source: [hpcgap/demo/actortest.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/actortest.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Actortest`
- 23 code lines, 4 definitions

> Simple actor test

### `hpcgap/demo/creator.g`  (0.13 person-days)
- source: [hpcgap/demo/creator.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/creator.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Creator`
- 18 code lines, 1 definitions

> Creator := function(obj)
>   local result, creators;
>   creators := CREATOR_OF(obj);
>   result := [];
>   if creators[1] <> fail then

### `hpcgap/demo/intersection.g`  (0.12 person-days)
- source: [hpcgap/demo/intersection.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/intersection.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Intersection`
- 18 code lines, 0 definitions

> This is a test that Chris Jefferson <caj21@st-andrews.ac.uk> ran to benchmark
> HPC-GAP against legacy GAP
> 
> This file can be read in HPC-GAP and legacy GAP
> 
> All runtimes are in seconds, time taken by gettimeofday syscall
> 
> On: Intel(R) Core(TM) i5-3320M CPU @ 2.60GHz 12GB RAM
> DragonFly v4.3.1.522.geab4ae-DEVELOPMENT
> 
> GAP
> v4.7.8-405-gd56a79a

### `hpcgap/demo/serialize2.g`  (0.12 person-days)
- source: [hpcgap/demo/serialize2.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/serialize2.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Serialize2`
- 19 code lines, 0 definitions

> ReadGapRoot("demo/serialize4.g");
> l := List([1..6], x -> One(GF(7)) * x);
> ConvertToVectorRep(l, 7);
> l2 := List([1..6], x -> One(GF(2)) * x);
> ConvertToVectorRep(l2, 2);

### `hpcgap/demo/testcvec.g`  (0.10 person-days)
- source: [hpcgap/demo/testcvec.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/testcvec.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Testcvec`
- 12 code lines, 0 definitions

> Run parametrized test suites

### `hpcgap/demo/migrate.g`  (0.09 person-days)
- source: [hpcgap/demo/migrate.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/migrate.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Migrate`
- 14 code lines, 1 definitions

> AdoptSingleObj([1,2,3]);
> f := function()
>  local ds, r, l;
>  ds := ShareSingleObj([]);
>  l:=LOCK(ds);

### `hpcgap/demo/nqrun.g`  (0.09 person-days)
- source: [hpcgap/demo/nqrun.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/nqrun.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Nqrun`
- 11 code lines, 0 definitions

> ReadGapRoot("demo/bench.g");
> ReadGapRoot("demo/nqueens.g");
> if IsBound(SetMaxTaskWorkers) then
>   SetMaxTaskWorkers(12);
> fi;

### `hpcgap/demo/actortest2.g`  (0.07 person-days)
- source: [hpcgap/demo/actortest2.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/actortest2.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Actortest2`
- 12 code lines, 5 definitions

> The following calls are asynchronous rather than synchronous
> and return immediately; they will be executed when the actor
> receives the underlying message.

### `hpcgap/demo/bench.g`  (0.07 person-days)
- source: [hpcgap/demo/bench.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/bench.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Bench`
- 10 code lines, 2 definitions

> TimeDiff := function(t,t2)
>     return (t2-t)*1.E-9;
> end;
> Bench := function(f)
>     local tstart, tend;

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraklekuo77m6tnn7cmwnkagvw7lo4qcm2yg5r4a5io26csl3hdxsia`, then merge with `tools/merge_tasks.py`.
