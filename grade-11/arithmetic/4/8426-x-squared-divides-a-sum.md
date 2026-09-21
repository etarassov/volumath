---
id: "8426"
title: "Quand x² divise une somme, il en divise une plus petite"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [divisibilite, factorisation, quotient, raisonnement-par-etapes]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Nombres premiers » (Vladimir Ivanov), exercice 23"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Soient $x$ et $y$ deux entiers naturels, avec $x \geqslant 1$.

Montrer que si $x^2$ divise $x^2 + xy + x + y$, alors $x^2$ divise $x + y$.

## Hints

1. Commence par une information plus faible et plus facile à obtenir : que peut-on dire de $x$ tout seul ? Rappelle-toi que $x$ divise $x^2$.
2. Si $x$ divise $x^2 + xy + x + y$, et si $x$ divise aussi $x^2$, $xy$ et $x$, que divise-t-il forcément ?
3. Une fois que tu sais que $x$ divise $y$, écris $y = xm$ et regarde ce que devient le terme $xy$.
4. Dans une somme dont $x^2$ divise le total, si $x^2$ divise certains termes, il divise ce qui reste.

## Solution

Nous utiliserons plusieurs fois le fait suivant : si un entier $d$ divise une somme et divise tous les termes sauf un, alors il divise aussi celui-là.

**Étape 1. Montrer que $x$ divise $y$.**

Par hypothèse, $x^2$ divise $x^2 + xy + x + y$. Comme $x$ divise $x^2$, l'entier $x$ divise lui aussi $x^2 + xy + x + y$.

Or $x$ divise $x^2$, $x$ divise $xy$ et $x$ divise $x$. Il divise donc la différence

$$\big(x^2 + xy + x + y\big) - x^2 - xy - x = y.$$

Ainsi $x$ divise $y$.

**Étape 2. Montrer que $x^2$ divise $xy$.**

Écrivons $y = x m$ avec $m$ entier. Alors

$$xy = x \times xm = x^2 m,$$

donc $x^2$ divise $xy$.

**Étape 3. Conclure.**

Nous savons maintenant trois choses :

- $x^2$ divise $x^2 + xy + x + y$ (hypothèse) ;
- $x^2$ divise $x^2$ (évident) ;
- $x^2$ divise $xy$ (étape 2).

Donc $x^2$ divise la différence

$$\big(x^2 + xy + x + y\big) - x^2 - xy = x + y.$$

C'est exactement ce qu'il fallait démontrer.

## Going further

Il existe une autre démonstration, plus rapide mais qui demande un outil de plus. On factorise :

$$x^2 + xy + x + y = x(x+y) + (x+y) = (x+1)(x+y).$$

Les entiers $x$ et $x+1$ sont consécutifs, donc premiers entre eux ; il en va de même de $x^2$ et de $x+1$. Le lemme de Gauss donne alors directement que $x^2$ divise $x+y$.

La démonstration donnée plus haut est plus longue, mais elle n'utilise que la manipulation des divisibilités, ce qui la rend accessible sans le lemme de Gauss.
