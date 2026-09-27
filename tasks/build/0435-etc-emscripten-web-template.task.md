# GAP-0435 — Port etc/emscripten/web-template (build)

- **Task CID:** `baguqeeraruet4hxd6fca6s4mpikhk3wlhrrfxcr5bymddfsbubodrdx27yjq`
- **Layer:** `build`   **Module:** `etc/emscripten/web-template`
- **Size:** 4 file(s), 392 code lines, 0 definitions
- **Estimated effort:** 1.55 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`

## Files to port

### `etc/emscripten/web-template/index.html`  (0.62 person-days)
- source: [etc/emscripten/web-template/index.html](https://github.com/gap-system/gap/blob/master/etc/emscripten/web-template/index.html)
- suggested Lean module: `RequestProject.Gap.Build.Emscripten.WebTemplate.Index`
- 173 code lines, 0 definitions

> <!DOCTYPE html>
> <html lang="en">
>   <head>
>     <meta charset="UTF-8">
>     <meta name="viewport" content="width=device-width, initial-scale=1">

### `etc/emscripten/web-template/coi-serviceworker.js`  (0.47 person-days)
- source: [etc/emscripten/web-template/coi-serviceworker.js](https://github.com/gap-system/gap/blob/master/etc/emscripten/web-template/coi-serviceworker.js)
- suggested Lean module: `RequestProject.Gap.Build.Emscripten.WebTemplate.CoiServiceworker`
- 101 code lines, 0 definitions

> /*! coi-serviceworker v0.1.6 - Guido Zuidhof, licensed under MIT */
> let coepCredentialless = false;
> if (typeof window === 'undefined') {
>     self.addEventListener("install", () => self.skipWaiting());
>     self.addEventListener("activate", (event) => event.waitUntil(self.clients.claim()));

### `etc/emscripten/web-template/gap-fs.js`  (0.43 person-days)
- source: [etc/emscripten/web-template/gap-fs.js](https://github.com/gap-system/gap/blob/master/etc/emscripten/web-template/gap-fs.js)
- suggested Lean module: `RequestProject.Gap.Build.Emscripten.WebTemplate.GapFs`
- 110 code lines, 0 definitions

> // Instrument fetch and XMLHttpRequest so the page can collect the list of
> // URLs the worker actually requests, for rebuilding startup_manifest.json
> // without scraping the browser network panel. Each unique URL is posted
> // to the main thread as { type: "gap-fetched", url: ... }.
> (function instrumentFetches() {

### `etc/emscripten/web-template/gap-worker.js`  (0.03 person-days)
- source: [etc/emscripten/web-template/gap-worker.js](https://github.com/gap-system/gap/blob/master/etc/emscripten/web-template/gap-worker.js)
- suggested Lean module: `RequestProject.Gap.Build.Emscripten.WebTemplate.GapWorker`
- 8 code lines, 0 definitions

> importScripts("https://cdn.jsdelivr.net/npm/xterm-pty@0.9.4/workerTools.js");
> onmessage = (msg) => {
>   // Prepare the Module object BEFORE importing gap.js
>   self.Module = self.Module || {};
>   importScripts("gap-fs.js");

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraruet4hxd6fca6s4mpikhk3wlhrrfxcr5bymddfsbubodrdx27yjq`, then merge with `tools/merge_tasks.py`.
