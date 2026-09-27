# GAP-0436 — Port etc/vim (build)

- **Task CID:** `baguqeeral47oj6lgl6ocifqgwjmevbjydeaauc7n7xbxqv4rgjfilrncp7rq`
- **Layer:** `build`   **Module:** `etc/vim`
- **Size:** 5 file(s), 479 code lines, 0 definitions
- **Estimated effort:** 2.07 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`

## Files to port

### `etc/vim/gap.vim`  (1.43 person-days)
- source: [etc/vim/gap.vim](https://github.com/gap-system/gap/blob/master/etc/vim/gap.vim)
- suggested Lean module: `RequestProject.Gap.Build.Vim.Gap`
- 342 code lines, 0 definitions

> " Vim syntax file
> " Language:	GAP
> " Author:  Frank Lübeck,  highlighting based on file by Alexander Hulpke
> " Maintainer:	Frank Lübeck
> " Last change:	June 2010

### `etc/vim/gap_indent.vim`  (0.42 person-days)
- source: [etc/vim/gap_indent.vim](https://github.com/gap-system/gap/blob/master/etc/vim/gap_indent.vim)
- suggested Lean module: `RequestProject.Gap.Build.Vim.GapIndent`
- 76 code lines, 0 definitions

> " GAP indent file
> " Language:	GAP  (https://www.gap-system.org)
> " Maintainer:	Frank Lübeck (Frank.Luebeck@Math.RWTH-Aachen.De)
> " Comments: 
> " --  started from Matlab indent file in vim 6.0

### `etc/vim/README.vim-utils`  (0.10 person-days)
- source: [etc/vim/README.vim-utils](https://github.com/gap-system/gap/blob/master/etc/vim/README.vim-utils)
- suggested Lean module: `RequestProject.Gap.Build.Vim.README`
- 26 code lines, 0 definitions

> HOWTO use the files gap.vim, gap_indent.vim with the
>      `vim' editor  (http://www.vim.org/)
> I have put the following lines in my ~/.vimrc  file:
> -------------------    from  ~/.vimrc  -------------------------------------
> if has("syntax")

### `etc/vim/debugvim.txt`  (0.08 person-days)
- source: [etc/vim/debugvim.txt](https://github.com/gap-system/gap/blob/master/etc/vim/debugvim.txt)
- suggested Lean module: `RequestProject.Gap.Build.Vim.Debugvim`
- 24 code lines, 0 definitions

> Short introduction into debugging in GAP by Thomas Breuer and Max Neunhöffer
> (see library file lib/debug.g)
>   Debug(<func> [,<name>]);  # opens an editor to insert debugging code
>                             # the debugged function is stored under a number
> A "debugged" function gets a number and can later be accessed either as

### `etc/vim/debug.vim`  (0.05 person-days)
- source: [etc/vim/debug.vim](https://github.com/gap-system/gap/blob/master/etc/vim/debug.vim)
- suggested Lean module: `RequestProject.Gap.Build.Vim.Debug`
- 11 code lines, 0 definitions

> "
> " Keyboard configuration for vim sessions during the `Debug' call
> " from the library file "debug.g".
> "
> " By Thomas Breuer and Max Neunhöffer 2003

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeral47oj6lgl6ocifqgwjmevbjydeaauc7n7xbxqv4rgjfilrncp7rq`, then merge with `tools/merge_tasks.py`.
