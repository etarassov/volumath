---
id: "13837"
title: "La diagonale d'un grand carré et les carrés juste en dessous"
grade: 8
theme: combinatorics
difficulty: 1
duration_min: 10
tags: [denombrement, quadrillage, diagonale]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet junior, exercice 6 ; réponse 799 dans la liste des réponses du même fichier, sans solution rédigée. L'original dit « en dessous d'un carré situé sur la diagonale » ; la réponse 799 suppose qu'on colorie seulement le carré voisin juste en dessous, ce que l'énoncé précise ici"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Un carré de côté $400$ est découpé en $400^2$ petits carrés de côté $1$.

Ysaline choisit une des deux grandes diagonales du grand carré. Elle colorie en noir tous les
petits carrés que cette diagonale traverse, puis, sous chacun d'eux, le petit carré voisin
situé juste en dessous, quand il existe.

Combien de petits carrés a-t-elle coloriés en noir ?

## Hints

1. Fais le dessin pour un carré de côté $4$, découpé en $16$ petits carrés.
2. Combien de petits carrés la diagonale traverse-t-elle dans chaque colonne ?
3. Chaque petit carré traversé par la diagonale a-t-il un voisin juste en dessous ?

## Solution

Numérotons les colonnes de $1$ à $400$ de gauche à droite, et les lignes de $1$ à $400$ de bas en
haut. Prenons la diagonale qui va du coin en bas à gauche au coin en haut à droite. L'autre
diagonale donne le même résultat, car elle s'obtient par une symétrie qui échange la gauche et
la droite.

**Les carrés traversés par la diagonale.** La diagonale part du coin en bas à gauche et monte
d'une unité chaque fois qu'elle avance d'une unité vers la droite. Elle passe donc par des coins
de petits carrés, et entre deux de ces coins elle traverse un seul petit carré. Dans la
colonne $k$, elle traverse exactement le petit carré de la ligne $k$. Cela fait $400$ petits
carrés, un par colonne.

**Les carrés juste en dessous.** Dans la colonne $k$, le carré juste en dessous de celui de la
ligne $k$ est celui de la ligne $k - 1$. Il existe pour $k = 2, 3, \ldots, 400$, mais pas pour
$k = 1$ : le carré traversé dans la première colonne est sur la ligne du bas. Cela fait
$399$ carrés de plus, tous différents des carrés de la diagonale, puisqu'ils sont dans la même
colonne qu'eux mais une ligne plus bas.

**Ysaline colorie $400 + 399 = 799$ petits carrés.**
