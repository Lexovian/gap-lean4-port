# GAP → Lean 4 port — distributed task bundle

This directory is the **work breakdown** for porting [GAP](https://github.com/gap-system/gap) to verified Lean 4. It is designed to be shared as a single archive (a `.tar.gz` mirror and/or the bundled `gap_port_tasks.car`) and **torrented** so that many people can work in parallel and merge results.

- **Taskset root CID:** `baguqeeraykhbhp2afmcuxp7dpgb72dhnpkng2qpcybegfu3lqqdilezq3hzq`
- **CAR bundle:** `gap_port_tasks.car` (581 DAG-JSON blocks)

## Layout

```
tasks/
  INDEX.md / INDEX.json     # catalogue of every task
  MANIFEST.json             # distribution + merge protocol
  gap_port_tasks.car        # IPLD DAG-JSON CARv1 of all tasks
  results.template.json     # fork this to record your results
  <layer>/NNNN-*.task.json  # one machine-readable task per file-group
  <layer>/NNNN-*.task.md    # the matching human brief
```

## Workflow (torrent + merge)

1. **Get the bundle.** Download the torrent / `.tar.gz` and verify it against the taskset root CID above.
2. **Claim a task.** Pick a `*.task.md` (start with `kernel/`, the foundation layer). Add a result record with `status: "claimed"` to your fork of `results.template.json`.
3. **Port it.** Create the suggested Lean modules, port the GAP source faithfully, and PROVE the correctness lemmas (no `sorry`, no new `axiom`, no `@[implemented_by]`).
4. **Record the result.** Update your record to `done` with the `artifacts` you produced (Lean module names + their sha256).
5. **Merge & re-seed.** Run `python3 tools/merge_tasks.py results-*.json -o merged.json` to union everyone's progress (monotone status + artifact union, keyed by `task_cid`), then re-seed a new torrent containing `merged.json`. Repeat until every task is `verified`.

## Result record schema (`harmonic.gap-port-result/1`)

```json
{
  "task_cid": "<CID from the task file>",
  "status": "done",
  "worker": "team-alpha",
  "timestamp": "2026-06-14T00:00:00Z",
  "artifacts": [
    {
      "lean_module": "RequestProject.Gap.Kernel.Permutat",
      "sha256": "<hex>",
      "note": "app/mul/inv + correctness"
    }
  ],
  "notes": "ported ProdPerm, InvPerm; proved app_mul, app_inv_left"
}
```

Status lattice (merge keeps the maximum): `todo` < `claimed` < `in_progress` < `done` < `verified`.

## Reproduce / re-partition

```bash
python3 tools/gap_port_tasker.py estimation/gap_port_estimate.blocks.json tasks --budget-days 12 --max-files 15
```

