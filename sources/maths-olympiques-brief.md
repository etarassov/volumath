# Importing from maths-olympiques.fr: mailings, selection tests, Coupe Animath

Read `/Users/etar/volumath/CLAUDE.md` first. It is the contract. This file covers only what is
different about these three sources, and one rule here is the opposite of every earlier import:
**you take every problem.**

## What you are reading

Three sources from the Animath olympiad site, all in French, almost all with a corrigé:

| Source | Page | What it is |
|---|---|---|
| `pofm-envois` | `?page_id=71` | The training mailings of the olympiad preparation (POFM), five or six a year, one theme each: géométrie, algèbre, arithmétique, combinatoire, pot-pourri. From 2019-2020 on each mailing has three parts, *Exercices Juniors*, *Exercices communs*, *Exercices Seniors*, about 18 problems. Before that, about 8. |
| `pofm-tests` | `?page_id=479` | The tests that select the French teams for the IMO, EGMO, RMM, Balkans and JBMO. Senior tests are 4 hours, 3 or 4 problems, IMO level. Some years have a separate junior test in February. |
| `coupe-animath` | `?page_id=69` | The Coupe Animath, twice a year. Since about 2015, first a short-answer online round (*premier tour*), then a timed paper with a collège part and a lycée part. From 2009 to 2013 the spring Coupe had separate papers for collégiens, secondes and premières. |

Your unit file, `sources/<source>/units/<unit>.json`, lists your documents. Each document gives
the local file and the URL it came from. The files are already on disk under
`sources/originals/<source>/`. **Never fetch anything from the network.**

## Take every problem

Earlier imports chose. This one does not. The owner wants the whole of these three sources in
the collection. There are exactly two reasons to skip a problem:

1. **It is already in the collection at the grade where it belongs.** Same mathematical
   question, even with different wording, names or numbers that change nothing. See
   "Duplicates" below for how to check.
2. **It is broken and cannot be fixed.** A statement with missing data that you cannot restore
   from the corrigé, a page you cannot read even rendered at 300 dpi, a claim that is false and
   cannot be repaired into a true problem worth asking. For a paper with no corrigé (see below),
   a problem you could not solve with certainty counts as this case.

Nothing else is a reason. Not "too hard" (that is what five stars and the rule below are for),
not "too long", not "a bit dull". CLAUDE.md's rule about problems below 4e still holds, but it
will almost never apply here.

When a problem has several parts, it stays one exercise. When the same problem appears twice in
your own documents (a Coupe problem reprinted in a mailing, a junior version and a senior version
that are word for word the same), import it once. A junior version and a genuinely harder senior
version of the same idea are two problems at two grades: import both and link them with
`see_also`.

## Rewriting, which is the actual work

A corrigé here is written by an olympiad trainer for a selected student. It compresses, it
assumes, and it sometimes answers a slightly different question than the one a club leader needs
answered. CLAUDE.md is binding: **write the solution at the level of the target student, show the
steps, state the conclusion plainly.**

For nearly every problem:

- Restate the problem in ordinary French. Olympiad phrasing is fine at 1re and Terminale and
  wrong at 4e.
- Redo the solution in full sentences. Where the corrigé writes "on conclut aisément", write the
  conclusion. Many recent corrigés are *corrigés commentés* that also list common mistakes in
  students' answers. Those comments are useful to you; do not copy them into the solution.
- Write hints. The source has none. This is where most of your value is.
- A first-round Coupe problem asks for an answer without proof. Your solution still explains why
  the answer is right.

A copied statement plus a copied solution is not an import. It is a transcription.

## Deciding the grade

CLAUDE.md decides: **the grade comes from the mathematics actually needed**, not from the label.
Put a problem at the lowest grade where the tools are known and where a strong student of that
grade could solve it in a club session with the hints. An IMO selection problem that needs only
collège algebra still does not belong in a 4e folder: nobody in a 4e club solves it.

Where the labels point, as a starting guess only:

| Label in the document | Usual French grade |
|---|---|
| Mailing, *Exercices Juniors*. Juniors are "nés en 2010 ou après" in 2024-2025, so at most 3e | 4e or 3e, sometimes 2de |
| Mailing, *Exercices communs* | 3e to 1re |
| Mailing, *Exercices Seniors* | 1re or Terminale |
| Junior selection test | 3e or 2de, four or five stars |
| Senior selection test | Terminale, mostly four or five stars |
| Coupe, collège paper or collège first round | 4e or 3e |
| Coupe, lycée paper or lycée first round | 2de or 1re |
| Spring Coupe 2009 to 2013: *collégiens*, *secondes*, *premières* | 3e, 2de, 1re |

The printed level is one notch harder than it sounds. These students were selected.

Difficulty stays relative to the grade of the folder, with CLAUDE.md's scale. Expect much of this
material at four and five stars. That is fine: the collection is thin at five stars.

## Tools above the student's programme

Olympiad solutions use many results that are not in the French school programme. Sort each one
into one of three cases.

