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
