# GAP-0434 — Port etc/emscripten (build)

- **Task CID:** `baguqeera6txrj4zfygtvlxcy662swp2gs27lyhu4ykeftmwrwkqelidm372q`
- **Layer:** `build`   **Module:** `etc/emscripten`
- **Size:** 8 file(s), 1847 code lines, 0 definitions
- **Estimated effort:** 6.39 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`

## Files to port

### `etc/emscripten/startup_manifest.json`  (5.07 person-days)
- source: [etc/emscripten/startup_manifest.json](https://github.com/gap-system/gap/blob/master/etc/emscripten/startup_manifest.json)
- suggested Lean module: `RequestProject.Gap.Build.Emscripten.StartupManifest`
- 1521 code lines, 0 definitions

> [
>   "lib/init.g",
>   "lib/kernel.g",
>   "lib/global.g",
>   "lib/system.g",

### `etc/emscripten/README.md`  (0.36 person-days)
- source: [etc/emscripten/README.md](https://github.com/gap-system/gap/blob/master/etc/emscripten/README.md)
- suggested Lean module: `RequestProject.Gap.Build.Emscripten.README`
- 101 code lines, 0 definitions

> # GAP in the browser
> Build GAP as a WebAssembly module and serve it as a self-contained website.
> The terminal interface uses [xterm-pty](https://github.com/mame/xterm-pty),
> so the resulting page behaves like a normal GAP REPL.
> ## Quick start

### `etc/emscripten/build.sh`  (0.31 person-days)
- source: [etc/emscripten/build.sh](https://github.com/gap-system/gap/blob/master/etc/emscripten/build.sh)
- suggested Lean module: `RequestProject.Gap.Build.Emscripten.Build`
- 70 code lines, 0 definitions

> !/usr/bin/env bash
> 
> Build GAP as a WebAssembly module using emscripten.
> Run from the GAP source root: etc/emscripten/build.sh
> 
> Most people will want etc/emscripten/build-in-docker.sh instead, which
> wraps this in a pinned emsdk container.

### `etc/emscripten/build-in-docker.sh`  (0.21 person-days)
- source: [etc/emscripten/build-in-docker.sh](https://github.com/gap-system/gap/blob/master/etc/emscripten/build-in-docker.sh)
- suggested Lean module: `RequestProject.Gap.Build.Emscripten.BuildInDocker`
- 48 code lines, 0 definitions

> !/usr/bin/env bash
> 
> One-stop shop: build GAP for the web inside a pinned container.
> 
> Usage (run from the GAP source tree):
> etc/emscripten/build-in-docker.sh
> 
> Output: ./web-example/ with a self-contained website. Copy it anywhere
> and serve with COOP/COEP headers (etc/emscripten/serve.py is one option).

### `etc/emscripten/Dockerfile`  (0.17 person-days)
- source: [etc/emscripten/Dockerfile](https://github.com/gap-system/gap/blob/master/etc/emscripten/Dockerfile)
- suggested Lean module: `RequestProject.Gap.Build.Emscripten.Dockerfile`
- 45 code lines, 0 definitions

> # Build environment for compiling GAP to WebAssembly via Emscripten.
> #
> # Pinned to emsdk 3.1.23 for reproducibility. Both pieces of the in-browser
> # REPL are sensitive to the exact toolchain version:
> #

### `etc/emscripten/assemble-website.sh`  (0.14 person-days)
- source: [etc/emscripten/assemble-website.sh](https://github.com/gap-system/gap/blob/master/etc/emscripten/assemble-website.sh)
- suggested Lean module: `RequestProject.Gap.Build.Emscripten.AssembleWebsite`
- 29 code lines, 0 definitions

> !/usr/bin/env bash
> 
> Assemble a self-contained website from a completed wasm build.
> Outputs ./web-example/ relative to the GAP source root.
> 
> Run after etc/emscripten/build.sh (or have build-in-docker.sh call it).

### `etc/emscripten/serve.py`  (0.09 person-days)
- source: [etc/emscripten/serve.py](https://github.com/gap-system/gap/blob/master/etc/emscripten/serve.py)
- suggested Lean module: `RequestProject.Gap.Build.Emscripten.Serve`
- 25 code lines, 0 definitions

> !/usr/bin/env python3

### `etc/emscripten/generate_gap_fs_json.py`  (0.03 person-days)
- source: [etc/emscripten/generate_gap_fs_json.py](https://github.com/gap-system/gap/blob/master/etc/emscripten/generate_gap_fs_json.py)
- suggested Lean module: `RequestProject.Gap.Build.Emscripten.GenerateGapFsJson`
- 8 code lines, 0 definitions

> !/usr/bin/env python3

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera6txrj4zfygtvlxcy662swp2gs27lyhu4ykeftmwrwkqelidm372q`, then merge with `tools/merge_tasks.py`.
