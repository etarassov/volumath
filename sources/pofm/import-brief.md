# Importing the POFM camp handouts (maths-olympiques.fr, page 43)

Read `/Users/etar/volumath/CLAUDE.md` first. It is the contract. This file covers only what is
different about this source. Two rules here are new, and both matter more than anything else
in this file:

1. **You take every exercise on your pages.** There are only two reasons to skip one.
2. **The grade is the lowest grade where every tool of the solution is already known.** The
   camp group, the stars and the age of the students say nothing about the grade.

This brief replaces the one used for the first pass of this source in September 2026. That
pass chose a few problems from each handout and skipped the rest. Its agents also placed
problems a grade too high: when 28 of their files were reviewed, every one moved down a grade.

## What you are reading

The handouts (*polycopiés*) of the French olympiad training camps run by Animath: the summer
camps (Grésillon, Montpellier, Valbonne and others, 2007 to 2026), the junior camps (2009 to
2024) and one February camp (2016). They are in French. Each one is a whole camp: the Coupe
Animath papers with solutions, the first-day tests, the notes of every lecture with their
exercises, grouped by level, then the end-of-camp tests, and in most summer camps a long list
of problems called *La Muraille*.

The documents are already on disk in `sources/originals/pofm/`. **Never fetch anything from
the network.**

Being in French removes the translation step, and with it a safety net: there is no moment
where you must re-read a statement in order to render it, so a misread passes straight
through to the page. Read every statement twice, the way a child would read it.

## Your unit: some pages, a worksheet, an id block

Your unit file is `sources/pofm/units/<unit>.json`. It gives you:

- `documents`: one handout (sometimes two or three small ones), each with a list of page
  ranges. **You own every exercise whose statement starts on those pages.** Its solution may
  be printed later, outside your pages: read it there. Pages are PDF page numbers (the number
  `pdftotext -f` and `pdftoppm -f` expect), not the numbers printed at the bottom of the page.
- `worksheet`: a text file made by a script. It has one line for each "Exercice N" heading the
  script found on your pages, with the opening of the statement and a status:
  - **YOURS**: take it. "look at ids" lists collection files whose text looks a bit similar.
    That is a reason to open them, never proof of anything. You still run the duplicate checks
    below.
  - **DONE as 8542**: that exercise is already in the collection, imported from a page 43
    handout during the first pass. Open the file and check it really is the same problem. If
    it is, leave it alone, even if you would have written it differently. If its grade looks
    wrong to you under the rule below, record that in `regrade_suggestions` and move on.
    Never edit it: it is outside your id block.
  - **NOT YOURS: p43-ete2019-1 owns it**: the same text is printed in another handout, and the
    unit named there takes it. Read both statements. If they really are the same problem,
    leave it. If they differ (other numbers that change the answer, an extra question, a
    different hypothesis), it is yours: import it and record it in `not_yours_but_different`.
  The worksheet is a help, not the truth. The script misses some headings, catches some lines
  that are not exercises, and misreads some section names. The PDF decides.
- `old_units`: the unit files of the first pass for your handout. Their `notes` and
  `source_errors` can save you time. **Ignore their `skipped` lists**: the reasons there are out
  of date, and many name ids that have since been removed.
- `id_block`: 200 ids, more than you need. Use them in order, starting with the first.
- `solutions_printed`: a script's guess at whether your pages have printed solutions. "few"
  or "none" usually means La Muraille. Trust the PDF over the guess.

## Take every exercise

The owner wants the whole of these handouts in the collection. There are exactly two reasons
to skip an exercise:

1. **It is already in the collection at the grade where it belongs.** Same mathematical
   question, even with other wording, names, or numbers that change nothing. See
   "Duplicates" below.
2. **It is broken and cannot be fixed.** Data missing that you cannot restore from the
   solution, a page you cannot read even rendered at 300 dpi, a false claim that cannot be
   repaired into a true problem worth asking, or, for an exercise without a printed solution,
   a problem you could not solve with certainty.

Nothing else is a reason. Not "too hard": that is what five stars is for. Not "beyond the
programme": that has its own rule below. Not "too long", not "a bit dull". CLAUDE.md's rule
about problems below 4e still holds, but it almost never applies here.

What counts as an exercise: everything headed *Exercice*, every problem of a test, a Coupe
paper or La Muraille. The examples, theorems and proofs inside the lecture notes are course
material, not exercises: leave them, unless the worksheet lists one as an exercise and it
really is a self-contained problem.

An exercise with several parts stays one exercise. When the same exercise appears twice on
your own pages (a test reprints a course exercise), import it once and say so in `notes`.

Two exercises of the handout become one file only when the second builds directly on the
result of the first, so that it makes no sense on its own. Otherwise make two files and link
them with `see_also`. Say in `source.reference` which exercises the file covers.

## Duplicates

