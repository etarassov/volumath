---
id: "12235"
title: "Une suite qui atteint chaque rationnel une fois"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [suites, recurrence-forte, rationnels, fraction-irreductible, valuation, bijection]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de décembre 2015"
  reference: "2017-10_ofm-2015-2016-test-decembre.pdf, test du 2 décembre 2015, exercice 3 ; corrigé 2017-10_ofm-2015-2016-test-decembre-corrige.pdf (trois coquilles dans le corrigé : u₃ vaut 4 et non 3, u₃ₙ₊₂ vaut uₙ/(1 + uₙ) et non 1 + uₙ/(1 + uₙ), et il faut lire v₃(n + 1) au lieu de v₃(n) dans le calcul de u₃ₙ₊₃)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-test-decembre.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2015-2016-test-decembre.pdf"
---

## Statement

Pour tout entier $n \geqslant 1$, on note $v_3(n)$ le plus grand entier $k$ tel que $n$ soit divisible par $3^k$. Par exemple, $v_3(5) = 0$, $v_3(6) = 1$ et $v_3(18) = 2$.

On définit une suite par $u_1 = 2$ et, pour tout $n \geqslant 2$,

$$u_n = 4\,v_3(n) + 2 - \frac{2}{u_{n-1}},$$

tant que $u_{n-1}$ est défini et non nul.

Montrer que, pour tout nombre rationnel $q$ strictement positif, il existe un et un seul entier $n \geqslant 1$ tel que $u_n = q$.

## Hints

1. Calcule les premiers termes, jusqu'à $u_9$. Compare $u_3$, $u_6$ et $u_9$ avec $u_1$, $u_2$ et $u_3$.
2. Montre par récurrence que $u_{3n} = 2 + u_n$, puis exprime $u_{3n+1}$ et $u_{3n+2}$ à l'aide de $u_n$.
3. Dans quel intervalle se trouve chacun des nombres $u_{3n}$, $u_{3n+1}$ et $u_{3n+2}$ ? Pour un rationnel $x$ différent de $1$ et de $2$, trouve un « parent » $\varphi(x)$ tel que $x$ soit atteint autant de fois que $\varphi(x)$.
4. Écris $x = \frac{p}{q}$ sous forme irréductible, et montre que le parent $\varphi(x)$ s'écrit avec un numérateur et un dénominateur dont la somme est plus petite que $p + q$.

## Solution

**Étape 1. Les premiers termes.**

On calcule $u_2 = 2 - \frac{2}{2} = 1$, puis $u_3 = 4 + 2 - \frac{2}{1} = 4$, et ensuite

$$u_4 = \frac{3}{2}, \quad u_5 = \frac{2}{3}, \quad u_6 = 3, \quad u_7 = \frac{4}{3}, \quad u_8 = \frac{1}{2}, \quad u_9 = 6.$$

On remarque que $u_3 = 2 + u_1$, $u_6 = 2 + u_2$ et $u_9 = 2 + u_3$.

**Étape 2. Trois formules.** *Tous les termes de la suite sont définis et strictement positifs, et pour tout $n \geqslant 1$,*

$$u_{3n} = 2 + u_n, \qquad u_{3n+1} = \frac{2 + 2u_n}{2 + u_n}, \qquad u_{3n+2} = \frac{u_n}{1 + u_n}.$$

On raisonne par récurrence sur $n \geqslant 1$. L'hypothèse au rang $n$ est : les termes $u_1, \ldots, u_{3n-1}$ sont définis et strictement positifs, et, si $n \geqslant 2$, les trois formules sont vraies pour $n - 1$. Au rang $1$, cela dit seulement que $u_1 = 2$ et $u_2 = 1$ sont strictement positifs, ce qui est vrai.

Supposons l'hypothèse vraie au rang $n$, et calculons $u_{3n}$. On a $v_3(3n) = 1 + v_3(n)$, donc

$$u_{3n} = 4\,v_3(n) + 6 - \frac{2}{u_{3n-1}}.$$

