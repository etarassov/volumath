---
id: "8533"
title: "Trois puces et une aire qui ne bouge pas"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [invariant, aire, triangle, deplacement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Révisions » (Isaline) du Groupe A, exercice 6"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Trois puces $A$, $B$ et $C$ se déplacent dans le plan. Au départ,

$$A = (0, 0), \qquad B = (1, 0), \qquad C = (0, 1) .$$

Les puces sautent l'une après l'autre. Quand c'est son tour, une puce se déplace sur la
droite qui passe par sa position actuelle et qui est **parallèle à la droite joignant les
deux autres puces**. Elle parcourt sur cette droite la distance qu'elle veut, dans le sens
qu'elle veut.

Existe-t-il une suite de sauts après laquelle les trois puces occupent les positions

$$(1, 0), \qquad (-1, 0), \qquad (0, 1) \quad ?$$

## Hints

1. Une puce se déplace parallèlement au côté opposé du triangle qu'elles forment. Que devient ce triangle ?
2. L'aire d'un triangle vaut la moitié du produit d'une base par la hauteur correspondante. Prends pour base le côté opposé à la puce qui saute.
3. Calcule l'aire du triangle de départ, puis celle du triangle d'arrivée.

## Solution

**L'aire ne change pas.** Supposons que ce soit au tour de la puce $A$ de sauter. Prenons
pour base du triangle $ABC$ le côté $[BC]$, c'est-à-dire le côté opposé à $A$.

- La base $[BC]$ ne bouge pas, puisque $B$ et $C$ restent en place.
- La hauteur correspondante est la distance de $A$ à la droite $(BC)$. Or $A$ se déplace sur
  une droite **parallèle** à $(BC)$ : tous les points de cette droite sont à la même distance
  de $(BC)$. La hauteur ne change donc pas non plus.

L'aire, qui vaut $\dfrac{\text{base} \times \text{hauteur}}{2}$, est donc inchangée. Le même
raisonnement vaut pour $B$ et pour $C$.

**L'aire du triangle de départ.** Le triangle de sommets $(0,0)$, $(1,0)$, $(0,1)$ est
rectangle, avec deux côtés de longueur $1$ le long des axes. Son aire vaut

$$\frac{1 \times 1}{2} = \frac{1}{2} .$$

**L'aire du triangle visé.** Le triangle de sommets $(1,0)$, $(-1,0)$, $(0,1)$ a pour base le
segment de $(-1, 0)$ à $(1, 0)$, de longueur $2$, porté par l'axe des abscisses. Le troisième
sommet $(0,1)$ est à la distance $1$ de cet axe. Son aire vaut donc

$$\frac{2 \times 1}{2} = 1 .$$

**Conclusion.** Les deux aires valent $\dfrac{1}{2}$ et $1$ : elles sont différentes. Comme
l'aire ne change jamais au cours du jeu, **il n'existe aucune suite de sauts** permettant
d'atteindre les positions demandées.
