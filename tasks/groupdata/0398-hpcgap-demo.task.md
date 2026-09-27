# GAP-0398 — Port hpcgap/demo (groupdata)

- **Task CID:** `baguqeerazeuymvjk77kal3rlczjzuwprwupaokua4dubwcwxzhuuhfscoqya`
- **Layer:** `groupdata`   **Module:** `hpcgap/demo`
- **Size:** 15 file(s), 1497 code lines, 96 definitions
- **Estimated effort:** 11.30 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `hpcgap/demo/testparkit.g`  (1.30 person-days)
- source: [hpcgap/demo/testparkit.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/testparkit.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Testparkit`
- 201 code lines, 18 definitions

> SetInfoLevel(InfoParkit,2);
> Test1 := function()
>     local   m,  NoOp,  type,  outs;
>     m := CreateParkitManager();
>     NoOp := function(taskid, m, inputs)

### `hpcgap/demo/orbit.g`  (1.21 person-days)
- source: [hpcgap/demo/orbit.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/orbit.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Orbit`
- 152 code lines, 4 definitions

> Main routine

### `hpcgap/demo/sumeuler.g`  (1.02 person-days)
- source: [hpcgap/demo/sumeuler.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/sumeuler.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Sumeuler`
- 131 code lines, 11 definitions

> Calculating time interval between t1 (start) and t2 (end) in microseconds

### `hpcgap/demo/factor.g`  (1.00 person-days)
- source: [hpcgap/demo/factor.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/factor.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Factor`
- 119 code lines, 7 definitions

> Specialized faster version of RootInt(n,2) from integer.gi

### `hpcgap/demo/atomic.g`  (0.95 person-days)
- source: [hpcgap/demo/atomic.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/atomic.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Atomic`
- 127 code lines, 9 definitions

> ############################################################################

### `hpcgap/demo/parlist.g`  (0.90 person-days)
- source: [hpcgap/demo/parlist.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parlist.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parlist`
- 111 code lines, 7 definitions

> Workers communicate

### `hpcgap/demo/strassen.g`  (0.89 person-days)
- source: [hpcgap/demo/strassen.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/strassen.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Strassen`
- 140 code lines, 3 definitions

> This is basically intended to be the simplkest natural parallel
> implementation of Strassen-Winograd. Also included is a sequential version
> and a parallel divide-and-conquer that does not use Strassen (so 8 recursive
> calls instead of 7).

### `hpcgap/demo/matmult2.g`  (0.65 person-days)
- source: [hpcgap/demo/matmult2.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/matmult2.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Matmult2`
- 84 code lines, 7 definitions

> R := PolynomialRing(GF(7), ["x", "y", "z"]);

### `hpcgap/demo/matmult.g`  (0.57 person-days)
- source: [hpcgap/demo/matmult.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/matmult.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Matmult`
- 76 code lines, 5 definitions

> First, see if it works

### `hpcgap/demo/unittest.g`  (0.54 person-days)
- source: [hpcgap/demo/unittest.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/unittest.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Unittest`
- 66 code lines, 6 definitions

> CurrentTestPrefix := "";
> NumTestErrors := 0;
> TestPrefix := function(title)
>   CurrentTestPrefix := title;
> end;

### `hpcgap/demo/iterator.g`  (0.52 person-days)
- source: [hpcgap/demo/iterator.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/iterator.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Iterator`
- 65 code lines, 3 definitions

> ############################################################################
> 
> Example 11. Parallel iterator
> Brute force computation of the sum of orders of elements of a permutation group
> (we deliberately not using representatives of conjugacy classes)

### `hpcgap/demo/testwp.g`  (0.50 person-days)
- source: [hpcgap/demo/testwp.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/testwp.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Testwp`
- 56 code lines, 0 definitions

> iter := 10000000/2;
> n := 1000;
> m := 256;
> data := [];
> for i in [1..n] do

### `hpcgap/demo/karatsuba2.g`  (0.48 person-days)
- source: [hpcgap/demo/karatsuba2.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/karatsuba2.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Karatsuba2`
- 69 code lines, 4 definitions

> CUTOFF := 100;
> KaratsubaTaskedInner := function(cf, cg)
>     local  deg, n, cf1, cg1, cf2, cg2, sf, sg, p1, p2, p3, finalPart;
>     deg := Maximum(Length(cf), Length(cg));
>     if deg <= CUTOFF then

### `hpcgap/demo/partests.g`  (0.41 person-days)
- source: [hpcgap/demo/partests.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/partests.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Partests`
- 56 code lines, 7 definitions

> SpinsPerSecond := rec();
> SpinInners := MakeImmutable(rec(
>                   smallint := function(loops)
>     local   i,  x;
>     x := 0;

### `hpcgap/demo/nqueens.g`  (0.37 person-days)
- source: [hpcgap/demo/nqueens.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/nqueens.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Nqueens`
- 44 code lines, 5 definitions

> NewBoard := function(n)
>   return List([1..n],
>     x->List([1..n], y->false));
> end;
> LegalMove := function(board, n, x, y)

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerazeuymvjk77kal3rlczjzuwprwupaokua4dubwcwxzhuuhfscoqya`, then merge with `tools/merge_tasks.py`.