- Si $n = 1$, alors $\frac{2}{u_2} = 2$.
- Si $n \geqslant 2$, alors $u_{3n-1} = u_{3(n-1)+2} = \dfrac{u_{n-1}}{1 + u_{n-1}}$, donc $\dfrac{2}{u_{3n-1}} = 2 + \dfrac{2}{u_{n-1}}$.

Dans les deux cas, on trouve $u_{3n} = 2 + u_n$. En effet, pour $n = 1$, on obtient $6 - 2 = 4 = 2 + u_1$, et pour $n \geqslant 2$,

$$u_{3n} = 4\,v_3(n) + 4 - \frac{2}{u_{n-1}} = 2 + \left(4\,v_3(n) + 2 - \frac{2}{u_{n-1}}\right) = 2 + u_n.$$

Le terme $u_n$ est bien défini et strictement positif, car $n \leqslant 3n - 1$. Donc $u_{3n} > 2$.

Les entiers $3n + 1$ et $3n + 2$ ne sont pas divisibles par $3$, donc $v_3$ y vaut $0$, et

$$u_{3n+1} = 2 - \frac{2}{2 + u_n} = \frac{2 + 2u_n}{2 + u_n} > 0, \qquad u_{3n+2} = 2 - \frac{2\,(2 + u_n)}{2 + 2u_n} = 2 - \frac{2 + u_n}{1 + u_n} = \frac{u_n}{1 + u_n} > 0.$$

L'hypothèse est donc vraie au rang $n + 1$, ce qui termine la récurrence. On remarque aussi que tous les termes sont des rationnels, puisqu'on ne fait que des additions et des divisions à partir de nombres rationnels.

**Étape 3. Où sont les termes.**

Soit $n \geqslant 1$, et posons $t = u_n > 0$. D'après l'étape 2 :

- $u_{3n} = 2 + t > 2$ ;
- $u_{3n+1} = 1 + \dfrac{t}{2 + t}$, avec $0 < \dfrac{t}{2 + t} < 1$, donc $1 < u_{3n+1} < 2$ ;
- $u_{3n+2} = \dfrac{t}{1 + t}$, donc $0 < u_{3n+2} < 1$.

Tout entier $k \geqslant 3$ s'écrit $3n$, $3n + 1$ ou $3n + 2$ avec $n \geqslant 1$. Donc, pour $k \geqslant 3$, le terme $u_k$ n'est égal ni à $1$ ni à $2$. Par conséquent, $2$ n'est atteint que pour $k = 1$, et $1$ n'est atteint que pour $k = 2$.

**Étape 4. Le parent d'un rationnel.**

Pour un rationnel $x > 0$ différent de $1$ et de $2$, on pose

- $\varphi(x) = \dfrac{x}{1 - x}$ si $0 < x < 1$ ;
- $\varphi(x) = \dfrac{2\,(x - 1)}{2 - x}$ si $1 < x < 2$ ;
- $\varphi(x) = x - 2$ si $x > 2$.

Dans chaque cas, $\varphi(x)$ est un rationnel strictement positif. Montrons que **$x$ est atteint par la suite exactement autant de fois que $\varphi(x)$**.

Prenons d'abord $0 < x < 1$. Si $u_k = x$, alors $k \geqslant 3$ d'après l'étape 3, et $k$ n'est ni de la forme $3n$ ni de la forme $3n + 1$, car ces termes dépassent $1$. Donc $k = 3n + 2$ avec $n \geqslant 1$, et $\dfrac{u_n}{1 + u_n} = x$. Cette égalité s'écrit $u_n = x\,(1 + u_n)$, soit $u_n\,(1 - x) = x$, c'est-à-dire $u_n = \varphi(x)$. Inversement, si $u_n = \varphi(x)$, le même calcul fait à l'envers donne $u_{3n+2} = x$.

Ainsi les indices $k$ tels que $u_k = x$ sont exactement les nombres $3n + 2$, où $n$ parcourt les indices tels que $u_n = \varphi(x)$. Deux valeurs de $n$ différentes donnent deux valeurs de $k$ différentes, donc il y a autant des uns que des autres.

