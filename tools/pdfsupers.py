#!/usr/bin/env python3
"""Re-extract PDF pages with superscripts and subscripts marked.

Plain text extraction flattens typography, so 2^n comes out as "2n" and a power
tower 7^(7^7) as "777". That silently turns a problem into a different problem.
This reads the glyph geometry instead: body text sits at one font size, and a
raised, smaller run is an exponent. Output marks them as ^{...} and _{...}.

    python3 tools/pdfsupers.py sources/originals/mmmf-msu/Ast2017b.pdf 25
    python3 tools/pdfsupers.py <pdf> 12 13 14

Written after two parallel imports independently hit the flattening trap.
Verify any power against this before trusting extracted text.
"""

import sys
from collections import Counter

try:
    from pypdf import PdfReader
except ImportError:
    sys.exit("pypdf is missing. Run: python3 -m pip install --user pypdf")

SMALL = 0.92      # a run this much below body size is a candidate
LIFT = 1.5        # points of baseline shift that count as raised or lowered


def runs_of(page):
    found = []

    def visit(text, cm, tm, font_dict, font_size):
        if text and text.strip():
            found.append({"text": text, "x": tm[4], "y": tm[5], "size": round(font_size or 0, 1)})

    page.extract_text(visitor_text=visit)
    return found


def mark(runs):
    """Rebuild lines from glyph positions, marking raised and lowered runs."""
    if not runs:
        return ""
    body = Counter(r["size"] for r in runs).most_common(1)[0][0]

    # Baselines come from body-size runs only, so a raised exponent never
    # invents a line of its own.
    baselines = []
    for y in sorted({r["y"] for r in runs if r["size"] >= body * SMALL}, reverse=True):
        if not baselines or abs(baselines[-1] - y) > 3:
            baselines.append(y)

    lines = {b: [] for b in baselines}
    for run in runs:
        if not baselines:
            break
        near = min(baselines, key=lambda b: abs(b - run["y"]))
        if abs(near - run["y"]) <= 8:
            lines[near].append(run)

    out = []
    for base_y in baselines:
        pieces, pending, kind = [], [], None
        for run in sorted(lines[base_y], key=lambda r: r["x"]):
            text = run["text"].strip()
            if not text:
                continue
            here = None
            if run["size"] < body * SMALL:
                if run["y"] > base_y + LIFT:
                    here = "^"
                elif run["y"] < base_y - LIFT:
                    here = "_"
            if here and here == kind:
                pending.append(text)
                continue
            if pending:
                pieces.append("%s{%s}" % (kind, "".join(pending)))
                pending, kind = [], None
            if here:
                pending, kind = [text], here
            else:
                pieces.append(text)
        if pending:
            pieces.append("%s{%s}" % (kind, "".join(pending)))
        line = " ".join(pieces)
        if line.strip():
            out.append(line)
    return "\n".join(out)


def main():
    if len(sys.argv) < 3:
        sys.exit(__doc__)
    reader = PdfReader(sys.argv[1])
    for number in sys.argv[2:]:
        index = int(number) - 1
        if not 0 <= index < len(reader.pages):
            print("page %s is outside this file (%d pages)" % (number, len(reader.pages)))
            continue
        print("===== page %s =====" % number)
        print(mark(runs_of(reader.pages[index])))


if __name__ == "__main__":
    main()
