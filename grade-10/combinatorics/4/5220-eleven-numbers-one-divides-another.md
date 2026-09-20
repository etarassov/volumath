---
id: "5220"
title: "Onze nombres parmi les vingt premiers"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [principe-des-tiroirs, divisibilite, puissances-de-deux, partie-impaire]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Pigeonhole Principle and Parity Problems — Brian Conrey et Corinne Cristiani"
  reference: "ConreyCristianiPig_and_par.pdf, « The pigeon-hole principle », problème 4"
  url: "https://mathcircles.org/activity/pigeonhole-principle-and-parity-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/ConreyCristianiPig_and_par.pdf"
---

## Statement

On choisit $11$ nombres différents parmi $1, 2, 3, \ldots, 20$.

Montrer que, parmi les nombres choisis, il y en a forcément un qui en divise un autre.

## Hints

1. Essayez d'abord de choisir $10$ nombres sans qu'aucun ne divise un autre : c'est possible, et cela vous montrera d'où vient la difficulté.
2. Tout entier $n \geqslant 1$ s'écrit de façon unique $n = 2^k \times m$, où $m$ est impair. Par exemple $20 = 2^2 \times 5$ et $7 = 2^0 \times 7$. On appelle $m$ la *partie impaire* de $n$.
3. Quelles sont les parties impaires possibles pour un nombre compris entre $1$ et $20$ ? Combien y en a-t-il ?
4. Que se passe-t-il si deux des nombres choisis ont la même partie impaire ?

## Solution

**La partie impaire.**

Tout entier $n \geqslant 1$ s'écrit de façon unique

$$n = 2^k \times m, \qquad k \geqslant 0 \text{ entier}, \quad m \text{ impair} .$$

Il suffit de diviser $n$ par $2$ autant de fois que possible ; le nombre impair $m$ obtenu est appelé la partie impaire de $n$.

Si $n$ est compris entre $1$ et $20$, alors $m$ aussi (car $m \leqslant n$), et $m$ est impair. Les valeurs possibles de $m$ sont donc

$$1, \; 3, \; 5, \; 7, \; 9, \; 11, \; 13, \; 15, \; 17, \; 19 ,$$

c'est-à-dire **$10$ valeurs**.

**Le principe des tiroirs.**

Préparons $10$ tiroirs, un par partie impaire possible, et rangeons chacun des $11$ nombres choisis dans le tiroir correspondant à sa partie impaire.

Onze nombres dans dix tiroirs : un tiroir contient au moins deux des nombres choisis. Appelons-les $x$ et $y$, avec $x < y$. Ils ont la même partie impaire $m$, donc

$$x = 2^i \times m \qquad \text{et} \qquad y = 2^j \times m$$

pour deux entiers $i$ et $j$. Comme $x < y$, on a $i < j$, et alors

$$y = 2^{\,j-i} \times x ,$$

où $j - i$ est un entier strictement positif. Donc $x$ divise $y$.

**Parmi les onze nombres choisis, il y en a bien un qui en divise un autre.**

**Le nombre $11$ est le bon.**

Avec $10$ nombres, la conclusion peut tomber en défaut : les dix nombres

$$11, \; 12, \; 13, \; 14, \; 15, \; 16, \; 17, \; 18, \; 19, \; 20$$

ont tous des parties impaires différentes, et aucun ne divise un autre. En effet, si l'un divisait l'autre, le quotient serait un entier au moins égal à $2$, donc le plus grand vaudrait au moins $2 \times 11 = 22 > 20$.

## Going further

Le même raisonnement fonctionne pour n'importe quel $n$ : si l'on choisit $n+1$ nombres parmi $1, 2, \ldots, 2n$, deux d'entre eux ont la même partie impaire, donc l'un divise l'autre. Et comme ci-dessus, les nombres $n+1, n+2, \ldots, 2n$ montrent que $n$ nombres ne suffisent pas.
