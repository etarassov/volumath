---
id: "12240"
title: "Quand (5ᵐ + 2ⁿp)/(5ᵐ − 2ⁿp) est un carré"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [puissances, nombres-premiers, diviseurs, carre-parfait, parite, restes, disjonction-de-cas]
adapted_from: null
see_also: ["12237"]
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de janvier 2016"
  reference: "2017-10_ofm-2015-2016-test-janvier.pdf, test du 6 janvier 2016, exercices du groupe A, exercice 5, question b (la question a est l'exercice 12237) ; corrigé 2017-10_ofm-2015-2016-test-janvier-corrige.pdf (le corrigé ne traite pas le cas p = 2, ni celui d'un dénominateur négatif, et oublie d'écarter le cas où l'un des facteurs vaut 2 quand m est pair)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2015-2016-test-janvier.pdf"
---

## Statement

Trouver tous les entiers $m \geqslant 1$ et $n \geqslant 1$, et tous les nombres premiers $p$, tels que le nombre

$$\frac{5^m + 2^n p}{5^m - 2^n p}$$

soit le carré d'un entier.

## Hints

1. Commence par le cas $p = 2$. Montre que le dénominateur doit être positif, puis qu'il divise une puissance de $2$.
2. Pour $p = 5$, simplifie la fraction par $5$ : tu reviens au cas $p = 2$, avec des exposants qui peuvent valoir $0$.
3. Pour $p \neq 2$ et $p \neq 5$, montre que le dénominateur vaut $1$. Écris alors le numérateur $a^2$, et factorise $a^2 - 1$.
4. Regarde le reste de $5^m$ dans la division par $8$ : il vaut $5$ quand $m$ est impair et $1$ quand $m$ est pair.

## Solution

On note $N = 5^m + 2^n p$ le numérateur et $d = 5^m - 2^n p$ le dénominateur, et l'on suppose que $\frac{N}{d} = a^2$ pour un entier $a \geqslant 0$.

**Étape 1. Le dénominateur est strictement positif.**

Le nombre $5^m$ est impair et $2^n p$ est pair, puisque $n \geqslant 1$. Donc $N$ et $d$ sont impairs, et $d \neq 0$. Si $d < 0$, le quotient $\frac{N}{d}$ est strictement négatif, puisque $N > 0$, et ce n'est pas un carré. Donc $d > 0$, et $d$ divise $N$, puisque le quotient est un entier.

Comme $d$ divise $N$ et $d$, il divise leur somme et leur différence :
$$N + d = 2 \times 5^m, \qquad N - d = 2^{n+1}\,p.$$

**Étape 2. Un lemme : le cas des puissances de $2$.**

*Soient $u \geqslant 0$ et $v \geqslant 0$ deux entiers tels que $\dfrac{5^u + 2^{v+1}}{5^u - 2^{v+1}}$ soit le carré d'un entier. Alors $u = v = 1$.*

Le dénominateur $\delta = 5^u - 2^{v+1}$ est impair. Comme à l'étape 1, il est strictement positif et divise la différence $(5^u + 2^{v+1}) - \delta = 2^{v+2}$. D'après la décomposition en facteurs premiers, les diviseurs de $2^{v+2}$ sont les puissances de $2$, et le seul qui soit impair est $1$. Donc $\delta = 1$, c'est-à-dire $5^u = 2^{v+1} + 1$, et le numérateur vaut $2^{v+2} + 1 = b^2$ pour un entier $b \geqslant 0$.

Alors $(b - 1)(b + 1) = 2^{v+2}$, donc $b - 1$ et $b + 1$ sont des puissances de $2$, qui diffèrent de $2$. Si la plus petite des deux était divisible par $4$, l'autre aussi, et leur différence aussi, ce qui est faux. Si elle valait $1$, l'autre vaudrait $3$, qui n'est pas une puissance de $2$. Donc $b - 1 = 2$, $b = 3$ et $2^{v+2} = 8$, d'où $v = 1$. Enfin $5^u = 5$, et $u = 1$.

**Étape 3. Le cas $p = 2$.**

Le quotient s'écrit $\dfrac{5^m + 2^{n+1}}{5^m - 2^{n+1}}$. D'après le lemme, $m = n = 1$. On vérifie : $\dfrac{5 + 4}{5 - 4} = 9 = 3^2$.

**Étape 4. Le cas $p = 5$.**

On simplifie par $5$ :
$$\frac{5^m + 2^n \times 5}{5^m - 2^n \times 5} = \frac{5^{m-1} + 2^{n}}{5^{m-1} - 2^{n}} = \frac{5^{m-1} + 2^{(n-1)+1}}{5^{m-1} - 2^{(n-1)+1}}.$$

Le lemme, appliqué à $u = m - 1 \geqslant 0$ et $v = n - 1 \geqslant 0$, donne $m - 1 = n - 1 = 1$, donc $m = n = 2$. On vérifie : $\dfrac{25 + 20}{25 - 20} = \dfrac{45}{5} = 9 = 3^2$.

**Étape 5. Le cas $p \neq 2$ et $p \neq 5$ : on se ramène à deux possibilités.**

Le nombre $d$ est impair. D'après l'étape 1, il divise $2 \times 5^m$ et $2^{n+1}\,p$.

