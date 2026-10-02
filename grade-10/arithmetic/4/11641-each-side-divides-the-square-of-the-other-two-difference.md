---
id: "11641"
title: "Chaque côté divise le carré de la différence des deux autres"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [divisibilite, pgcd, nombres premiers, premiers entre eux, inegalite triangulaire, raisonnement par l'absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2016-2017-envoi-5.pdf, exercices du groupe B, exercice 3 ; corrigé 2017-10_ofm-2016-2017-envoi-5-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-5.pdf"
---

## Statement

Trouver tous les entiers strictement positifs $a$, $b$ et $c$ tels que $\mathrm{PGCD}(a, b, c) = 1$,

$$a \text{ divise } (b - c)^2, \qquad b \text{ divise } (a - c)^2, \qquad c \text{ divise } (a - b)^2,$$

et tels qu'il existe un triangle non aplati dont les côtés ont pour longueurs $a$, $b$ et $c$.

## Hints

1. Montre d'abord que $a$ et $b$ n'ont aucun facteur premier commun. Si un nombre premier $p$ divise $a$ et $b$, développe $(b - c)^2$.
2. Si deux des trois nombres sont égaux, ils valent tous les deux $1$. Que vaut alors le troisième ?
3. Sinon, range-les : $a < b < c$. Développe $(a + b - c)^2 = \left(a + (b - c)\right)^2$. Que divise-t-il ?
4. Compare $(a + b - c)^2$ avec $ab$, en utilisant l'inégalité triangulaire.

## Solution

Les trois conditions de divisibilité ne changent pas quand on échange deux des nombres $a$, $b$, $c$, et la condition du triangle non plus. On peut donc les ranger dans l'ordre qui nous arrange.

On utilisera deux faits sur les nombres premiers, qui viennent de la décomposition d'un entier en produit de facteurs premiers.

- Si un nombre premier $p$ divise $c^2$, alors $p$ divise $c$.
- Si $a$ et $b$ divisent un même entier $N$ et n'ont aucun facteur premier commun, alors $ab$ divise $N$. En effet, chaque puissance $p^k$ qui apparaît dans la décomposition de $a$, et chaque puissance $q^\ell$ qui apparaît dans celle de $b$, apparaissent dans celle de $N$, et les nombres premiers de $a$ sont différents de ceux de $b$.

**Étape 1 : deux des nombres n'ont jamais de facteur premier commun.** Supposons qu'un nombre premier $p$ divise à la fois $a$ et $b$. Comme $a$ divise $(b - c)^2$, le nombre $p$ divise
$$(b - c)^2 = b^2 - 2bc + c^2 = b\,(b - 2c) + c^2.$$
Il divise aussi $b\,(b - 2c)$, donc il divise la différence, $c^2$. D'après le premier fait, $p$ divise $c$. Alors $p$ divise $a$, $b$ et $c$, ce qui contredit $\mathrm{PGCD}(a, b, c) = 1$. Par symétrie, il en va de même pour $a$ et $c$, et pour $b$ et $c$.

**Étape 2 : si deux des nombres sont égaux.** Supposons par exemple $a = b$. D'après l'étape 1, $a$ et $b$ n'ont aucun facteur premier commun. Comme $a = b$, cela veut dire que $a$ n'a aucun facteur premier, donc $a = b = 1$. Pour qu'un triangle de côtés $1$, $1$, $c$ existe sans être aplati, il faut $c < 1 + 1 = 2$, donc $c = 1$. Le triplet $(1, 1, 1)$ convient bien : $1$ divise $0$.

**Étape 3 : si les trois nombres sont différents.** On les range : $a < b < c$. Supposons qu'il existe un triangle non aplati de côtés $a$, $b$, $c$, et cherchons une contradiction.

On a
$$(a + b - c)^2 = \left(a + (b - c)\right)^2 = a^2 + 2a\,(b - c) + (b - c)^2.$$
Les deux premiers termes sont des multiples de $a$, et $a$ divise $(b - c)^2$, donc $a$ divise $(a + b - c)^2$. De même,
$$(a + b - c)^2 = b^2 + 2b\,(a - c) + (a - c)^2,$$
donc $b$ divise aussi $(a + b - c)^2$. D'après l'étape 1 et le second fait, **$ab$ divise $(a + b - c)^2$.**

Comparons maintenant les tailles.

- Le triangle n'est pas aplati, donc $c < a + b$ : le nombre $a + b - c$ est strictement positif.
- Comme $b < c$, on a $a + b - c < a$.

Ainsi $0 < a + b - c < a$, donc $0 < (a + b - c)^2 < a^2 < ab$, puisque $a < b$. Un entier strictement positif plus petit que $ab$ ne peut pas être un multiple de $ab$. C'est la contradiction cherchée : ce cas n'arrive jamais.

**Conclusion : la seule solution est $a = b = c = 1$.**

## Going further

Sans la condition du triangle, il y a beaucoup d'autres solutions. Par exemple $(1, 3, 4)$ : $1$ divise $1$, $3$ divise $9$ et $4$ divise $4$. Plus généralement, pour tout entier $n \geqslant 2$, le triplet $\left(1, n, (n - 1)^2\right)$ convient. Peux-tu le vérifier ?