1. **A short lemma.** Not in the programme, but you can prove it for the student in a few lines
   with what they know: the inscribed angle theorem, the power of a point from similar
   triangles, the angle bisector theorem, the inequality between the arithmetic and geometric
   mean for two numbers, congruences explained as remainders, the pigeonhole principle. Prove or
   explain it inside the solution and grade the problem normally. Earlier imports already do
   this, for example congruences in 82 exercises from 4e to 2de.
2. **The *mathématiques expertes* option of Terminale**: complex numbers, congruences with
   Bézout, Gauss and Fermat's little theorem, matrices, graphs. Count these as known at
   Terminale. Put the problem at grade 12 with its normal difficulty, add the tag
   `maths-expertes`, and record it in `beyond_programme` with `"hors_programme": false` (see
   below), because the owner may want new themes for some of these.
3. **A real theory beyond Terminale**: inversion, projective geometry, barycentric coordinates
   as a method, generating functions, quadratic reciprocity, group theory, linear algebra beyond
   2 by 2, series and Taylor expansions, and anything else a club leader would have to teach
   for an hour first. Then:
   - the problem goes to **grade 12, difficulty 5**, in the closest current theme,
   - add the tag `hors-programme`,
   - the solution **opens with a short paragraph `**Rappel.**`** that explains the tool: what it
     says, in plain words, enough that a strong Terminale student can follow the solution. It
     does not need to prove the tool,
   - record it in `beyond_programme` with `"hors_programme": true`.

   If you can rewrite the solution without the theory, do that instead and grade it normally.

`beyond_programme` in your unit file is a list of objects:

```json
{"id": "12034", "tool": "nombres complexes, racines de l'unité", "suggested_theme": "complex-numbers", "hors_programme": false}
```

`suggested_theme` is the theme you would create for it if themes were free, in English,
lowercase with hyphens, like the current ones. Use it also for any problem, in or out of the
programme, that fits badly in all eight current themes (inequalities and functional equations
are the likely ones). The owner reads these lists to decide whether to add themes, so be
consistent: reuse a name another problem in your list already has when it fits.

## Choosing the theme

The current themes are `arithmetic`, `algebra`, `geometry`, `functions-analysis`,
`probability-statistics`, `combinatorics`, `logic-reasoning`, `coloring`. The mailing's theme is
a hint, not an answer. A pot-pourri mailing covers everything. Inequalities, polynomials and
functional equations without calculus go to `algebra`. Games and strategies go to
`logic-reasoning`. `coloring` is only for problems where the colouring **is** the idea
(CLAUDE.md explains). Combinatorial geometry, counting and pigeonhole go to `combinatorics`.

## Papers without a corrigé

Seven selection tests have no published corrigé: 2012-2013 mai, 2014-2015 mars and mai (two
days), 2015-2016 mars and mai, 2016-2017 mars and mai. The spring 2015 Coupe first round has no
corrigé either (the site links a `.txt` that was never published as a PDF). For these, import a
problem **only if you solve it yourself and check your solution**: verify every case, test small
values, and when there is a numeric answer, confirm it a second way (a short Python check in your
scratch folder is good). If you cannot reach certainty, skip it under reason 2 and say so. A
wrong solution in the collection is worse than a missing problem.

## Duplicates

The collection already holds 2201 exercises, about 190 of them from the Coupe Animath (mostly
spring 2015 to 2026, reprinted in the summer camp handouts). The French olympiad canon is small
and reprints itself: mailings reuse Coupe problems, tests reuse mailing problems, and the classics
are in the collection from Moscow, Lyon and UCLA. So **search before you write every problem**:

```sh
python3 sources/originals/_coordinator/similar.py --grade 9 "le texte de l'énoncé"
python3 sources/originals/_coordinator/similar.py --file mon-brouillon.md     # no --grade: all grades
```

It reads the collection fresh each time, so it also sees what other agents wrote a minute ago.
It is a helper, not a judge: it finds the same wording well and a different wording badly. Also
grep for the problem's distinctive numbers and words, for example `grep -rl "2023" grade-*` or
`grep -rli "pièces de monnaie" grade-*`, and read what you find.

- **Same problem, same grade**: skip it, and record the existing id in the skip.
- **Same problem, another grade**: first look at where the existing copy sits. If that placement
  is defensible, accept it: the problem is then already at its grade and you skip it. Import a
  second copy only when the other grade is a really different use of the problem. Then put the
  other id in your file's `see_also` and record the pair in `see_also_added`. Do not edit the
  other file: the coordinator adds the link back.
- **Your version asks more** than the one in the collection (an extra part, the general case,
  the equality case): import yours and write the pair in `notes`, "12034 demande plus que 0712".
  The coordinator arbitrates.
- **Duplicate of a file another agent just wrote**: see the rule below. Never delete.

The spring Coupe units are mostly checking work, because most of those papers came in with the
summer camp handouts. Check every problem, import the ones that are missing, skip the rest with
the existing id.

## Metadata

`url` is the direct link to the statement PDF, given in your unit file. The file names on the
site are not unique ("Sujet.pdf" twice), so the page URL alone would not find it again.

```yaml
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 3 (arithmétique)"
  reference: "2022-01_sujet-envoi-3.pdf, Exercices communs, exercice 9 ; corrigé 2022-02_corrige-envoi-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-01_sujet-envoi-3.pdf"
```

