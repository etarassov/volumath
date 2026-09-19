# volumath

A database of math problems for a kids math club, levels 4e to Terminale (French school system).

**Everything a student or a teacher reads is in French. Everything a script reads is in English.**
That is the one rule behind all the others: folder names, front matter keys and section
headings are English so tools can rely on them, while titles, statements, hints and
solutions are French.

## Tree

```
grade-08/  4e          themes:  arithmetic            difficulty: 1 2 3 4 5
grade-09/  3e                   algebra
grade-10/  2de                  geometry
grade-11/  1re                  functions-analysis
grade-12/  Terminale            probability-statistics
                                combinatorics
                                logic-reasoning
                                coloring
```

`coloring` is for problems solved by colouring the board or the figure: chessboard parity,
stripes, blocks of four. The colouring **is** the idea, so they sit together rather than
scattered through geometry and logic. A problem that merely mentions colour is not one of
these.

Full path: `grade-09/geometry/2/0002-area-of-triangle-in-a-square.md`.
Folders are created when they are first needed, not all in advance.

A figure sits next to its exercise, named `<id>-figure-<n>.svg`, and is referenced with
plain Markdown: `![Description](0002-figure-1.svg)`. Prefer SVG you can edit over a
screenshot. Use a raster image only for a scan that cannot reasonably be redrawn.

## The exercise file

```markdown
---
id: "0042"                    # four digits, unique, never reused, never changed
title: "Parité de n² + n"     # French
grade: 8                      # 8 to 12, must match the folder
theme: arithmetic             # must match the folder
difficulty: 3                 # 1 to 5, must match the folder
duration_min: 15              # rough time for one student
tags: [parite, entiers]       # French, lowercase, no accents
adapted_from: null            # id of the original when this is a copy for another grade
see_also: []                  # ids of the same problem imported independently elsewhere
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"   # in the original language
  reference: "Kan2017.pdf, занятие 4, задача 3"          # enough to find it again
  url: "https://mmmf.msu.ru/for_schools/Kan2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2017.pdf"
---

## Statement
## Hints
## Solution
## Going further      (optional)
```

`## Statement` and `## Solution` are required. `## Hints` is strongly recommended and holds
a numbered list, ordered from the gentlest nudge to the one that nearly gives it away, so a
club leader can read out just the first one.

Section headings must be spelled exactly as above. The tools translate them for display, so
never write `## Énoncé` in the source file.

Math uses LaTeX between dollar signs, `$n^2 + n$` inline and `$$...$$` for a displayed line.
Pandoc turns it into Typst math when building PDFs.

Two things to get right there:

- **A French decimal inside math needs `\text{}` around the whole number.** Write
  `$\text{0,4}\,a$`, not `$0{,}4\,a$`. Maths mode treats the comma as a separator and puts a
  space after it, so the second form prints as "0, 4" and a child reads two numbers.
  A decimal in ordinary prose needs nothing, `0,4` is already correct.
- A comma between items, as in `$1, 2, \ldots, 100$` or `$\mathrm{PGCD}(10, 6)$`, is fine and
  prints as expected.

Figures are SVG. Putting colours and strokes as attributes on each shape (`fill="#d8d8d8"`,
`stroke="#000"`) is the safe default. A `<style>` block with CSS classes also renders
correctly in the current toolchain, verified on a figure that uses fills, dashes and
`paint-order`. Either way, build the exercise and look at the page before trusting a figure.

## Difficulty

**Difficulty is relative to the grade of the folder it sits in.** Three stars in 4e and three
stars in Terminale are both "needs an idea", for very different students. Never rate a problem
against the whole database.

1. Direct application of the course, a single step.
2. Two or three steps, every tool comes from that grade's own course.
3. Needs an idea, not just a technique. The student has to see something.
4. Several ideas combined, or cases to separate, or a result to prove rather than compute.
5. Competition level for that grade.

## Importing an exercise

