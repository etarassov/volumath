---
id: "8643"
title: "Le pion qui monte ou qui va à droite"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [strategie-gagnante, symetrie, positions-perdantes, grille]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Jeux » (Théo & Augustin), exercice 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Jacob et Pavel jouent sur un damier de $m$ lignes et $n$ colonnes. Un pion est posé sur la case en bas à gauche.

Chacun à son tour, en commençant par Jacob, un joueur déplace le pion en ligne droite d'autant de cases qu'il le souhaite, mais au moins une, **vers le haut** ou **vers la droite** (jamais les deux dans le même coup).

Le premier qui amène le pion sur la case en haut à droite gagne.

Pour quelles valeurs de $m$ et de $n$ Jacob a-t-il une stratégie gagnante ?

## Hints

1. Joue quelques petits cas à la main : $2 \times 2$, $2 \times 3$, $3 \times 3$. Une règle très simple devrait apparaître.
2. Plutôt que de repérer le pion par sa case, repère-le par **la distance qui lui reste à parcourir** : combien de cases vers le haut, combien de cases vers la droite.
3. Avec ces deux nombres, que fait un coup ? Et quelle est la position d'arrivée ?
4. Essaie de te convaincre que la position où les deux nombres sont **égaux** est mauvaise pour celui qui doit jouer.

## Solution

**Un bon repérage.** Au lieu de repérer le pion par sa case, notons $(x, y)$ où

- $x$ est le nombre de cases qui le séparent encore du bord droit,
- $y$ est le nombre de cases qui le séparent encore du bord haut.

La case d'arrivée est alors $(0,0)$, et la case de départ est $(n-1,\; m-1)$.

**Ce que fait un coup.** Aller à droite diminue $x$ d'au moins $1$, sans toucher à $y$. Monter diminue $y$ d'au moins $1$, sans toucher à $x$. Autrement dit, **un coup consiste à diminuer strictement l'un des deux nombres, au choix, et de la quantité que l'on veut**.

**Affirmation : les positions $(x, x)$, où les deux nombres sont égaux, sont exactement les positions perdantes.**

*Pourquoi une position $(x,x)$ est perdante.* Depuis $(x,x)$, tout coup ne touche qu'un seul des deux nombres : on arrive donc forcément à une position où les deux nombres sont **différents**. On ne peut jamais passer d'une position équilibrée à une autre position équilibrée. En particulier on ne peut pas atteindre $(0,0)$ en un coup depuis $(x,x)$ avec $x \geqslant 1$.

*Pourquoi une position $(x,y)$ avec $x \neq y$ est gagnante.* Supposons $x > y$. Il suffit de diminuer $x$ jusqu'à $y$ : on arrive en $(y,y)$, qui est une position équilibrée, et c'est l'adversaire qui doit jouer. Si $y > x$, on fait l'inverse.

**La stratégie.** Le joueur qui reçoit une position déséquilibrée la rééquilibre à chaque coup. Son adversaire repart toujours d'une position équilibrée et la déséquilibre forcément. Comme les nombres diminuent strictement, la partie finit, et elle ne peut finir que sur $(0,0)$, qui est équilibrée : c'est donc le rééquilibreur qui y amène le pion.

**Conclusion.** La position de départ est $(n-1, m-1)$. Elle est équilibrée exactement quand $n - 1 = m - 1$, c'est-à-dire quand $m = n$.

**Jacob a une stratégie gagnante si et seulement si $m \neq n$.** Si $m = n$, c'est Pavel qui gagne, en appliquant la même stratégie.

## Going further

Autre façon de voir la même chose, plus visuelle : colorie la diagonale qui part de la case en haut à droite et descend vers la gauche, case par case. Ce sont exactement les cases perdantes. Aucun coup ne mène d'une case de cette diagonale à une autre, et depuis toute case hors de la diagonale on peut y arriver.

Ce jeu est en fait le **jeu de Nim à deux tas** : les deux nombres $x$ et $y$ sont les tailles des tas, et un coup consiste à retirer ce qu'on veut dans un seul tas. La position perdante est celle où les deux tas sont égaux. Avec trois tas, la règle devient beaucoup plus surprenante : cherche « jeu de Nim » si tu veux la découvrir.
