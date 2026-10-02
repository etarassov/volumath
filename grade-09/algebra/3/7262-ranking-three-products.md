---
id: "7262"
title: "Ranger trois produits dans l'ordre"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [developpement, factorisation, signe-d-un-produit, comparaison]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Saint-Chéron 2024"
  reference: "Poly_StCheron_2024.pdf, groupe A, « Calcul algébrique », exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_StCheron_2024.pdf"
---

## Statement

Soient $a$, $b$, $c$, $d$ quatre nombres tels que
$$a < b < c < d .$$

On pose
$$x = (a+b)(c+d), \qquad y = (a+c)(b+d), \qquad z = (a+d)(b+c) .$$

Ranger $x$, $y$ et $z$ dans l'ordre croissant.

## Hints

1. Essaie d'abord avec des nombres, par exemple $a=1$, $b=2$, $c=3$, $d=4$. Que trouves-tu ?
2. Pour comparer deux nombres, le plus sûr est de calculer leur **différence** et de regarder son
   signe.
3. Développe $x - y$. Beaucoup de termes disparaissent.
4. Ce qui reste se factorise en un produit de deux facteurs dont tu connais le signe.

## Solution

**Comparons $x$ et $y$.**

Développons :
$$x = (a+b)(c+d) = ac + ad + bc + bd ,$$
$$y = (a+c)(b+d) = ab + ad + bc + cd .$$

En soustrayant, les termes $ad$ et $bc$ se simplifient :
$$x - y = ac + bd - ab - cd .$$

Factorisons en regroupant les termes contenant $a$ d'un côté et ceux contenant $d$ de l'autre :
$$x - y = a(c - b) - d(c - b) = (c - b)(a - d) .$$

Or $b < c$, donc $c - b > 0$ ; et $a < d$, donc $a - d < 0$. Le produit d'un nombre positif par un
nombre négatif est négatif :
$$x - y < 0, \qquad \text{c'est-à-dire} \qquad x < y .$$

**Comparons $y$ et $z$.**

De la même façon :
$$y = ab + ad + bc + cd , \qquad z = (a+d)(b+c) = ab + ac + bd + cd .$$

En soustrayant, les termes $ab$ et $cd$ se simplifient :
$$y - z = ad + bc - ac - bd = a(d - c) - b(d - c) = (d - c)(a - b) .$$

Or $c < d$, donc $d - c > 0$ ; et $a < b$, donc $a - b < 0$. Donc
$$y - z < 0, \qquad \text{c'est-à-dire} \qquad y < z .$$

**Conclusion.**

$$\boxed{x < y < z}$$

## Going further

On retient facilement le résultat avec cette image : pour obtenir la plus grande valeur, il faut
apparier le plus petit nombre avec le plus grand. C'est le regroupement $(a+d)(b+c)$, c'est-à-dire
$z$.

Cela se comprend aussi en remarquant que les trois produits ont la même somme de facteurs,
$$a+b+c+d ,$$
puisque dans les trois cas on additionne les quatre nombres, répartis en deux paquets. Or parmi
tous les rectangles de périmètre fixé, c'est le plus « carré » qui a la plus grande aire. Ici le
découpage le plus équilibré est justement $(a+d)$ et $(b+c)$.
