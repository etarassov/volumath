// Volumath : mise en page commune des fiches d'exercices.
// Ce fichier est importe par les documents generes dans build/.
// Les libelles (niveau, theme) sont calcules par tools/vm.py et passes en texte.

#let difficulty-marks(n) = box(baseline: 1pt)[
  #for i in range(5) {
    box(circle(radius: 3.2pt, stroke: 0.6pt + black, fill: if i < n { black } else { none }))
    if i < 4 { h(2.5pt) }
  }
]

#let setup(doc) = {
  set page(
    paper: "a4",
    margin: (x: 2cm, top: 2cm, bottom: 1.8cm),
    numbering: "1 / 1",
  )
  set text(size: 11pt, lang: "fr")
  set par(justify: true, leading: 0.65em)
  set list(indent: 6pt)
  set enum(indent: 6pt)
  show link: set text(fill: rgb("#1a4f8a"))
  doc
}

// En-tete complet, en haut de la page d'un exercice.
#let exo-header(meta: "", title: "", difficulty: 1) = {
  grid(
    columns: (1fr, auto),
    align: (left + bottom, right + bottom),
    [
      #text(size: 9pt, fill: luma(100))[#meta]
      #linebreak()
      #text(size: 14pt, weight: "bold")[#title]
    ],
    difficulty-marks(difficulty),
  )
  v(5pt)
  line(length: 100%, stroke: 0.6pt + luma(160))
  v(9pt)
}

// En-tete court, pour un exercice dans une fiche qui en contient plusieurs.
#let exo-item(numero: 1, meta: "", title: "", difficulty: 1) = {
  v(4pt)
  grid(
    columns: (1fr, auto),
    align: (left + bottom, right + bottom),
    [
      #text(size: 12pt, weight: "bold")[Exercice #numero.] #h(4pt) #text(size: 12pt)[#title]
      #linebreak()
      #text(size: 8pt, fill: luma(120))[#meta]
    ],
    difficulty-marks(difficulty),
  )
  v(3pt)
  line(length: 100%, stroke: 0.4pt + luma(190))
  v(6pt)
}

#let part-title(name) = {
  text(size: 12pt, weight: "bold", fill: luma(50))[#name]
  v(5pt)
}

#let doc-title(title, subtitle) = {
  align(center)[
    #text(size: 17pt, weight: "bold")[#title]
    #if subtitle != "" [ #linebreak() #v(2pt) #text(size: 10pt, fill: luma(100))[#subtitle] ]
  ]
  v(14pt)
}

#let separator() = {
  v(10pt)
  line(length: 100%, stroke: 0.4pt + luma(200))
  v(10pt)
}

// --- Seances (tools/vm.py seance) ---

// Titre d'un bloc de la seance. Dans le document du prof, chaque bloc commence une page.
#let block-title(numero, title, new-page: false) = {
  if new-page { pagebreak(weak: true) } else { v(14pt) }
  block(width: 100%, fill: luma(235), inset: (x: 10pt, y: 8pt), radius: 3pt)[
    #text(size: 14pt, weight: "bold")[Partie #numero. #title]
  ]
  v(8pt)
}

// Notes pour l'animateur, en tete de chaque bloc, dans le document du prof seulement.
#let teacher-notes(body) = {
  block(width: 100%, stroke: (left: 2pt + rgb("#1a4f8a")), inset: (left: 10pt, y: 4pt))[
    #text(size: 12pt, weight: "bold", fill: rgb("#1a4f8a"))[Pour l'animateur]
    #v(4pt)
    #body
  ]
  v(6pt)
}

// Tableau de la seance : blocs et exercices, en premiere page du document du prof.
// rows : (numero, bloc, id, niveau, titre), tous en texte.
#let seance-overview(blocks, rows) = {
  set text(size: 9.5pt)
  table(
    columns: (auto, auto, auto, auto, 1fr),
    stroke: 0.4pt + luma(190),
    inset: (x: 5pt, y: 4pt),
    table.header([*N°*], [*Partie*], [*Id*], [*Niveau*], [*Titre*]),
    ..rows.map(r => (r.at(0), r.at(1), r.at(2), r.at(3), r.at(4))).flatten(),
  )
  v(4pt)
  for (i, t) in blocks.enumerate() [
    #text(size: 9pt, fill: luma(90))[Partie #(i + 1) : #t] #h(10pt)
  ]
  v(10pt)
}

// En-tete compact pour la fiche eleves : titre et pastilles sur la meme ligne,
// sans ligne de metadonnees ni trait.
#let exo-item-compact(numero: 1, title: "", difficulty: 1) = {
  grid(
    columns: (1fr, auto),
    align: (left + horizon, right + horizon),
    column-gutter: 8pt,
    [#text(size: 12pt, weight: "bold")[Exercice #numero.] #h(4pt) #text(size: 12pt)[#title]],
    difficulty-marks(difficulty),
  )
  v(2pt)
}

// Trait entre deux exercices, omis quand il tomberait tout en haut d'une page.
#let separator-tight() = context {
  if here().position().y > 2cm + 6pt {
    v(4pt)
    line(length: 100%, stroke: 0.4pt + luma(210))
    v(4pt)
  }
}

// Figures flottantes a droite, comme en HTML. Chaque figure fait au plus la moitie de la
// largeur du texte. Les paragraphes sont places a gauche tant qu'ils n'ont pas atteint le
// bas des figures, les suivants occupent toute la largeur en dessous.
#let float-figures(paths, alts, paragraphs, gap: 12pt) = layout(size => {
  let figs = paths.zip(alts).map(((p, a)) => {
    let img = image(p, alt: a)
    if measure(img).width > size.width / 2 { image(p, alt: a, width: size.width / 2) } else { img }
  })
  let fig = stack(spacing: 8pt, ..figs)
  let fs = measure(fig)
  let colw = size.width - fs.width - gap
  let beside(k) = paragraphs.slice(0, k).join(parbreak())
  let n = 0
  while n < paragraphs.len() and measure(block(width: colw, beside(n))).height < fs.height {
    n += 1
  }
  grid(columns: (colw, fs.width), column-gutter: gap, align: top, beside(n), fig)
  if n < paragraphs.len() {
    v(0.4em)
    paragraphs.slice(n).join(parbreak())
  }
})
