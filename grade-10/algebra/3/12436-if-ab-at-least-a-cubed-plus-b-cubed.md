---
id: "12436"
title: "Si ab ≥ a³ + b³, alors a + b ≤ 1"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, factorisation, raisonnement-par-l-absurde, cubes]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 26 février 2019"
  reference: "2019-03_Test-26-02.pdf, exercice 1 ; corrigé 2019-03_Test-26-02-Corrige.pdf (solution réécrite par factorisation de a³ + b³)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/03/Test-26-02.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2019-03_Test-26-02.pdf"
---

## Statement

Soient $a$ et $b$ deux nombres réels tels que $ab \geqslant a^3 + b^3$.

Démontrer que $a + b \leqslant 1$.

## Hints

1. Raisonne par l'absurde : suppose que $a + b > 1$, et cherche une contradiction.
2. Factorise $a^3 + b^3$ par $a + b$.
3. Tu dois trouver $a^3 + b^3 = (a + b)(a^2 - ab + b^2)$. Compare $a^2 - ab + b^2$ à $ab$ : leur
   différence est un carré.
4. Tu dois arriver à $ab \leqslant 0$. Regarde alors le signe de $a^3 + b^3$.

## Solution

Raisonnons par l'absurde et supposons que $s = a + b$ vérifie $s > 1$.

**Une factorisation.** En développant, on vérifie que
$$(a + b)(a^2 - ab + b^2) = a^3 - a^2 b + a b^2 + a^2 b - a b^2 + b^3 = a^3 + b^3.$$
Donc $a^3 + b^3 = s\,(a^2 - ab + b^2)$.

**Première conséquence : $ab \leqslant 0$.** On a
$$a^2 - ab + b^2 - ab = a^2 - 2ab + b^2 = (a - b)^2 \geqslant 0,$$
donc $a^2 - ab + b^2 \geqslant ab$. Comme $s > 0$, on peut multiplier cette inégalité par $s$ :
$$a^3 + b^3 = s\,(a^2 - ab + b^2) \geqslant s\,ab.$$
Avec l'hypothèse, on obtient $ab \geqslant a^3 + b^3 \geqslant s\,ab$, c'est-à-dire
$$ab\,(1 - s) \geqslant 0.$$
Or $1 - s < 0$, donc $ab \leqslant 0$.

**Deuxième conséquence : $a^3 + b^3 > 0$.** Puisque $ab \leqslant 0$, on a $-ab \geqslant 0$, donc
$$a^2 - ab + b^2 \geqslant a^2 + b^2.$$
De plus $a$ et $b$ ne sont pas tous les deux nuls (sinon $s = 0$), donc $a^2 + b^2 > 0$. Ainsi
$a^2 - ab + b^2 > 0$, et comme $s > 0$, on obtient $a^3 + b^3 = s\,(a^2 - ab + b^2) > 0$.

**La contradiction.** L'hypothèse donne alors $ab \geqslant a^3 + b^3 > 0$, ce qui contredit
$ab \leqslant 0$.

**Conclusion.** L'hypothèse $a + b > 1$ est impossible : **on a bien $a + b \leqslant 1$.**

## Going further

Trouver deux réels $a$ et $b$ tels que $ab \geqslant a^3 + b^3$ et $a + b = 1$. Cela montre qu'on
ne peut pas remplacer $1$ par un nombre plus petit dans la conclusion.