- Les diviseurs impairs de $2 \times 5^m$ sont les puissances de $5$.
- Comme $p$ est un nombre premier impair, les diviseurs impairs de $2^{n+1}\,p$ sont $1$ et $p$.

La seule puissance de $5$ qui soit un nombre premier est $5$ lui-même, et $p \neq 5$, donc $p$ n'est pas une puissance de $5$. Le seul nombre qui soit à la fois une puissance de $5$ et égal à $1$ ou à $p$ est donc $1$. Ainsi $d = 1$, c'est-à-dire
$$5^m = 2^n\,p + 1, \qquad a^2 = N = 2^{n+1}\,p + 1.$$

Le nombre $a^2$ est impair, donc $a$ aussi, et l'on écrit $a = 2w + 1$ avec $w \geqslant 1$. Alors
$$a^2 - 1 = (a - 1)(a + 1) = 2w \times 2(w + 1) = 4\,w\,(w + 1),$$
et l'égalité $a^2 - 1 = 2^{n+1}\,p$ devient
$$w\,(w + 1) = 2^{n-1}\,p.$$

L'un des deux nombres consécutifs $w$ et $w + 1$ est impair. C'est un diviseur impair de $2^{n-1}\,p$, donc il vaut $1$ ou $p$.

- S'il vaut $1$, alors $w = 1$, car $w + 1 \geqslant 2$. On obtient $2 = 2^{n-1}\,p$, ce qui est impossible, car $p \geqslant 3$.
- Il vaut donc $p$, et l'autre nombre vaut $\frac{2^{n-1}\,p}{p} = 2^{n-1}$. Ainsi $p$ et $2^{n-1}$ sont deux entiers consécutifs.

Il reste deux possibilités : $p = 2^{n-1} - 1$, ou $p = 2^{n-1} + 1$.

**Étape 6. Dans les deux cas, $m$ est pair.**

Montrons d'abord que $n \geqslant 3$.

- Si $p = 2^{n-1} - 1$, alors $2^{n-1} = p + 1 \geqslant 4$, donc $n \geqslant 3$.
- Si $p = 2^{n-1} + 1$, alors $2^{n-1} = p - 1 \geqslant 2$, donc $n \geqslant 2$. Pour $n = 2$, on aurait $p = 3$ et $5^m = 4 \times 3 + 1 = 13$, ce qui est impossible. Donc $n \geqslant 3$.

Ainsi $2^n$ est divisible par $8$, et $5^m = 2^n p + 1$ a pour reste $1$ dans la division par $8$.

Or $25 = 3 \times 8 + 1$. Un produit de nombres qui ont tous pour reste $1$ dans la division par $8$ a encore pour reste $1$, donc $25^k$ a pour reste $1$ pour tout entier $k \geqslant 0$. Si $m = 2k + 1$ était impair, on aurait $5^m = 5 \times 25^k = 5\,(8q + 1) = 8 \times 5q + 5$ pour un entier $q$, avec un reste égal à $5$. C'est faux, donc $m$ est pair.

**Étape 7. On conclut.**

Écrivons $m = 2k$ avec $k \geqslant 1$. L'égalité $5^m - 1 = 2^n\,p$ devient
$$(5^k - 1)(5^k + 1) = 2^n\,p.$$

Les deux facteurs sont pairs et diffèrent de $2$. On écrit $5^k - 1 = 2z$ avec $z \geqslant 2$, et $5^k + 1 = 2(z + 1)$. On obtient comme à l'étape 5 $z\,(z + 1) = 2^{n-2}\,p$. Le nombre impair parmi $z$ et $z + 1$ vaut $1$ ou $p$. Il ne vaut pas $1$, car $z \geqslant 2$. Il vaut donc $p$, et l'autre vaut $2^{n-2}$ : les nombres $p$ et $2^{n-2}$ sont consécutifs.

- **Si $p = 2^{n-1} - 1 = 2 \times 2^{n-2} - 1$**, alors $p - 2^{n-2} = 2^{n-2} - 1$, qui est positif puisque $n \geqslant 3$. Il doit valoir $1$, donc $2^{n-2} = 2$, $n = 3$ et $p = 3$. Alors $5^m = 8 \times 3 + 1 = 25$, et $m = 2$.
- **Si $p = 2^{n-1} + 1 = 2 \times 2^{n-2} + 1$**, alors $p - 2^{n-2} = 2^{n-2} + 1 \geqslant 3$. Ce n'est ni $1$ ni $-1$ : ce cas est impossible.

On vérifie le triplet obtenu : pour $m = 2$, $n = 3$ et $p = 3$, on trouve $\dfrac{25 + 24}{25 - 24} = 49 = 7^2$.

**Réponse :** il y a trois solutions,
$$(m, n, p) = (1, 1, 2), \qquad (m, n, p) = (2, 2, 5), \qquad (m, n, p) = (2, 3, 3).$$

## Going further

Dans les trois solutions, le dénominateur vaut $1$ ou $5$, et le quotient vaut $9$ ou $49$. Pourquoi le dénominateur ne peut-il valoir $5$ que lorsque $p = 5$ ?

L'exercice 12237 est le cas particulier $p = 2$, posé seul aux élèves du collège et de seconde.
