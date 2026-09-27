# GAP-0547 — Port tst/testinstall/opers (tests)

- **Task CID:** `baguqeera3hj6johjlefj27gfaqax75gjfvkohyt6egih5pwshs25xtlyjcdq`
- **Layer:** `tests`   **Module:** `tst/testinstall/opers`
- **Size:** 8 file(s), 1104 code lines, 0 definitions
- **Estimated effort:** 11.60 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/opers/SimpleGroup.tst`  (2.78 person-days)
- source: [tst/testinstall/opers/SimpleGroup.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/SimpleGroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.SimpleGroup`
- 252 code lines, 0 definitions

> skip baby monster for now

### `tst/testinstall/opers/ListWreathProductElement.tst`  (1.92 person-days)
- source: [tst/testinstall/opers/ListWreathProductElement.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/ListWreathProductElement.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.ListWreathProductElement`
- 192 code lines, 0 definitions

> Perm Wreath Product In Imprimitive Action

### `tst/testinstall/opers/MinimalNormalSubgroups.tst`  (1.24 person-days)
- source: [tst/testinstall/opers/MinimalNormalSubgroups.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/MinimalNormalSubgroups.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.MinimalNormalSubgroups`
- 114 code lines, 0 definitions

> @if IsPackageMarkedForLoading( "smallgrp", "" )

### `tst/testinstall/opers/IsSolvableGroup.tst`  (1.23 person-days)
- source: [tst/testinstall/opers/IsSolvableGroup.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/IsSolvableGroup.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.IsSolvableGroup`
- 123 code lines, 0 definitions

> @if IsPackageMarkedForLoading( "smallgrp", "" )

### `tst/testinstall/opers/StructureDescription.tst`  (1.18 person-days)
- source: [tst/testinstall/opers/StructureDescription.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/StructureDescription.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.StructureDescription`
- 118 code lines, 0 definitions

> # Examples from manual
> @if IsPackageMarkedForLoading( "smallgrp", "" )

### `tst/testinstall/opers/Quotient.tst`  (1.12 person-days)
- source: [tst/testinstall/opers/Quotient.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/Quotient.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.Quotient`
- 110 code lines, 0 definitions

> the following case has some issues, as the polynomial
> division code

### `tst/testinstall/opers/NormalHallSubgroups.tst`  (1.08 person-days)
- source: [tst/testinstall/opers/NormalHallSubgroups.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/NormalHallSubgroups.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.NormalHallSubgroups`
- 90 code lines, 0 definitions

> @if IsPackageMarkedForLoading( "smallgrp", "" )

### `tst/testinstall/opers/NormalSubgroups.tst`  (1.05 person-days)
- source: [tst/testinstall/opers/NormalSubgroups.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/NormalSubgroups.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.NormalSubgroups`
- 105 code lines, 0 definitions

> Natural symmetric groups

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera3hj6johjlefj27gfaqax75gjfvkohyt6egih5pwshs25xtlyjcdq`, then merge with `tools/merge_tasks.py`.
