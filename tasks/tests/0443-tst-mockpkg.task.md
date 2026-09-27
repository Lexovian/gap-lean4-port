# GAP-0443 — Port tst/mockpkg (tests)

- **Task CID:** `baguqeerajy6bxcokra7yuhkeswgswhjsghbqf4mnblkxupw4fqp52vndn4za`
- **Layer:** `tests`   **Module:** `tst/mockpkg`
- **Size:** 8 file(s), 313 code lines, 1 definitions
- **Estimated effort:** 3.63 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/mockpkg/Makefile.gappkg`  (2.21 person-days)
- source: [tst/mockpkg/Makefile.gappkg](https://github.com/gap-system/gap/blob/master/tst/mockpkg/Makefile.gappkg)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.Makefile`
- 186 code lines, 0 definitions

> ########################################################################
> #
> # The build rules in this file are intended for use by GAP packages that
> # want to build a simple GAP kernel extensions. They are based on the
> # GAP build system, and require GNU make. To use this in your GAP

### `tst/mockpkg/PackageInfo.g`  (0.71 person-days)
- source: [tst/mockpkg/PackageInfo.g](https://github.com/gap-system/gap/blob/master/tst/mockpkg/PackageInfo.g)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.PackageInfo`
- 68 code lines, 1 definitions

> mockpkg: A mock package for use by the GAP test suite
> 
> This file contains package meta data. For additional information on
> the meaning and correct usage of these fields, please consult the
> manual of the "Example" package as well as the comments in its
> PackageInfo.g file.

### `tst/mockpkg/configure`  (0.38 person-days)
- source: [tst/mockpkg/configure](https://github.com/gap-system/gap/blob/master/tst/mockpkg/configure)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.Configure`
- 30 code lines, 0 definitions

> #!/bin/sh
> # usage: configure gappath
> # this script creates a `Makefile' from `Makefile.in'
> set -e
> GAPPATH=../..

### `tst/mockpkg/README.md`  (0.19 person-days)
- source: [tst/mockpkg/README.md](https://github.com/gap-system/gap/blob/master/tst/mockpkg/README.md)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.README`
- 16 code lines, 0 definitions

> The GAP 4 package `mockpkg`
> ===========================
> This is a mock package to be used to test GAP library code
> related to GAP packages, for example to validate `PackageInfo.g`
> files.

### `tst/mockpkg/Makefile.in`  (0.09 person-days)
- source: [tst/mockpkg/Makefile.in](https://github.com/gap-system/gap/blob/master/tst/mockpkg/Makefile.in)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.Makefile`
- 8 code lines, 0 definitions

> #
> # Makefile rules for the mockpkg package
> #
> KEXT_NAME = mockpkg
> KEXT_SOURCES = src/mockpkg.c

### `tst/mockpkg/.gitignore`  (0.03 person-days)
- source: [tst/mockpkg/.gitignore](https://github.com/gap-system/gap/blob/master/tst/mockpkg/.gitignore)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.Mod`
- 3 code lines, 0 definitions

> /Makefile
> /bin
> /gen

### `tst/mockpkg/init.g`  (0.01 person-days)
- source: [tst/mockpkg/init.g](https://github.com/gap-system/gap/blob/master/tst/mockpkg/init.g)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.Init`
- 1 code lines, 0 definitions

> mockpkg: A mock package for use by the GAP test suite
> 
> Reading the declaration part of the package.

### `tst/mockpkg/read.g`  (0.01 person-days)
- source: [tst/mockpkg/read.g](https://github.com/gap-system/gap/blob/master/tst/mockpkg/read.g)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.Read`
- 1 code lines, 0 definitions

> mockpkg: A mock package for use by the GAP test suite
> 
> Reading the implementation part of the package.

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerajy6bxcokra7yuhkeswgswhjsghbqf4mnblkxupw4fqp52vndn4za`, then merge with `tools/merge_tasks.py`.
