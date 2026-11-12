// Styles communs aux deux documents de la seance (eleves.typ et prof.typ).
#import "/tools/preamble.typ": *

// Probabilite et esperance en lettres droites, comme dans le TeSciA.
#let PP = math.upright("P")
#let EE = math.upright("E")

// Intervalles a la francaise. Ecrit tel quel, « ]-oo » fait du moins une soustraction,
// avec des espaces autour : on donne au crochet son vrai role d'ouvrant ou de fermant.
#let ouvg = math.class("opening", sym.bracket.r)
#let fermd = math.class("closing", sym.bracket.l)
#let int-oo(a, b) = $#ouvg #a, #b #fermd$
#let int-of(a, b) = $#ouvg #a, #b]$
#let int-fo(a, b) = $[#a, #b #fermd$

// Une couleur par idee, la meme dans le cours et dans les notes.
#let c1 = rgb("#1a4f8a")
#let c2 = rgb("#2e7d32")
#let c3 = rgb("#c25e00")
#let s1(x) = text(fill: c1, x)
#let s2(x) = text(fill: c2, x)
#let s3(x) = text(fill: c3, x)

// Titres : un titre reste sur la meme page que ce qui le suit.
#let titres(doc) = {
  show heading.where(level: 1): set text(size: 13.5pt)
  show heading.where(level: 1): set block(above: 16pt, below: 8pt, sticky: true)
  show heading.where(level: 2): set text(size: 11.5pt)
  show heading.where(level: 2): set block(above: 12pt, below: 6pt, sticky: true)
  doc
}

// Une propriete encadree, qui ne se coupe pas entre deux pages.
#let propriete(title, body) = block(
  width: 100%, fill: luma(244), inset: 10pt, radius: 3pt, breakable: false,
)[
  #text(weight: "bold", fill: luma(40))[#title]
  #v(3pt)
  #body
]

#let note(body) = block(
  width: 100%, stroke: (left: 2pt + luma(170)), inset: (left: 8pt, y: 3pt), breakable: false,
  text(size: 10pt, body),
)

// Un enonce de probleme, encadre, a donner aux eleves.
#let enonce(body) = block(
  width: 100%, stroke: 0.5pt + luma(150), inset: 9pt, radius: 3pt, breakable: false,
)[
  #text(weight: "bold", fill: luma(40))[Énoncé]
  #v(2pt)
  #body
]

// Une page du sujet TeSciA, telle quelle (format lettre US, reduit a la largeur A4).
#let page-tescia(file, n) = page(margin: 0pt, numbering: none, header: none, footer: none)[
  #align(center + horizon, image(file, page: n, width: 100%))
]
