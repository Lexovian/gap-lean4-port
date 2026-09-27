# GAP → Lean port estimation tool

`gap_port_estimator.py` parses a checkout of [GAP](https://github.com/gap-system/gap),
estimates the effort to produce a faithful **verified** Lean 4 / Mathlib port of
each part, and serialises the result as a structured **IPLD DAG-JSON CARv1**
archive whose nodes quote the original GAP source and documentation.

It uses **only the Python standard library** (no IPFS install required).

## Run

```bash
# 1. get the source
git clone --depth 1 https://github.com/gap-system/gap /tmp/gap-src
# 2. estimate + emit the CAR archive
python3 tools/gap_port_estimator.py /tmp/gap-src estimation
# 3. (optional) verify the archive round-trips
python3 tools/verify_car.py estimation/gap_port_estimate.car
```

## Outputs (written to `estimation/`)

| file | description |
|---|---|
| `gap_port_estimate.car` | the IPLD **DAG-JSON CARv1** archive (the deliverable) |
| `gap_port_estimate.root.json` | the decoded root node + its CID |
| `gap_port_estimate.blocks.json` | every CID → decoded node (for inspection) |
| `gap_port_estimate.report.md` | human-readable estimation report |

## What the CAR contains

* Each estimation node is a **DAG-JSON** block (multicodec `0x0129`), addressed
  by a **CIDv1** with a **sha2-256** multihash.
* Parents reference children only through those CIDs, so the archive is a
  **Merkle DAG** mirroring the GAP repository tree:

  ```
  root (gap-to-lean-port-estimate, totals + quotes from COPYRIGHT/README)
   ├─ knowledge      (GAP→Lean porting model, layer parameters, progress)
   ├─ src/ … lib/ … grp/ … tst/ …   (directory nodes, aggregated effort)
   │    └─ <file> nodes: metrics + per-file effort + verbatim source quote
   └─ …
  ```

* `verify_car.py` re-reads the CAR, recomputes every CID from its bytes,
  re-parses every block as DAG-JSON, and checks that all links resolve and the
  DAG is acyclic.

## Work partitioning & distributed tasking

Two further tools turn the estimate into a distributable, mergeable work
breakdown for a torrent-style "tasking team".

### `gap_port_tasker.py`

Partitions the per-file estimate into **574 self-contained task files** grouped
by module and bounded by an effort budget, and emits them under `tasks/`:

```bash
python3 tools/gap_port_tasker.py estimation/gap_port_estimate.blocks.json tasks \
    --budget-days 12 --max-files 15
```

Outputs (in `tasks/`):

| file | description |
|---|---|
| `<layer>/NNNN-*.task.json` | one machine-readable task per file-group |
| `<layer>/NNNN-*.task.md` | the matching human-readable brief (source links, suggested Lean module, definition-of-done) |
| `INDEX.json` / `INDEX.md` | catalogue of every task |
| `MANIFEST.json` | distribution + merge protocol |
| `gap_port_tasks.car` | IPLD DAG-JSON CARv1 bundle of all task specs |
| `results.template.json` | fork-and-fill result ledger |
| `README.md` | how to claim, work, and merge tasks |

Each task spec is content-addressed by a CIDv1 (`task_cid`), so identical specs
dedup across torrents and results merge purely by CID. A reproducible seed
archive for torrenting is written to `dist/gap_port_tasks.seed.tar.gz`.

### `merge_tasks.py`

Merges result ledgers from independent workers into one, as a CRDT-style join
keyed by `task_cid` (status advances along `todo < claimed < in_progress < done
< verified`; artifacts are unioned). The merge is commutative, associative and
idempotent, so torrents can be merged in any order and re-seeded:

```bash
python3 tools/merge_tasks.py results-*.json -o merged.json --against tasks/INDEX.json
```

## Estimation model

`effort_days(file) = code_lines / velocity[layer] * difficulty(file) * (1 - mathlib_leverage[layer])`

where `difficulty = 1 + min(1.5, control-flow-keyword density)`. Per-layer
`velocity` (verified code-LOC/person-day) and `mathlib_leverage` (fraction
already provided by Lean/Mathlib) are documented in the `knowledge` node and in
the report. These are heuristic planning figures for a faithful, machine-checked
port (definitions **and** proofs), not an unchecked transpile.