1. Read the problem in the source, and its official solution when the source has one.
2. Decide the French grade from the mathematics actually needed, not from the grade printed
   in the source. School systems do not line up, and a circle problem for Russian grade 6
   often belongs in a French 4e club.
3. Decide the difficulty with the scale above, relative to that grade.
4. Translate the statement into natural French. Do not translate word for word. Use the names
   and notation a French student expects, for example $\mathrm{PGCD}$, not `НОД` or `gcd`.
   Convert names, currencies and units to something a French child recognises.
5. Write the solution **at the level of the target student**. The source solution is a
   starting point, not the answer to copy. If it uses a tool the student has not met, redo it
   with what they have. Show the steps. State the conclusion plainly at the end.
6. Write hints that lead without revealing.
7. Fill every metadata field, including the exact `source.reference`.
8. Run `python3 tools/vm.py check`.

Skip a problem rather than import it badly. Skip it too if it is below 4e even at one star.

## Commands

```
python3 tools/vm.py new --grade 8 --theme arithmetic --difficulty 3 \
        --title "Parité de n² + n" --slug parity-of-n-squared-plus-n [--id 0042]
python3 tools/vm.py list  [--grade 8] [--theme geometry] [--difficulty 3] [--tag parite]
python3 tools/vm.py check                     # validate every file, use it after every import
python3 tools/vm.py index                     # rebuild catalog.json and INDEX.md
python3 tools/vm.py build --ids 0001 0002     # one PDF per exercise: statement, hints, solution
python3 tools/vm.py sheet --out seance-01 --grade 8 --theme arithmetic --title "Séance 1"
python3 scripts/stats.py                      # counts by source, grade, theme, difficulty
```

`sheet` writes two PDFs, one for the students with the statements only, one for the teacher
with the hints and the solutions. That split is the reason the sections have to stay machine
readable.

## Reading source PDFs

Plain text extraction flattens typography: a power comes out as an ordinary number, so
`2^n` reads as `2n` and `7^(7^7)` as `777`. That turns a problem into a different problem
without any visible sign. Before trusting any power you read from a PDF, run

```sh
python3 tools/pdfsupers.py <file.pdf> <page> [<page>...]
```

which rebuilds the page from glyph positions and prints exponents as `^{...}`. Comparison
signs flatten too, so check inequalities against the student handout, which preserves them.

## Rules

- Never edit anything in `build/`. It is generated and overwritten.
- Never reuse an id, and never renumber. An id points at one file for good. When an exercise
  moves to another difficulty or grade, the file moves, the id stays.
- Reusing a problem at another grade means a new file with its own id and
  `adapted_from: "<original id>"`, because the solution has to be rewritten for that grade.
- Sources overlap, so the same classic arrives twice from two different books. That is fine
  at two different grades: cross link the two files with `see_also` so nobody hands the same
  problem to the same child twice. Two copies in the *same* folder are waste, keep one.
- `sources/originals/` holds the downloaded source material and is not committed. Exercises
  cite their source, so nothing is lost if those files are absent.
- When several agents import at once, each is given its own block of ids in advance. Never
  call `vm.py new` without `--id` during a parallel import, it would hand the same number to
  two agents.
- **During a parallel import, never delete a finished exercise because it duplicates one from
  another agent's block, not even your own file.** Both owners notice the pair at the same
  moment, each deletes their own copy trusting the other to survive, and the problem
  disappears from the database entirely. This has now happened twice, to 0379/0535 and to
  0756/0860. Keep your file, cross link with `see_also` when the two sit at different grades,
  and let the coordinator arbitrate once every agent has stopped. Skipping a duplicate you
  have not yet written is still fine, and so is dropping one of two files you own yourself.
- After a parallel import, reconcile the ledgers against the disk before believing either.
  Every id listed in `imported` must exist as a file, and every id in `retired_ids` must
  either be absent on purpose or have a named survivor that really is still there.
- Progress for a source lives in `sources/<source>/units/*.json`, one file per unit of work,
  so parallel agents never write to the same file. See `sources/README.md`.
