---
id: "12244"
title: "2005 solutions de 1/x + 1/y = 1/n"
grade: 9
theme: arithmetic
difficulty: 5
duration_min: 35
tags: [equation-diophantienne, diviseurs, nombre-de-diviseurs, decomposition-en-facteurs-premiers, carre-parfait, factorisation]
adapted_from: null
see_also: ["7452"]
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de février 2016, junior"
  reference: "2017-10_ofm-2015-2016-test-fevrier-junior.pdf, test du 26 février 2016, exercice 4 ; corrigé 2017-10_ofm-2015-2016-test-fevrier-junior-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-test-fevrier-junior.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2015-2016-test-fevrier-junior.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. On suppose qu'il existe exactement $2005$ couples $(x, y)$ d'entiers strictement positifs tels que
$$\frac{1}{x} + \frac{1}{y} = \frac{1}{n}.$$

Montrer que $n$ est le carré d'un entier.

Les couples sont ordonnés : si $x \neq y$, les couples $(x, y)$ et $(y, x)$ comptent pour deux couples différents.

## Hints

1. Montre que $x > n$ et $y > n$. Chasse ensuite les dénominateurs, et ajoute $n^2$ des deux côtés pour faire apparaître un produit.
2. Tu dois obtenir $(x - n)(y - n) = n^2$. Que compte alors le nombre $2005$ ?
3. Si $N = p_1^{e_1} \times \cdots \times p_r^{e_r}$ est la décomposition de $N$ en facteurs premiers, combien $N$ a-t-il de diviseurs positifs ?
4. Décompose $2005$ en facteurs premiers.

## Solution

**Étape 1. On compte des diviseurs.**

Soit $(x, y)$ un couple solution. Comme $\frac{1}{y} > 0$, on a $\frac{1}{x} < \frac{1}{n}$, donc $x > n$. De même, $y > n$.

En multipliant par $nxy$, l'équation devient $ny + nx = xy$, c'est-à-dire $xy - nx - ny = 0$. En ajoutant $n^2$ des deux côtés, le membre de gauche se factorise :
$$(x - n)(y - n) = n^2.$$

On pose $u = x - n$ et $v = y - n$. Ce sont des entiers strictement positifs, et $uv = n^2$. Réciproquement, si $u$ et $v$ sont des entiers strictement positifs tels que $uv = n^2$, alors $x = n + u$ et $y = n + v$ sont strictement positifs, et en remontant les calculs on retrouve $\frac{1}{x} + \frac{1}{y} = \frac{1}{n}$. Deux couples $(u, v)$ différents donnent deux couples $(x, y)$ différents.

Enfin, se donner un couple $(u, v)$ d'entiers strictement positifs tels que $uv = n^2$ revient à se donner un diviseur positif $u$ de $n^2$, puisque $v = \frac{n^2}{u}$ est alors imposé.

Le nombre de couples solutions est donc le nombre de diviseurs positifs de $n^2$. Ainsi, **$n^2$ a exactement $2005$ diviseurs positifs.**

**Étape 2. Le nombre de diviseurs d'un entier.**

*Soit $N = p_1^{e_1} \times p_2^{e_2} \times \cdots \times p_r^{e_r}$, où $p_1, \ldots, p_r$ sont des nombres premiers différents et $e_1, \ldots, e_r$ des entiers strictement positifs. Alors $N$ a exactement $(e_1 + 1)(e_2 + 1) \cdots (e_r + 1)$ diviseurs positifs.*

En effet, soit $u$ un diviseur positif de $N$, et $v = \frac{N}{u}$. En décomposant $u$ et $v$ en facteurs premiers puis en multipliant, on obtient une décomposition de $N = uv$. Comme cette décomposition est unique, les nombres premiers qui apparaissent dans $u$ sont parmi $p_1, \ldots, p_r$, et l'exposant de chaque $p_i$ dans $u$ est au plus $e_i$. Ainsi
$$u = p_1^{f_1} \times p_2^{f_2} \times \cdots \times p_r^{f_r}, \qquad \text{avec } 0 \leqslant f_i \leqslant e_i \text{ pour chaque } i.$$

Inversement, un tel nombre divise $N$, puisque le quotient vaut $p_1^{e_1 - f_1} \times \cdots \times p_r^{e_r - f_r}$. Deux choix différents des exposants donnent deux nombres différents, toujours par l'unicité de la décomposition. Il y a $e_i + 1$ choix pour chaque exposant $f_i$, à savoir $0, 1, \ldots, e_i$, d'où le résultat.

**Étape 3. On applique le lemme à $n^2$.**

Si $n = 1$, alors $n^2 = 1$ n'a qu'un seul diviseur, et non $2005$. Donc $n \geqslant 2$, et l'on écrit sa décomposition en facteurs premiers
$$n = p_1^{a_1} \times \cdots \times p_r^{a_r}, \qquad \text{avec } r \geqslant 1 \text{ et } a_i \geqslant 1.$$

Alors $n^2 = p_1^{2a_1} \times \cdots \times p_r^{2a_r}$, et d'après l'étape 2,
$$(2a_1 + 1)(2a_2 + 1) \cdots (2a_r + 1) = 2005.$$

**Étape 4. On décompose $2005$.**

On a $2005 = 5 \times 401$, et $401$ est premier : il n'est divisible par aucun des nombres premiers $2, 3, 5, 7, 11, 13, 17, 19$, et $23^2 = 529 > 401$, donc il n'y a pas d'autre nombre premier à essayer.

Chaque facteur $2a_i + 1$ est un diviseur de $2005$ au moins égal à $3$. D'après l'étape 2, les diviseurs de $2005$ sont $1$, $5$, $401$ et $2005$, donc chaque facteur vaut $5$, $401$ ou $2005$. Dans tous les cas,
$$a_i = \frac{5 - 1}{2} = 2, \qquad a_i = \frac{401 - 1}{2} = 200 \qquad \text{ou} \qquad a_i = \frac{2005 - 1}{2} = 1002.$$

**Étape 5. Conclusion.**

Tous les exposants $a_i$ sont pairs. On écrit $a_i = 2b_i$, et alors
$$n = p_1^{2b_1} \times \cdots \times p_r^{2b_r} = \left(p_1^{b_1} \times \cdots \times p_r^{b_r}\right)^2.$$
Le nombre $n$ est donc le carré d'un entier.

## Going further

1. On peut aller plus loin à l'étape 4. Montre que soit $r = 1$ et $a_1 = 1002$, soit $r = 2$ et les deux exposants sont $2$ et $200$.
2. Quel est le plus petit entier $n$ pour lequel il y a exactement $2005$ couples solutions ?
3. Montre que, pour tout entier $n \geqslant 1$, le nombre de couples solutions est impair. Combien y en a-t-il avec $x < y$ ?
