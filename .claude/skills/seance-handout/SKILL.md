---
name: seance-handout
description: Prepare or change a club session hand-out in seances/<group>/<date>/ (seance.md, the student PDF eleves.pdf and the teacher PDF prof.pdf). Use when asked to prepare a session, a séance, a hand-out or a fiche for a group, or to change how the session PDFs look. Holds the layout rules the club leader asked for.
---

# Session hand-outs

A session is one folder, `seances/<group>/<date>/`, for example `seances/group1/2026-11-07/`.
It holds `seance.md`, any figures used in the teacher notes, and the two generated PDFs.
The file format is in `seances/README.md`. Build both PDFs with:

```sh
python3 tools/vm.py seance seances/<group>/<date>
```

The code is `doc_seance` and `statement_floated` in `tools/vm.py`, and the `block-title`,
`exo-item-compact`, `separator-tight` and `float-figures` functions in `tools/preamble.typ`.

## What goes where

- **Teaching instructions go into the teacher PDF only.** Put them in `## Overview` and
  `## Block <n>` in `seance.md`. They are in French, like everything a teacher reads. Each
  block note says what to write and prove at the board, which exercises are for everyone
  and which are bonus, and how the exercises link to each other.
- **One student PDF** (`eleves.pdf`) for the whole session: statements only, numbered 1 to N
  across all the parts, under the part titles. No hints, no solutions, no notes.
- **No timings in any PDF**, student or teacher. Durations may guide the planning, but they
  are never printed.
- A new hand-out on another topic is a new session folder, not an extra part in an
  existing one.

## Student PDF layout

The student sheet is printed for every child, so it is laid out tight. Keep these rules when
you change the code:

1. **The heading is a single line.** "Exercice N." and the title on the left, the
   difficulty dots on the right, at the same height. No metadata line (no
   "2de · Géométrie · n° 10245") and no grey rule under the heading.
2. **Figures float to the right**, as in HTML. Each figure takes at most half of the text
   width; a smaller figure keeps its natural size. The statement text runs to the left of
   the figure and continues at full width once it passes the bottom of the figure. The
   figure goes to the top right of its statement, even if the source file puts it in the
   middle. No caption on the student sheet (the description stays as alt text).
3. **No page break between parts.** A new "Partie" continues on the current page.
4. **A part title never ends a page alone.** It stays on the same page as its first
   exercise.
5. **An exercise is never split across two pages**: its heading, statement and figure stay
   together.
6. **A thin light rule separates two exercises**, and is left out when it would fall at
   the very top of a page.

The teacher PDF keeps the fuller layout: the metadata line, captions, a new page for each
part, the table of exercises on the first page, then for each part its notes followed by
every exercise with statement, hints and solution.

## Free-form hand-outs

An explainer (one worked example with its properties highlighted, then a few short
questions) is a Typst file in the session folder, for example
`seances/group1/2026-11-07/polynomes.typ`. It imports `/tools/preamble.typ` for the common
page style and is built with `typst compile --root . <file>.typ <file>.pdf`.

- Students only, in French, no timings.
- State each property clearly, in a box, with the number case on the left and the
  polynomial (or other) case on the right, then a pair of examples side by side.
- Give the same colour to matching steps in the two columns.
- End with a few short « À toi » questions, with the answers in small print at the bottom
  of the same page.
- Check every computation with a short script before writing it, and every answer.
- Keep a box or a heading on the same page as what follows it (`breakable: false`,
  `sticky: true`).

## Choosing exercises

- Follow the project rules in `CLAUDE.md`, in particular grade and difficulty.
- Check that each solution only uses tools the group has. For a 4e and 3e group: no
  cosine, no Thalès, no similar triangles for the 4e students.
- When the database has no good exercise on a point, say so and ask before writing a new
  one.

## Checking the result

Building is not enough. Before saying a hand-out is done:

1. Build. Never go past a `pandoc [WARNING]` line.
2. Render every page and look at it:
   ```sh
   pdftoppm -r 75 -png seances/<group>/<date>/eleves.pdf <scratch>/e
   pdftoppm -r 75 -png seances/<group>/<date>/prof.pdf <scratch>/p
   ```
   Look at every page of the student PDF, and at every teacher page that is new (overview,
   block notes, their figures). Zoom in at 200 dpi on anything that looks off.
3. Check the rules above on the pages: one-line headings, figures at the right and no wider
   than half the text, no part title alone at the bottom of a page, no rule at the top of a
   page, no timings.
4. Check the figures against the statement, not just by eye: a point said to be on a circle
   must be at the radius from its centre (compute the distances from the SVG coordinates),
   lines must pass through the points they are named after, and the figure must not give
   the answer away.
5. Scan the teacher PDF for raw LaTeX: `pdftotext prof.pdf - | grep -E '\\[a-zA-Z]+'` must
   print nothing.
6. Run `python3 tools/vm.py check` if any exercise file changed.
