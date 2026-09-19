---
id: "1605"
title: "Un nombre premier divise ses propres coefficients binomiaux"
grade: 12
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [nombres-premiers, coefficients-binomiaux, lemme-de-gauss, divisibilite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2A, Group Competition"
  reference: "Handout-2698-2323.pdf, problème 14 (réponse dans Handout-2710-2323.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2698-2323.pdf"
---

## Statement

Soit $p$ un nombre premier. Montrer que pour tout entier $k$ tel que $1 \le k \le p-1$, le
coefficient binomial $\binom{p}{k}$ est divisible par $p$.

## Hints

1. Commence par regarder la ligne $p = 7$ du triangle de Pascal : $1, 7, 21, 35, 35, 21, 7, 1$. Les six coefficients du milieu sont-ils tous multiples de $7$ ? Recommence avec $p = 5$, puis avec $n = 6$ qui n'est pas premier, pour voir la différence.
2. Écris la formule $\binom{p}{k} = \dfrac{p!}{k!\,(p-k)!}$ sous la forme d'une égalité entre entiers, sans fraction.
3. Tu obtiens $k!\,(p-k)!\,\binom{p}{k} = p!$. Le nombre premier $p$ divise le membre de droite. Divise-t-il $k!\,(p-k)!$ ?
4. Tous les facteurs de $k!$ et de $(p-k)!$ sont des entiers strictement compris entre $0$ et $p$, donc aucun n'est divisible par $p$. Conclus avec le lemme d'Euclide.

## Solution

**L'idée : dans l'égalité $k!\,(p-k)!\,\binom{p}{k} = p!$, le facteur premier $p$ se trouve à
droite, et il ne peut se cacher nulle part ailleurs qu'à l'intérieur de $\binom{p}{k}$.**

**Étape 1. Une égalité sans fraction.**

Par définition,
$$\binom{p}{k} = \frac{p!}{k!\,(p-k)!},$$
et l'on sait que $\binom{p}{k}$ est un **entier** (c'est le nombre de parties à $k$ éléments
d'un ensemble à $p$ éléments). En multipliant par $k!\,(p-k)!$ :
$$k!\,(p-k)!\,\binom{p}{k} = p! . \qquad (\star)$$

**Étape 2. $p$ divise le membre de droite.**

$p! = 1 \times 2 \times \cdots \times (p-1) \times p$ contient le facteur $p$, donc $p$ divise
$p!$, donc $p$ divise le produit $k!\,(p-k)!\,\binom{p}{k}$.

**Étape 3. $p$ ne divise pas $k!\,(p-k)!$.**

Rappelons le **lemme d'Euclide** : si un nombre premier divise un produit, il divise l'un des
facteurs.

Le produit $k!\,(p-k)!$ est un produit d'entiers pris parmi $1, 2, \ldots, k$ et
$1, 2, \ldots, p-k$. Or l'hypothèse $1 \le k \le p-1$ donne
$$1 \le k \le p-1 \qquad\text{et}\qquad 1 \le p-k \le p-1 ,$$
donc **tous** ces facteurs sont des entiers compris entre $1$ et $p-1$. Aucun n'est divisible
par $p$, puisqu'un multiple non nul de $p$ est au moins égal à $p$.

D'après le lemme d'Euclide appliqué autant de fois qu'il y a de facteurs, $p$ ne divise donc
pas $k!\,(p-k)!$.

**Étape 4. Conclusion.**

D'après $(\star)$, $p$ divise le produit $\bigl(k!\,(p-k)!\bigr) \times \binom{p}{k}$. Comme
$p$ est premier et ne divise pas le premier facteur, $p$ est premier avec lui, et le
**théorème de Gauss** donne : $p$ divise $\binom{p}{k}$.

**C'est bien ce qu'il fallait démontrer.**

**Remarque : l'hypothèse « $p$ premier » est indispensable.** Pour $n = 6$, qui n'est pas
premier, la ligne du triangle de Pascal est $1, 6, 15, 20, 15, 6, 1$ : ni $15$ ni $20$ n'est
divisible par $6$.

## Going further

Ce résultat est la clé du « rêve de l'élève de première » : pour $p$ premier et $a, b$
entiers,
$$(a+b)^p = \sum_{k=0}^{p} \binom{p}{k} a^k b^{p-k} \equiv a^p + b^p \pmod p ,$$
puisque tous les termes du milieu disparaissent. En prenant $b = 1$ et en raisonnant par
récurrence sur $a$, on retrouve le petit théorème de Fermat : $a^p \equiv a \pmod p$.
