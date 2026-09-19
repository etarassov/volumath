#!/usr/bin/env python3
"""volumath: tools for the math club exercise database.

Commands:
  new     create an empty exercise file in the right folder
  list    list exercises matching a filter
  check   validate every exercise file
  index   rebuild catalog.json and INDEX.md
  build   render one exercise per PDF (statement, hints, solution)
  sheet   build a student handout and a teacher document from a selection

Every exercise is one Markdown file with YAML front matter. Structural words
(front matter keys, section headings) are English so scripts can rely on them.
All content is French. The French labels live in this file, see LABELS below.
"""

import argparse
import json
import re
import subprocess
import sys
import unicodedata
from datetime import date
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

THEMES = [
    "arithmetic",
    "algebra",
    "geometry",
    "functions-analysis",
    "probability-statistics",
    "combinatorics",
    "logic-reasoning",
    "coloring",
]

THEME_LABELS = {
    "arithmetic": "Arithmétique",
    "algebra": "Algèbre",
    "geometry": "Géométrie",
    "functions-analysis": "Fonctions et analyse",
    "probability-statistics": "Probabilités et statistiques",
    "combinatorics": "Dénombrement",
    "logic-reasoning": "Logique et raisonnement",
    "coloring": "Coloriage",
}

GRADE_LABELS = {8: "4e", 9: "3e", 10: "2de", 11: "1re", 12: "Terminale"}

SECTION_LABELS = {
    "Statement": "Énoncé",
    "Hints": "Indications",
    "Solution": "Solution",
    "Going further": "Pour aller plus loin",
}

REQUIRED_META = ["id", "title", "grade", "theme", "difficulty", "source"]
REQUIRED_SECTIONS = ["Statement", "Solution"]
KNOWN_SECTIONS = list(SECTION_LABELS)


# --------------------------------------------------------------------------
# Minimal YAML front matter reader.
# Only the subset this project writes: nested maps, block and inline lists,
# quoted or bare scalars. `check` reports anything it cannot read.
# --------------------------------------------------------------------------

def _split_inline(text):
    out, cur, quote = [], "", None
    for ch in text:
        if quote:
            if ch == quote:
                quote = None
            cur += ch
        elif ch in "\"'":
            quote = ch
            cur += ch
        elif ch == ",":
            out.append(cur)
            cur = ""
        else:
            cur += ch
    if cur.strip():
        out.append(cur)
    return out


def _scalar(text):
    s = text.strip()
    if s == "" or s in ("null", "~"):
        return None
    if s in ("true", "True"):
        return True
    if s in ("false", "False"):
        return False
    if len(s) >= 2 and s[0] == s[-1] and s[0] in "\"'":
        return s[1:-1]
    if s.startswith("[") and s.endswith("]"):
        inner = s[1:-1].strip()
        return [_scalar(x) for x in _split_inline(inner)] if inner else []
    try:
        return int(s)
    except ValueError:
        pass
    try:
        return float(s)
    except ValueError:
        pass
    return s


def _indent(line):
    return len(line) - len(line.lstrip(" "))


def _skip_blank(lines, i):
    while i < len(lines) and (not lines[i].strip() or lines[i].lstrip().startswith("#")):
        i += 1
    return i


def _parse_block(lines, i, indent):
    i = _skip_blank(lines, i)
    if i >= len(lines):
        return None, i
    if lines[i].lstrip().startswith("- "):
        items = []
        while i < len(lines):
            j = _skip_blank(lines, i)
            if j >= len(lines):
                i = j
                break
            line = lines[j]
            if _indent(line) < indent or not line.lstrip().startswith("- "):
                i = j
                break
            rest = line.lstrip()[2:]
            if rest.strip() == "":
                value, i = _parse_block(lines, j + 1, _indent(line) + 2)
                items.append(value)
            elif re.match(r"^[A-Za-z0-9_\-]+\s*:", rest):
                value, i = _parse_block(lines, j, _indent(line) + 2)
                items.append(value)
            else:
                items.append(_scalar(rest))
                i = j + 1
        return items, i

    out = {}
    while i < len(lines):
        j = _skip_blank(lines, i)
        if j >= len(lines):
            i = j
            break
        line = lines[j]
        if _indent(line) < indent:
            i = j
            break
        m = re.match(r"^([A-Za-z0-9_\-]+)\s*:\s*(.*)$", line.strip())
        if not m:
            i = j
            break
        key, rest = m.group(1), m.group(2)
        if rest.strip() != "":
            out[key] = _scalar(rest)
            i = j + 1
            continue
        k = _skip_blank(lines, j + 1)
        if k < len(lines) and (
            _indent(lines[k]) > _indent(line)
            or (_indent(lines[k]) == _indent(line) and lines[k].lstrip().startswith("- "))
        ):
            out[key], i = _parse_block(lines, k, _indent(lines[k]))
        else:
            out[key] = None
            i = j + 1
    return out, i


