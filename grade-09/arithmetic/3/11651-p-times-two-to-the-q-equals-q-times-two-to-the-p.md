---
id: "11651"
title: "p fois 2 puissance q égale q fois 2 puissance p"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [puissances-de-2, equation, entiers, comparaison, suite-decroissante]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 5 (pot-pourri)"
  reference: "2018-02_pofm-2017-2018-envoi5.pdf, exercices communs, exercice 6 ; corrigé 2018-06_pofm_2017-2018-envoi5-corrige.pdf (le corrigé passe par la décomposition en facteurs premiers ; la solution ci-dessous compare les nombres n/2ⁿ)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/02/pofm-2017-2018-envoi5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-02_pofm-2017-2018-envoi5.pdf"
---

## Statement

Trouver tous les entiers strictement positifs $p$ et $q$ tels que

$$p \times 2^q = q \times 2^p.$$

## Hints

1. Il y a des solutions évidentes. Lesquelles ?
2. Divise les deux membres par $2^p \times 2^q$ : l'équation devient une égalité entre deux nombres de la même forme, l'un qui ne dépend que de $p$, l'autre que de $q$.
3. Calcule les premières valeurs de $\dfrac{n}{2^n}$ pour $n = 1, 2, 3, 4, 5$. Que remarques-tu ?
4. Compare $\dfrac{n+1}{2^{n+1}}$ et $\dfrac{n}{2^n}$ : leur quotient vaut $\dfrac{n+1}{2n}$.

## Solution

**Étape 1 : séparer $p$ et $q$.** Les nombres $2^p$ et $2^q$ ne sont pas nuls. En divisant les deux membres par $2^p \times 2^q$, l'équation devient

$$\frac{p}{2^p} = \frac{q}{2^q}.$$

Pour tout entier $n \geqslant 1$, on pose $u_n = n/2^n$. On cherche donc les entiers $p$ et $q$ tels que $u_p = u_q$.

**Étape 2 : les premières valeurs.**

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ |
|---|---|---|---|---|---|
| $u_n$ | $1/2$ | $2/4 = 1/2$ | $3/8$ | $4/16 = 1/4$ | $5/32$ |

On a $u_1 = u_2$, puis les valeurs semblent diminuer.

**Étape 3 : à partir de $n = 2$, les nombres $u_n$ diminuent strictement.** Pour tout $n \geqslant 1$,

$$\frac{u_{n+1}}{u_n} = \frac{n+1}{2^{n+1}} \times \frac{2^n}{n} = \frac{n+1}{2n}.$$

Si $n \geqslant 2$, alors $n + 1 < 2n$ (car $2n - (n+1) = n - 1 > 0$), donc ce quotient est strictement plus petit que $1$, et $u_{n+1} < u_n$. Ainsi

$$u_1 = u_2 > u_3 > u_4 > u_5 > \cdots$$

**Étape 4 : les solutions.** Si $p = q$, l'égalité est vraie : tous les couples $(p, p)$ sont des solutions.

Supposons $p \neq q$, et par exemple $p < q$ (l'autre cas est symétrique).

- Si $p \geqslant 2$, alors $2 \leqslant p < q$, et d'après l'étape 3, $u_q < u_p$ : ce n'est pas une solution.
- Si $p = 1$, alors $u_q = u_1 = 1/2$ avec $q \geqslant 2$. Or $u_2 = 1/2$, et pour $q \geqslant 3$, $u_q < u_2 = 1/2$. Donc $q = 2$.

On vérifie : $1 \times 2^2 = 4$ et $2 \times 2^1 = 4$.

**Conclusion : les solutions sont tous les couples $(p, p)$ avec $p \geqslant 1$, ainsi que $(1, 2)$ et $(2, 1)$.**

## Going further

Le corrigé original raisonne autrement, avec les diviseurs. Si $p \neq q$, par exemple $p > q$, l'égalité $p \times 2^q = q \times 2^p$ montre que $p$ et $q$ ont la même partie impaire. Donc $p = 2^e q$ avec $e \geqslant 1$, et l'équation devient $e + q = 2^e q$, c'est-à-dire $e = q\,(2^e - 1)$. Comme $q \geqslant 1$, cela force $e \geqslant 2^e - 1$, ce qui n'arrive que pour $e = 1$, et alors $q = 1$, $p = 2$.

Et si l'on cherche les réels $x, y > 0$ tels que $x \times 2^y = y \times 2^x$ ? Il y a alors beaucoup plus de solutions avec $x \neq y$, par exemple $x = 1$ et $y = 2$, mais aussi des couples non entiers. C'est le même phénomène que pour la célèbre équation $x^y = y^x$, dont les seules solutions entières avec $x \neq y$ sont $2^4 = 4^2$.
