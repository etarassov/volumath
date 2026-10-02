---
id: "11634"
title: "Des entiers qui ont la même partie entière de racine"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [partie-entiere, racine-carree, produit, identites-remarquables, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2015-2016-envoi-5.pdf, exercices du groupe B, exercice 4 ; corrigé 2017-10_ofm-2015-2016-envoi-5-solutions.pdf (deux coquilles dans le corrigé : le facteur de n² doit être w₁ + w₂ − w₃ − w₄, et le polynôme doit être X² − bX + a, pas X² − aX + b ; la preuve ci-dessous est différente)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-5.pdf"
---

## Statement

Pour un réel $u \geqslant 0$, on note $\lfloor u \rfloor$ sa partie entière, c'est-à-dire le plus grand entier inférieur ou égal à $u$.

Soit $S$ un ensemble d'entiers strictement positifs tel que

$$\lfloor \sqrt{x} \rfloor = \lfloor \sqrt{y} \rfloor \quad \text{pour tous } x, y \in S.$$

Prouver que si $x, y, z, t$ sont des éléments de $S$ avec $(x, y) \neq (z, t)$ et $(x, y) \neq (t, z)$, alors $xy \neq zt$.

## Hints

1. Appelle $n$ la valeur commune de $\lfloor \sqrt{x} \rfloor$. Entre quels entiers se trouvent tous les éléments de $S$ ? Quel est le plus grand écart possible entre deux éléments de $S$ ?
2. Suppose $xy = zt$ et range les nombres : montre qu'on peut se ramener à $x < z \leqslant t < y$.
3. Utilise l'identité $(y - x)^2 = (x + y)^2 - 4xy$, et la même pour $z$ et $t$.
4. Les sommes $x + y$ et $z + t$ sont des entiers. Si l'une est plus grande que l'autre, elle l'est d'au moins $1$.

## Solution

**Étape 1 : où vivent les éléments de $S$.** Notons $n$ la valeur commune des $\lfloor \sqrt{x} \rfloor$ pour $x$ dans $S$. Comme les éléments de $S$ sont au moins $1$, on a $n \geqslant 1$. Pour un entier $x \geqslant 1$, dire que $\lfloor \sqrt{x} \rfloor = n$ revient à dire que $n \leqslant \sqrt{x} < n + 1$, c'est-à-dire $n^2 \leqslant x < (n+1)^2 = n^2 + 2n + 1$. Comme $x$ est entier :

$$n^2 \leqslant x \leqslant n^2 + 2n \quad \text{pour tout } x \in S.$$

En particulier, **deux éléments de $S$ diffèrent d'au plus $2n$.**

**Étape 2 : on suppose le contraire et on range les nombres.** Supposons qu'il existe $x, y, z, t$ dans $S$ avec $xy = zt$, mais avec $(x, y) \neq (z, t)$ et $(x, y) \neq (t, z)$. Échanger $x$ et $y$, ou $z$ et $t$, ou les deux paires entre elles, ne change ni l'égalité $xy = zt$ ni ces deux conditions. On peut donc supposer $x \leqslant y$, $z \leqslant t$ et $x \leqslant z$.

Si $x = z$, alors $xy = xt$ donne $y = t$, et $(x, y) = (z, t)$ : c'est exclu. Donc $x < z$. Comme $xy = zt$ avec $x < z$, on doit avoir $y > t$. Finalement

$$x < z \leqslant t < y.$$

**Étape 3 : comparer les sommes.** Notons $p = xy = zt$, $s = x + y$ et $s' = z + t$. L'identité $(a + b)^2 - 4ab = (b - a)^2$ donne

$$(y - x)^2 = s^2 - 4p \qquad \text{et} \qquad (t - z)^2 = s'^2 - 4p.$$

Or $y - x > t - z \geqslant 0$, puisque $x < z$ et $y > t$. Donc $s^2 > s'^2$, et comme $s$ et $s'$ sont positifs, $s > s'$. Ce sont des entiers, donc $s - s' \geqslant 1$. En soustrayant les deux égalités :

$$(y - x)^2 - (t - z)^2 = s^2 - s'^2 = (s - s')(s + s') \geqslant s + s'.$$

**Étape 4 : la contradiction.** Les quatre nombres $x, y, z, t$ sont au moins égaux à $n^2$, et $z > x \geqslant n^2$. Donc $s + s' = x + y + z + t > 4n^2$. On obtient

$$(y - x)^2 \geqslant (y - x)^2 - (t - z)^2 \geqslant s + s' > 4n^2 = (2n)^2,$$

donc $y - x > 2n$. Mais d'après l'étape 1, deux éléments de $S$ diffèrent d'au plus $2n$. C'est une contradiction.

**Conclusion : si $(x, y) \neq (z, t)$ et $(x, y) \neq (t, z)$, alors $xy \neq zt$. Autrement dit, dans $S$, un produit de deux éléments détermine les deux facteurs.**

## Going further

L'intervalle $[n^2, n^2 + 2n]$ ne peut pas être agrandi d'un cran : avec $n = 1$, les nombres $1, 2, 3, 4$ (ce qui ajoute $4 = (n+1)^2$) donnent $1 \times 4 = 2 \times 2$. Pour $n = 2$, l'ensemble $\{4, 5, \ldots, 9\}$ donne de même $4 \times 9 = 6 \times 6$.
