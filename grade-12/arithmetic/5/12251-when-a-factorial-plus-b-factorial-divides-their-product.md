---
id: "12251"
title: "Quand a! + b! divise a! b!"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [factorielle, divisibilite, nombres-premiers, theoreme-de-gauss, nombres-premiers-entre-eux, majoration, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de mars 2016"
  reference: "2017-10_ofm-2015-2016-test-mars.pdf, test du 23 mars 2016, exercice 5 (groupe A) ; pas de corrigé publié, solution rédigée pour cette base et énoncé vérifié par ordinateur pour a, b ⩽ 69. Il s'agit du problème N2 de la liste courte des Olympiades internationales 2015"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-test-mars.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2015-2016-test-mars.pdf"
---

## Statement

Pour un entier $n \geqslant 1$, on note $n! = 1 \times 2 \times \cdots \times n$.

Soient $a$ et $b$ deux entiers strictement positifs tels que $a!\,b!$ soit un multiple de $a! + b!$.

Montrer que $3a \geqslant 2b + 2$.

## Hints

1. Le cas $a \geqslant b$ est facile, mais attention au cas $b = 1$. Dans l'autre cas, écris $b = a + c$ avec $c \geqslant 1$, et mets $a!$ en facteur dans $a! + b!$.
2. On pose $M = 1 + (a + 1)(a + 2) \cdots (a + c)$. Montre que $M$ divise $a!$.
3. Montre que tout nombre premier $p$ qui divise $M$ vérifie $c < p \leqslant a$.
4. Déduis-en que $M$ divise $(c + 1)(c + 2) \cdots a$, puis compare les tailles des deux nombres. Pour finir, le cas $a = 2c + 1$ demande un argument de plus.

## Solution

On utilise deux résultats du cours de maths expertes :

- le **théorème de Gauss** : si un entier $M$ divise un produit $XY$ et si $M$ est premier avec $X$, alors $M$ divise $Y$ ;
- sa conséquence, le **lemme d'Euclide** : si un nombre premier divise un produit d'entiers, il divise l'un des facteurs.

**Étape 1. Le cas $a \geqslant b$.**

Si $b = 1$, l'hypothèse dit que $a! + 1$ divise $a!$. C'est impossible, car $0 < a! < a! + 1$. Donc $b \geqslant 2$, et
$$3a \geqslant 3b = 2b + b \geqslant 2b + 2.$$

**Étape 2. Le cas $a < b$ : on fait apparaître un nombre $M$ qui divise $a!$.**

On écrit $b = a + c$ avec $c \geqslant 1$. L'inégalité voulue s'écrit $3a \geqslant 2a + 2c + 2$, c'est-à-dire
$$a \geqslant 2c + 2.$$

On pose $P = (a + 1)(a + 2) \cdots (a + c)$, le produit de $c$ entiers consécutifs, de sorte que $b! = a! \times P$. Alors
$$a! + b! = a!\,(1 + P).$$
On pose $M = 1 + P$, et l'on note que $M \geqslant 3$.

Par hypothèse, il existe un entier $k$ tel que $a!\,b! = k\,a!\,M$, donc $b! = k\,M$ : le nombre $M$ divise $b! = a! \times P$. Or $M$ et $P$ sont premiers entre eux, car un diviseur commun divise $M - P = 1$. D'après le théorème de Gauss, **$M$ divise $a!$.**

**Étape 3. Les facteurs premiers de $M$ sont compris entre $c$ et $a$.**

Soit $p$ un nombre premier qui divise $M$.

- *On a $p \leqslant a$.* En effet $p$ divise $a! = 1 \times 2 \times \cdots \times a$, donc, d'après le lemme d'Euclide, il divise l'un des entiers $1, 2, \ldots, a$, et il est donc au plus égal à $a$.
- *On a $p > c$.* Sinon $p \leqslant c$, et parmi les $c$ entiers consécutifs $a + 1, \ldots, a + c$, l'un est un multiple de $p$, car on trouve un multiple de $p$ parmi n'importe quels $p$ entiers consécutifs. Alors $p$ diviserait $P$ et $M$, donc $M - P = 1$, ce qui est absurde.

Comme $M \geqslant 3$ a au moins un facteur premier, on obtient en particulier $c < a$.

**Étape 4. On montre que $a \geqslant 2c + 1$.**

On écrit $a! = c! \times Q$, avec $Q = (c + 1)(c + 2) \cdots a$, le produit des $a - c$ entiers de $c + 1$ à $a$.

Les nombres $M$ et $c!$ sont premiers entre eux. Sinon, ils auraient un facteur premier commun $p$. Comme $p$ divise $c!$, il divise l'un des entiers $1, \ldots, c$ d'après le lemme d'Euclide, donc $p \leqslant c$, ce qui contredit l'étape 3.

Comme $M$ divise $a! = c! \times Q$ et qu'il est premier avec $c!$, le théorème de Gauss montre que $M$ divise $Q$. En particulier $M \leqslant Q$.

Supposons que $a - c \leqslant c$. Le nombre $Q$ est un produit de $a - c$ entiers tous au plus égaux à $a$, donc $Q \leqslant a^{a - c} \leqslant a^c$, puisque $a \geqslant 2$. Le nombre $P$ est un produit de $c$ entiers tous strictement plus grands que $a$, donc $P > a^c$. On obtiendrait
$$Q \leqslant a^c < P < M,$$
ce qui contredit $M \leqslant Q$. Donc $a - c > c$, c'est-à-dire $a \geqslant 2c + 1$.

**Étape 5. On exclut le cas $a = 2c + 1$.**

Supposons $a = 2c + 1$. Alors
$$Q = (c + 1)(c + 2) \cdots (2c + 1) \qquad \text{et} \qquad P = (2c + 2)(2c + 3) \cdots (3c + 1).$$

Le nombre $c + 1$ divise $2c + 2$, donc il divise $P$. Un diviseur commun à $M$ et à $c + 1$ divise donc $M$ et $P$, donc $M - P = 1$ : les nombres $M$ et $c + 1$ sont premiers entre eux.

On écrit $Q = (c + 1) \times Q'$, avec $Q' = (c + 2)(c + 3) \cdots (2c + 1)$, le produit de $c$ entiers. Comme $M$ divise $Q$ et qu'il est premier avec $c + 1$, le théorème de Gauss montre que $M$ divise $Q'$, donc $M \leqslant Q'$.

Mais $Q'$ est un produit de $c$ entiers tous au plus égaux à $2c + 1$, et $P$ un produit de $c$ entiers tous au moins égaux à $2c + 2$. Donc
$$Q' \leqslant (2c + 1)^c < (2c + 2)^c \leqslant P < M,$$
ce qui contredit $M \leqslant Q'$.

**Conclusion.**

On a donc $a \geqslant 2c + 2$, c'est-à-dire $3a \geqslant 2a + 2c + 2 = 2b + 2$.

## Going further

1. Vérifie que les couples $(a, b) = (2, 2)$ et $(4, 5)$ satisfont l'hypothèse, et que l'inégalité y est une égalité. L'inégalité ne peut donc pas être améliorée.
2. Trouve tous les couples $(a, b)$ avec $a < b \leqslant 7$ qui satisfont l'hypothèse.
