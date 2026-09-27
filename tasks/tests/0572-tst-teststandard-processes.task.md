# GAP-0572 — Port tst/teststandard/processes (tests)

- **Task CID:** `baguqeera3n5bz4aqnalgvcanzgzl72pof7k5dxdizyp356nfzmyju6qi65aa`
- **Layer:** `tests`   **Module:** `tst/teststandard/processes`
- **Size:** 3 file(s), 31 code lines, 1 definitions
- **Estimated effort:** 0.46 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/teststandard/processes/children.tst`  (0.33 person-days)
- source: [tst/teststandard/processes/children.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/processes/children.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Processes.Children`
- 19 code lines, 1 definitions

> If IO is loaded, disable its signal handler

### `tst/teststandard/processes/check.pl`  (0.10 person-days)
- source: [tst/teststandard/processes/check.pl](https://github.com/gap-system/gap/blob/master/tst/teststandard/processes/check.pl)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Processes.Check`
- 9 code lines, 0 definitions

> #!/usr/bin/env perl
> use strict;
> use warnings;
> use Time::HiRes;
> if ( $ARGV[1] == 1 ) {

### `tst/teststandard/processes/slowwrite.sh`  (0.03 person-days)
- source: [tst/teststandard/processes/slowwrite.sh](https://github.com/gap-system/gap/blob/master/tst/teststandard/processes/slowwrite.sh)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Processes.Slowwrite`
- 3 code lines, 0 definitions

> !/usr/bin/env sh

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera3n5bz4aqnalgvcanzgzl72pof7k5dxdizyp356nfzmyju6qi65aa`, then merge with `tools/merge_tasks.py`.