Les deux autres cas se traitent de la même façon.

- Si $1 < x < 2$, les indices qui conviennent sont de la forme $3n + 1$, et $\dfrac{2 + 2u_n}{2 + u_n} = x$ équivaut à $2 + 2u_n = 2x + x\,u_n$, soit $u_n\,(2 - x) = 2\,(x - 1)$, c'est-à-dire $u_n = \varphi(x)$.
- Si $x > 2$, les indices qui conviennent sont de la forme $3n$, et $2 + u_n = x$ équivaut à $u_n = \varphi(x)$.

**Étape 5. Le parent est plus « simple ».**

Pour un rationnel $x > 0$, écrit sous forme irréductible $x = \frac{p}{q}$ avec $p$ et $q$ entiers strictement positifs, on pose $h(x) = p + q$. Si l'on écrit $x = \frac{a}{b}$ avec $a$ et $b$ entiers strictement positifs, mais pas forcément sous forme irréductible, alors $a = dp$ et $b = dq$ pour un entier $d \geqslant 1$, donc $h(x) \leqslant a + b$.

Montrons que $h(\varphi(x)) < h(x)$ pour tout rationnel $x > 0$ différent de $1$ et de $2$. On écrit $x = \frac{p}{q}$ sous forme irréductible.

- Si $0 < x < 1$, alors $p < q$ et $\varphi(x) = \dfrac{p}{q - p}$. Donc $h(\varphi(x)) \leqslant p + (q - p) = q < p + q$.
- Si $1 < x < 2$, alors $q < p < 2q$ et $\varphi(x) = \dfrac{2\,(p - q)}{2q - p}$, avec un numérateur et un dénominateur strictement positifs. Donc $h(\varphi(x)) \leqslant 2\,(p - q) + (2q - p) = p < p + q$.
- Si $x > 2$, alors $p > 2q$ et $\varphi(x) = \dfrac{p - 2q}{q}$. Donc $h(\varphi(x)) \leqslant (p - 2q) + q = p - q < p + q$.

**Étape 6. Conclusion.**

Montrons par récurrence forte sur l'entier $m \geqslant 2$ la propriété : *tout rationnel $x > 0$ tel que $h(x) = m$ est atteint par la suite exactement une fois.*

Soit $m \geqslant 2$, et supposons la propriété vraie pour tous les entiers compris entre $2$ et $m - 1$. Soit $x$ un rationnel strictement positif tel que $h(x) = m$.

- Si $x = 1$ ou $x = 2$, il est atteint exactement une fois d'après l'étape 3. C'est en particulier le cas de $m = 2$, car seul $x = \frac{1}{1}$ vérifie $h(x) = 2$.
- Sinon, $\varphi(x)$ est un rationnel strictement positif avec $h(\varphi(x)) < m$, d'après l'étape 5. Par hypothèse de récurrence, $\varphi(x)$ est atteint exactement une fois, donc $x$ aussi d'après l'étape 4.

La propriété est donc vraie pour tout $m \geqslant 2$. Comme tout rationnel strictement positif $q$ vérifie $h(q) \geqslant 2$, il existe un et un seul entier $n \geqslant 1$ tel que $u_n = q$.

## Going further

La preuve donne aussi une méthode pour trouver l'indice d'un rationnel : on remonte de parent en parent jusqu'à $1$ ou $2$, puis on redescend. Par exemple, $\frac{5}{7}$ a pour parent $\frac{5}{2}$, qui a pour parent $\frac{1}{2}$, qui a pour parent $1 = u_2$. En redescendant, $\frac{1}{2} = u_8$, puis $\frac{5}{2} = u_{24}$, puis $\frac{5}{7} = u_{74}$. Trouve de la même façon l'indice de $\frac{3}{5}$.

L'arbre de Calkin et Wilf est une autre façon célèbre de ranger tous les rationnels strictement positifs, chacun une seule fois. Il repose sur la même idée : chaque fraction a un parent plus simple, et l'on remonte jusqu'à $\frac{1}{1}$.
