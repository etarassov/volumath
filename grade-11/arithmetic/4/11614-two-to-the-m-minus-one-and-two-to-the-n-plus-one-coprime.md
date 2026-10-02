---
id: "11614"
title: "2ᵐ − 1 et 2ⁿ + 1 sont premiers entre eux"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [puissances-de-deux, nombres-premiers, premiers-entre-eux, division-euclidienne, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 6 (pot-pourri)"
  reference: "2017-10_ofm-2013-2014-envoi-6.pdf, Exercices communs, exercice 5 ; corrigé 2017-10_ofm-2013-2014-envoi-6-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-6.pdf"
---

## Statement

Soient $m$ et $n$ deux entiers supérieurs ou égaux à $1$, avec $m$ impair.

Prouver que $2^m - 1$ et $2^n + 1$ sont premiers entre eux.

## Hints

1. Suppose qu'un nombre premier $p$ divise à la fois $2^m - 1$ et $2^n + 1$. Pourquoi $p$ ne peut-il pas être égal à $2$ ? Montre que $p$ divise aussi $2^{2n} - 1$.
2. Si $p$ divise $2^a - 1$ et $2^b - 1$, avec $a > b$, montre que $p$ divise $2^{a-b} - 1$.
3. Note $e$ le plus petit entier $e \geqslant 1$ tel que $p$ divise $2^e - 1$. Montre que $e$ divise $m$ et $2n$, puis que $e$ divise $n$.
4. Pour conclure, utilise $x^k - 1 = (x - 1)(x^{k-1} + \cdots + x + 1)$.

## Solution

Deux entiers sont premiers entre eux quand ils n'ont aucun facteur premier commun. Supposons, pour arriver à une contradiction, qu'un nombre premier $p$ divise à la fois $2^m - 1$ et $2^n + 1$.

**Étape 0 : deux remarques.**

- $2^m - 1$ est impair, donc $p \neq 2$ : le nombre $p$ est un nombre premier impair.
- $2^{2n} - 1 = (2^n - 1)(2^n + 1)$, donc $p$ divise aussi $2^{2n} - 1$.

Appelons **bon** un entier $e \geqslant 1$ tel que $p$ divise $2^e - 1$. D'après ce qui précède, $m$ et $2n$ sont bons.

**Étape 1 : la différence de deux bons entiers est bonne.** Soient $a > b$ deux entiers bons. Alors $p$ divise la différence

$$(2^a - 1) - (2^b - 1) = 2^a - 2^b = 2^b\,(2^{a-b} - 1).$$

Le nombre premier $p$ divise ce produit. Il ne divise pas $2^b$, dont le seul facteur premier est $2$. Il divise donc $2^{a-b} - 1$ : l'entier $a - b$ est bon.

**Étape 2 : tous les bons entiers sont des multiples du plus petit.** Notons $e$ le plus petit entier bon. Soit $a$ un entier bon. Faisons la division euclidienne de $a$ par $e$ : $a = qe + r$, avec $0 \leqslant r < e$. Supposons $r \geqslant 1$. Pour $k = 0, 1, \ldots, q - 1$, on a $a - ke \geqslant r + e > e$. On peut donc appliquer l'étape 1 de proche en proche : $a$ est bon et plus grand que $e$, donc $a - e$ est bon ; puis $a - e$ est bon et plus grand que $e$, donc $a - 2e$ est bon ; et ainsi de suite jusqu'à $a - qe = r$. L'entier $r$ serait donc bon et plus petit que $e$, ce qui contredit le choix de $e$. Donc $r = 0$, et $e$ divise $a$.

En particulier, $e$ divise $m$ et $e$ divise $2n$.

**Étape 3 : $e$ divise $n$.** Comme $e$ divise $m$, qui est impair, $e$ est impair. Écrivons $2n = ke$. Le produit $ke$ est pair et $e$ est impair, donc $k$ est pair, et $n = (k/2)\, e$ est un multiple de $e$.

**Étape 4 : la contradiction.** Écrivons $n = je$. Avec $x = 2^e$, l'identité $x^j - 1 = (x - 1)(x^{j-1} + \cdots + x + 1)$ donne

$$2^n - 1 = (2^e)^j - 1 = (2^e - 1)\left(2^{e(j-1)} + \cdots + 2^e + 1\right).$$

Comme $e$ est bon, $p$ divise $2^e - 1$, donc $p$ divise $2^n - 1$. Mais $p$ divise aussi $2^n + 1$, donc il divise la différence $(2^n + 1) - (2^n - 1) = 2$. C'est impossible, puisque $p$ est impair.

**Conclusion : aucun nombre premier ne divise à la fois $2^m - 1$ et $2^n + 1$, donc ces deux nombres sont premiers entre eux.**

## Going further

L'hypothèse « $m$ impair » est indispensable : pour $m = 2$ et $n = 1$, on trouve $2^2 - 1 = 3$ et $2^1 + 1 = 3$.

Les étapes 1 et 2 sont l'algorithme d'Euclide appliqué aux exposants. On peut aller plus loin et montrer que, pour tous entiers $a, b \geqslant 1$, $\mathrm{PGCD}(2^a - 1, 2^b - 1) = 2^{\mathrm{PGCD}(a, b)} - 1$. En maths expertes, on retrouve tout cela avec les congruences et le théorème de Bézout.