The collection holds about 3600 exercises, 1124 of them from the first pass of this source.
The olympiad canon is small and reprints itself: the same classic is in a Moscow handout, a
Lyon handout and three camp handouts. So before you write each exercise, search:

```sh
python3 sources/originals/_coordinator/similar.py --grade 9 "le texte de l'énoncé"
python3 sources/originals/_coordinator/similar.py "le texte de l'énoncé"     # all grades
```

It reads the collection fresh each time, so it also sees what other agents wrote a minute
ago. It finds the same wording well and a different wording badly, so also grep for the
distinctive numbers and words of the problem, for example `grep -rl "2023" grade-*` or
`grep -rli "caméléon" grade-*`, and read what you find.

- **Same problem, same grade**: skip it, and give the existing id in the skip.
- **Same problem, another grade**: work out the grade with the rule below. If the existing
  copy already sits at that grade, skip yours. If the existing copy sits higher than the rule
  says, do not import a second copy: skip yours and record the existing file in
  `regrade_suggestions`. Import a second copy only when both grades are genuinely right, for
  example a lower grade with a guided solution and a higher one with the general case. Then
  put the other id in your file's `same_as`, and record the pair in `same_as_added`.
- **A related problem, not the same one** (one is a step towards the other, a converse, the
  same idea on another question): import yours, put the other id in `see_also`, and record
  the pair in `see_also_added`.
- **Your version asks more** than the one in the collection (an extra part, the general case):
  import yours and write the pair in `notes`, for example "14023 demande plus que 0712". The
  coordinator decides which to keep.

Never edit a file outside your id block, not even to add the link back. The coordinator writes
the other half of every `same_as` and `see_also` pair after the round.

## Rewriting, which is the actual work

A solution in these handouts is written by a camp lecturer for a selected student. It
compresses and it assumes. CLAUDE.md is binding: **write the solution at the level of the
target student, show the steps, state the conclusion plainly.**

For nearly every exercise:

