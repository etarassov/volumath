---
id: "8849"
title: "Deux promeneuses sur le quadrillage"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [invariant, parite, coordonnees, deplacement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Invariants et coloriage » (Lilas et Paul A), exercice 5, p. 123"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Héloïse et Hannah se promènent sur les points à coordonnées entières du plan.

Au départ, Héloïse est au point $(0, 0)$ et Hannah au point $(1, 0)$.

Chaque seconde, **chacune** des deux se déplace vers un point voisin : d'une case vers la gauche, la droite, le haut ou le bas. Elles se déplacent toutes les deux en même temps, à chaque seconde.

Peuvent-elles se retrouver un jour sur le même point ?

## Hints

1. À chaque point $(x,y)$, associe le nombre $x+y$. De combien varie-t-il quand on se déplace d'une case ?
2. Regarde maintenant la somme des deux nombres, celui d'Héloïse et celui de Hannah. De combien varie-t-elle en une seconde ?
3. Quelle est sa parité au départ ?
4. Quelle serait sa parité si les deux promeneuses étaient au même point ?

## Solution

### L'invariant

À un point $(x, y)$ associons la quantité $x+y$. Un déplacement d'une case change $x$ de $\pm 1$ ou $y$ de $\pm 1$ : la quantité $x+y$ varie donc de $+1$ ou de $-1$.

Notons $T$ la **somme des deux quantités**, celle d'Héloïse et celle de Hannah. En une seconde, chacune varie de $\pm 1$, donc $T$ varie de
$$-2, \qquad 0 \qquad \text{ou} \qquad +2 .$$

Dans tous les cas, **la parité de $T$ ne change jamais.**

### On calcule

Au départ, Héloïse est en $(0,0)$ et Hannah en $(1,0)$, donc
$$T = (0+0) + (1+0) = 1 ,$$
qui est **impair**.

Si elles se retrouvaient toutes les deux sur un même point $(x,y)$, on aurait
$$T = (x+y) + (x+y) = 2(x+y) ,$$
qui est **pair**.

C'est impossible.

**Conclusion.** Non, elles ne peuvent jamais se retrouver sur le même point.

### La même idée, en couleurs

On peut raconter la preuve autrement. Colorions les points à coordonnées entières comme un damier : le point $(x,y)$ est noir si $x+y$ est pair, blanc sinon. À chaque pas, une promeneuse change de couleur. Au départ, Héloïse est sur une case noire et Hannah sur une case blanche. Après une seconde, Héloïse est sur du blanc et Hannah sur du noir ; après deux secondes, l'inverse. Elles sont donc **toujours** sur des couleurs différentes, donc jamais au même endroit.

## Going further

1. Et si Hannah partait du point $(1,1)$ ? Peuvent-elles se rejoindre, et en combien de secondes au minimum ?
2. Et si les deux promeneuses avaient le droit de se déplacer aussi en diagonale ?