```yaml
source:
  name: "POFM, test de sélection de janvier 2023"
  reference: "2023-01_Enonce-Web-Test-2.pdf, test senior, exercice 3 ; corrigé 2023-01_Corrige-Web-Test-2.pdf"
```

```yaml
source:
  name: "Coupe Animath d'automne 2019"
  reference: "2019-10_coupe_animath_automne_2019_sujet.pdf, épreuve collège, exercice 5 ; corrigé 2019-10_Corrige.pdf"
```

Use the local file names exactly as they are on disk: they are plain ASCII copies of the site's
names, with the accents dropped. When the corrigé says where a problem comes from (a Russian
olympiad, an IMO shortlist, the Coupe of some year), add it to `reference`. When you correct an
error in the source, say so in `reference` too, as CLAUDE.md asks.

Tags are French, lowercase, no accents, like the existing ones (`congruences`, `invariant`,
`tiroirs`, `inegalite`). Look at `python3 tools/vm.py list --tag <tag>` before inventing a new
one.

## Reading these PDFs

They are LaTeX-produced and the text layer is mostly good. Read one page at a time with
`pdftotext -layout -f <p> -l <p> <file> -`, not a whole corrigé at once: they run to 40 pages and
your context is not unlimited.

- **Check every exponent** with `python3 tools/pdfsupers.py <file> <page>`. `pdftotext`
  flattens powers, so `2^n` reads as `2n`. Check inequality signs against the statement file.
- **Six files have no text layer at all.** Render them with `pdftoppm -r 150 -png -f <p> -l <p>
  <file> <out>` and read the image: `2017-09_coupe_printemps_2016_elim_corrige.pdf`,
  `2017-09_coupe_printemps_2017_elim_corrige.pdf`, `2017-10_coupe_automne_2017_elim_college.pdf`,
  `2017-10_coupe_automne_2017_elim_lycee.pdf`, `2018-06_coupe_printemps_2018_elim_college_corrige.pdf`,
  `2018-06_coupe_printemps_2018_elim_lycee_corrige.pdf`.
- **Geometry figures are drawn in TikZ** and vanish from the text. A page whose text is empty or
  much shorter than its neighbours needs rendering. When the problem depends on its figure,
  redraw it as SVG next to your exercise, following CLAUDE.md: attributes on shapes, Helvetica
  for any label with a digit, no `√` in a label, captions with paired brackets, and a figure that
  does not give the answer away.
- When a digit or a sign makes a problem look broken, re-render the page at 300 dpi before
  concluding the problem is broken.

## Rules that came out of the earlier imports

Not optional. Each one cost real work.

- **Never delete a finished exercise because it duplicates one from another agent's block, not
  even your own file.** Twice now, two agents noticed the same pair at the same moment, each
  deleted its own copy trusting the other to survive, and the problem vanished. Keep your file,
  write the pair in `notes`, and let the coordinator arbitrate after everyone has stopped.
  Skipping a duplicate you have not yet written is still fine.
- **Never touch a file outside your id block**, and never call `vm.py new` without `--id`. Use
  your ids in order. Your block has 200, more than you need.
- **Scratch files go in your session scratchpad and carry your unit name**, e.g.
  `tests-2014-2017-check.py`. Other agents share the folder and generic names get overwritten.
- **Build what you write and look at the page.** `vm.py check` validates metadata, it compiles
  nothing. Build with `python3 tools/vm.py build --ids <id>`. `vm.py build` prints pandoc's
  warnings: never build past one. Read the "What survives the trip to Typst" table in CLAUDE.md
  before your first formula.
- **The source can be wrong.** Earlier runs found around twenty genuine errors in published
  handouts. A corrigé is a check on your reasoning, not the reasoning. When it is wrong, publish
  the right version and record it in `source_errors` as `{"where": "...", "what": "..."}`.

## Your unit file, kept up to date

Update it **after every document**, not only at the end:

- `imported`: the ids you wrote, as strings.
- `skipped`: objects `{"where": "2019-10_..., exercice 5", "why": "...", "existing": "0712"}`.
  `existing` only when the reason is a duplicate.
- `beyond_programme`, `see_also_added` (`{"id": "12034", "other": "0712"}`), `source_errors`,
  `notes`: as described above.
- `next_document`: the index in `documents` of the first document you have not finished.
- `status`: `in_progress` while you work, `done` only when every document is genuinely finished.
  If you have to stop early, leave `in_progress` with `next_document` and a note saying which
  problem of that document comes next. An honest `in_progress` is far more useful than a `done`
  that is not true.
- `updated`: the date.

## Finishing

Before you stop:

1. Run `python3 tools/vm.py check`. Errors in other agents' half-written files are not yours.
2. Build **every** exercise you wrote, not a sample, and look at any page with a figure.
3. Make sure every id in `imported` exists as a file and every file in your block is listed.

Your final message, in plain English, gives: how many problems you imported and skipped; the
duplicate pairs you suspect, with ids; the source errors you found; your `beyond_programme`
entries; and anything the coordinator should look at.
