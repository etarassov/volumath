---
id: "11620"
title: "La partie fractionnaire de (p²⁰¹² + q²⁰¹⁶)/120"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [nombres-premiers, divisibilite, partie-entiere, puissances, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 6 (pot-pourri)"
  reference: "2017-10_ofm-2014-2015-envoi-6.pdf, Jour 1, exercices du groupe B, exercice 2 ; corrigé 2017-10_ofm-2014-2015-envoi-6-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-6.pdf"
---

## Statement

Soient $p$ et $q$ deux nombres premiers supérieurs ou égaux à $7$. On pose

$$x = \frac{p^{2012} + q^{2016}}{120}.$$

On note $[x]$ la partie entière de $x$, c'est-à-dire le plus grand entier inférieur ou égal à $x$.

Calculer $x - [x]$.

## Hints

1. Essaie avec de petits nombres premiers : calcule $7^4 - 1$ et $11^4 - 1$, puis divise par $120$.
2. Un nombre premier $p \geqslant 7$ n'est divisible ni par $2$, ni par $3$, ni par $5$. Montre que $p^4 - 1 = (p-1)(p+1)(p^2+1)$ est divisible par $8$, par $3$ et par $5$.
3. Si un nombre s'écrit $120m + 1$, que peut-on dire de son carré, de son cube, et plus généralement de ses puissances ?

## Solution

**Étape 1 : $p^4 - 1$ est un multiple de $120$.** Soit $p$ un nombre premier supérieur ou égal à $7$. Il n'est divisible ni par $2$, ni par $3$, ni par $5$. On factorise :

$$p^4 - 1 = (p^2 - 1)(p^2 + 1) = (p - 1)(p + 1)(p^2 + 1).$$

- **Divisibilité par $8$.** Comme $p$ est impair, $p - 1$ et $p + 1$ sont deux nombres pairs consécutifs. L'un des deux est un multiple de $4$, donc leur produit $p^2 - 1$ est un multiple de $2 \times 4 = 8$.
- **Divisibilité par $3$.** Parmi les trois entiers consécutifs $p - 1$, $p$, $p + 1$, l'un est un multiple de $3$. Ce n'est pas $p$, donc c'est $p - 1$ ou $p + 1$, et $3$ divise $p^2 - 1$.
- **Divisibilité par $5$.** Comme $5$ ne divise pas $p$, on peut écrire $p = 5k + 1$, $p = 5k - 1$, $p = 5k + 2$ ou $p = 5k - 2$ avec $k$ entier. Dans les deux premiers cas, $p^2 - 1 = 25k^2 \pm 10k$ est un multiple de $5$. Dans les deux derniers, $p^2 + 1 = 25k^2 \pm 20k + 5$ est un multiple de $5$.

Ainsi $p^4 - 1$ est divisible par $8 = 2^3$, par $3$ et par $5$. Dans sa décomposition en facteurs premiers, on trouve donc au moins $2^3$, $3$ et $5$, et $p^4 - 1$ est un multiple de $8 \times 3 \times 5 = 120$. On peut écrire $p^4 = 120m + 1$ avec $m$ entier.

**Étape 2 : les puissances de $p^4$.** Le produit de deux nombres de la forme « multiple de $120$, plus $1$ » est encore de cette forme :

$$(120a + 1)(120b + 1) = 120(120ab + a + b) + 1.$$

En multipliant $p^4$ par lui-même autant de fois qu'il le faut, on obtient que toute puissance $(p^4)^j$ s'écrit $120 \times (\text{un entier}) + 1$. Comme $2012 = 4 \times 503$, on a $p^{2012} = (p^4)^{503}$, donc

$$p^{2012} = 120A + 1 \qquad \text{avec } A \text{ entier.}$$

De même, $q$ est un nombre premier supérieur ou égal à $7$ et $2016 = 4 \times 504$, donc $q^{2016} = (q^4)^{504} = 120B + 1$ avec $B$ entier.

**Étape 3 : la partie fractionnaire.** On obtient

$$x = \frac{120A + 1 + 120B + 1}{120} = A + B + \frac{2}{120} = A + B + \frac{1}{60}.$$

Comme $A + B$ est un entier et que $0 \leqslant \frac{1}{60} < 1$, la partie entière de $x$ est $A + B$.

**Conclusion : $x - [x] = 1/60$, quels que soient les nombres premiers $p$ et $q$ supérieurs ou égaux à $7$.**

## Going further

On a même mieux : $p^4 - 1$ est divisible par $240$, car $p^2 + 1$ est pair et apporte un facteur $2$ de plus. Par exemple $7^4 - 1 = 2400 = 240 \times 10$.
