---
id: "12417"
title: "ab³ + bc³ + cd³ + da³ quand a ≤ b ≤ c ≤ d"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, factorisation, ordre, somme]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 28 mars 2018"
  reference: "juge_Enonce-03-2018.pdf, exercices du groupe B, exercice 4 ; corrigé juge_Corrige-03-2018.pdf (dans la factorisation de S1 − S2, le corrigé écrit d² + bd + d² au lieu de b² + bd + d² ; l'inégalité de Cauchy-Schwarz du corrigé est remplacée ici par une inégalité élémentaire)"
  url: "http://igm.univ-mlv.fr/~juge/pofm/doc/%c3%89nonc%c3%a9-03-2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/juge_Enonce-03-2018.pdf"
---

## Statement

Soient $a$, $b$, $c$, $d$ des nombres réels tels que $0 \leqslant a \leqslant b \leqslant c \leqslant d$.

Montrer que
$$ab^3 + bc^3 + cd^3 + da^3 \geqslant a^2b^2 + b^2c^2 + c^2d^2 + d^2a^2.$$

## Hints

1. Pour deux réels positifs $x$ et $y$, compare $x^2y^2$ à la moyenne de $xy^3$ et de $x^3y$.
   Factorise $xy^3 + x^3y - 2x^2y^2$.
2. Introduis la somme « dans l'autre sens » $S_2 = a^3b + b^3c + c^3d + d^3a$. Le premier indice
   montre que le membre de droite est au plus la moyenne du membre de gauche et de $S_2$. Il
   reste à comparer le membre de gauche et $S_2$.
3. Écris la différence entre le membre de gauche et $S_2$ sous la forme
   $(c - a)(d^3 - b^3) - (c^3 - a^3)(d - b)$, puis utilise
   $x^3 - y^3 = (x - y)(x^2 + xy + y^2)$.

## Solution

Notons
$$S_1 = ab^3 + bc^3 + cd^3 + da^3, \qquad S_2 = a^3b + b^3c + c^3d + d^3a,$$
$$T = a^2b^2 + b^2c^2 + c^2d^2 + d^2a^2.$$
Il s'agit de montrer que $S_1 \geqslant T$.

### Étape 1 : $2T \leqslant S_1 + S_2$

Pour deux réels positifs ou nuls $x$ et $y$,
$$xy^3 + x^3y - 2x^2y^2 = xy\,(y^2 - 2xy + x^2) = xy\,(x - y)^2 \geqslant 0,$$
donc
$$2x^2y^2 \leqslant xy^3 + x^3y.$$
Appliquons cette inégalité aux quatre couples $(a, b)$, $(b, c)$, $(c, d)$ et $(d, a)$, puis
additionnons :
$$2T \leqslant (ab^3 + a^3b) + (bc^3 + b^3c) + (cd^3 + c^3d) + (da^3 + d^3a) = S_1 + S_2.$$

### Étape 2 : $S_1 \geqslant S_2$

En développant, on vérifie que
$$S_1 - S_2 = (c - a)(d^3 - b^3) - (c^3 - a^3)(d - b).$$
En effet, le membre de droite vaut
$cd^3 - cb^3 - ad^3 + ab^3 - c^3d + c^3b + a^3d - a^3b$, et ce sont exactement les huit termes de
$S_1 - S_2$.

Utilisons maintenant la factorisation $x^3 - y^3 = (x - y)(x^2 + xy + y^2)$, que l'on vérifie en
développant :
$$S_1 - S_2 = (c - a)(d - b)(d^2 + db + b^2) - (c - a)(c^2 + ca + a^2)(d - b),$$
c'est-à-dire
$$S_1 - S_2 = (c - a)(d - b)\left[(b^2 + bd + d^2) - (a^2 + ac + c^2)\right].$$

Regardons le signe de chaque facteur, en utilisant $0 \leqslant a \leqslant b \leqslant c \leqslant d$.

- $c - a \geqslant 0$ et $d - b \geqslant 0$.
- $b^2 \geqslant a^2$, car $b \geqslant a \geqslant 0$.
- $bd \geqslant ac$, car $b \geqslant a \geqslant 0$ et $d \geqslant c \geqslant 0$.
- $d^2 \geqslant c^2$, car $d \geqslant c \geqslant 0$.

Le crochet est donc positif ou nul, et $S_1 - S_2 \geqslant 0$.

### Conclusion

D'après les deux étapes,
$$2T \leqslant S_1 + S_2 \leqslant S_1 + S_1 = 2S_1.$$
Donc $T \leqslant S_1$, c'est-à-dire
$$ab^3 + bc^3 + cd^3 + da^3 \geqslant a^2b^2 + b^2c^2 + c^2d^2 + d^2a^2.$$

## Going further

1. Montrer que l'inégalité peut devenir fausse si l'on ne suppose plus que
   $a \leqslant b \leqslant c \leqslant d$. On pourra essayer $(a, b, c, d) = (2, 1, 0, 0)$.
2. Dans quels cas y a-t-il égalité ?