def parse_front_matter(text):
    """Return (metadata dict, body). Raises ValueError when the file has none."""
    if not text.startswith("---"):
        raise ValueError("file does not start with a front matter block (---)")
    end = text.find("\n---", 3)
    if end == -1:
        raise ValueError("front matter block is never closed with ---")
    head = text[text.find("\n") + 1 : end]
    body = text[end + 4 :].lstrip("\n")
    meta, _ = _parse_block(head.split("\n"), 0, 0)
    return (meta or {}), body


SECTION_RE = re.compile(r"^##[ \t]+(.+?)[ \t]*$", re.M)


def split_sections(body):
    out, hits = {}, list(SECTION_RE.finditer(body))
    for k, m in enumerate(hits):
        end = hits[k + 1].start() if k + 1 < len(hits) else len(body)
        out[m.group(1).strip()] = body[m.end() : end].strip()
    return out


# --------------------------------------------------------------------------
# Exercises
# --------------------------------------------------------------------------

class Exercise:
    def __init__(self, path, meta, sections):
        self.path = path
        self.meta = meta
        self.sections = sections

    @property
    def id(self):
        return str(self.meta.get("id", "")).strip()

    @property
    def grade(self):
        return self.meta.get("grade")

    @property
    def theme(self):
        return self.meta.get("theme")

    @property
    def difficulty(self):
        return self.meta.get("difficulty")

    @property
    def title(self):
        return self.meta.get("title") or self.path.stem

    @property
    def rel(self):
        return self.path.relative_to(ROOT).as_posix()

    def label(self, with_duration=True):
        bits = [
            GRADE_LABELS.get(self.grade, str(self.grade)),
            THEME_LABELS.get(self.theme, str(self.theme)),
            "n° %s" % self.id,
        ]
        minutes = self.meta.get("duration_min")
        if with_duration and minutes:
            bits.append("%s min" % minutes)
        return " · ".join(bits)

    @classmethod
    def load(cls, path):
        meta, body = parse_front_matter(Path(path).read_text(encoding="utf-8"))
        return cls(Path(path).resolve(), meta, split_sections(body))


def all_exercises():
    found = []
    for path in sorted(ROOT.glob("grade-*/*/[1-5]/*.md")):
        try:
            found.append(Exercise.load(path))
        except Exception as exc:
            print("skipped %s: %s" % (path.relative_to(ROOT), exc), file=sys.stderr)
    return found


def select(args):
    picked = all_exercises()
    if getattr(args, "ids", None):
        wanted = {str(i).strip() for i in args.ids}
        picked = [e for e in picked if e.id in wanted]
    if getattr(args, "grade", None):
        picked = [e for e in picked if e.grade == args.grade]
    if getattr(args, "theme", None):
        picked = [e for e in picked if e.theme == args.theme]
    if getattr(args, "difficulty", None):
        picked = [e for e in picked if e.difficulty == args.difficulty]
    if getattr(args, "tag", None):
        picked = [e for e in picked if args.tag in (e.meta.get("tags") or [])]
    picked.sort(key=lambda e: (e.grade or 0, e.theme or "", e.difficulty or 0, e.id))
    return picked


def next_id():
    used = [int(e.id) for e in all_exercises() if e.id.isdigit()]
    return "%04d" % (max(used) + 1 if used else 1)


def slugify(text):
    plain = unicodedata.normalize("NFKD", text).encode("ascii", "ignore").decode()
    return re.sub(r"-+", "-", re.sub(r"[^a-z0-9]+", "-", plain.lower())).strip("-")


