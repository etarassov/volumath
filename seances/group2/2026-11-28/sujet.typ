// Sujet d'entrainement au Concours general, groupe 2, seance du 2026-11-28.
// Deux problemes du concours, raccourcis : 2019 probleme 2 partie I (fichier 40684),
// 2024 probleme 2 parties 1, 2 et 4 (fichiers 40884 et 40886).
// Construire depuis la racine du depot :
//   typst compile --root . seances/group2/2026-11-28/sujet.typ seances/group2/2026-11-28/sujet.pdf
#import "/tools/preamble.typ": *
#show: setup

// Inegalites a la francaise.
#let ge = sym.gt.eq.slant
#let le = sym.lt.eq.slant

// Questions numerotees 1., 2., ..., sous-questions a), b), c).
#set enum(spacing: 0.9em, full: true, numbering: (..n) => {
  let n = n.pos()
  if n.len() == 1 { numbering("1.", n.first()) } else { numbering("a)", n.last()) }
})

#let probleme(numero, titre, source) = {
  v(10pt)
  block(width: 100%, fill: luma(235), inset: (x: 10pt, y: 8pt), radius: 3pt, sticky: true)[
    #text(size: 14pt, weight: "bold")[Problème #numero : #titre]
    #h(1fr)
    #text(size: 9pt, fill: luma(90))[#source]
  ]
  v(4pt)
}

#let partie(titre) = block(above: 14pt, below: 7pt, sticky: true)[
  #text(size: 11.5pt, weight: "bold")[#titre]
]

// ------------------------------------------------------------------ En-tete
#align(center)[
  #text(size: 9.5pt, tracking: 1.2pt, fill: luma(80))[CONCOURS GÉNÉRAL DES LYCÉES]
  #v(3pt)
  #text(size: 18pt, weight: "bold")[Mathématiques]
  #v(1pt)
  #text(size: 11pt)[Sujet d'entraînement]
  #v(1pt)
  #text(size: 9.5pt, fill: luma(100))[28 novembre 2026]
]
#v(8pt)

#block(width: 100%, fill: luma(244), inset: 10pt, radius: 3pt, breakable: false)[
  #text(weight: "bold", fill: luma(40))[Consignes]
  #v(2pt)
  #set text(size: 10pt)
  - Le sujet comporte deux problèmes indépendants. Vous pouvez les traiter dans l'ordre de
    votre choix.
  - Dans un problème, vous pouvez utiliser le résultat d'une question que vous n'avez pas
    démontrée, à condition de le signaler clairement.
  - Il n'est pas nécessaire de tout traiter. Une réponse partielle bien rédigée (un exemple,
    un cas particulier, une piste justifiée) est prise en compte. Notez toute trace de
    recherche, même incomplète.
  - La clarté et la précision des raisonnements comptent autant que les résultats.
]

// ------------------------------------------------------------------ Probleme 1
#probleme(1, "les nombres joviaux", "d'après le Concours général 2019")

Soient $n #ge 1$ et $p #ge 2$ deux entiers. On dit que $p$ est _jovial d'ordre $n$_ s'il
existe des entiers $a_1, dots, a_n$ tels que
$ 2 #le a_1 < a_2 < dots.c < a_n, quad a_n = p quad "et" quad
  1/a_1 + 1/a_2 + dots.c + 1/a_n = 1. $
Autrement dit, on écrit $1$ comme une somme de fractions de numérateur $1$, toutes
différentes, et le plus grand dénominateur est $p$. Par exemple, $12$ est jovial d'ordre $4$
car
$ 1/2 + 1/4 + 1/6 + 1/12 = 1. $
Un entier $p #ge 2$ est dit _jovial_ s'il existe un entier $n #ge 1$ tel que $p$ soit jovial
d'ordre $n$.

#partie[Partie A : premières propriétés]

+ Montrer que, si l'entier $p$ est jovial d'ordre $n$, alors $n #le p - 1$.
+ Existe-t-il des entiers joviaux d'ordre $2$ ? Montrer que $2$ et $4$ ne sont pas joviaux.
+ Montrer qu'un nombre premier n'est pas jovial.
+ Quel est le plus petit entier jovial ?
+ Déterminer tous les entiers joviaux d'ordre $3$.

#partie[Partie B : fabriquer des nombres joviaux]

6. Soit $p$ un entier jovial. Montrer que $2p$ et $p(p + 1)$ sont joviaux.
+ Montrer que le produit de deux entiers joviaux est jovial.

