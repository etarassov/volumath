---
id: "13222"
title: "2016 points en trois couleurs"
grade: 9
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [denombrement, coloriage, principe-multiplicatif, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM)"
  reference: "2017-09_coupe_automne_2016.pdf, exercices collège, exercice 3 ; corrigé 2017-09_coupe_automne_2016_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016.pdf"
---

## Statement

$2016$ points sont alignés sur une droite. De combien de manières peut-on les colorier en rouge, vert ou bleu, de sorte que deux points voisins soient toujours de couleurs différentes, et que chaque couleur soit utilisée au moins une fois ?

## Hints

1. Oublie d'abord la condition « chaque couleur est utilisée ». Colorie les points de gauche à droite : combien de choix pour le premier ? Pour chacun des suivants ?
2. Parmi ces coloriages, lesquels n'utilisent que deux couleurs ? Combien y en a-t-il ?
3. Un coloriage peut-il n'utiliser qu'une seule couleur ?

## Solution

**Sans la condition sur les trois couleurs.** Colorions les points de gauche à droite. Le premier point peut prendre $3$ couleurs. Chacun des $2015$ points suivants doit avoir une couleur différente de son voisin de gauche, déjà colorié : il a $2$ choix, quelles que soient les couleurs précédentes. On obtient

$$3 \times \underbrace{2 \times 2 \times \cdots \times 2}_{2015 \text{ facteurs}} = 3 \times 2^{2015}$$

coloriages où deux voisins ont toujours des couleurs différentes.

**On retire ceux qui n'utilisent pas les trois couleurs.**

- Aucun coloriage ne peut utiliser une seule couleur, car deux voisins auraient la même couleur.
- Avec exactement deux couleurs, par exemple rouge et vert, les couleurs doivent alterner : rouge, vert, rouge, vert… ou vert, rouge, vert, rouge… Cela fait $2$ coloriages pour chaque paire de couleurs. Il y a $3$ paires (rouge et vert, rouge et bleu, vert et bleu), donc $3 \times 2 = 6$ coloriages à retirer.

**Conclusion.** Il y a $3 \times 2^{2015} - 6$ coloriages qui conviennent.
