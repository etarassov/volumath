---
id: "12263"
title: "Une infinité de P(3ⁿ) qui ne sont pas premiers"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [nombres-premiers, divisibilite, polynome, puissances, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-02
source:
  name: "POFM, test de janvier 2017"
  reference: "2017-10_ofm-2016-2017-test-janvier.pdf et son corrigé, test du 4 janvier 2017, exercice 3 (groupe B). Le corrigé raisonne avec des congruences modulo 5 ; la solution ci-dessous utilise seulement la factorisation de xᵏ − yᵏ"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2016-2017-test-janvier.pdf"
---

## Statement

On considère le polynôme
$$P(x) = x^4 - x^3 - 3x^2 - x + 1.$$
Montrer qu'il existe une infinité d'entiers naturels $n$ tels que $P(3^n)$ ne soit pas un nombre premier.

## Hints

1. Calcule $P(3)$. Que remarques-tu ?
2. Si $x$ et $y$ sont deux entiers, $x - y$ divise $x^k - y^k$. Déduis-en que $x - 3$ divise $P(x) - P(3)$.
3. Cherche des entiers $n$ pour lesquels $3^n - 3$ est un multiple de $5$. Pense à $3^4 = 81$.
4. Il reste à vérifier que $P(3^n)$ est strictement plus grand que $5$.

## Solution

**Un lemme.** *Si $x$ et $y$ sont deux entiers et $k \geqslant 1$, alors $x - y$ divise $x^k - y^k$.*

En effet,
$$x^k - y^k = (x - y)\left(x^{k-1} + x^{k-2}\,y + \cdots + x\,y^{k-2} + y^{k-1}\right).$$
Pour le vérifier, on développe le membre de droite. En multipliant la grande parenthèse par $x$, on obtient $x^k + x^{k-1}y + \cdots + x\,y^{k-1}$. En la multipliant par $-y$, on obtient $-x^{k-1}y - \cdots - x\,y^{k-1} - y^k$. Tous les termes s'annulent deux à deux, sauf $x^k$ et $-y^k$.

**Étape 1. La valeur $P(3)$.**

On calcule $P(3) = 81 - 27 - 27 - 3 + 1 = 25$. C'est un multiple de $5$.

**Étape 2. Pour tout entier $x$, le nombre $x - 3$ divise $P(x) - 25$.**

On écrit
$$P(x) - P(3) = \left(x^4 - 3^4\right) - \left(x^3 - 3^3\right) - 3\left(x^2 - 3^2\right) - (x - 3).$$
D'après le lemme, chacune des quatre parenthèses est un multiple de $x - 3$. Donc $x - 3$ divise $P(x) - P(3) = P(x) - 25$.

**Étape 3. Le choix de $n$.**

Soit $k \geqslant 1$ un entier, et soit $n = 4k + 1$. On pose $x = 3^n = 3 \times 81^k$. Alors
$$x - 3 = 3\left(81^k - 1\right).$$
D'après le lemme appliqué à $81$ et $1$, le nombre $81 - 1 = 80$ divise $81^k - 1^k$. Donc $80$ divise $x - 3$, et en particulier $5$ divise $x - 3$.

D'après l'étape 2, $x - 3$ divise $P(x) - 25$, donc $5$ divise $P(x) - 25$. Comme $5$ divise aussi $25$, il divise la somme $P(x) = \left(P(x) - 25\right) + 25$.

**Étape 4. Le nombre $P(x)$ est strictement plus grand que $5$.**

On a $x \geqslant 3^5 = 243$. Comme $x \geqslant 1$, on a $x^2 \leqslant x^3$ et $x \leqslant x^3$. Donc
$$P(x) = x^4 - x^3 - 3x^2 - x + 1 > x^4 - x^3 - 3x^3 - x^3 = x^3\,(x - 5).$$
Comme $x - 5 \geqslant 238$, on obtient $P(x) > 243^3 \times 238 > 5$.

**Conclusion.**

Pour tout entier $k \geqslant 1$, le nombre $P\left(3^{4k+1}\right)$ est un multiple de $5$ strictement plus grand que $5$. Il a donc un diviseur, $5$, qui n'est ni $1$ ni lui-même : il n'est pas premier. Les entiers $n = 5, 9, 13, 17, \ldots$ conviennent, et il y en a une infinité.

## Going further

1. Vérifie que $P(9) = 5581$. On peut montrer que ce nombre est premier : il ne suffit donc pas de prendre $n$ quelconque.
2. Calcule $P(2)$, puis montre que $P(3^n)$ est aussi un multiple de $5$ quand $n = 4k + 3$.