def exercise_dir(grade, theme, difficulty):
    return ROOT / ("grade-%02d" % grade) / theme / str(difficulty)


# --------------------------------------------------------------------------
# Rendering through pandoc and typst
# --------------------------------------------------------------------------

def need(tool):
    from shutil import which
    if which(tool) is None:
        sys.exit("%s is missing. Run: brew install pandoc typst" % tool)


def md_to_typst(markdown, source_dir):
    """Convert one Markdown chunk to Typst markup, with image paths made absolute."""
    if not markdown.strip():
        return ""
    done = subprocess.run(
        ["pandoc", "-f", "markdown", "-t", "typst"],
        input=markdown, capture_output=True, text=True,
    )
    if done.returncode != 0:
        sys.exit("pandoc failed:\n%s" % done.stderr)
    base = source_dir.relative_to(ROOT).as_posix()

    def fix(m):
        target = m.group(1)
        if target.startswith(("/", "http://", "https://")):
            return m.group(0)
        return 'image("/%s/%s"' % (base, target)

    return re.sub(r'image\("([^"]+)"', fix, done.stdout)


def tq(text):
    """Quote a Python string as a Typst string."""
    return '"%s"' % str(text).replace("\\", "\\\\").replace('"', '\\"')


def typst_head():
    return '#import "/tools/preamble.typ": *\n#show: setup\n\n'


def part(name, markdown, source_dir):
    if not markdown.strip():
        return ""
    return "#part-title(%s)\n%s\n" % (tq(SECTION_LABELS.get(name, name)), md_to_typst(markdown, source_dir))


def doc_single(exo):
    """One exercise: statement, then hints, then solution, each on its own page."""
    here = exo.path.parent
    out = [typst_head()]
    out.append("#exo-header(meta: %s, title: %s, difficulty: %d)\n" % (
        tq(exo.label()), tq(exo.title), int(exo.difficulty or 1)))
    out.append(md_to_typst(exo.sections.get("Statement", ""), here))
    if exo.sections.get("Hints"):
        out.append("\n#pagebreak()\n")
        out.append(part("Hints", exo.sections["Hints"], here))
    out.append("\n#pagebreak()\n")
    out.append(part("Solution", exo.sections.get("Solution", ""), here))
    if exo.sections.get("Going further"):
        out.append("\n#v(12pt)\n")
        out.append(part("Going further", exo.sections["Going further"], here))
    return "\n".join(out)


def doc_sheet(exos, kind, title, subtitle):
    """kind 'students': statements only. kind 'teacher': hints and solutions."""
    out = [typst_head(), "#doc-title(%s, %s)\n" % (tq(title), tq(subtitle))]
    for n, exo in enumerate(exos, start=1):
        here = exo.path.parent
        if n > 1:
            out.append("#separator()\n")
        out.append("#exo-item(numero: %d, meta: %s, title: %s, difficulty: %d)\n" % (
            n, tq(exo.label()), tq(exo.title), int(exo.difficulty or 1)))
        if kind == "students":
            out.append(md_to_typst(exo.sections.get("Statement", ""), here))
        else:
            if exo.sections.get("Hints"):
                out.append(part("Hints", exo.sections["Hints"], here))
                out.append("#v(6pt)\n")
            out.append(part("Solution", exo.sections.get("Solution", ""), here))
    return "\n".join(out)


def compile_typst(source, pdf_path):
    need("typst")
    pdf_path.parent.mkdir(parents=True, exist_ok=True)
    typ_path = pdf_path.with_suffix(".typ")
    typ_path.write_text(source, encoding="utf-8")
    done = subprocess.run(
        ["typst", "compile", "--root", str(ROOT), str(typ_path), str(pdf_path)],
        capture_output=True, text=True,
    )
    if done.returncode != 0:
        sys.exit("typst failed on %s:\n%s" % (typ_path, done.stderr))
    return pdf_path


# --------------------------------------------------------------------------
# Commands
# --------------------------------------------------------------------------

TEMPLATE = """---
id: "{id}"
title: "{title}"
grade: {grade}
theme: {theme}
difficulty: {difficulty}
duration_min: 15
tags: []
adapted_from: null
created: {today}
source:
  name: ""
  reference: ""
  url: ""
  original_language: ""
  local_copy: ""
---

## Statement

À écrire.

## Hints

1. À écrire.

## Solution

À écrire.
"""


