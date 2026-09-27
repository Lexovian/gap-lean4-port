# GAP-0425 — Port hpcgap/demo/parorbit/jobskeep (misc)

- **Task CID:** `baguqeera3crexftqx5okset5ketk5okzo27m3ymslwvfcbffd63iog26g7ya`
- **Layer:** `misc`   **Module:** `hpcgap/demo/parorbit/jobskeep`
- **Size:** 3 file(s), 1053 code lines, 0 definitions
- **Estimated effort:** 10.53 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`

## Files to port

### `hpcgap/demo/parorbit/jobskeep/HN2par`  (3.51 person-days)
- source: [hpcgap/demo/parorbit/jobskeep/HN2par](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/jobskeep/HN2par)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Jobskeep.HN2par`
- 351 code lines, 0 definitions

> hpcgap -S -m 64g
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/parallelorbit2.g");
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/HNdata2.g");
> r := ParallelOrbit(gens,v,OnRightRO,rec( hashlen := 2000001,
>   nrhash := 1, nrwork := 1, disthf := MakeDistributionHF(v,1)));;

### `hpcgap/demo/parorbit/jobskeep/HN3par`  (3.51 person-days)
- source: [hpcgap/demo/parorbit/jobskeep/HN3par](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/jobskeep/HN3par)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Jobskeep.HN3par`
- 351 code lines, 0 definitions

> hpcgap -S -m 64g
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/parallelorbit3.g");
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/HNdata2.g");
> r := ParallelOrbit(gens,v,OnRightRO,rec( hashlen := 2000001,
>   nrhash := 1, nrwork := 1, disthf := MakeDistributionHF(v,1)));;

### `hpcgap/demo/parorbit/jobskeep/J4p2par`  (3.51 person-days)
- source: [hpcgap/demo/parorbit/jobskeep/J4p2par](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/jobskeep/J4p2par)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.Jobskeep.J4p2par`
- 351 code lines, 0 definitions

> hpcgap -S -m 128g
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/parallelorbit2.g");
> Read("/scratch/neunhoef/hpcgap/demo/parorbit/J4data2.g");
> r := ParallelOrbit(gens,v,OnRightRO,rec( hashlen := NextPrimeInt(300000000),
>   nrhash := 1, nrwork := 1, disthf := MakeDistributionHF(v,1)));;

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera3crexftqx5okset5ketk5okzo27m3ymslwvfcbffd63iog26g7ya`, then merge with `tools/merge_tasks.py`.
