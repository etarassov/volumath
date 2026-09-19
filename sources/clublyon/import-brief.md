# Import brief: feuilles du club de Lyon

You are importing exercises from a French math club's own session sheets into volumath.
Read `/Users/etar/volumath/CLAUDE.md` first: file format, difficulty scale, naming. This
brief adds what is specific to this source, and one thing here is unlike anything in the
previous import.

## The source has no solutions. You have to write them.

Every sheet is statements only, sometimes with a few lines of course reminders. There is no
teacher manual, no answer key, nothing to adapt. **You must solve each problem yourself,
and be sure you are right before you publish it.**

That changes what care means here:

- **Verify by computation whenever the problem allows it.** Counting problems, number
  puzzles, tilings, games with small state spaces: write a few lines of Python and check
  the answer by brute force. An exercise whose answer you checked is worth far more than
  three you merely believe.
- **Check your answer twice by different routes** when brute force is not possible: rederive
  it, or test the claim on the smallest cases, or count the same thing two ways.
- **If you cannot solve a problem rigorously, skip it.** Say so in `skipped`. A wrong
  solution handed to a child is worse than a missing exercise, and there is no source to
  correct you. Do not publish a solution that ends in "one convinces oneself easily".
- If you are confident of the answer but your argument has a gap you cannot close at the
  target level, skip it and record the gap. Someone can come back to it.

## The statements are already French

Do not translate. Keep the club's own wording where it is good. What you do have to do:

- Fix the typing slips. These sheets were typed quickly and contain accent and spelling
  errors ("Demontrez", "les ingredients", "pèches" for "pêches", "allé" for "allés").
- Repair what the PDF text layer mangles, see below.
- Make the statement stand on its own. Several problems sit under a shared heading or refer
  to "la figure suivante". Fold what they need into the statement, or redraw the figure.
- Keep the problem exactly as posed. Do not simplify it to make it easier to write up.

## Reading the sheets

**Read the pages as images with the Read tool.** Poppler is installed, so Read opens these
PDFs directly. Do that rather than trusting extracted text, because the text layer drops
typography and it does so silently:

- fractions collapse, so "les deux tiers" prints as `23` where the page shows `2/3`;
- exponents flatten, so a square looks like a two digit number;
- figures do not appear in the text at all.

`python3 tools/pdfsupers.py <file> <page>` recovers exponents from glyph geometry if you
want a second opinion. Any number that looks odd is probably mangled typography.

## Level and difficulty

Every sheet says "Niveau collège - débutants". In French terms that is mostly `grade-08`
(quatrième), with some `grade-09` where the problem genuinely needs troisième tools. Decide
from the mathematics, not from the heading.

**The database currently has no one star exercises at all and very few at two stars.** This
source is the one that can fix that. When a problem is a clean single step, import it at
difficulty 1 rather than passing it over as too easy. A club needs a way in, not only hard
problems. Keep a spread across the sheet instead of taking only the interesting ones.

## Themes

The usual list, plus `coloring`, which is new. Use it for problems whose solution *is* a
colouring argument: chessboard parity, stripes, blocks of four, the tetromino tilings. A
problem that merely mentions colours is not one of these.

## Citing

The sheets cite their own origins. Record both, the club sheet and the original, so the trail
is not lost:

```yaml
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers. Démonstrations par coloriage »"
  reference: "Moscou.Coloriage.pdf, exercice 7, d'après Mathematical Olympiads for Middle School (Moscou), 2015"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Moscou.Coloriage.pdf"
```

## What to do

1. Read your unit file, set `status` to `in_progress`, write it back.
2. Read every page of your sheet as an image.
3. **Before choosing, run `python3 tools/vm.py list` and read the existing titles.** Sources
   overlap and 202 exercises are already in. If a problem is already there, skip it.
4. Choose **twelve to fifteen** problems, spread across the sheet's range of difficulty.
   Include the easy ones.
5. For each: `python3 tools/vm.py new --id <NNNN> ...` with an id from your own block only.
   Fill in the file, solve the problem, verify the answer, write hints that lead without
   revealing. Add the id to `imported` and write the unit file back immediately.
6. Run `python3 tools/vm.py check` and fix anything about your own ids.
7. Set `status` to `done`, write the unit file, report back.

## Rules

- Touch only your own exercise files, their figures, and your own unit file.
- **Never delete or edit a file outside your id block.** If you find a duplicate owned by
  someone else, report it and let the coordinator arbitrate. Two agents once deleted the
  two halves of the same pair and the problem vanished from the database entirely.
- Never run `python3 tools/vm.py index`. It is run once centrally at the end.
- The scratchpad directory is shared with the other agents running right now. Give any temp
  file a name starting with your unit, or use an inline heredoc.
- Say in your report which answers you verified by computation and which you did not.
