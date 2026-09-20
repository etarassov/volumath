# Importing the MathCircles.org activities

Read `/Users/etar/volumath/CLAUDE.md` first. It is the contract, and it now carries the
rendering table and the PDF-reading traps that earlier runs paid to learn. This file only
covers what is different about this source.

## What you are reading

The resource site of the National Association of Math Circles. Your unit file lists the
files you own, already downloaded to `sources/originals/namc/`. **Never fetch anything from
the network.** Everything you need is on disk.

**This is a facilitator resource site, not a problem bank.** That single fact should shape
how you read.

- Most files are **lesson plans**: two pages of "Have students...", "Ask them...", "Monitor
  how the groups are working", and then, if you are lucky, a short list of problems at the
  end. The Criss-Cross handout is the archetype.
- A file can look rich and carry one idea. One 29-page file in this collection scored 46
  numbered items and its entire mathematical content was the handshake count. It was
  excluded before the run for exactly that reason.
- The Tom Davis handouts (`catalan.pdf`, `diophantine.pdf`, `pickTomDavis.pdf`,
  `bignumbers.pdf`) are **expository articles**: real mathematics, problems embedded in
  prose, the same shape as the UCLA handouts.
- **Almost nothing carries a worked solution.** You solve and verify everything yourself.

So expect a low keep rate, and do not force it. Two or three good exercises out of a file is
a normal result. Skipping a whole file is a normal result too.

## The overlap problem, which is the real risk here

This site leans on the famous classics, and the collection already holds a great many of
them from Moscow, Lyon and UCLA. Before the run: the lockers problem is already **0303**,
Koenigsberg is **0234**, knights-and-liars appear in eight files, Euler-characteristic
material in ten, the handshake count is in.

- **Search the database by statement, not by source filename.** Every duplicate collision in
  the last run came from one document being reprinted as another under a different name.
  `python3 tools/vm.py list --theme combinatorics` and a grep over `grade-*/` are your
  friends. Run them **before** you write, and again near the end.
- Genuine gaps this source can fill, checked before the run: **Pick's theorem (0 in the
  collection), magic squares (0), tilings and Escher (0), rational tangles (0), Voronoi (0),
  Catalan numbers (1)**. Aim there first.
- The collection is also thin on **probability-statistics** and **functions-analysis**, and
  thinnest at **2de** (115 exercises against 287 at 4e). One-star and five-star problems are
  scarce everywhere.

## Deciding the French level

The site's own audience tags are a hint, not an answer. Rough map:

| Site tag | French |
|---|---|
| 1st - 2nd, 3rd - 5th | below the club, skip |
| 6th - 8th | 5e to 3e, so usually 4e or 3e |
| 9th - 12th | 2de to Terminale |
| College Level | often still Terminale once stripped of formalism, sometimes above the club |
| For Teachers | says nothing about level, it is on 83 of 103 activities |

CLAUDE.md is binding: **decide from the mathematics actually needed.** Many of these
sessions are tagged 9th-12th and College simultaneously because a facilitator can run them
at any depth. Judge the version you write, not the label.

## Activities that are physical

A good number of these sessions are hands-on: game boards, card decks, cut-out shapes,
people standing in a line. An activity does not become an exercise just because it is good
in a room. **If the mathematics cannot be stated on paper and solved on paper, skip it** and
say so. Do not invent a written problem the source does not contain.

The opposite case is worth catching: some hands-on sessions hide a genuine written problem
(the Mad Veterinarian puzzles, Bubbling Cauldrons, Criss-Cross). Take those.

## If you own a magazines unit

You have MTCircular issues, roughly 20 pages each. **Mine the recurring problem columns
only.** The articles are about running math circles and are not importable. The columns are
not consistently labelled across years, so scan each issue's contents page for a problem
section, take what is there, and record in your notes which issues had one and which did
not. Do not read the articles end to end; that is how a unit burns its whole budget for
nothing.

## Metadata

```yaml
source:
  name: "MathCircles.org (National Association of Math Circles), <activity title>"
  reference: "CrissCross_Vandervelde.pdf, « Further Problems », problème 5"
  url: "https://mathcircles.org/activity/<slug>/"     # your unit file gives activity_url
  original_language: "en"
  local_copy: "sources/originals/namc/CrissCross_Vandervelde.pdf"
```

Use the **activity page URL** from your unit file, not the bare site root, so the exercise
points back at the session it came from. Name the original author or contest when the file
names one; many of these handouts are signed work by known circle leaders.

## Rules that came out of the earlier imports

Not optional. Each one cost real work.

- **Never delete a finished exercise because it duplicates one from another agent's block,
  not even your own file.** Two agents once noticed the same pair at the same moment, each
  deleted its own copy trusting the other to survive, and the problem vanished. Keep your
  file, add `see_also` if the two sit at different grades, and report the pair in your final
  message. The coordinator arbitrates after everyone has stopped. Skipping a duplicate you
  have not yet written is still fine.
- **Never touch a file outside your id block**, and never call `vm.py new` without `--id`.
- **Scratch files must carry your unit name**, e.g. `graphs-check.py`, never `tmp.py`. The
  scratchpad is shared and generic names get overwritten mid-run.
- **Build what you write and look at the page.** `vm.py check` validates metadata; it does
  not compile anything, and four exercises once passed every check while being unable to
  produce a PDF at all. Build every exercise you write, and read at least one rendered page.
- **The source can be wrong.** The last run found eleven genuine errors in published circle
  handouts, including a problem asking students to prove something false. Treat a printed
  answer as a check on your reasoning, never as the reasoning.

## How much to import, and stopping

- Aim for **eight to twenty exercises**, spread across the difficulty range. This source is
  thinner than UCLA; quality matters far more than count here.
- **Update your unit file as you go**, not only at the end. Set `status` to `done` only if
  you have genuinely exhausted your files, otherwise leave it `in_progress` with `next_file`
  pointing at where to resume.
- Record every skip with its reason, and **record the answers you worked out for problems
  you did not import**. Past units have left dozens of ready-to-use answers this way, and
  that is what makes a second pass cheap.

Run `python3 tools/vm.py check` before you finish. Errors on other agents' half-written
files are expected and are not yours to fix.
