# GAP-0001 — Port hpcgap/demo (kernel)

- **Task CID:** `baguqeerabs7n3vd7ijty2xoj3zgcrbqdidm2kq2ya4mijs4y5dvn4gk5qcna`
- **Layer:** `kernel`   **Module:** `hpcgap/demo`
- **Size:** 2 file(s), 159 code lines, 6 definitions
- **Estimated effort:** 4.02 person-days

## Files to port

### `hpcgap/demo/sumliouville2.c`  (2.14 person-days)
- source: [hpcgap/demo/sumliouville2.c](https://github.com/gap-system/gap/blob/master/hpcgap/demo/sumliouville2.c)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Sumliouville2`
- 84 code lines, 3 definitions

> The Liouville function on a integer n is L(n) = (-1)^r where r is

### `hpcgap/demo/sumliouville.c`  (1.88 person-days)
- source: [hpcgap/demo/sumliouville.c](https://github.com/gap-system/gap/blob/master/hpcgap/demo/sumliouville.c)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Sumliouville`
- 75 code lines, 3 definitions

> The Liouville function on a integer n is L(n) = (-1)^r where r is

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerabs7n3vd7ijty2xoj3zgcrbqdidm2kq2ya4mijs4y5dvn4gk5qcna`, then merge with `tools/merge_tasks.py`.
