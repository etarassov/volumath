---
id: "8837"
title: "Un triangle vide de tout autre point"
grade: 11
theme: geometry
difficulty: 4
duration_min: 30
tags: [principe de lextremum, aire minimale, alignement, raisonnement par labsurde]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Principe de l'extremum » (Théo et Noam), exercice 6, p. 115"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

On dispose de $n \geqslant 3$ points distincts du plan.

Montrer qu'on peut toujours en choisir trois, $A$, $B$ et $C$, tels qu'aucun **autre** des $n$ points ne se trouve sur les segments $[AB]$, $[AC]$ ou $[BC]$.

## Hints

1. Commence par le cas facile où tous les points sont alignés. Lesquels choisir ?
2. Dans le cas général, il faut un triangle « le plus petit possible » en un certain sens. Essaie l'aire.
3. Parmi les triangles non aplatis formés par trois des $n$ points, il n'y en a qu'un nombre fini : il en existe donc un d'aire minimale.
4. Si un point se trouvait sur un côté de ce triangle, tu pourrais fabriquer un triangle plus petit. Lequel ?

## Solution

### Le cas où tous les points sont alignés

Si les $n$ points sont sur une même droite, orientons-la et prenons les trois **premiers** points $A$, $B$, $C$ dans cet ordre.

- Aucun autre point n'est sur $[AB]$ ni sur $[BC]$ : les points suivants sont tous au-delà de $C$.
- Le segment $[AC]$ est la réunion de $[AB]$ et $[BC]$. Le seul point du jeu qui s'y trouve est $B$, qui fait partie des trois choisis.

Le triplet convient.

### Le cas général : le triangle d'aire minimale

Supposons maintenant que les points ne soient pas tous alignés. Il existe donc au moins un triangle **non aplati** (d'aire strictement positive) formé par trois des points.

Comme il n'y a qu'un nombre fini de triplets, il existe un triangle $ABC$ d'**aire minimale** parmi tous les triangles non aplatis formés par trois des $n$ points.

Montrons qu'il convient. Supposons par l'absurde qu'un autre point $D$ du jeu se trouve sur l'un des côtés, disons sur $[BC]$.

Comparons les aires de $ABD$ et de $ABC$. Ces deux triangles ont le même sommet $A$ et leurs bases $[BD]$ et $[BC]$ sont portées par la même droite : ils ont donc la même hauteur issue de $A$. Leurs aires sont donc dans le rapport des bases :
$$\text{aire}(ABD) = \frac{BD}{BC} \times \text{aire}(ABC).$$

Or $D$ est sur $[BC]$ et $D \neq B$, $D \neq C$ (ce sont des points distincts du jeu), donc $0 < BD < BC$, d'où
$$0 < \text{aire}(ABD) < \text{aire}(ABC).$$

Le triangle $ABD$ est donc non aplati et d'aire strictement plus petite : cela contredit la minimalité de $ABC$.

**Conclusion.** Le triangle d'aire minimale n'a aucun autre point sur ses côtés.

### Une variante : le périmètre minimal

On peut aussi prendre le triangle de **périmètre minimal**. Si $D$ est sur $[BC]$, alors par l'inégalité triangulaire dans $ABD$ et $ACD$,
$$AB + BD + DA < AB + BD + AC + CD = AB + BC + CA ,$$
donc $ABD$ a un périmètre strictement plus petit. Même contradiction.

## Going further

Montrer que parmi $n \geqslant 3$ points non tous alignés, il existe toujours un triangle non aplati ne contenant **aucun** autre point du jeu, ni sur ses côtés ni à l'intérieur.
