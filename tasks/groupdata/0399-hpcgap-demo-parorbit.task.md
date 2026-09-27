# GAP-0399 — Port hpcgap/demo/parorbit (groupdata)

- **Task CID:** `baguqeera727pv5x6a6cr5ws3btw4tinfpi3kg3tojjnedwupwe6kmf7yj2oa`
- **Layer:** `groupdata`   **Module:** `hpcgap/demo/parorbit`
- **Size:** 9 file(s), 1203 code lines, 51 definitions
- **Estimated effort:** 10.31 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `hpcgap/demo/parorbit/parallelorbit3.g`  (2.67 person-days)
- source: [hpcgap/demo/parorbit/parallelorbit3.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/parallelorbit3.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Parallelorbit3`
- 307 code lines, 13 definitions

> This is a third try of a parallel orbit for hpcgap running in threads:
> This time we use individual channels for each worker to distribute
> the work, but we queue a configurable number of chunks for each worker.
> This should avoid the hotspot in the single channel and should be
> translatable to distributed memory without much change.

### `hpcgap/demo/parorbit/parallelorbit2.g`  (2.50 person-days)
- source: [hpcgap/demo/parorbit/parallelorbit2.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/parallelorbit2.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Parallelorbit2`
- 293 code lines, 12 definitions

> This is a second try of a parallel orbit for hpcgap running in threads:
> This time we use a central channel for work distribution.

### `hpcgap/demo/parorbit/parallelorbit1.g`  (2.05 person-days)
- source: [hpcgap/demo/parorbit/parallelorbit1.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/parallelorbit1.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Parallelorbit1`
- 236 code lines, 10 definitions

> This is a trivial parallel orbit for hpcgap running in threads:

### `hpcgap/demo/parorbit/parorbit-nohashservers.g`  (1.90 person-days)
- source: [hpcgap/demo/parorbit/parorbit-nohashservers.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/parorbit-nohashservers.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.ParorbitNohashservers`
- 219 code lines, 7 definitions

> This is a second try of a parallel orbit for hpcgap running in threads:
> This time we use a central channel for work distribution.

### `hpcgap/demo/parorbit/seqorbit.g`  (0.69 person-days)
- source: [hpcgap/demo/parorbit/seqorbit.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/seqorbit.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Seqorbit`
- 79 code lines, 5 definitions

> Note, to use the last you want to give an AtomicRecord as in:
> DoManySeqOrbit(gens,v,OnRightRO,AtomicRecord(rec(hashlen := 2000001)),4);

### `hpcgap/demo/parorbit/Ly.g`  (0.13 person-days)
- source: [hpcgap/demo/parorbit/Ly.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/Ly.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Ly`
- 18 code lines, 1 definitions

> This enumerates the orbit of the sporadic simple Lyons group (Ly)
> on the cosets of its first maximal subgroup. The orbit contains
> 8835156 points and uses about 4 GB of main memory.
> A non-parallel orbit algorithm takes about 1730 seconds.

### `hpcgap/demo/parorbit/Th.g`  (0.13 person-days)
- source: [hpcgap/demo/parorbit/Th.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/Th.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Th`
- 18 code lines, 1 definitions

> This enumerates the orbit of the sporadic simple Thompson group (Th)
> on the cosets of its first maximal subgroup. The orbit contains
> 143127000 points and uses about 35GB of main memory.
> A non-parallel orbit algorithm takes about 1.5 hours.

### `hpcgap/demo/parorbit/HN.g`  (0.12 person-days)
- source: [hpcgap/demo/parorbit/HN.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/HN.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.HN`
- 16 code lines, 1 definitions

> This enumerates the orbit of the sporadic simple Harada-Norton group (HN)
> on the cosets of its first maximal subgroup. The orbit contains
> 1140000 points and uses about 221 MB of main memory.
> A non-parallel orbit algorithm takes about 41 seconds.

### `hpcgap/demo/parorbit/J4.g`  (0.12 person-days)
- source: [hpcgap/demo/parorbit/J4.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/J4.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.J4`
- 17 code lines, 1 definitions

> This enumerates the orbit of the sporadic simple Janko group 4 (J4)
> on the cosets of its first maximal subgroup. The orbit contains
> 173067389 points and uses about 13 GB of main memory.
> A non-parallel orbit algorithm takes about 1000 seconds.

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera727pv5x6a6cr5ws3btw4tinfpi3kg3tojjnedwupwe6kmf7yj2oa`, then merge with `tools/merge_tasks.py`.
