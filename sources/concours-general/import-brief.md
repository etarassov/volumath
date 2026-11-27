# Importing the Concours général de mathématiques

Read `CLAUDE.md` at the root of the checkout first. It is the contract. This file covers only
what is different about this source. Two things here are new compared with every earlier
import: **the problems are long guided problems, so you cut them into parts**, and **there is no
official solution, so you solve everything yourself and prove to yourself that it is right**.

## Where you work

- The checkout is `/Users/etar/volumath/.claude/worktrees/group2-session-prep-78d25f`. Run every
  command from there: `python3 tools/vm.py ...`. Write your files there.
- The source files are in `sources/originals/concours-general/` (a link to the main checkout's
  folder, already on disk). **Never fetch anything from the network.**
- Your unit file is `sources/concours-general/units/<unit>.json`. It lists your documents and
  your block of ids.
- Scratch files go in your session scratchpad, in a folder named after your unit, for example
  `.../scratchpad/cg-2024/`. Other agents share the scratchpad, so never use a generic name.

## What you are reading

The Concours général des lycées is a national contest for the best Terminale students. One paper a
year, 5 hours, calculators allowed. Until 2020 it was for série S; since 2021 it is for students who
take the maths spécialité. The three ES papers (2017 to 2019) were for the economics stream, whose
Terminale course had sequences, functions, probability, and in the spécialité option matrices and
graphs.

A paper has three or four **independent long problems**. Each problem is split into *Parties*,
and each part is a chain of 3 to 8 guided questions that build towards one result. The questions
are numbered across the whole problem (1 to 15, say), not restarted in each part.

Each unit file lists, besides the statement:

- `rapport`: the jury report of that year, when one exists (2017, 2019, and 2021 to 2025). It is
  six pages of statistics and comments on what candidates got right and wrong. **It contains no
  solution**, but its comments tell you where the traps are.
- `correction`: an unofficial correction by a teacher (unemainlavelautre.net), only for 2017
  and 2018. Use it as a check on your own solution, never as the solution, and never
  copy it: it is someone's own work and it may be wrong.

## Cutting a problem into files

The owner chose this rule: **one file per *Partie*, as long as the part stands on its own.**

1. **Default: one file per part.** A child in the club works on one file in one session, so aim
   for 20 to 60 minutes of work for a strong student of the file's grade.
2. **Merge when a part cannot stand alone.** A part that is only a warm-up for the next one (two
   easy questions that set up notation) goes into the same file as the next part. A problem with no
   parts, or whose parts are short, can be one file. Two consecutive parts can be one file when
   restating what the second needs would be longer than the first part itself.
