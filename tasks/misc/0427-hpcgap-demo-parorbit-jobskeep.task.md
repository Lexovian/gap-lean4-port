# GAP-0427 — Port hpcgap/demo/parorbit/jobskeep (misc)

- **Task CID:** `baguqeera6lhu3u2hyetjccrgq2wbe4xnpr5kciupebuhqzlelsumihn6juja`
- **Layer:** `misc`   **Module:** `hpcgap/demo/parorbit/jobskeep`
- **Size:** 6 file(s), 602 code lines, 0 definitions
- **Estimated effort:** 6.02 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`

## Files to port

### `hpcgap/demo/parorbit/jobskeep/HN3parbig`  (1.31 person-days)
- source: [hpcgap/demo/parorbit/jobskeep/HN3parbig](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/jobskeep/HN3parbig)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Jobskeep.HN3parbig`
- 131 code lines, 0 definitions

> hpcgap -S -m 64g
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/parallelorbit3.g");
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/HNdata2.g");
> r := ParallelOrbit(gens,v,OnRightRO,rec( hashlen := 2000001,
>   nrhash := 1, nrwork := 4, disthf := MakeDistributionHF(v,1)));;

### `hpcgap/demo/parorbit/jobskeep/HN3parmore`  (1.31 person-days)
- source: [hpcgap/demo/parorbit/jobskeep/HN3parmore](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/jobskeep/HN3parmore)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Jobskeep.HN3parmore`
- 131 code lines, 0 definitions

> hpcgap -S -m 64g
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/parallelorbit3.g");
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/HNdata2.g");
> r := ParallelOrbit(gens,v,OnRightRO,rec( hashlen := 2000001,
>   nrhash := 3, nrwork := 9, disthf := MakeDistributionHF(v,3)));;

### `hpcgap/demo/parorbit/jobskeep/J4p2parmore`  (1.31 person-days)
- source: [hpcgap/demo/parorbit/jobskeep/J4p2parmore](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/jobskeep/J4p2parmore)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Jobskeep.J4p2parmore`
- 131 code lines, 0 definitions

> hpcgap -S -m 128g
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/parallelorbit2.g");
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/J4data2.g");
> r := ParallelOrbit(gens,v,OnRightRO,rec( hashlen := NextPrimeInt(100000000),
>   nrhash := 3, nrwork := 9, disthf := MakeDistributionHF(v,3)));;

### `hpcgap/demo/parorbit/jobskeep/J4p3parmore`  (1.31 person-days)
- source: [hpcgap/demo/parorbit/jobskeep/J4p3parmore](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/jobskeep/J4p3parmore)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Jobskeep.J4p3parmore`
- 131 code lines, 0 definitions

> hpcgap -S -m 128g
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/parallelorbit3.g");
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/J4data2.g");
> r := ParallelOrbit(gens,v,OnRightRO,rec( hashlen := NextPrimeInt(100000000),
>   nrhash := 3, nrwork := 9, disthf := MakeDistributionHF(v,3)));;

### `hpcgap/demo/parorbit/jobskeep/HN2seq`  (0.39 person-days)
- source: [hpcgap/demo/parorbit/jobskeep/HN2seq](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/jobskeep/HN2seq)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Jobskeep.HN2seq`
- 39 code lines, 0 definitions

> hpcgap -S -m 64g
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/seqorbit.g");
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/HNdata2.g");
> n := 8;
> t := DoManySeqOrbit(gens,v,OnRightRO,

### `hpcgap/demo/parorbit/jobskeep/J4seq`  (0.39 person-days)
- source: [hpcgap/demo/parorbit/jobskeep/J4seq](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/jobskeep/J4seq)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Jobskeep.J4seq`
- 39 code lines, 0 definitions

> hpcgap -S -m 128g
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/seqorbit.g");
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/J4data2.g");
> n := 8;
> t := DoManySeqOrbit(gens,v,OnRightRO,

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera6lhu3u2hyetjccrgq2wbe4xnpr5kciupebuhqzlelsumihn6juja`, then merge with `tools/merge_tasks.py`.