def cmd_new(args):
    exo_id = args.id or next_id()
    if not re.fullmatch(r"\d{4}", exo_id):
        sys.exit("id must be four digits, got %r" % exo_id)
    if any(e.id == exo_id for e in all_exercises()):
        sys.exit("id %s is already used" % exo_id)
    slug = args.slug or slugify(args.title)
    folder = exercise_dir(args.grade, args.theme, args.difficulty)
    folder.mkdir(parents=True, exist_ok=True)
    path = folder / ("%s-%s.md" % (exo_id, slug))
    if path.exists():
        sys.exit("already there: %s" % path)
    path.write_text(TEMPLATE.format(
        id=exo_id, title=args.title.replace('"', "'"), grade=args.grade,
        theme=args.theme, difficulty=args.difficulty, today=date.today().isoformat(),
    ), encoding="utf-8")
    print(path.relative_to(ROOT))


def cmd_list(args):
    for exo in select(args):
        print("%s  %-11s %-26s %s  %s" % (
            exo.id, GRADE_LABELS.get(exo.grade, exo.grade), exo.theme,
            "*" * int(exo.difficulty or 0) + "." * (5 - int(exo.difficulty or 0)), exo.title))


STOPWORDS = {"le", "la", "les", "un", "une", "des", "de", "du", "et", "ou", "a", "au", "aux",
             "en", "dans", "sur", "qui", "que", "pour", "par", "avec", "son", "sa", "ses",
             "deux", "trois", "est", "sont", "d", "l"}


def title_tokens(title):
    plain = unicodedata.normalize("NFKD", title).encode("ascii", "ignore").decode().lower()
    return {w for w in re.findall(r"[a-z0-9]+", plain) if w not in STOPWORDS}


def linked(exo, other_id):
    return str(other_id) in {str(x) for x in (exo.meta.get("see_also") or [])}


def duplicate_notes(exos):
    """Flag exercises whose titles overlap a lot. Overlapping sources repeat classics.

    A pair already cross linked with see_also is deliberate and stays quiet, unless the two
    sit at the same grade, theme and difficulty, where one of them is simply waste.
    """
    out = []
    for i, a in enumerate(exos):
        ta = title_tokens(a.title)
        if len(ta) < 2:
            continue
        for b in exos[i + 1:]:
            tb = title_tokens(b.title)
            if len(tb) < 2:
                continue
            if len(ta & tb) / min(len(ta), len(tb)) < 0.7:
                continue
            same_slot = (a.grade, a.theme, a.difficulty) == (b.grade, b.theme, b.difficulty)
            if same_slot:
                out.append("%s and %s sit in the same folder and look like the same problem, "
                           "consider keeping one: \"%s\" / \"%s\"" % (a.id, b.id, a.title, b.title))
            elif not (linked(a, b.id) and linked(b, a.id)):
                out.append("possible duplicate, cross link them with see_also if deliberate: "
                           "%s (grade %s) \"%s\" and %s (grade %s) \"%s\"" % (
                               a.id, a.grade, a.title, b.id, b.grade, b.title))
    return out


