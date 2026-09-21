---
id: "8583"
title: "Deux puissances qui ne descendent jamais sous 2ⁿ⁺¹"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalites, inegalite-arithmetico-geometrique, puissances, fractions]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Inégalités » du Groupe B, exercice d'application de l'inégalité arithmético-géométrique"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Soient $a$ et $b$ deux nombres réels strictement positifs, et $n$ un entier strictement
positif. Démontrer que

$$\left(1 + \frac{a}{b}\right)^{n} + \left(1 + \frac{b}{a}\right)^{n} \;\geqslant\;
2^{\,n+1} .$$

## Hints

1. Pose $X = 1 + \dfrac{a}{b}$ et $Y = 1 + \dfrac{b}{a}$. Ce sont deux nombres strictement positifs, et il s'agit de minorer $X^n + Y^n$.
2. L'inégalité arithmético-géométrique sur deux nombres positifs dit que $u + v \geqslant 2\sqrt{uv}$. Applique-la à $u = X^n$ et $v = Y^n$.
3. Il reste à minorer le produit $XY$. Développe-le.
4. Tu obtiendras un $\dfrac{a}{b} + \dfrac{b}{a}$ : minore-le, encore par l'inégalité arithmético-géométrique.

## Solution

Posons

$$X = 1 + \frac{a}{b} \qquad \text{et} \qquad Y = 1 + \frac{b}{a} .$$

Comme $a > 0$ et $b > 0$, les nombres $X$ et $Y$ sont strictement positifs, et il s'agit de
montrer que $X^n + Y^n \geqslant 2^{\,n+1}$.

### Première étape : une moyenne

L'inégalité arithmético-géométrique pour deux nombres positifs $u$ et $v$ s'écrit

$$u + v \;\geqslant\; 2\sqrt{uv} .$$

(Elle vient de $\left(\sqrt{u} - \sqrt{v}\right)^2 \geqslant 0$.) Appliquons-la à $u = X^n$ et
$v = Y^n$ :

$$X^n + Y^n \;\geqslant\; 2\sqrt{X^n Y^n} = 2\left(\sqrt{XY}\right)^{n} .$$

### Deuxième étape : le produit $XY$

Développons :

$$XY = \left(1 + \frac{a}{b}\right)\left(1 + \frac{b}{a}\right)
= 1 + \frac{b}{a} + \frac{a}{b} + \frac{a}{b}\cdot\frac{b}{a}
= 2 + \frac{a}{b} + \frac{b}{a} .$$

Appliquons à nouveau l'inégalité arithmético-géométrique, cette fois à $\dfrac{a}{b}$ et
$\dfrac{b}{a}$, dont le produit vaut $1$ :

$$\frac{a}{b} + \frac{b}{a} \;\geqslant\; 2\sqrt{1} = 2 .$$

Donc

$$XY \;\geqslant\; 2 + 2 = 4 , \qquad \text{d'où} \qquad \sqrt{XY} \;\geqslant\; 2 .$$

### On assemble

En reportant dans la première étape, et puisque $t \mapsto t^n$ est croissante sur les
nombres positifs :

$$X^n + Y^n \;\geqslant\; 2\left(\sqrt{XY}\right)^{n} \;\geqslant\; 2 \times 2^{\,n}
= 2^{\,n+1} .$$

C'est l'inégalité demandée.

### Le cas d'égalité

Les deux inégalités utilisées sont des égalités exactement quand $X^n = Y^n$ et $a = b$.
Or $a = b$ donne $X = Y = 2$, et alors

$$X^n + Y^n = 2^n + 2^n = 2^{\,n+1} .$$

Le minimum $2^{\,n+1}$ est donc bien atteint, pour $a = b$.