// ------------------------------------------------------------------ Probleme 2
#pagebreak()
#probleme(2, "garder ou changer de boîte", "d'après le Concours général 2024")

Germain dispose de boîtes opaques. Il cache un paquet de bonbons dans l'une d'elles et laisse
les autres vides. Sophie, qui ne sait pas où est le paquet, essaie de le trouver. Dans tous
les jeux ci-dessous, quand Sophie fait son tout premier choix, elle n'a aucune information :
elle choisit une boîte au hasard, chaque boîte ayant la même probabilité d'être choisie.

#partie[Partie 1 : avec trois boîtes]

+ Sophie choisit une des trois boîtes et l'ouvre. Avec quelle probabilité trouve-t-elle le
  paquet ?
+ Germain cache à nouveau le paquet dans l'une des trois boîtes, puis propose un jeu en deux
  tours.
  - Au premier tour, Sophie désigne une boîte, sans l'ouvrir.
  - Au second tour, Germain, qui sait où est le paquet, élimine une boîte *vide* parmi les
    deux boîtes que Sophie n'a pas désignées. Il laisse ensuite à Sophie la possibilité de
    changer son choix pour l'autre boîte restante.
  Sophie ouvre alors la boîte qu'elle a finalement choisie.
  + Si Sophie garde son premier choix, quelle est sa probabilité de gagner ?
  + Si elle change de boîte, quelle est sa probabilité de gagner ?
  + Quelle est la meilleure stratégie : garder ou changer ?

#partie[Partie 2 : avec $n$ boîtes]

Soit maintenant $n #ge 3$ un entier. Germain dispose de $n$ boîtes numérotées de $1$ à $n$ et
cache le paquet dans l'une d'elles.

3. _Premier jeu, en deux tours._
  - Au premier tour, Sophie désigne une boîte, sans l'ouvrir.
  - Au second tour, Germain élimine $n - 2$ boîtes vides parmi les $n - 1$ boîtes que Sophie
    n'a pas désignées. Il reste donc deux boîtes, et Sophie peut changer son choix.
  + Avec quelle probabilité la boîte désignée au premier tour est-elle la bonne ?
  + Au second tour, Sophie a-t-elle intérêt à garder son choix ou à le changer ?
+ _Second jeu, en $n - 1$ tours._
  - Au premier tour, Sophie désigne une boîte, sans l'ouvrir.
  - À chacun des tours suivants (tours numéro $2, 3, dots, n - 1$), Germain élimine, comme
    il veut, *une* boîte vide, pas encore éliminée et différente de celle que Sophie désigne
    à ce moment-là. Puis Sophie peut changer son choix pour n'importe quelle boîte non
    éliminée.
  À la fin du tour $n - 1$, Sophie ouvre la boîte qu'elle désigne.
  + Si Sophie garde son premier choix pendant tout le jeu, quelle est sa probabilité de
    gagner ?
  + Proposer une façon de jouer qui assure à Sophie une probabilité de gagner au moins égale
    à $(n - 1)/n$, quoi que fasse Germain.

// La partie 3 tient sur une seule page : elle ne se coupe pas.
#block(breakable: false)[
#partie[Partie 3 : Sophie et Germain complices]

On reprend le second jeu de la question 4, avec ses $n - 1$ tours et les mêmes règles pour
Germain : à chaque tour, il élimine une boîte vide, pas encore éliminée et différente de
celle que Sophie désigne.

Leur ami Évariste leur promet un paquet de bonbons si, à la fin d'une partie, Sophie ouvre la
bonne boîte. Cette fois, Sophie et Germain sont donc dans le même camp. Mais Germain doit
placer le paquet au hasard, et il n'a pas le droit de dire à Sophie où il l'a mis, ni de lui
parler pendant la partie. Avant de commencer, ils peuvent en revanche se mettre d'accord sur
une stratégie commune.

5. On dit qu'une stratégie commune est _gagnante_ si elle garantit à Sophie de trouver le
  paquet, quelle que soit la boîte où il a été caché.
  + Montrer qu'il n'existe pas de stratégie gagnante avec $3$ boîtes.
  + Trouver une stratégie gagnante avec $4$ boîtes.
  + Pour quelles valeurs de $n #ge 3$ existe-t-il une stratégie gagnante ?
]

#v(1fr)
#align(center, text(size: 9.5pt, fill: luma(100))[Fin du sujet])
