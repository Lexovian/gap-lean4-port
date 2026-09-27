# GAP-0414 — Port benchmark/transgrp (misc)

- **Task CID:** `baguqeerars3uhdw2jgtyk2ope7tqvgwa6o6nstdsjlqumufv3267tj3s4h6q`
- **Layer:** `misc`   **Module:** `benchmark/transgrp`
- **Size:** 1 file(s), 3426 code lines, 0 definitions
- **Estimated effort:** 47.36 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`

## Files to port

### `benchmark/transgrp/examine4`  (47.36 person-days)
- source: [benchmark/transgrp/examine4](https://github.com/gap-system/gap/blob/master/benchmark/transgrp/examine4)
- suggested Lean module: `RequestProject.Gap.Benchmark.Transgrp.Examine4`
- 3426 code lines, 0 definitions

> #COMPL:=[];
> TIMING:=rec();
> SetInfoLevel(InfoAli,0);
> DOTRICK27:=true;
> # normalizer in constructing wreat product

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerars3uhdw2jgtyk2ope7tqvgwa6o6nstdsjlqumufv3267tj3s4h6q`, then merge with `tools/merge_tasks.py`.
