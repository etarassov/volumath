# Import brief: Малый мехмат МГУ

You are importing exercises from the MSU Little Mekhmat math circle материалы into the
volumath database. Read `/Users/etar/volumath/CLAUDE.md` first, it holds the file format,
the difficulty scale and the naming rules. This brief adds what is specific to this source.

## About the source

Each development comes as two PDFs. The `_handouts.pdf` is the clean worksheet given to the
students, one session per sheet. The plain `.pdf` is the teacher manual: it repeats every
problem and adds **the solution and a pedagogical comment**. The manual is your main text.
Use the handout when you want the statement exactly as a student receives it.

The material is in Russian. A session is a «занятие», a problem is a «задача», a worksheet
is a «листок».

## Levels

Russian and French school years do not line up. Roughly, Russian class N sits at French
`grade-(N+1)`, so Russian 7 is our `grade-08` (quatrième). The site itself says the mapping
to school classes is largely conventional.

**Decide the French level from the mathematics the problem actually needs, not from the
class printed in the source.** Circle problems for Russian class 6 are often right for a
French quatrième club. A problem that needs tools no French student has met at your target
level either moves up a level, or gets skipped.

Our database starts at quatrième. Anything below that even at one star gets skipped.

## What to do

1. Read your unit file, set `status` to `in_progress`, put the current time in `updated`,
   and write it back. Do this before anything else.
2. Read the page range of the teacher manual you were given. The Read tool takes at most 20
   PDF pages per call, so split the range over two calls.
3. Choose **six to ten problems** that would genuinely work in a French club. Quality decides,
   not volume. Prefer problems that:
   - stand on their own, without the rest of the session;
   - have a real idea in them, not just a drill;
   - need no figure, or need a figure simple enough to draw cleanly as SVG.
   Skip the rest, and record why in `skipped`.
4. For each chosen problem:
   - `cd /Users/etar/volumath && python3 tools/vm.py new --id <NNNN> --grade <G> --theme <T> --difficulty <D> --title "<titre français>" --slug <english-slug>`
     using **only ids from your own block**. Never call `new` without `--id`.
   - Fill in the file: front matter, then `## Statement`, `## Hints`, `## Solution`, and
     `## Going further` when the source offers a natural extension.
   - Immediately add the id to `imported` in your unit file and write it back. That is what
     makes an interrupted import resumable.
5. When your problems are done, run `python3 tools/vm.py check`. Fix anything it reports
   **about your own ids**. Other agents are writing at the same time, so ignore lines about
   ids outside your block.
6. Set `status` to `done`, write the unit file, and report back.

## Reading these PDFs

The Read tool can render PDF pages as images, which is the only way to see a figure and the
only reliable way to read a power. If it refuses with a message about `pdftoppm`, poppler is
missing: install it with `brew install poppler`, or render the page yourself with PyMuPDF and
Read the resulting PNG.

Text extraction with `pypdf` or `pymupdf` is faster and fine for prose, but see the traps
below before you trust it for mathematics.

## Reading these PDFs: three traps

**Use `tools/pdfsupers.py` for anything with powers.** It re-reads a page from the glyph
geometry and prints the exponents back in, which plain extraction cannot do:

```sh
python3 tools/pdfsupers.py sources/originals/mmmf-msu/AU.pdf 48
# ... 200000 = 2 · 10 ^{5} = 2 · 2 ^{5} · 5 ^{5} = 2 ^{6} · 5 ^{5} ...
```

**Exponents vanish in extracted text.** These PDFs are TeX output. If you pull the text with
a library such as `pypdf`, a power loses its formatting: `7^7` comes out as the four
characters `77`, and `7^(7^7)` as `777`. A number that looks oddly repetitive is very often
a power. Read the page visually with the Read tool before trusting any power, and cross
check against the manual's own solution, which usually restates the value.

Punctuation also mangles: em dashes appear as `/emdash.cyr` and Russian quotes as
`/guillemotleft.cyr`.

**Overlines flatten too.** A digit string written with a bar over it, the notation for "the
number whose digits are a and b", loses the bar in extraction. `ab · cd = abcd` then looks
like ordinary algebra and means something else entirely. Same cure: look at the page.

**Comparison signs flatten too.** In the manuals, the signs for "greater than or equal" and
"less than or equal" often extract as plain `>` and `<`, which changes the mathematics. The
handouts PDF preserves them. Check any inequality against the handout.

**Sessions are numbered «листок» in some manuals and «занятие» in others.** Use the word the
manual itself uses in `source.reference`, so the reference points at something a reader can
actually find.

## Translating

Write French a French child reads without stumbling. Translate the idea, not the words.

- Russian first names and places become French ones. Пети и Ваня become Pierre et Jean.
  Keep a name only when the problem is about the name itself.
- Roubles become euros. Keep the numbers round and the situation plausible.
- Use French notation and vocabulary: $\mathrm{PGCD}$ and $\mathrm{PPCM}$, «entier naturel»,
  «chiffre» for a digit and «nombre» for a number, «montrer que» for «докажите».
- Keep the mathematics exactly as it is. Never simplify a problem to make it easier to
  translate. If you cannot render it faithfully, skip it and say so.

## Writing the solution

The manual's solution is your starting point, never something to copy across.

- Rewrite it for the student at your target level, with the tools they have.
- Show the steps. A student who is stuck should be able to follow each line.
- Name the idea when there is one, for example «on regarde la parité» or «on raisonne par
  l'absurde», so the club leader can point at it.
- Finish with a plain sentence stating the answer or the conclusion.
- Hints are a numbered list, from a gentle nudge to nearly the answer.

## Figures

Draw them as SVG next to the exercise, named `<id>-figure-1.svg`, and reference them with
`![Description](<id>-figure-1.svg)`. Keep them plain: black strokes, light grey fills, serif
labels, a viewBox around 300 by 240. They must stay readable printed in black and white.

## Before you choose your problems

**Read the existing titles first**, with `python3 tools/vm.py list`. These booklets recycle the
same classics, so a problem you are about to import may already be in the database from
another manual. Checking afterwards is too late: you will have written the whole file.

If you find that one of your problems already exists:

- **Never delete or edit the other file.** It belongs to another unit. Two agents once
  resolved the same pair in opposite directions within minutes and a good problem ended up
  in the database nowhere at all.
- Either skip yours, or keep it if it targets a different level and you can write a solution
  for that level. Two copies at two different grades are allowed, one per grade is the rule.
- Report the pair. Cross link the two with `see_also` once both sides agree.

Title matching alone will not find these. Two files can hold the identical argument under
titles that share no words, which is how one duplicate survived every automatic check.

## Rules

- Touch only your own exercise files, their figures, and your own unit file.
- Never run `python3 tools/vm.py index`. It is run once centrally at the end.
- Never change an exercise that is not yours, and never use an id outside your block.
- The scratchpad directory is **shared with the other agents running at the same time**. If
  you write a helper script there, give it a name that starts with your unit, or better, use
  an inline heredoc. Two agents have already overwritten each other's helper and run the
  wrong script, which wrote an id into another unit's ledger file.
- Before you write your unit file, re-read it from disk and confirm every id in `imported`
  is inside your own block. Drop anything that is not yours.
- Every exercise must carry a precise `source.reference`, for example
  `Kan2017.pdf, занятие 4, задача 3`, so anyone can find the original again.