- Restate the problem in ordinary French. Olympiad phrasing ("Soit $n \geq 1$ un entier.
  Montrer que...") is fine at 1re and Terminale and wrong at 4e.
- Redo the solution in full sentences. Where the source writes "on conclut aisément", write
  the conclusion.
- Write hints. The source has none. This is where most of your value is.
- When a solution uses a tool the student has not met, follow the rule below: explain it in a
  few lines, or redo the solution another way.

A copied statement plus a copied solution is not an import. It is a transcription.

## Deciding the grade

**Choose the lowest grade where every tool the solution needs is already known.** Then choose
the difficulty, relative to that grade, with CLAUDE.md's scale.

That is the whole rule. In particular:

- **The group in the handout says nothing about the grade.** Groupe A, Groupe D, Débutants,
  Avancés, Muraille level 3: none of these is a grade. A Groupe D problem whose solution uses
  only collège tools goes to 4e or 3e, at four or five stars.
- **Hard is not a reason to go up a grade.** Difficulty 4 and 5 are for hard problems. Five
  stars at 3e means "competition level for a 3e student", and this source has a lot of it.
- **When you hesitate between two grades, choose the lower one**, and explain in the solution
  whatever the student might not have seen. Earlier agents went one grade too high far more
  often than too low.

Write one line per exercise in `grade_reasons` in your unit file: which tools the solution
needs, and why that makes this the lowest grade. For example
`"14012": "factorisation a^2-b^2 et parité, connues en 3e ; pas plus bas car l'identité est vue en 3e"`.
If you cannot write that line, you have not decided the grade yet.

A rough guide to what a student knows by the **end** of each grade. It is not a programme
document. When you are unsure whether a tool is known at a grade, use the lower grade and
explain the tool in a few lines (case 1 below).

| By the end of | Known |
|---|---|
| 4e (grade 8) | fractions, relative numbers, powers with whole exponents, expanding and simple factoring, first-degree equations, Pythagoras, the cosine in a right triangle, Thalès in nested triangles, angle sum of a triangle, parallel lines and angles, parallelograms, areas, proportions and percentages, divisors, multiples, primes, parity |
| 3e (grade 9) | identities such as $(a+b)^2$ and $a^2-b^2$, equations of the form "product = 0", Thalès in every configuration and its converse, similar triangles, sine and tangent in the right triangle, linear and affine functions, simple probability, prime factorisation |
| 2de (grade 10) | vectors and coordinates, equations of lines, systems of two equations, square and inverse functions, inequalities and intervals, absolute value, square roots, $\sqrt 2$ irrational, sets |
| 1re (grade 11) | second degree and its discriminant, derivatives, arithmetic and geometric sequences, scalar product, sine and cosine on the circle, the exponential, conditional probability |
| Terminale (grade 12) | proof by induction, limits, continuity, logarithm, integrals, convexity, permutations and binomial coefficients, binomial law; with the *maths expertes* option: congruences, Bézout, Gauss, Fermat's little theorem, complex numbers, matrices, graphs |

### Tools above the student's programme

Olympiad solutions use many results that are not taught at school. Each one falls into one of
three cases.

1. **A short lemma.** Not taught at that grade, but you can prove or explain it for the
   student in a few lines with what they know: the inscribed angle theorem, the power of a
   point from similar triangles, the angle bisector theorem, the inequality between the
   arithmetic and geometric mean of two numbers, congruences explained as remainders, the
   pigeonhole principle, a step-by-step argument instead of a formal induction, a count of
   pairs as $\frac{n(n-1)}{2}$. Explain it inside the solution and **keep the low grade**.
   Rate the difficulty as if the student had that explanation: explaining a tool is not by
   itself a reason for more stars. The
   collection already does this, for example congruences explained as remainders in more than
   80 exercises from 4e to 2de. This is the most common case by far.
2. **The *maths expertes* option of Terminale**: congruences used as a theory, Bézout, Gauss,
   Fermat's little theorem, complex numbers, matrices, graphs. Count these as known at
   Terminale. Put the problem at grade 12 with its normal difficulty, add the tag
   `maths-expertes`, and record it in `beyond_programme` with `"hors_programme": false`. Use
   this case only when case 1 does not work: a congruence argument that a 3e student can
   follow as "the remainders" belongs in case 1.
3. **A real theory beyond Terminale**: inversion, projective geometry, barycentric coordinates
   as a method, generating functions, quadratic reciprocity, group theory, linear algebra
   beyond 2 by 2, series, and anything a club leader would have to teach for an hour first.
   Then:
   - the problem goes to **grade 12, difficulty 5**, in the closest theme,
   - add the tag `hors-programme`,
   - the solution **opens with a short paragraph `**Rappel.**`** that explains the tool in
     plain words, enough for a strong Terminale student to follow. It does not need to prove
     it,
   - record it in `beyond_programme` with `"hors_programme": true`.

   If you can rewrite the solution without the theory, do that instead and grade it normally.
   Many lecture exercises are there to practise a theory (an inversion lecture, a
   projective-geometry lecture): check whether the problem has a plain solution before you
   reach for case 3.

`beyond_programme` in your unit file is a list of objects:

```json
{"id": "14034", "tool": "inversion", "hors_programme": true}
```

## Choosing the theme and the tags

The themes are `arithmetic`, `algebra`, `geometry`, `functions-analysis`,
`probability-statistics`, `combinatorics`, `logic-reasoning`, `coloring`. The lecture title is
a hint, not an answer. Inequalities, polynomials and functional equations without calculus go
to `algebra`. Games and strategies go to `logic-reasoning`. Counting, pigeonhole and
combinatorial geometry go to `combinatorics`. `coloring` is only for problems where the
colouring **is** the idea (CLAUDE.md explains).

Topics that would deserve a theme of their own are tags instead. Run `python3 tools/vm.py tags`
before writing tags, and reuse the spelling with the most uses: `inegalite`,
`equation-fonctionnelle`, `polynome`, `congruences`, `graphe`, `principe-des-tiroirs`,
`invariant`, `recurrence`, `chasse-aux-angles`, `angle-inscrit`, `puissance-d-un-point`. Some
topics have two spellings in use today. Take the more common one and never invent a third.

## Exercises without a printed solution

La Muraille prints statements only, and a few lectures and tests leave some exercises
unsolved. Import these too, with your own solution, under a strict rule: **only if you solve
it yourself and check the solution.** Check every case, test small values, and when there is
a numerical answer, confirm it a second way (a short Python check in your scratchpad is
good). If you cannot reach certainty, skip it under reason 2 and say what you tried.

List every id whose solution you wrote without a printed one in `no_printed_solution`. A
second agent will re-solve each of them before the round is committed, so write these
solutions so that every step can be checked. A wrong solution in the collection is worse than
a missing problem.

## Metadata

```yaml
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre « Groupe B », première partie, « Inégalités » (Mathieu Barré), exercice 7"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
```

- `name`: the camp as its title page names it: place and year, and the group or the part
  (Coupe Animath, test de fin de parcours, La Muraille). The place changes over the years
  (Grésillon, Montpellier, Valbonne, Cachan, Saint-Chéron and others): read the title page.
- `reference`: the file name, then enough to find the exercise again in a document of several
  hundred pages: chapter, part, lecture title, the lecturer and the session when the handout
  names them, and the exercise number. These lectures are signed, and the name is part of the
  citation. When the handout says the problem comes from a competition (IMO, a shortlist, a
  national olympiad, the Coupe of some year), add that. When you correct an error in the
  source, say so here too, as CLAUDE.md asks.
- `url`: the direct link to the PDF, from your unit file. Older files use the page URL
  `?page_id=43`; do not copy that.
- `created`: the day you write the file.

## Reading these PDFs

They are produced with LaTeX and the text layer is mostly good. Read one or two pages at a
time with `pdftotext -layout -f <p> -l <p> <file> -`, never a whole handout: they run to 800
pages and your context is not unlimited.

- **Check every exponent** with `.venv/bin/python3 tools/pdfsupers.py <file> <page>`.
  `pdftotext` flattens powers, so `2^n` reads as `2n` and `7^(7^7)` as `777`.
- **Some symbols come out wrong**: `÷` stands for the angle mark over letters, `6=` for `≠`,
  and `⩾` can lose its slant. Check inequality signs on the rendered page.
- **Geometry figures are drawn in TikZ** and vanish from the text. A page whose text is empty
  or much shorter than its neighbours needs rendering:
  `pdftoppm -r 150 -png -f <p> -l <p> <file> <scratchpad>/<unit>-p<p>`. When the problem depends
  on its figure, redraw it as SVG next to your exercise, following CLAUDE.md: colours as
  attributes on shapes, Helvetica for any label with a digit, no `√` in a label, square brackets
  in the description in pairs, and a figure that does not give the answer away.
- When a digit or a sign makes a problem look broken, render the page at 300 dpi before you
  decide the problem is broken.
- `stage_ete_2012.pdf` has an erratum, `stage_ete_2012_errata.pdf`. If your unit covers 2012,
  read it first.

## Rules that came out of the earlier imports

Not optional. Each one cost real work.

- **Never delete a finished exercise because it duplicates one from another agent's block,
  not even your own file.** Twice now, two agents noticed the same pair at the same moment,
  each deleted its own copy trusting the other to survive, and the problem vanished from the
  collection. Keep your file, write the pair in `notes`, and let the coordinator decide after
  everyone has stopped. Skipping a duplicate you have not written yet is fine.
- **Never touch a file outside your id block**, and always pass `--id` to `vm.py new`.
- **Scratch files go in your session scratchpad and carry your unit name**, for example
  `p43-ete2023-2-check.py`. Other agents share the folder, and generic names get overwritten.
- **Build what you write and look at the page.** `vm.py check` validates metadata; it compiles
  nothing. Build with `python3 tools/vm.py build --ids <id>`. It prints pandoc's warnings:
  never build past one. Read CLAUDE.md's table "What survives the trip to Typst" before your
  first formula.
- **The title is plain text**, never LaTeX: `"11ⁿ − 4ⁿ est un multiple de 7"`.
- **The source can be wrong.** Earlier runs found around twenty genuine errors in published
  handouts, including in this source. A printed solution is a check on your reasoning, not the
  reasoning. When it is wrong, publish the right version and record it in `source_errors` as
  `{"where": "...", "what": "..."}`.

## Your unit file, kept up to date

Update it **every 10 exercises or so**, not only at the end. If you stop without warning, the
next agent starts from it.

- `status`: `in_progress` while you work, `done` only when every page is finished. If you stop
  early, leave `in_progress`, set `next_page`, and write in `notes` which exercise of that page
  comes next. An honest `in_progress` is far more useful than a `done` that is not true.
- `imported`: the ids you wrote, as strings, in order.
- `grade_reasons`: `{"14012": "one line"}`, one entry per imported id. See "Deciding the grade".
- `no_printed_solution`: ids whose solution you wrote with no printed solution to compare.
- `skipped`: objects `{"where": "valbonne-2023.pdf p.152, exercice 5", "why": "...",
  "existing": "0712"}`. `existing` only when the reason is a duplicate.
- `regrade_suggestions`: `{"id": "8542", "from": 10, "to": 9, "why": "..."}` for existing files
  whose grade looks wrong under the rule above. Do not move them yourself.
- `same_as_added` and `see_also_added`: `{"id": "14023", "other": "0712"}`.
- `not_yours_but_different`: `{"where": "...", "listed_owner": "p43-ete2019-1", "id": "14031"}`.
- `beyond_programme`, `source_errors`, `notes`: as described above.
- `next_page`: the first page you have not finished, or `""` when done.
- `updated`: the date.

## Finishing

Before you stop:

1. Run `python3 tools/vm.py check`. Errors in other agents' half-written files are not yours.
2. Build **every** exercise you wrote, not a sample, and look at every page with a figure.
3. Make sure every id in `imported` exists as a file, and every file in your block is listed.
4. Make sure every imported id has a line in `grade_reasons`.

Your final message, in plain English, gives: how many exercises you imported and skipped; how
many were already DONE or NOT YOURS; the duplicate pairs you suspect, with ids; your
`regrade_suggestions`; the source errors you found; your `beyond_programme` entries; and
anything the coordinator should look at, including anything in this brief that was unclear or
wrong.