3. **Every file must be complete on its own.** A reader who has only this file must be able to do
   it. When a part uses a definition or a result from an earlier part, restate it at the top of the
   statement: the definition in full, and the result as "On admet que …" (or "On a montré dans
   une partie précédente que …"). Never write "d'après la question 4" when question 4 is in another
   file.
4. **Renumber the questions from 1 in each file.** Keep the paper's own numbers in
   `source.reference`.
5. **Link all the files of one problem with `see_also`, in both directions.** They are all in your
   own block, so write both sides yourself, and record each pair in `see_also_added`.
6. **Parts of one problem can sit at different grades.** That is one of the reasons for cutting.
   In the 2024 paper, the first part of the boxes problem is the three-door game, which is 2de
   probability; the end of the same problem is a Terminale optimisation.

When in doubt, prefer fewer, fuller files over many thin ones. A file with a single routine
question is not worth having.

## Take every part

There are exactly two reasons to skip something:

1. **It is already in the collection at the grade where it belongs.** See "Duplicates" below.
2. **You cannot be sure it is right.** A question you could not solve with certainty, a statement
   you cannot read even rendered at 300 dpi, a claim you believe is false and cannot repair into a
   true question worth asking. A wrong solution in the collection is worse than a missing one.

When one question in a part fails test 2 but the rest is sound, drop that question, say so in
`notes`, and keep the rest, provided the part still makes sense without it.

Nothing else is a reason. Not "too hard", not "too long", not "just routine for Terminale" (that is
what one star is for).

## Writing the file

The structure is the usual one from CLAUDE.md. What changes with a guided problem:

**Title.** Name the mathematics of this file, in plain French with unicode, not the contest:
"Une suite qui tend vers 1 comme 1 + 2/n", not "Concours général 2024, problème 1, partie 2".
Two files from one problem must have clearly different titles.

**Statement.** Rewrite the paper's text in clear French. Keep the numbered questions, `1.` `2.`
with `a)` `b)` under them when the paper has them. Keep the paper's names and notation unless they
are awkward. Remove the contest instructions ("le candidat peut admettre …").

**Hints.** Still one numbered list, but **each item starts with the question it helps**, in bold:

```markdown
## Hints

1. **Question 2.** Comparer $u_{n+1} - v_{n+1}$ et $u_n - v_n$.
2. **Question 2.** Raisonner par récurrence sur $n$.
3. **Question 4.** Si $(u_n)$ converge vers $\ell$, passer à la limite dans la relation de récurrence.
```

Put them in question order, and inside one question from the gentlest nudge to the one that nearly
gives it away. Every question that needs an idea gets at least one hint; routine questions need
none. The paper itself has no hints, so this is where much of your value is.

**Solution.** Answer question by question, each one starting with its number in bold
(`**1.**`), showing the steps at the level of the target student, and stating each conclusion
plainly. End with one short paragraph, `**Bilan.**`, that says in plain words what the file has
proved as a whole. Say exactly what was proved and no more: the checkers have caught a Bilan
claiming "exactement" where only one direction was shown, and one whose wording made the
argument circular.

**Going further** (optional, encouraged). Where the problem went next in the paper, phrased as a
question the student could try ("Dans la suite du sujet, on montrait que … Pouvez-vous le
prouver ?"), or the general result behind the part. When the jury report says something useful
about this part (a common mistake, a frequent wrong answer), you can rephrase it here for the club
leader. Do not copy the report.

**Calculator.** The contest allows calculators. Keep a question that needs one, and say
"à la calculatrice" in the statement.

**`duration_min`**: honest time for one strong student of that grade, usually 20 to 60.

## Deciding the grade

CLAUDE.md decides: **the lowest grade where every tool of the solution is already known.** The
contest is for Terminale, but that says nothing about the grade of one part. Earlier imports put
every re-graded problem *one grade too high*, so check this twice. Each part gets its own grade.

There is a second condition, and it matters just as much: **a strong student of that grade must be
able to solve the file in a club session, with the hints.** Knowing the tools is not enough. A
long chain of ideas built for the best Terminale students in France does not go to 4e because it
happens to use only remainders and logic: nobody in a 4e club solves it. Put it at the lowest
grade where both conditions hold. In practice, a whole contest problem kept in one file rarely
goes below 2de; a single early part often does.

Useful landmarks in the current French programme:

- **2de**: functions as a notion, variations, simple probability and counting with trees,
  vectors and coordinates, basic arithmetic (divisors, primes, parity). For trigonometry, only
  what collège gives: cos, sin and tan of an acute angle in a right triangle.
- **1re spécialité**: sequences (arithmetic, geometric, defined by a recurrence, but limits only
  in an intuitive way), derivative and variations, the exponential function, the scalar product,
  conditional probability and independence, random variables and expectation, second degree,
  the unit circle with radians, cos and sin as functions.
- **Not in any grade**: tan(θ/2) substitutions, product-to-sum formulas, the "trigonometric
  form" of a complex number outside maths expertes. If a file needs a trigonometric formula
  beyond Pythagoras, either the statement gives it (as the paper often does) or the grade goes
  up. Count a formula the statement gives as known.
- **Terminale spécialité**: proof by induction (*récurrence*), limits of sequences and of
  functions with proof, continuity and the intermediate value theorem, convexity, the logarithm,
  integrals, combinatorics with $\binom{n}{k}$, the binomial law, concentration inequalities.
- **Terminale *maths expertes***: complex numbers, congruences, Bézout and Gauss, matrices, graphs.

The old papers follow older programmes. Before 2020 the Terminale S course had complex numbers for
everyone, and its spécialité had arithmetic (and before 2012, plane similarities). Before 2012 the
1re S course had barycentres. Grade by **today's** programme, using the three cases below for
anything that left it.

Difficulty is relative to the grade of the folder, with CLAUDE.md's scale. A part that is
routine for a Terminale student is one or two stars at grade 12, even if it opens a contest
problem. Expect much of this source at three to five stars, but do not inflate.

Record one line per file in `grade_reasons`: `{"id": "40003", "grade": 11, "why": "suite
récurrente et dérivée, rien de Terminale"}`.

## Tools above the student's programme

Sort each one into one of three cases, exactly as for the earlier imports.

1. **A short lemma.** Not in the programme, but you can prove it for the student in a few lines:
   the inequality between the arithmetic and geometric mean of two numbers, congruences explained
   as remainders, the pigeonhole principle, a telescoping sum. Prove or explain it inside the
   solution and grade the part normally.
2. **The *maths expertes* option**: complex numbers, congruences with Bézout, Gauss and Fermat's
   little theorem, matrices, graphs. Grade 12 with its normal difficulty, tag `maths-expertes`,
   and record it in `beyond_programme` with `"hors_programme": false`.
3. **A real theory beyond Terminale**: series and Taylor expansions as a method, linear algebra
   beyond 2 by 2, plane similarities as a theory, barycentres used as a method, anything a club
   leader would need an hour to teach. Then grade 12, difficulty 5, tag `hors-programme`, and the
   solution **opens with a short `**Rappel.**` paragraph** that explains the tool in plain words.
   Record it with `"hors_programme": true`. If you can rewrite the solution without the theory, do
   that instead and grade it normally. Usually you can: the contest was written for students who
   did not know the theory either.

`beyond_programme` entries look like
`{"id": "40012", "tool": "nombres complexes, racines de l'unité", "suggested_theme": "complex-numbers", "hors_programme": false}`.

## Choosing the theme

The themes are `arithmetic`, `algebra`, `geometry`, `functions-analysis`,
`probability-statistics`, `combinatorics`, `logic-reasoning`, `coloring`. Sequences, limits,
functions, integrals and convexity go to `functions-analysis`. Inequalities and polynomials
without calculus go to `algebra`. Counting goes to `combinatorics`, probability to
`probability-statistics`, games and strategies to `logic-reasoning`.

## No official solution: how to be sure

You are writing the only solution that exists. So:

- **Solve every question yourself before you read anything else.** Then compare with the
  correction when there is one, and with the jury report's comments.
- **Check every numerical result a second way.** A short Python script in your scratch folder is
  the usual way: compute the first terms of a sequence, test an inequality on many values, count
  small cases by brute force, simulate a probability. Use exact fractions (`fractions.Fraction`)
  when the answer is a fraction.
- **Check every claim "for all n" on small n** before you prove it.
- **When the paper asks to prove something false**, find a counterexample, publish a corrected
  question if a true and interesting one is close, and record it in `source_errors` as
  `{"where": "problème 2, question 7", "what": "..."}`.
- **Record how you checked each file** in `checks`:
  `{"id": "40003", "how": "termes calculés jusqu'à n = 10^6 en Python, limite 2 confirmée"}`.

A second agent will re-check every file after you. Make its job possible: your `checks` entries
are what it reads first.

## Duplicates

The Concours général is rarely reprinted in the olympiad material that fills the collection, but
its warm-ups are often classics (the three-door game, the harmonic series, a counting of the
rationals). **Search before you write every file**:

```sh
python3 sources/originals/_coordinator/similar.py --grade 12 "le texte de l'énoncé"
python3 sources/originals/_coordinator/similar.py --file mon-brouillon.md     # all grades
```

Run it from the checkout: it then searches this checkout, so it also sees what other agents
wrote a minute ago. It finds the same wording well and a different wording badly, so also grep for
distinctive words (`grep -rli "trois portes" grade-*`) and read what you find.

- **Same question, same grade**: skip it, and record the existing id in the skip. If only one
  question of your part is a known classic, keep the part.
- **Same question, another grade**: if the existing placement is defensible, skip. Otherwise import
  yours, put the other id in `same_as`, and record the pair in `same_as_added`. Do not edit the other
  file: the coordinator adds the link back.
- **Your version asks more**: import yours and write the pair in `notes`.
- **Never delete a finished exercise over a duplicate from another agent's block, not even your
  own file.** Write the pair in `notes`; the coordinator arbitrates after everyone stops.

## Metadata

```yaml
created: 2026-11-27
source:
  name: "Concours général des lycées 2024, mathématiques"
  reference: "cg-2024-s-sujet.pdf, problème 2 « Bonbons cachés », partie 2, questions 3 et 4"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2024-s-sujet.pdf"
```

For the ES papers, write "Concours général des lycées 2018, mathématiques, série ES". When you
correct an error in the paper, say so in `reference` too.

Tags are French, lowercase, no accents, hyphens between words. Look at `python3 tools/vm.py tags`
and reuse the spelling that is there. Do not add a tag for the contest: the source says it.

## Reading these PDFs

The files are the official papers with a cover page added by freemaths.fr (page 1, skip it).

- **Render every page you work from as an image and read it**:
  `pdftoppm -r 150 -png -f <p> -l <p> <file> <scratch>/<unit>-p<p>`. The text layer loses the
  signs ≤ and ≥ completely (`u_n ⩾ 0` comes out as `u n  0`), flattens fractions, and drops
  exponents. Use `pdftotext -layout -f <p> -l <p>` only to copy words, and
  `python3 tools/pdfsupers.py <file> <page>` to confirm an exponent.
- **Some pages have no text at all** (for example 2025, pages 7 and 8). Rendering covers them.
- When a digit or a sign makes a question look broken, render at 300 dpi before concluding the
  question is broken.
- **Figures**: when a part depends on its figure, redraw it as SVG next to your file, following
  CLAUDE.md: attributes on shapes, Helvetica for any label with a digit, no `√` in a label, a
  caption with paired brackets, and a figure that does not give the answer away.

## Rules that came out of the earlier imports

- **Never touch a file outside your id block**, and never call `vm.py new` without `--id`. Use
  your ids in order.
- **Build what you write and look at the page.** `vm.py check` compiles nothing. Build with
  `python3 tools/vm.py build --ids <id>`, never past a `pandoc [WARNING]` line, and read the "What
  survives the trip to Typst" table in CLAUDE.md before your first formula. The PDF lands in
  `build/`; render its pages to PNG and look at them for any file with a display or a figure.
- Write a norm as `\lVert u \rVert^2`, not `\|u\|^2`: the second prints a loose double bar
  with the square floating above it (found by a checker on this source).
- `\text{0,5}` for a French decimal inside maths, as CLAUDE.md says. Long displays are common in
  this source: watch the fraction nesting rule.

## Your unit file, kept up to date

Update it **after every problem**, not only at the end:

- `imported`: the ids you wrote, as strings.
- `parts`: `{"id": "40003", "where": "problème 1, partie 2, questions 6 à 8"}`, one per file.
- `grade_reasons`, `checks`, `beyond_programme`, `see_also_added`, `same_as_added`,
  `source_errors`: as described above.
- `skipped`: `{"where": "problème 3, partie 1", "why": "...", "existing": "0712"}`, with `existing`
  only for a duplicate.
- `notes`: free text for the coordinator.
- `next_problem`: the number of the first problem you have not finished.
- `status`: `in_progress` while you work, `done` only when every problem is genuinely finished.
  An honest `in_progress` with `next_problem` and a note is far more useful than a false `done`.
- `updated`: the date.

Keep the file's layout: `json.dumps(data, indent=1, ensure_ascii=False)` plus a newline.

## Finishing

1. Run `python3 tools/vm.py check`. Errors in other agents' half-written files are not yours.
2. Build **every** file you wrote, and look at every page with a display or a figure.
3. Make sure every id in `imported` exists as a file and every file in your block is listed.

Your final message, in plain English, gives: how many files you wrote and from which parts; what
you skipped and why; the duplicate pairs you suspect; the errors you found in the paper; your
`beyond_programme` entries; and anything you are less than sure of.

---

## The checking pass

This section is for the **second agent**, who checks a unit after its importer has finished. You
did not write these files. Your job is to make sure every one is right and usable.

For each file in the unit's `imported` list:

1. Read the statement against the paper (render the page). Is it faithful, complete, and
   self-contained? Are the restated results from earlier parts correct?
2. **Solve each question again yourself**, at least its key step, before reading the solution
   closely. Then read the solution line by line. Re-run or rewrite the numerical check listed in
   `checks`; do not trust that it was run.
3. Check the level: is every tool known at the file's grade? Is the grade the lowest possible?
   Is the difficulty honest for that grade?
4. Check the hints: in question order, gentle to strong, and none gives the answer away in its
   first lines.
5. Build the file and look at the page.

You may **fix** a clear error directly in the file: a wrong computation, a missing case, a step
the target student cannot follow, a hint that reveals too much, a broken display. Do not rewrite
files to your own taste. If a question is wrong and cannot be fixed, remove the question and say
so. If a whole file is unsound, do not delete it: report it.

Record your work in the unit file under `check`:

```json
"check": {
 "date": "2026-11-27",
 "ok": ["40001", "40002"],
 "fixed": [{"id": "40003", "what": "question 4 : la limite est 2, pas 1 ; corrigé dans la solution"}],
 "regrade": [{"id": "40004", "from": "12/3", "to": "11/3", "why": "aucun outil de Terminale"}],
 "doubts": [{"id": "40005", "what": "..."}]
}
```

Apply a regrade yourself only for the grade or difficulty inside the same file's front matter
**and** move the file (and its figures) to the matching folder with plain `mv`; the id stays. Run
`python3 tools/vm.py check` afterwards. Put anything you are not sure of in `doubts` instead.

Your final message lists what you fixed, what you regraded, and every doubt.
