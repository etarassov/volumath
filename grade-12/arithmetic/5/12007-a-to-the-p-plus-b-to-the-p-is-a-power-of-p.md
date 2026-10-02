---
id: "12007"
title: "aᵖ + bᵖ est une puissance de p"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 70
tags: [nombres-premiers, puissances, pgcd, congruences, binome-de-newton, equation-diophantienne, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mars 2012"
  reference: "2017-10_ofm-2011-2012-test-mars-1.pdf, exercice 3 ; corrigé 2017-10_ofm-2011-2012-test-mars-corrige.pdf (solution réécrite en se ramenant d'abord à a et b premiers entre eux)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2011-2012-test-mars-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2011-2012-test-mars-1.pdf"
---

## Statement

Soit $p$ un nombre premier. Trouver tous les entiers $a$, $b$, $c \ge 1$ tels que

$$a^p + b^p = p^c .$$

## Hints

1. Le $\mathrm{PGCD}$ $d$ de $a$ et $b$ vérifie : $d^p$ divise $p^c$. Que peut valoir $d$ ? Ramenez-vous au cas où $a$ et $b$ sont premiers entre eux.
2. Le cas $p = 2$ se règle modulo $4$. Pour $p$ impair, montrez que $x + y$ divise $x^p + y^p$, donc que $x + y = p^k$ avec $k \ge 1$.
3. Écrivez $y = p^k - x$ et développez $(p^k - x)^p$ par la formule du binôme. Vous pouvez utiliser que $p$ divise $\binom{p}{j}$ pour $1 \le j \le p-1$. Quelle est la plus grande puissance de $p$ qui divise $x^p + y^p$ ?
4. Vous devez trouver $x^p + y^p = p\,(x + y)$. Avec $x \ge y$, cela force $x^{p-1} < 2p$. Essayez $p = 3$, puis $p \ge 5$.

## Solution

**Réponse.**

- Si $p = 2$ : les solutions sont $a = b = 2^u$ et $c = 2u + 1$, pour un entier $u \ge 0$.
- Si $p = 3$ : les solutions sont $(a, b) = (2 \cdot 3^u, 3^u)$ ou $(3^u, 2 \cdot 3^u)$, avec $c = 3u + 2$, pour un entier $u \ge 0$.
- Si $p \ge 5$ : il n'y a aucune solution.

Ces nombres conviennent : $(2^u)^2 + (2^u)^2 = 2 \cdot 2^{2u} = 2^{2u+1}$, et $(2 \cdot 3^u)^3 + (3^u)^3 = (8 + 1) \cdot 3^{3u} = 3^{3u+2}$. Montrons qu'il n'y en a pas d'autres.

**Étape 1 : on se ramène à des nombres premiers entre eux.** Soit $d = \mathrm{PGCD}(a, b)$. Alors $d^p$ divise $a^p$ et $b^p$, donc $p^c$. Tout diviseur premier de $d$ divise $p^c$, donc vaut $p$ : ainsi $d = p^u$ pour un entier $u \ge 0$. Écrivons $a = p^u x$ et $b = p^u y$, avec $x$ et $y$ premiers entre eux. L'équation devient

$$x^p + y^p = p^{c - up} = p^m, \qquad \text{avec } m = c - up .$$

Comme $x^p + y^p \ge 2$, on a $m \ge 1$. Il suffit donc de trouver les $x$, $y$ premiers entre eux tels que $x^p + y^p$ soit une puissance de $p$, puis de multiplier par $p^u$.

**Étape 2 : le cas $p = 2$.** On cherche $x$, $y$ premiers entre eux avec $x^2 + y^2 = 2^m$. Un carré est congru à $0$ ou à $1$ modulo $4$ (selon que le nombre est pair ou impair). Si $m \ge 2$, alors $x^2 + y^2 \equiv 0 \pmod 4$, ce qui n'est possible qu'avec deux carrés congrus à $0$, donc $x$ et $y$ pairs : c'est exclu, ils sont premiers entre eux. Donc $m = 1$, $x^2 + y^2 = 2$, soit $x = y = 1$.

On obtient $a = b = 2^u$ et $c = m + 2u = 2u + 1$.

**Étape 3 : pour $p$ impair, $x + y = p^k$.** Comme $x \equiv -y \pmod{x + y}$ et que $p$ est impair,

$$x^p + y^p \equiv (-y)^p + y^p = -y^p + y^p = 0 \pmod{x + y} .$$

Donc $x + y$ divise $x^p + y^p = p^m$ : c'est une puissance de $p$, et comme $x + y \ge 2$, on a $x + y = p^k$ avec $k \ge 1$.

Remarquons que $p$ ne divise pas $x$ : sinon il diviserait aussi $y = p^k - x$, alors que $x$ et $y$ sont premiers entre eux.

**Étape 4 : $x^p + y^p = p\,(x + y)$.** On utilise un fait classique : pour $1 \le j \le p - 1$, le nombre premier $p$ divise $\binom{p}{j}$. En effet $j!\,(p-j)!\,\binom{p}{j} = p!$ est divisible par $p$, alors que $j!\,(p-j)!$ est un produit d'entiers tous strictement inférieurs à $p$, donc non divisible par $p$ ; d'après le lemme d'Euclide, $p$ divise $\binom{p}{j}$.

Développons $y^p = (p^k - x)^p$ par la formule du binôme :

$$(p^k - x)^p = \sum_{j=0}^{p} \binom{p}{j} p^{kj} (-x)^{p-j} .$$

- Le terme $j = 0$ vaut $(-x)^p = -x^p$ (car $p$ est impair). Il disparaît quand on ajoute $x^p$.
- Le terme $j = 1$ vaut $p \cdot p^k \cdot (-x)^{p-1} = p^{k+1} x^{p-1}$, car $p - 1$ est pair.
- Pour $2 \le j \le p - 1$, le terme est divisible par $p \cdot p^{2k}$, donc par $p^{k+2}$.
- Le terme $j = p$ vaut $p^{kp}$, et $kp \ge k + 2$ car $k(p-1) \ge 2$.

Il existe donc un entier $A$ tel que

$$x^p + y^p = p^{k+1} x^{p-1} + p^{k+2} A = p^{k+1}\left(x^{p-1} + pA\right).$$

Le facteur $N = x^{p-1} + pA$ n'est pas divisible par $p$, puisque $p$ ne divise pas $x$. Or $p^{k+1} N = p^m$ : le nombre $N$ divise une puissance de $p$ sans être divisible par $p$, donc $N = 1$. Ainsi $m = k + 1$ et

$$x^p + y^p = p^{k+1} = p\,(x + y) .$$

**Étape 5 : on borne $x$.** Par symétrie, supposons $x \ge y$. On ne peut pas avoir $x = y$ : comme ils sont premiers entre eux, ce serait $x = y = 1$, et l'égalité donnerait $2 = 2p$. Donc $x \ge 2$ et

$$x^p < x^p + y^p = p\,(x + y) < 2px, \qquad \text{donc} \qquad x^{p-1} < 2p .$$

Avec $x \ge 2$ on obtient $2^{p-1} < 2p$.

- Pour $p \ge 5$, c'est faux. En effet $2^4 = 16 \ge 10$, et quand on passe de $p$ à $p + 1$, le membre de gauche est multiplié par $2$ alors que le membre de droite augmente seulement de $2$ ; donc $2^{p-1} \ge 2p$ pour tout $p \ge 5$. **Il n'y a aucune solution pour $p \ge 5$.**
- Pour $p = 3$, la condition est $x^2 < 6$, donc $x = 2$. Comme $y < x$, on a $y = 1$, et en effet $2^3 + 1^3 = 9 = 3 \times 3 = 3\,(x + y)$. Ici $m = 2$.

Pour $p = 3$ on trouve donc $\{x, y\} = \{1, 2\}$ et $m = 2$, d'où $\{a, b\} = \{3^u, 2 \cdot 3^u\}$ et $c = m + 3u = 3u + 2$.

**Conclusion.** Les solutions sont : pour $p = 2$, $a = b = 2^u$ et $c = 2u + 1$ ; pour $p = 3$, $\{a, b\} = \{3^u, 2 \cdot 3^u\}$ et $c = 3u + 2$ ; avec $u \ge 0$ entier. Pour $p \ge 5$, l'équation n'a pas de solution.
