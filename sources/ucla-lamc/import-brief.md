# Importing the Los Angeles Math Circle handouts

Read `/Users/etar/volumath/CLAUDE.md` first. It is the contract. This file only covers what
is different about this source.

## What you are reading

Weekly session handouts of the Los Angeles Math Circle at UCLA, 2007 to 2026. Your unit file
lists the sessions you own, each with its PDFs already downloaded to
`sources/originals/ucla-lamc/`. **Never fetch anything from the network.** `ucla.edu` does not
resolve on this machine, and everything you need is on disk.

Three things make this source unlike the two already imported.

**1. It is in English.** You are translating, not just polishing. Write natural French, the
way a French textbook would put it, not a word for word rendering. Convert names, money and
units to something a French child recognises: dollars become euros, feet become metres,
"John" and "Sarah" become "Jean" and "Sarah" or whatever reads naturally. `gcd` becomes
$\mathrm{PGCD}$, `lcm` becomes $\mathrm{PPCM}$.

**2. They are lessons, not problem lists.** A handout is a LaTeX document with exposition
interleaved with numbered `Exercise N.` items. Your job is to pull out the *problems* that
stand on their own. A problem that only makes sense after three pages of that handout's own
build-up either needs the definitions folded into your statement, or should be skipped.

**3. About one session in five has an answers file, and the answers are terse.**
The "solutions" PDF is usually the same document with short answers dropped in, often just a
final expression like `n!` or `5!` with no reasoning. So:

- When there is an answers file, **use it to check yourself**, and still write the full
  reasoning at the student's level.
- When there is not, you are in the same position as the Lyon import: **solve it yourself and
  verify before publishing.** Brute force in Python whenever the numbers allow. If you cannot
  settle a problem rigorously, skip it and say so in `skipped`. A wrong solution handed to a
  child is worse than a missing exercise.

Your session list is ordered with the ones that have answers first, so the most checkable
material gets done first.

## Deciding the French level

**This is the part that matters most for this source.** US grades map roughly like this:

| US grade | French |
|---|---|
| 7 | 5e (below the club) |
| 8 | 4e |
| 9 | 3e |
| 10 | 2de |
| 11 | 1re |
| 12 | Terminale |

That is a hint, not an answer. CLAUDE.md is binding: **decide from the mathematics actually
needed, not from the label on the handout.** An "Advanced" handout on counting pizza toppings
is a 4e problem; an "Intermediate" handout that needs the quadratic formula is not.

**grade-11 (1re) and grade-12 (Terminale) are still completely empty.** Both earlier sources
stop around seconde. If you own Advanced, High School, Olympiads or AMC 10/12, you are the
reason this source was chosen: actively look for problems that genuinely need 1re or Terminale
tools, and place them there. Do not push a real Terminale problem down to 2de to be safe.

Equally, do not push material *up*. If a handout is genuinely below 4e, skip it. That is the
normal outcome for much of Beginners 2.

## AMC and other multiple choice

Much of Intermediate and all of the AMC training material is multiple choice with options
(A) to (E). French school problems are not multiple choice.

- **Rewrite as an open question.** Drop the options and ask for the value, the count or the
  proof.
- The answer key then becomes a free check on your own solution. Use it.
- Dropping the options sometimes makes a problem much harder, because the options were doing
  real work. When that happens, either add the missing constraint to the statement or skip it.
  Say which in `skipped`.
- Cite the original contest in `source.reference` when the handout names it, for example
  "AMC 8 2014, problem 17".

## Metadata

```yaml
source:
  name: "Los Angeles Math Circle (UCLA), <group>, <topic>"   # in English, it is an English source
  reference: "Handout-4796-4987.pdf, exercice 9"             # exact file and exercise number
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4796-4987.pdf"
```

Cite the **handout** file you took the statement from, even when you checked the answer in the
solutions file. Mention the solutions file in the reference if it helped, for example
"Handout-4796-4987.pdf, exercice 9 (réponse dans Handout-4797-4987.pdf)".

## Rules that came out of the earlier imports

These are not optional. Each one cost real work to learn.

- **Never delete a finished exercise because it duplicates one from another agent's block, not
  even your own file.** Two agents once noticed the same pair at the same moment, each deleted
  its own copy trusting the other to survive, and the problem vanished from the database. Keep
  your file, add `see_also` if the two sit at different grades, and report the pair in your
  final message. The coordinator arbitrates after everyone has stopped. Skipping a duplicate
  you have not yet written is still fine.
- **Never touch a file outside your id block**, and never call `vm.py new` without `--id`.
- **Run `vm.py list` before choosing**, and again near the end. The database grows under you
  while you work. Twenty agents are running at once.
- **Check the whole database for the problem before writing it.** These are classics and they
  travel: the same problem may already be in from Moscow or from Lyon. A cross-grade twin gets
  `see_also`; a same-folder twin means you skip it.
- **Scratch files must carry your unit name**, for example `adv-2021-check.py`, never `tmp.py`.
  The scratchpad is shared and generic names get overwritten mid-run.
- **Read the PDF pages as images when anything looks odd.** The text layer flattens
  typography: `2^n` comes out as `2n`, `7^(7^7)` as `777`, fractions and comparison signs get
  mangled. `python3 tools/pdfsupers.py <file.pdf> <page>` rebuilds a page from glyph positions
  and prints exponents as `^{...}`. Use it before trusting any power. If a digit makes a
  problem look broken, re-read that page at 300 dpi before declaring it broken.
- **A French decimal inside maths needs `\text{}` around the whole number**: `$\text{0,4}$`,
  never `$0{,}4$`, which prints as "0, 4" and reads as two numbers. Same for degrees: write
  `$\text{72,5°}$` with the sign inside the braces.
- `\begin{cases}` renders badly through pandoc to Typst. Write the system as two equations
  joined by "et".
- **Build at least one exercise and look at the page** before you finish. `vm.py build --ids
  NNNN`, then render the PDF to an image and read it. Figures and decimals have both been
  caught this way and only this way.

## Figures

Many of these handouts have figures. Redraw them as SVG next to the exercise,
`<id>-figure-<n>.svg`, with colours and strokes as attributes on each shape. Check every
figure by building the exercise and looking at the page. Never publish a geometry solution
that rests on how the figure looks.

## How much to import, and stopping

Your unit is far larger than one agent can finish. That is deliberate: the ledger makes the
work resumable, and later passes continue where you stop.

- Aim for **fifteen to twenty-five exercises**, spread across the difficulty range.
- Work down your session list in order.
- **Update your unit file as you go**, not only at the end. If you stop early, whatever is
  recorded is what the next pass builds on. Set `status` to `done` only if you have exhausted
  the list, otherwise leave it `in_progress` with `next_session` pointing at where to resume.
- Record every skip with its reason, and **record the answers you worked out for problems you
  did not import**. That is the single most valuable thing for the next pass, and past units
  have left dozens of ready-to-use answers this way.

Run `python3 tools/vm.py check` before you finish. Errors on other agents' half-written files
are expected and are not yours to fix.
