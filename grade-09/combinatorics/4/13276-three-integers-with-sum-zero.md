---
id: "13276"
title: "Trois entiers de somme nulle"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 25
tags: [valeur-absolue, denombrement, triplets, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2020"
  reference: "2020-10_Sujet.pdf, exercices collégiens, exercice 7 ; corrigé 2020-10_sujetcommentairecorrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/10/Sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2020-10_Sujet.pdf"
---

## Statement

Soit $k$ un entier strictement positif. On rappelle que la valeur absolue $|x|$ d'un nombre $x$ vaut $x$ si $x \geqslant 0$, et $-x$ si $x < 0$.

Combien y a-t-il de triplets $(x, y, z)$ d'entiers tels que

$$x + y + z = 0 \qquad \text{et} \qquad |x| + |y| + |z| = 2k \ ?$$

L'ordre compte : $(1, 0, -1)$ et $(0, 1, -1)$ sont deux triplets différents.

## Hints

1. Fais le cas $k = 1$ à la main, puis le cas $k = 2$.
2. Les trois nombres ne peuvent pas être tous strictement positifs, ni tous strictement négatifs. Sépare les cas selon le nombre de valeurs strictement négatives parmi $x$, $y$, $z$.
3. Si $x \geqslant 0$, $y \geqslant 0$ et $z < 0$, alors $|z| = x + y$. Que vaut alors $z$ ?

## Solution

On sépare les triplets selon le nombre de leurs termes strictement négatifs. Ces cas ne se recouvrent pas, et il suffit de compter dans chacun.

**Aucun terme négatif.** Trois nombres positifs ou nuls de somme nulle sont tous nuls, et alors $|x| + |y| + |z| = 0 \neq 2k$. Aucun triplet.

**Trois termes négatifs.** Leur somme serait strictement négative. Aucun triplet.

**Exactement un terme négatif.** Supposons d'abord que ce soit $z$ : $x \geqslant 0$, $y \geqslant 0$, $z < 0$. Alors $z = -(x + y)$, donc $|z| = x + y$ et

$$2k = |x| + |y| + |z| = (x + y) + (x + y) = 2(x + y).$$

Donc $x + y = k$ et $z = -k$. Les triplets sont $(x,\ k - x,\ -k)$ avec $0 \leqslant x \leqslant k$. Réciproquement, chacun convient : sa somme est nulle, $z = -k$ est bien négatif, et $x + (k - x) + k = 2k$. Cela fait $k + 1$ triplets, un pour chaque valeur de $x$ entre $0$ et $k$.

Le terme négatif peut être $x$, $y$ ou $z$, ce qui donne $3(k + 1)$ triplets.

**Exactement deux termes négatifs.** Supposons d'abord $x \geqslant 0$, $y < 0$, $z < 0$. Alors $x = -(y + z) = |y| + |z|$, donc

$$2k = |x| + |y| + |z| = 2x.$$

Donc $x = k$ et $|y| + |z| = k$, avec $|y| \geqslant 1$ et $|z| \geqslant 1$. Les triplets sont $(k,\ -m,\ -(k - m))$ avec $1 \leqslant m \leqslant k - 1$, et réciproquement chacun convient. Cela fait $k - 1$ triplets (aucun si $k = 1$).

Le terme positif ou nul peut être $x$, $y$ ou $z$, ce qui donne $3(k - 1)$ triplets.

**Total.**

$$3(k + 1) + 3(k - 1) = 6k.$$

**Vérification pour $k = 1$.** On trouve les $6$ triplets obtenus en rangeant $1$, $0$ et $-1$ dans tous les ordres possibles.

**Conclusion.** Il y a $6k$ triplets.

## Going further

Une image du résultat. Comme $z = -x - y$, un triplet est donné par le point $(x, y)$ du plan. Les solutions sont les points à coordonnées entières du contour de l'hexagone de sommets $(k, 0)$, $(0, k)$, $(-k, k)$, $(-k, 0)$, $(0, -k)$ et $(k, -k)$. Chacun des six côtés compte $k$ « pas » d'un point entier au suivant, d'où $6k$ points.