def cmd_check(args):
    """Errors break the rules and set the exit code. Notes are only advice."""
    exos, errors, notes, seen = all_exercises(), [], [], {}
    for exo in exos:
        rel, parts = exo.rel, exo.path.relative_to(ROOT).parts
        for key in REQUIRED_META:
            if exo.meta.get(key) in (None, ""):
                errors.append("%s: missing metadata '%s'" % (rel, key))
        for name in REQUIRED_SECTIONS:
            if not exo.sections.get(name):
                errors.append("%s: missing or empty section '## %s'" % (rel, name))
        for name in exo.sections:
            if name not in KNOWN_SECTIONS:
                errors.append("%s: unknown section '## %s'" % (rel, name))
        if not exo.sections.get("Hints"):
            notes.append("%s: no hints, they are recommended" % rel)
        if exo.id in seen:
            errors.append("%s: id %s already used by %s" % (rel, exo.id, seen[exo.id]))
        seen[exo.id] = rel
        if not exo.path.name.startswith(exo.id + "-"):
            errors.append("%s: file name does not start with id %s" % (rel, exo.id))
        if parts[0] != "grade-%02d" % (exo.grade or 0):
            errors.append("%s: folder %s does not match grade %s" % (rel, parts[0], exo.grade))
        if parts[1] != exo.theme:
            errors.append("%s: folder %s does not match theme %s" % (rel, parts[1], exo.theme))
        if parts[2] != str(exo.difficulty):
            errors.append("%s: folder %s does not match difficulty %s" % (rel, parts[2], exo.difficulty))
        if exo.theme not in THEMES:
            errors.append("%s: unknown theme %s" % (rel, exo.theme))
        if exo.grade not in GRADE_LABELS:
            errors.append("%s: unknown grade %s" % (rel, exo.grade))
        if exo.difficulty not in (1, 2, 3, 4, 5):
            errors.append("%s: difficulty must be 1 to 5, found %s" % (rel, exo.difficulty))
        for target in re.findall(r"!\[[^\]]*\]\(([^)]+)\)", "\n".join(exo.sections.values())):
            if not target.startswith(("http://", "https://")) and not (exo.path.parent / target).exists():
                errors.append("%s: figure not found: %s" % (rel, target))
        source = exo.meta.get("source") or {}
        if isinstance(source, dict):
            if not source.get("name"):
                errors.append("%s: source.name is empty" % rel)
            copy = source.get("local_copy")
            if copy and not (ROOT / copy).exists():
                notes.append("%s: source.local_copy not on this machine: %s" % (rel, copy))
        else:
            errors.append("%s: source must be a block with name, reference, url" % rel)
    known = {e.id for e in exos}
    for exo in exos:
        origin = exo.meta.get("adapted_from")
        if origin and str(origin) not in known:
            errors.append("%s: adapted_from points at unknown id %s" % (exo.rel, origin))
        for other in exo.meta.get("see_also") or []:
            if str(other) not in known:
                errors.append("%s: see_also points at unknown id %s" % (exo.rel, other))
            elif str(other) == exo.id:
                errors.append("%s: see_also points at itself" % exo.rel)
    notes.extend(duplicate_notes(exos))
    for line in errors:
        print("error  " + line)
    for line in notes:
        print("note   " + line)
    print("\n%d exercise(s), %d error(s), %d note(s)" % (len(exos), len(errors), len(notes)))
    return 1 if errors else 0


