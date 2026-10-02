---
id: "12047"
title: "x² + y² divise x³ + y et x + y³"
grade: 12
theme: arithmetic
difficulty: 3
duration_min: 35
tags: [maths-expertes, divisibilite, pgcd, theoreme-de-gauss, nombres-premiers-entre-eux, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test du 15 janvier 2014"
  reference: "2017-10_ofm-2013-2014-test-janvier.pdf, exercice 6 (groupe A) ; corrigé 2017-10_ofm-2013-2014-test-janvier-corrige.pdf ; réponse vérifiée par ordinateur pour x, y < 400"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2013-2014-test-janvier.pdf"
---

## Statement

Déterminer tous les couples $(x, y)$ d'entiers positifs ou nuls tels que $x^2 + y^2$ divise à la fois $x^3 + y$ et $x + y^3$.

On rappelle qu'un entier $a$ divise un entier $b$ s'il existe un entier $q$ tel que $b = qa$. En particulier, $0$ divise $0$.

## Hints

1. Traitez d'abord le cas où $x$ ou $y$ est nul.
2. Montrez que $x$ et $y$ sont premiers entre eux, en écrivant $x = dX$ et $y = dY$ avec $d = \mathrm{PGCD}(x, y)$.
3. Combinez $x^3 + y$ et $x^2 + y^2$ pour faire disparaître le terme $y^2$. Vous devez trouver que $x^2 + y^2$ divise $x^2(xy - 1)$.
4. Concluez avec le théorème de Gauss, puis comparez $x^2 + y^2$ et $xy - 1$.

## Solution

**Réponse.** Les couples qui conviennent sont $(0, 0)$, $(1, 0)$, $(0, 1)$ et $(1, 1)$.

**Ils conviennent.** Pour $(0, 0)$, les trois nombres sont nuls, et $0$ divise $0$. Pour $(1, 0)$ et $(0, 1)$, on a $x^2 + y^2 = 1$, qui divise tout entier. Pour $(1, 1)$, on a $x^2 + y^2 = 2$, et $x^3 + y = x + y^3 = 2$.

Soit maintenant $(x, y)$ un couple qui convient. On utilise le **théorème de Gauss** (programme de maths expertes) : si un entier $a$ divise un produit $bc$ et si $a$ est premier avec $b$, alors $a$ divise $c$.

**Étape 1 : le cas où $x$ ou $y$ est nul.** Supposons $x = 0$. La condition dit alors que $y^2$ divise $y$ et $y^3$. Si $y \geqslant 2$, alors $0 < y < y^2$, et un multiple non nul de $y^2$ est au moins égal à $y^2$, donc $y^2$ ne divise pas $y$. Ainsi $y = 0$ ou $y = 1$. Le cas $y = 0$ se traite de la même façon, en échangeant les rôles de $x$ et de $y$ : on trouve $x = 0$ ou $x = 1$.

On suppose désormais $x \geqslant 1$ et $y \geqslant 1$, de sorte que $x^2 + y^2 \geqslant 2$.

**Étape 2 : $x$ et $y$ sont premiers entre eux.** Soit $d = \mathrm{PGCD}(x, y)$, et écrivons $x = dX$ et $y = dY$, avec $X$ et $Y$ premiers entre eux. Comme $x^2 + y^2 = d^2(X^2 + Y^2)$ divise $x^3 + y = d^3X^3 + dY$, le nombre $d^2$ divise $d^3 X^3 + dY$. En divisant par $d$, on obtient que $d$ divise $d^2 X^3 + Y$, donc $d$ divise $Y$, puisqu'il divise $d^2 X^3$.

De même, $x^2 + y^2$ divise $x + y^3 = dX + d^3Y^3$, donc $d$ divise $X$. Ainsi $d$ divise à la fois $X$ et $Y$, qui sont premiers entre eux : $d = 1$.

**Étape 3 : $x^2 + y^2$ divise $xy - 1$.** On calcule

$$y\,(x^3 + y) - (x^2 + y^2) = x^3 y + y^2 - x^2 - y^2 = x^2\,(xy - 1) .$$

Le nombre $x^2 + y^2$ divise les deux termes de la différence de gauche, donc il divise $x^2(xy - 1)$.

D'autre part, $x^2 + y^2$ est premier avec $x^2$. En effet, soit $q$ un nombre premier qui divise $x^2$ et $x^2 + y^2$. Alors $q$ divise $y^2 = (x^2 + y^2) - x^2$. Comme $q$ est premier, il divise $x$ et il divise $y$, ce qui est impossible puisque $\mathrm{PGCD}(x, y) = 1$.

D'après le théorème de Gauss, $x^2 + y^2$ divise $xy - 1$.

**Étape 4 : conclusion du calcul.** Comme $x \geqslant 1$ et $y \geqslant 1$, on a $xy - 1 \geqslant 0$. De plus, $x^2 + y^2 - 2xy = (x - y)^2 \geqslant 0$, donc

$$x^2 + y^2 \geqslant 2xy > xy - 1 .$$

Si $xy - 1 \geqslant 1$, le nombre $xy - 1$ serait un multiple strictement positif de $x^2 + y^2$, donc au moins égal à $x^2 + y^2$. C'est impossible d'après l'inégalité précédente. Donc $xy - 1 = 0$, c'est-à-dire $x = y = 1$.

**Conclusion.** Les couples cherchés sont exactement $(0, 0)$, $(1, 0)$, $(0, 1)$ et $(1, 1)$.

## Going further

Que se passe-t-il si l'on demande seulement que $x^2 + y^2$ divise $x^3 + y$ ? Vérifier que $(x, y) = (15, 25)$ convient alors. Quelle étape de la solution utilise la seconde condition, et pourquoi ne marche-t-elle plus ?
