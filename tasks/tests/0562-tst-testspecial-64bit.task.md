# GAP-0562 — Port tst/testspecial/64bit (tests)

- **Task CID:** `baguqeeravsyxkxtuinehva5ru3qjfldoyjyxdz3ctias6smgvev4fzjwrvwq`
- **Layer:** `tests`   **Module:** `tst/testspecial/64bit`
- **Size:** 6 file(s), 64 code lines, 0 definitions
- **Estimated effort:** 0.64 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testspecial/64bit/low-mem-plist-1.g.out`  (0.17 person-days)
- source: [tst/testspecial/64bit/low-mem-plist-1.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/64bit/low-mem-plist-1.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.64bit.LowMemPlist1G`
- 17 code lines, 0 definitions

> gap> l := [];
> [  ]
> gap> l[2^50] := 1;
> Error, Cannot allocate 9007199254741000 bytes: cannot extend the workspace any more!!!!
> not in any function at *stdin*:3

### `tst/testspecial/64bit/low-mem-list-types.g.out`  (0.16 person-days)
- source: [tst/testspecial/64bit/low-mem-list-types.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/64bit/low-mem-list-types.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.64bit.LowMemListTypesG`
- 16 code lines, 0 definitions

> gap> ListWithIdenticalEntries(2^50, 'a');
> Error, Cannot allocate 1125899906842633 bytes: cannot extend the workspace any more!!
> not in any function at *stdin*:2
> you can enter 'quit;' to quit to outer loop
> brk> quit;

### `tst/testspecial/64bit/low-mem-plist-2.g.out`  (0.11 person-days)
- source: [tst/testspecial/64bit/low-mem-plist-2.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/64bit/low-mem-plist-2.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.64bit.LowMemPlist2G`
- 11 code lines, 0 definitions

> gap> EmptyPlist(2^50);
> Error, Cannot allocate 9007199254741000 bytes: cannot extend the workspace any more!!
> not in any function at *stdin*:2
> you can enter 'quit;' to quit to outer loop
> brk> quit;

### `tst/testspecial/64bit/low-mem-plist-1.g`  (0.08 person-days)
- source: [tst/testspecial/64bit/low-mem-plist-1.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/64bit/low-mem-plist-1.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.64bit.LowMemPlist1`
- 8 code lines, 0 definitions

> l := [];
> l[2^50] := 1;
> quit;
> l[2^50] := 2;
> quit;

### `tst/testspecial/64bit/low-mem-list-types.g`  (0.07 person-days)
- source: [tst/testspecial/64bit/low-mem-list-types.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/64bit/low-mem-list-types.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.64bit.LowMemListTypes`
- 7 code lines, 0 definitions

> ListWithIdenticalEntries(2^50, 'a');
> quit;
> ListWithIdenticalEntries(2^50, true);
> quit;
> ListWithIdenticalEntries(2^50, 2);

### `tst/testspecial/64bit/low-mem-plist-2.g`  (0.05 person-days)
- source: [tst/testspecial/64bit/low-mem-plist-2.g](https://github.com/gap-system/gap/blob/master/tst/testspecial/64bit/low-mem-plist-2.g)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.64bit.LowMemPlist2`
- 5 code lines, 0 definitions

> EmptyPlist(2^50);
> quit;
> EmptyPlist(2^50);
> quit;
> quit;

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeravsyxkxtuinehva5ru3qjfldoyjyxdz3ctias6smgvev4fzjwrvwq`, then merge with `tools/merge_tasks.py`.
