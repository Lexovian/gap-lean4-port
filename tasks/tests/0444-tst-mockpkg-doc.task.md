# GAP-0444 — Port tst/mockpkg/doc (tests)

- **Task CID:** `baguqeeraxt66bod2u6skqurjvu37xgznowxc5soavbac534nfvxvfzdsiwfq`
- **Layer:** `tests`   **Module:** `tst/mockpkg/doc`
- **Size:** 8 file(s), 188 code lines, 0 definitions
- **Estimated effort:** 2.09 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/mockpkg/doc/about.tex`  (1.28 person-days)
- source: [tst/mockpkg/doc/about.tex](https://github.com/gap-system/gap/blob/master/tst/mockpkg/doc/about.tex)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.Doc.About`
- 111 code lines, 0 definitions

> %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
> \Chapter{About this package}
> %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
> \Section{Testing general text}
> This is a mock package to be used to test {\GAP} library code

### `tst/mockpkg/doc/manual.tex`  (0.29 person-days)
- source: [tst/mockpkg/doc/manual.tex](https://github.com/gap-system/gap/blob/master/tst/mockpkg/doc/manual.tex)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.Doc.Manual`
- 28 code lines, 0 definitions

> \input ../../../doc/gapmacro
> \Package{mockpkg}
> \BeginningOfBook{mockpkg}
> %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
> %%

### `tst/mockpkg/doc/manual.mst`  (0.16 person-days)
- source: [tst/mockpkg/doc/manual.mst](https://github.com/gap-system/gap/blob/master/tst/mockpkg/doc/manual.mst)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.Doc.Manual`
- 16 code lines, 0 definitions

> preamble ""
> postamble "\n"
> group_skip "\n"
> headings_flag 1
> heading_prefix "\\letter "

### `tst/mockpkg/doc/manual.six`  (0.12 person-days)
- source: [tst/mockpkg/doc/manual.six](https://github.com/gap-system/gap/blob/master/tst/mockpkg/doc/manual.six)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.Doc.Manual`
- 11 code lines, 0 definitions

> C about.tex 1. About this package
> S 1.1. Testing general text
> S 1.2. Testing various mansection formats
> F 1.2. Size
> F 1.2. Size!for permutation groups

### `tst/mockpkg/doc/manual.idx`  (0.11 person-days)
- source: [tst/mockpkg/doc/manual.idx](https://github.com/gap-system/gap/blob/master/tst/mockpkg/doc/manual.idx)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.Doc.Manual`
- 10 code lines, 0 definitions

> \indexentry {Testing general text@Testing general text|indexit}{3}
> \indexentry {Testing various mansection formats@Testing various mansection formats|indexit}{4}
> \indexentry {Size@`Size'}{4}
> \indexentry {Size@`Size'!for permutation groups}{4}
> \indexentry {addition}{4}

### `tst/mockpkg/doc/make_doc`  (0.09 person-days)
- source: [tst/mockpkg/doc/make_doc](https://github.com/gap-system/gap/blob/master/tst/mockpkg/doc/make_doc)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.Doc.MakeDoc`
- 9 code lines, 0 definitions

> #!/bin/sh
> set -e
> echo "TeXing documentation"
> # TeX the manual 
> tex manual

### `tst/mockpkg/doc/manual.pdf`  (0.03 person-days)
- source: [tst/mockpkg/doc/manual.pdf](https://github.com/gap-system/gap/blob/master/tst/mockpkg/doc/manual.pdf)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.Doc.Manual`
- 2 code lines, 0 definitions

> This is a placeholder, to enable validation of this mock package,
> while avoiding the need to add a binary file to the repository.

### `tst/mockpkg/doc/.gitignore`  (0.01 person-days)
- source: [tst/mockpkg/doc/.gitignore](https://github.com/gap-system/gap/blob/master/tst/mockpkg/doc/.gitignore)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.Doc.Mod`
- 1 code lines, 0 definitions

> *.tst

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraxt66bod2u6skqurjvu37xgznowxc5soavbac534nfvxvfzdsiwfq`, then merge with `tools/merge_tasks.py`.
