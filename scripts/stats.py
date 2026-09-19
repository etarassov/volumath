#!/usr/bin/env python3
"""Counts of the exercise database, by source, grade, theme and difficulty.

Reads the Markdown files themselves rather than catalog.json, so the numbers are
current even when the index has not been rebuilt since the last import.

    python3 scripts/stats.py
    python3 scripts/stats.py --by theme,grade
    python3 scripts/stats.py --out stats.txt

Difficulty is always the columns. --by chooses what the rows nest by.
"""

import argparse
import collections
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "tools"))

import vm  # noqa: E402  needs the path line above

DIFFICULTIES = [1, 2, 3, 4, 5]
NO_SOURCE = "(no source)"


def source_of(exo):
    """The source folder an exercise came from.

    source.name is free text and has as many spellings as there were importers,
    so it cannot be grouped on. source.local_copy is structured and matches the
    sources/<id>/ folders. Exercises with neither are counted under NO_SOURCE
    rather than dropped, so the totals stay honest.
    """
    local = ((exo.meta.get("source") or {}).get("local_copy") or "").strip()
    found = re.match(r"sources/originals/([^/]+)/", local)
    return found.group(1) if found else NO_SOURCE


# name -> (value of an exercise, how to print it, how to sort it)
AXES = {
    "source": (
        source_of,
        lambda v: v,
        lambda v: (v == NO_SOURCE, str(v)),
    ),
    "grade": (
        lambda exo: exo.grade,
        lambda v: vm.GRADE_LABELS.get(v, str(v)),
        lambda v: (v is None, v or 0),
    ),
    "theme": (
        lambda exo: exo.theme,
        lambda v: str(v),
        lambda v: (vm.THEMES.index(v) if v in vm.THEMES else len(vm.THEMES), str(v)),
    ),
}


def new_node():
    return {"counts": collections.Counter(), "total": 0, "children": {}}


def tally(exos, axes):
    """Nest the exercises by the given axes.

    Every node on the way down is incremented, so a subtotal is the sum of what
    sits under it by construction and cannot drift from its children.
    """
    root = new_node()
    for exo in exos:
        node = root
        node["counts"][exo.difficulty] += 1
        node["total"] += 1
        for name in axes:
            value = AXES[name][0](exo)
            node = node["children"].setdefault(value, new_node())
            node["counts"][exo.difficulty] += 1
            node["total"] += 1
    return root


def walk(node, axes, depth=0, label="ALL"):
    """Flatten the tree into (depth, label, node) rows, in reading order."""
    rows = [(depth, label, node)]
    if depth < len(axes):
        _, to_label, to_sort = AXES[axes[depth]]
        for value in sorted(node["children"], key=to_sort):
            rows.extend(walk(node["children"][value], axes, depth + 1, to_label(value)))
    return rows


def render(rows):
    width = max([len("  " * d + label) for d, label, _ in rows] + [20]) + 2
    head = " " * width + "".join("%5s" % d for d in DIFFICULTIES) + "%8s" % "TOTAL"
    lines = [head, "-" * len(head)]
    for depth, label, node in rows:
        cells = "".join("%5d" % node["counts"].get(d, 0) for d in DIFFICULTIES)
        name = ("  " * depth + label).ljust(width)
        lines.append(name + cells + "%8d" % node["total"])
    return "\n".join(lines)


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--by", default="source,grade,theme",
                    help="nesting order, comma separated, from: %s "
                         "(default: source,grade,theme)" % ", ".join(AXES))
    ap.add_argument("--out", metavar="FILE", help="write here instead of stdout")
    args = ap.parse_args()

    axes = [a.strip() for a in args.by.split(",") if a.strip()]
    unknown = [a for a in axes if a not in AXES]
    if unknown:
        ap.error("unknown axis %s, pick from: %s"
                 % (", ".join(unknown), ", ".join(AXES)))

    exos = vm.all_exercises()
    if not exos:
        ap.error("no exercises found under %s" % ROOT)

    odd = sorted({e.difficulty for e in exos} - set(DIFFICULTIES))
    if odd:
        print("warning: difficulty outside 1-5 is counted in TOTAL but in no "
              "column: %s" % odd, file=sys.stderr)

    text = render(walk(tally(exos, axes), axes))
    if args.out:
        Path(args.out).write_text(text + "\n", encoding="utf-8")
        print("wrote %s" % args.out)
    else:
        print(text)


if __name__ == "__main__":
    main()