def cmd_index(args):
    exos = all_exercises()
    catalog = []
    for exo in exos:
        entry = dict(exo.meta)
        entry["path"] = exo.rel
        entry["sections"] = sorted(exo.sections)
        catalog.append(entry)
    (ROOT / "catalog.json").write_text(
        json.dumps(catalog, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    lines = ["# Catalogue des exercices", "",
             "Fichier produit par `python3 tools/vm.py index`. Ne pas modifier à la main.", "",
             "%d exercice(s)." % len(exos), ""]
    for grade in sorted({e.grade for e in exos}):
        lines += ["## %s" % GRADE_LABELS.get(grade, grade), ""]
        for theme in THEMES:
            group = [e for e in exos if e.grade == grade and e.theme == theme]
            if not group:
                continue
            lines += ["### %s" % THEME_LABELS[theme], "",
                      "| Difficulté | N° | Titre | Fichier |", "| --- | --- | --- | --- |"]
            for exo in sorted(group, key=lambda e: (e.difficulty or 0, e.id)):
                marks = "●" * int(exo.difficulty or 0) + "○" * (5 - int(exo.difficulty or 0))
                lines.append("| %s | %s | %s | [md](%s) |" % (marks, exo.id, exo.title, exo.rel))
            lines.append("")
    (ROOT / "INDEX.md").write_text("\n".join(lines), encoding="utf-8")
    print("catalog.json and INDEX.md rebuilt, %d exercise(s)" % len(exos))


def cmd_progress(args):
    units = sorted((ROOT / "sources").glob("*/units/*.json"))
    if not units:
        print("no import unit recorded yet")
        return 0
    rows, totals = [], {}
    for path in units:
        try:
            u = json.loads(path.read_text(encoding="utf-8"))
        except Exception as exc:
            print("unreadable %s: %s" % (path.relative_to(ROOT), exc), file=sys.stderr)
            continue
        status = u.get("status", "?")
        totals[status] = totals.get(status, 0) + 1
        block = u.get("id_block") or ["", ""]
        rows.append((u.get("source", path.parts[-3]), u.get("unit", path.stem), status,
                     len(u.get("imported") or []), len(u.get("skipped") or []),
                     "%s-%s" % (block[0], block[1]), u.get("title", "")))
    rows.sort()
    print("%-10s %-14s %-12s %4s %4s  %-11s %s" % (
        "SOURCE", "UNIT", "STATUS", "IMP", "SKIP", "ID BLOCK", "TITLE"))
    for r in rows:
        print("%-10s %-14s %-12s %4d %4d  %-11s %s" % r)
    print("\n%d unit(s): %s" % (
        len(rows), ", ".join("%s %d" % (k, v) for k, v in sorted(totals.items()))))
    print("%d exercise(s) in the database" % len(all_exercises()))
    return 0


def cmd_build(args):
    need("pandoc")
    exos = [Exercise.load(p) for p in args.paths] if args.paths else select(args)
    if not exos:
        sys.exit("nothing matched")
    for exo in exos:
        pdf = ROOT / "build" / "exercises" / (exo.path.stem + ".pdf")
        compile_typst(doc_single(exo), pdf)
        print(pdf.relative_to(ROOT))


def cmd_sheet(args):
    need("pandoc")
    exos = select(args)
    if not exos:
        sys.exit("nothing matched")
    title = args.title or "Fiche d'exercices"
    bits = []
    if args.grade:
        bits.append(GRADE_LABELS.get(args.grade, str(args.grade)))
    if args.theme:
        bits.append(THEME_LABELS.get(args.theme, args.theme))
    subtitle = " · ".join(bits)
    base = ROOT / "build" / "sheets" / args.out
    students = compile_typst(doc_sheet(exos, "students", title, subtitle),
                             base.with_name(base.name + "-eleves.pdf"))
    teacher = compile_typst(doc_sheet(exos, "teacher", title + " : indications et solutions", subtitle),
                            base.with_name(base.name + "-prof.pdf"))
    print("%d exercise(s)" % len(exos))
    print(students.relative_to(ROOT))
    print(teacher.relative_to(ROOT))


def add_filters(parser):
    parser.add_argument("--ids", nargs="+", help="exercise numbers, for example 0001 0007")
    parser.add_argument("--grade", type=int, choices=sorted(GRADE_LABELS))
    parser.add_argument("--theme", choices=THEMES)
    parser.add_argument("--difficulty", type=int, choices=[1, 2, 3, 4, 5])
    parser.add_argument("--tag")


def main():
    parser = argparse.ArgumentParser(prog="vm.py", description="volumath exercise database tools")
    subs = parser.add_subparsers(dest="command", required=True)

    p = subs.add_parser("new", help="create an empty exercise file")
    p.add_argument("--grade", type=int, required=True, choices=sorted(GRADE_LABELS))
    p.add_argument("--theme", required=True, choices=THEMES)
    p.add_argument("--difficulty", type=int, required=True, choices=[1, 2, 3, 4, 5])
    p.add_argument("--title", required=True, help="French title")
    p.add_argument("--slug", help="English slug for the file name")
    p.add_argument("--id", help="explicit four digit id, required during a parallel import")
    p.set_defaults(func=cmd_new)

    p = subs.add_parser("list", help="list exercises")
    add_filters(p)
    p.set_defaults(func=cmd_list)

    p = subs.add_parser("check", help="validate every exercise file")
    p.set_defaults(func=cmd_check)

    p = subs.add_parser("index", help="rebuild catalog.json and INDEX.md")
    p.set_defaults(func=cmd_index)

    p = subs.add_parser("progress", help="show how far each import unit has got")
    p.set_defaults(func=cmd_progress)

    p = subs.add_parser("build", help="render one PDF per exercise")
    p.add_argument("paths", nargs="*", help="explicit .md files")
    add_filters(p)
    p.set_defaults(func=cmd_build)

    p = subs.add_parser("sheet", help="build a student handout and a teacher document")
    p.add_argument("--out", required=True, help="base name of the two PDFs")
    p.add_argument("--title")
    add_filters(p)
    p.set_defaults(func=cmd_sheet)

    args = parser.parse_args()
    sys.exit(args.func(args) or 0)


if __name__ == "__main__":
    main()
