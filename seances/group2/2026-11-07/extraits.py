"""Cut exercises 1 and 5 out of the TeSciA 2023 paper, keeping the original pages.

Run from the repository root:
    python3 seances/group2/2026-11-07/extraits.py

A page that also holds the start of the next exercise is clipped: only the
header band down to the end of our exercise, and the footer band (rule and page
number), stay visible. Clipped text is hidden, not deleted.
"""
from pathlib import Path

from pypdf import PdfReader, PdfWriter
from pypdf.generic import ArrayObject, DecodedStreamObject, NameObject

HERE = Path(__file__).resolve().parent
SOURCE = HERE.parents[2] / "tescia" / "archives" / "2023" / "MG2023Enonce.pdf"
PAGE_H = 792  # US letter, in points
FOOTER = 37   # footer band height, from the bottom edge

# file name -> list of (0-based page, keep down to this many points from the top, or None)
EXTRACTS = {
    "tescia-mg2023-ex1.pdf": [(2, None), (3, None), (4, 400)],  # ex. 2 starts at 448 pt
    "tescia-mg2023-ex5.pdf": [(8, None), (9, 225)],             # ex. 6 starts at 240 pt
}


def clip(writer, page, keep_top):
    pre = DecodedStreamObject()
    pre.set_data(b"q 0 %d 612 %d re 0 0 612 %d re W n\n"
                 % (PAGE_H - keep_top, keep_top, FOOTER))
    post = DecodedStreamObject()
    post.set_data(b"\nQ\n")
    # Keep the original streams as references: a stream copied inline is invalid
    # PDF, and Apple's renderer (Preview) then draws an empty page.
    c = page.raw_get("/Contents")
    old = list(c.get_object()) if isinstance(c.get_object(), ArrayObject) else [c]
    page[NameObject("/Contents")] = ArrayObject(
        [writer._add_object(pre), *old, writer._add_object(post)])


def main():
    reader = PdfReader(SOURCE)
    for name, pages in EXTRACTS.items():
        w = PdfWriter()
        for index, keep_top in pages:
            p = w.add_page(reader.pages[index])
            if keep_top is not None:
                clip(w, p, keep_top)
        w.add_metadata({"/Title": "TeSciA 2023, Mathématiques générales, " + "exercice " + name[-5]})
        w.write(HERE / name)
        print(name)


if __name__ == "__main__":
    main()
