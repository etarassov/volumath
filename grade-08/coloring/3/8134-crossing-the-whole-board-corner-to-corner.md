---
id: "8134"
title: "Traverser tout le damier d'un coin à l'autre"
grade: 8
theme: coloring
difficulty: 3
duration_min: 25
tags: [damier, parite, coloriage, parcours]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, entraînement final du Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Exercices d'entraînement – Entraînement final », exercice 2"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

On dispose d'un damier de $10$ cases sur $10$. On pose un jeton sur la case en bas à gauche.

À chaque coup, on déplace le jeton d'une case vers une case voisine, c'est-à-dire une case qui partage un côté avec elle.

Peut-on arriver sur la case en haut à droite en étant passé par toutes les cases du damier, chacune exactement une fois ?

## Hints

1. Colorie le damier comme un vrai damier : cases noires et blanches en alternance.
2. Regarde les deux cases qui t'intéressent, celle du départ et celle de l'arrivée. De quelle couleur sont-elles ?
3. Que se passe-t-il pour la couleur de la case du jeton à chaque déplacement ?
4. Le parcours visite $100$ cases. Quelle est la couleur de la centième ?

## Solution

**Le coloriage.**

Colorions le damier comme un damier d'échecs : deux cases voisines n'ont jamais la même couleur.

Repérons chaque case par son numéro de colonne $i$ et son numéro de ligne $j$, comptés à partir de $1$ en bas à gauche. Une case est noire quand $i + j$ est pair, blanche quand $i+j$ est impair, disons.

- La case de départ, en bas à gauche, est la case $(1, 1)$ : $1 + 1 = 2$ est pair, elle est noire.
- La case d'arrivée, en haut à droite, est la case $(10, 10)$ : $10 + 10 = 20$ est pair, elle est noire aussi.

**Les deux cases ont donc la même couleur.**

**Ce que fait un déplacement.**

Un déplacement change soit le numéro de colonne de $1$, soit le numéro de ligne de $1$. Dans les deux cas, la somme $i+j$ change de $1$, donc change de parité : **à chaque coup, le jeton change de couleur.**

**Le compte.**

Un parcours qui passe par toutes les cases, chacune une fois, visite exactement $100$ cases. Numérotons-les dans l'ordre de la visite : $1^{re}$, $2^{e}$, ..., $100^{e}$.

Comme la couleur change à chaque coup :

- les cases de rang impair ($1, 3, 5, \ldots$) sont de la couleur de la case de départ, donc noires ;
- les cases de rang pair ($2, 4, 6, \ldots$) sont blanches.

La dernière case visitée est la $100^{e}$, de rang pair : elle est donc **blanche**.

**Conclusion.**

Mais la case d'arrivée souhaitée, en haut à droite, est noire. Le parcours demandé est donc **impossible**.

## Going further

Le même argument montre qu'un tel parcours est impossible entre deux cases quelconques de même couleur, sur n'importe quel damier ayant un nombre pair de cases. Entre deux cases de couleurs différentes, l'obstacle disparaît — et sur un damier $10 \times 10$, un tel parcours existe effectivement : il suffit de parcourir les lignes en serpentant, une de gauche à droite, la suivante de droite à gauche, et ainsi de suite.
