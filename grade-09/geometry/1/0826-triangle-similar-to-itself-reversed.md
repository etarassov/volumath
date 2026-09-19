---
id: "0826"
title: "Un triangle semblable à lui-même dans l'autre sens"
grade: 9
theme: geometry
difficulty: 1
duration_min: 10
tags: [similitude, isocele, triangle]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Triangles semblables », 11 avril 2024"
  reference: "Geometrie.pdf, problème 1"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Geometrie.pdf"
---

## Statement

Quand on écrit que deux triangles sont semblables, l'ordre des lettres indique quels sommets se correspondent. Ainsi $ABC \sim A'B'C'$ veut dire que $A$ correspond à $A'$, que $B$ correspond à $B'$, que $C$ correspond à $C'$, et donc que

$$\frac{AB}{A'B'} = \frac{BC}{B'C'} = \frac{CA}{C'A'}.$$

Que peut-on dire d'un triangle $ABC$ tel que $ABC \sim CBA$ ?

## Hints

1. Écris les trois rapports égaux pour la similitude $ABC \sim CBA$. À quel côté du second triangle correspond le côté $[AB]$ du premier ?
2. L'un des trois rapports se calcule tout seul, sans rien savoir du triangle. Que vaut $\dfrac{CA}{AC}$ ?
3. Une fois le rapport de similitude connu, les deux autres égalités deviennent des égalités de longueurs.

## Solution

Dans la similitude $ABC \sim CBA$, le sommet $A$ correspond à $C$, le sommet $B$ correspond à $B$, et le sommet $C$ correspond à $A$. Les trois rapports égaux sont donc

$$\frac{AB}{CB} = \frac{BC}{BA} = \frac{CA}{AC}.$$

**Le rapport de similitude vaut $1$.** En effet $CA$ et $AC$ sont deux écritures de la même longueur, donc le troisième rapport vaut $1$. Comme les trois rapports sont égaux, ils valent tous $1$.

**On en déduit les longueurs.** Le premier rapport donne $AB = CB$, et le deuxième donne $BC = BA$. Ces deux égalités disent la même chose :

$$AB = BC.$$

Le triangle $ABC$ est donc **isocèle en $B$**.

**Réciproquement**, si $AB = BC$, les trois rapports $\dfrac{AB}{CB}$, $\dfrac{BC}{BA}$ et $\dfrac{CA}{AC}$ valent tous $1$ : ils sont bien égaux, donc $ABC \sim CBA$.

**Conclusion.** Les triangles $ABC$ tels que $ABC \sim CBA$ sont exactement les triangles isocèles en $B$.

**Une autre façon de voir.** Une similitude de rapport $1$ ne change pas les longueurs : les deux triangles sont superposables. Dire que $ABC$ est superposable à $CBA$, c'est dire que le triangle se superpose à lui-même quand on échange $A$ et $C$. C'est exactement ce que fait la symétrie d'axe la médiatrice de $[AC]$, et cet axe doit passer par $B$ : le point $B$ est à égale distance de $A$ et de $C$.

## Going further

Même question avec $ABC \sim BCA$, c'est-à-dire quand les sommets se décalent d'un cran. Indication : cette fois, multiplie les trois rapports entre eux.
