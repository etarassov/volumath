# Importing the POFM polycopiés de stage

Read `/Users/etar/volumath/CLAUDE.md` first. It is the contract. This file covers only what
is different about this source, and it is different in ways that matter.

## What you are reading

The handouts of the French olympiad training camps, run by Animath. Your unit file lists the
documents you own, already on disk in `sources/originals/pofm/`. **Never fetch anything from
the network.**

Each polycopié is one camp, and each is self-contained: a table of contents, the Coupe
Animath contest papers with their solutions, an évaluation initiale, then the full notes of
every lecture, grouped by level and by topic, then the final tests. Lectures are signed by
their author.

## The two things that make this source different

**It is already in French.** Nothing needs translating. That removes the biggest cost of
every earlier import, and it removes a safety net with it: there is no moment where you are
forced to re-read the problem in order to render it. A misread now passes straight through to
the page. So read each statement twice, and read it as a child would.

**Almost every exercise has a worked solution.** Your job is not to solve. It is to choose,
and then to rewrite. Which means the real risk here is not a wrong answer, it is publishing
an olympiad solution unchanged, at olympiad register, and calling it a club exercise.

## Rewriting, which is the actual work

A POFM solution is written by a camp lecturer for a selected student. It compresses, it
assumes, and it often answers a slightly different question than the one a club leader needs
answered. CLAUDE.md is binding here: **write the solution at the level of the target student,
show the steps, state the conclusion plainly.**

Concretely, for nearly every problem you take:

- Restate the problem in ordinary French. Olympiad phrasing ("Soit $n \geqslant 1$ un entier.
  Montrer que...") is fine at 1re and Terminale and wrong at 4e. Give it a setting if that
  helps and costs nothing.
- Redo the solution in full sentences. Where the source writes "on conclut aisément", write
  the conclusion.
- Write hints. The source has none. This is where most of your value is.
- If the source's solution uses a tool the target student has not met, redo it with what they
  have, or move the exercise up a grade, or skip it.

A copied statement plus a copied solution is not an import. It is a transcription, and it
will read as one.

## Level

The printed level markers are **one notch harder than they sound**. Summer camps select 80
students from 642 candidates; junior camps select too. The junior *Débutants* geometry course
opens with oriented angles of lines and the Chasles relation. Treat "Débutants" as "strong
3e or 2de", "Groupe A" as "strong 2de or 1re", and Groupes B, C and D as lycée and beyond.

CLAUDE.md is what decides in the end: **the grade comes from the mathematics actually
needed**, not from the label in the document.

**On problems above the French lycée programme.** You may take one, at Terminale five stars,
**if and only if you can rewrite the solution using tools a Terminale student has met**. If
the solution genuinely needs a notion outside the programme, skip it, and record what it
needed. Do not import it with a warning attached: a club leader cannot run an exercise whose
solution they would have to teach a new theory for.

Difficulty stays relative to the grade of the folder. Five stars at 4e and five stars at
Terminale are both "competition level for that student", and this source will offer you a
great deal of both.

## Where to aim

There is no cap on this import. Take everything that is genuinely good for the club. But the
volume is enormous, roughly 13000 problems against 1071 in the whole collection, so
selection is the whole game.

- The **Coupe Animath eliminatoires** inside each summer polycopié are the most accessible
  material in the source and the most self-contained. Start there.
- The **évaluation initiale** and the camp tests are calibrated to what students know on
  arrival, so they sit lower than the courses around them.
- Inside a course, the **first exercises** of a lecture are the warm-ups. They are often
  exactly right for a club, while the last ones are IMO shortlist.
- The collection is thinnest at **one star (53 exercises)** and **five stars (67)**. This
  source has almost nothing at one star and a great deal at five. Take the five-star material
  where you can rewrite it, and do not force anything into one star.

## Overlap, which is a real risk here

The collection already holds 1071 exercises, including 200 from a Moscow circle and 199 from
a Lyon club. The French and Russian olympiad canons overlap heavily, so the classics in these
polycopiés are often already in the base.

- **Search the database by statement before you write, not by topic.** `python3 tools/vm.py
  list --grade 9 --theme arithmetic` and a grep over `grade-*/` are your tools.
- Year-to-year reprinting inside POFM runs 3 to 16 percent, so another agent reading a
  different year may well meet the same problem. The duplicate rule below applies.

## Metadata

```yaml
source:
  name: "POFM, stage olympique de Valbonne 2017, cours de Groupe A"
  reference: "stage_ete_2017.pdf, « Groupe A : logique/stratégies de base », jeudi 17 matin (Antoine Martin), exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
```

Name the lecturer and the session in `reference` when the document names them; these are
signed lectures and the attribution is part of the citation. When a problem is itself a
competition problem and the polycopié says so (IMO, JBMO, Coupe Animath, a national
olympiad), say that in `reference` too.

Since the source is French, `original_language` is `"fr"` and there is no translation step to
record. Do still say in `reference` exactly where in the document it came from: these are
hundreds of pages long and "stage_ete_2014.pdf" alone is useless to a future reader.

## Reading these PDFs

They are LaTeX-produced and the text layer is good, but:

- **Check every exponent.** `pdftotext` flattens powers, so `2^n` reads as `2n`. Run
  `python3 tools/pdfsupers.py <file> <page>` before trusting one. It needs `pypdf` and
  `fonttools`, both in `requirements.txt`.
- Geometry figures are drawn in TikZ and do not survive text extraction at all. If a problem
  depends on its figure, render the page with `pdftoppm -r 150 -png -f <p> -l <p> <file> out`
  and look at it, then redraw the figure as SVG next to your exercise.
- Accented characters and maths symbols sometimes extract oddly (`÷` for an angle mark, `6=`
  for `≠`). When a statement reads as broken, re-render the page before concluding the
  problem is broken.

## Rules that came out of the earlier imports

Not optional. Each one cost real work.

- **Never delete a finished exercise because it duplicates one from another agent's block,
  not even your own file.** Two agents once noticed the same pair at the same moment, each
  deleted its own copy trusting the other to survive, and the problem vanished. Keep your
  file, add `see_also` if the two sit at different grades, and report the pair in your final
  message. The coordinator arbitrates after everyone has stopped. Skipping a duplicate you
  have not yet written is still fine.
- **Never touch a file outside your id block**, and never call `vm.py new` without `--id`.
- **Scratch files must carry your unit name**, e.g. `ete-2017-check.py`. The scratchpad is
  shared and generic names get overwritten mid-run.
- **Build what you write and look at the page.** `vm.py check` validates metadata; it does
  not compile anything. `vm.py build` now prints pandoc's warnings: never build past one.
- **The source can be wrong.** Earlier runs found around twenty genuine errors in published
  circle handouts. These polycopiés are carefully edited and there is even a published
  erratum for 2012, but a printed solution is still a check on your reasoning, not the
  reasoning. Verify before you publish.

## Finishing

- **Update your unit file as you go**, not only at the end. Set `status` to `done` only when
  you have genuinely finished your documents; otherwise leave `in_progress` with `next_file`
  pointing where to resume. With documents this long, an honest `in_progress` is the expected
  outcome and is far more useful than a `done` that is not true.
- Record every skip with a reason. When you skip something good because it is out of range or
  already in the base, say which and name the existing id.
- Run `python3 tools/vm.py check` and build every exercise you wrote before you stop. Errors
  on other agents' half-written files are expected and are not yours to fix.
