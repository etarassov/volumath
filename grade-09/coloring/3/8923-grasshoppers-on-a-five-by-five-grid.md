---
id: "8923"
title: "Vingt-cinq sauterelles changent de case"
grade: 9
theme: coloring
difficulty: 3
duration_min: 25
tags: [damier, parite, invariant, grille, coloriage]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe B"
  reference: "Poly-Valbonne-2026.pdf, chapitre IV « Groupe B », « Combinatoire : TD de révisions » (Arthur), exercice 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Aliénor a posé une sauterelle sur chacune des $25$ cases d'une grille $5 \times 5$ : une par case, ni plus ni moins.

À son signal, **toutes** les sauterelles sautent en même temps sur une case voisine, c'est-à-dire sur la case immédiatement à gauche, à droite, en haut ou en bas de la leur. Chacune choisit librement sa direction, du moment qu'elle ne sort pas de la grille.

Après le saut, est-il possible que chacune des $25$ cases porte de nouveau exactement une sauterelle ?

## Hints

1. Commencez par une grille plus petite, $3 \times 3$ par exemple. Essayez vraiment de faire sauter les neuf sauterelles. Qu'est-ce qui coince ?
2. Coloriez la grille comme un damier, en noir et blanc. Sur quelle couleur atterrit une sauterelle qui part d'une case noire ?
3. Comptez les cases noires et les cases blanches d'une grille $5 \times 5$. Sont-elles en même nombre ?
4. Comptez combien de sauterelles arrivent sur les cases blanches, et comparez à la place disponible.

## Solution

**La réponse est non : c'est impossible.**

### Le coloriage

Colorions la grille $5 \times 5$ comme un damier, la case du coin en haut à gauche étant noire. Deux cases voisines par un côté sont alors toujours de couleurs différentes.

Comptons les cases de chaque couleur. Les lignes $1$, $3$ et $5$ commencent par une case noire et alternent, donc elles contiennent $3$ cases noires et $2$ blanches chacune. Les lignes $2$ et $4$ commencent par une case blanche, donc elles contiennent $2$ cases noires et $3$ blanches chacune. Au total :

$$\text{cases noires} : 3 \times 3 + 2 \times 2 = 13, \qquad \text{cases blanches} : 3 \times 2 + 2 \times 3 = 12.$$

Il y a donc $13$ cases noires et seulement $12$ cases blanches.

### L'argument

Chaque sauterelle saute sur une case voisine par un côté, donc **elle change de couleur** : celles qui partent d'une case noire arrivent sur une case blanche, et réciproquement.

Au départ, $13$ sauterelles sont posées sur les $13$ cases noires. Après le saut, ces $13$ sauterelles se trouvent toutes sur des cases blanches.

Si chaque case portait exactement une sauterelle après le saut, il n'y aurait que $12$ sauterelles sur les cases blanches, puisqu'il n'y a que $12$ cases blanches. Or il y en a au moins $13$. C'est impossible.

$$\boxed{\text{Non, les } 25 \text{ cases ne peuvent pas être toutes occupées après le saut.}}$$

*Remarque.* On peut résumer l'argument ainsi : le saut envoie les noires vers les blanches, et une case ne peut accueillir qu'une sauterelle. Il faudrait donc au moins autant de cases blanches que de cases noires. Le déséquilibre $13$ contre $12$ suffit à tout bloquer.

## Going further

1. Pour quelles tailles $n \times n$ de grille le mouvement est-il possible ? Pour $n = 4$, trouvez une solution explicite.
2. Et si les sauterelles avaient le droit de sauter aussi en diagonale ? L'argument tient-il encore ?
