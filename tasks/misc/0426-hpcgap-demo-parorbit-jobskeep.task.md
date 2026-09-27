# GAP-0426 — Port hpcgap/demo/parorbit/jobskeep (misc)

- **Task CID:** `baguqeeraxnukmx2qwobz2cmem67zar7vrxs2zk2oqxd3ms4ntomxgzhufdsa`
- **Layer:** `misc`   **Module:** `hpcgap/demo/parorbit/jobskeep`
- **Size:** 6 file(s), 1138 code lines, 0 definitions
- **Estimated effort:** 11.38 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`

## Files to port

### `hpcgap/demo/parorbit/jobskeep/HN2parmore2`  (2.19 person-days)
- source: [hpcgap/demo/parorbit/jobskeep/HN2parmore2](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/jobskeep/HN2parmore2)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Jobskeep.HN2parmore2`
- 219 code lines, 0 definitions

> hpcgap -S -m 64g
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/parallelorbit2.g");
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/HNdata2.g");
> r := ParallelOrbit(gens,v,OnRightRO,rec( hashlen := 2000001,
>   nrhash := 1, nrwork := 9, disthf := MakeDistributionHF(v,1)));;

### `hpcgap/demo/parorbit/jobskeep/HN3parmore2`  (2.19 person-days)
- source: [hpcgap/demo/parorbit/jobskeep/HN3parmore2](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/jobskeep/HN3parmore2)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Jobskeep.HN3parmore2`
- 219 code lines, 0 definitions

> hpcgap -S -m 64g
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/parallelorbit3.g");
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/HNdata2.g");
> r := ParallelOrbit(gens,v,OnRightRO,rec( hashlen := 2000001,
>   nrhash := 1, nrwork := 9, disthf := MakeDistributionHF(v,1)));;

### `hpcgap/demo/parorbit/jobskeep/J4p2parmore2`  (2.19 person-days)
- source: [hpcgap/demo/parorbit/jobskeep/J4p2parmore2](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/jobskeep/J4p2parmore2)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Jobskeep.J4p2parmore2`
- 219 code lines, 0 definitions

> hpcgap -S -m 128g
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/parallelorbit2.g");
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/J4data2.g");
> r := ParallelOrbit(gens,v,OnRightRO,rec( hashlen := NextPrimeInt(400000000),
>   nrhash := 1, nrwork := 9, disthf := MakeDistributionHF(v,1)));;

### `hpcgap/demo/parorbit/jobskeep/J4p3parmore2`  (2.19 person-days)
- source: [hpcgap/demo/parorbit/jobskeep/J4p3parmore2](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/jobskeep/J4p3parmore2)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Jobskeep.J4p3parmore2`
- 219 code lines, 0 definitions

> hpcgap -S -m 128g
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/parallelorbit3.g");
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/J4data2.g");
> r := ParallelOrbit(gens,v,OnRightRO,rec( hashlen := NextPrimeInt(400000000),
>   nrhash := 1, nrwork := 9, disthf := MakeDistributionHF(v,1)));;

### `hpcgap/demo/parorbit/jobskeep/HN2parbig`  (1.31 person-days)
- source: [hpcgap/demo/parorbit/jobskeep/HN2parbig](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/jobskeep/HN2parbig)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Jobskeep.HN2parbig`
- 131 code lines, 0 definitions

> hpcgap -S -m 64g
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/parallelorbit2.g");
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/HNdata2.g");
> r := ParallelOrbit(gens,v,OnRightRO,rec( hashlen := 2000001,
>   nrhash := 1, nrwork := 4, disthf := MakeDistributionHF(v,1)));;

### `hpcgap/demo/parorbit/jobskeep/HN2parmore`  (1.31 person-days)
- source: [hpcgap/demo/parorbit/jobskeep/HN2parmore](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/jobskeep/HN2parmore)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Jobskeep.HN2parmore`
- 131 code lines, 0 definitions

> hpcgap -S -m 64g
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/parallelorbit2.g");
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/HNdata2.g");
> r := ParallelOrbit(gens,v,OnRightRO,rec( hashlen := 2000001,
>   nrhash := 3, nrwork := 9, disthf := MakeDistributionHF(v,3)));;

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraxnukmx2qwobz2cmem67zar7vrxs2zk2oqxd3ms4ntomxgzhufdsa`, then merge with `tools/merge_tasks.py`.
