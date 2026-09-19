# Sources

One folder per source. The folder records where the material came from and how far the
import has got, so an interrupted import can be picked up later.

```
sources/
  README.md
  <source>/
    source.json        where the material comes from, licence, how to cite it
    units/<unit>.json  one file per unit of work, with its own status
  originals/           the downloaded material itself, not committed
```

`originals/` is in `.gitignore`. The files there are often large, and they belong to their
authors. Every exercise cites its source in its own metadata, so the database stays
complete and usable without them. To get them back, follow the `url` in `source.json`.

## Why one file per unit

Several agents import in parallel. If they all appended to a single ledger they would
overwrite each other. One small JSON file per unit means each writer owns its own file.

A unit file looks like this:

```json
{
  "unit": "kan2017-a",
  "source": "mmmf-msu",
  "title": "Kanunnikov, 8e classe russe, 1er semestre, séances 1 à 5",
  "files": ["sources/originals/mmmf-msu/Kan2017.pdf"],
  "scope": "séances 1 à 5",
  "id_block": ["0101", "0120"],
  "status": "pending",
  "imported": [],
  "skipped": [],
  "notes": "",
  "updated": ""
}
```

`status` is one of `pending`, `in_progress`, `done`, `blocked`. `id_block` is the range of
exercise numbers reserved for that unit, so parallel writers never collide.

See the current state with:

```sh
python3 tools/vm.py progress
```
