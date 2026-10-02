---
id: "11059"
title: "Le reste de a^(2ⁿ) par pⁿ ne dépend pas de n"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [puissances, restes, factorisation, valuation, nombres-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 3 (arithmétique)"
  reference: "2024-01_Sujet-envoi-3-2023-2024.pdf, Exercices Juniors, exercice 8 ; corrigé 2024-02_Corrige-envoi-arithmetique-2023-2024.pdf. Les exposants sont 2 puissance n et 2 puissance m (vérifié sur la page rendue). Le corrigé donne aussi une solution par le lemme LTE ; la factorisation suffit."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/01/Sujet-envoi-3-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-01_Sujet-envoi-3-2023-2024.pdf"
---

## Statement

Déterminer tous les couples $(a, p)$ d'entiers strictement positifs, avec $p$ premier, qui ont la propriété suivante.

> Pour tous entiers strictement positifs $m$ et $n$, le reste de la division euclidienne de $a^{2^n}$ par $p^n$ n'est pas nul, et il est égal au reste de la division euclidienne de $a^{2^m}$ par $p^m$.

Autrement dit, les restes de $a^2$ par $p$, de $a^4$ par $p^2$, de $a^8$ par $p^3$, de $a^{16}$ par $p^4$, etc., sont tous égaux, et ils ne sont pas nuls.

## Hints

1. Essaie $a = 2$ et $p = 3$, puis $a = 3$ et $p = 2$. Calcule les trois premiers restes.
2. Appelle $r$ le reste commun. Écris $a^2 = p\,u + r$ et $a^4 = p^2\,v + r$, puis calcule $a^4 = (a^2)^2$ d'une autre façon. Montre que $p$ divise $r^2 - r$.
3. Tu dois trouver $r = 1$. Factorise alors $a^{2^n} - 1$ en utilisant plusieurs fois $x^2 - 1 = (x - 1)(x + 1)$.
4. Si $p$ est impair, quel est le reste de $a^{2^j} + 1$ dans la division par $p$ ?

## Solution

**Réponse :** les couples qui conviennent sont les couples $(1, p)$ avec $p$ premier quelconque, et les couples $(a, 2)$ avec $a$ impair.

Dans toute la solution, on note $r$ le reste de $a^2$ dans la division par $p$. La propriété dit que tous les restes de l'énoncé valent $r$, et que $r \neq 0$. Comme c'est un reste dans la division par $p$, on a $1 \leqslant r \leqslant p - 1$.

**Étape 1 : le reste commun vaut 1.**

On peut écrire $a^2 = p\,u + r$ (cas $n = 1$) et $a^4 = p^2\,v + r$ (cas $n = 2$), avec $u$ et $v$ entiers. En élevant la première égalité au carré :
$$a^4 = (p\,u + r)^2 = p\,(p\,u^2 + 2\,u\,r) + r^2 .$$
En soustrayant les deux expressions de $a^4$, on obtient
$$r^2 - r = p^2\,v - p\,(p\,u^2 + 2\,u\,r),$$
qui est un multiple de $p$. Donc le nombre premier $p$ divise $r\,(r - 1)$, et il divise donc $r$ ou $r - 1$.

Or $1 \leqslant r \leqslant p - 1$, donc $p$ ne divise pas $r$, et $0 \leqslant r - 1 \leqslant p - 2$, donc $p$ ne divise $r - 1$ que si $r - 1 = 0$. Ainsi $r = 1$.

**Étape 2 : reformulation.**

D'après l'étape 1, si $(a, p)$ convient, alors pour tout $n \geqslant 1$ le reste de $a^{2^n}$ par $p^n$ vaut $1$, c'est-à-dire
$$p^n \text{ divise } a^{2^n} - 1 \qquad \text{pour tout } n \geqslant 1. \qquad (\star)$$

Réciproquement, si $(\star)$ est vraie, le reste de $a^{2^n}$ par $p^n$ vaut $1$ pour tout $n$ (car $p^n \geqslant 2$) : il n'est pas nul et ne dépend pas de $n$, donc le couple convient.

Il reste à trouver les couples qui vérifient $(\star)$.

**Étape 3 : une factorisation.**

En appliquant plusieurs fois $x^2 - 1 = (x - 1)(x + 1)$ :
$$a^{2^n} - 1 = \left(a^{2^{n-1}} - 1\right)\left(a^{2^{n-1}} + 1\right) = \cdots = (a^2 - 1)(a^2 + 1)(a^4 + 1)\cdots\left(a^{2^{n-1}} + 1\right),$$
et aussi $a^2 - 1 = (a - 1)(a + 1)$. Par exemple $a^8 - 1 = (a - 1)(a + 1)(a^2 + 1)(a^4 + 1)$.

**Étape 4 : le cas $p$ impair.**

Supposons $p$ impair et $(\star)$ vraie. Avec $n = 1$, $p$ divise $a^2 - 1$ : le nombre $a^2$ a pour reste $1$ dans la division par $p$.

Pour $j \geqslant 1$, le nombre $a^{2^j}$ est un produit de facteurs égaux à $a^2$, qui ont tous pour reste $1$ ; il a donc lui aussi pour reste $1$. Par conséquent $a^{2^j} + 1$ a pour reste $2$ dans la division par $p$. Comme $p \geqslant 3$, le nombre $p$ ne divise aucun des facteurs $a^2 + 1, a^4 + 1, \ldots, a^{2^{n-1}} + 1$.

Dans la factorisation de l'étape 3, toutes les puissances de $p$ viennent donc du seul facteur $a^2 - 1$. Si $a \geqslant 2$, ce facteur n'est pas nul ; notons $e$ l'exposant de $p$ dans sa décomposition en facteurs premiers. Alors, pour tout $n$, l'exposant de $p$ dans $a^{2^n} - 1$ vaut aussi $e$. Pour $n = e + 1$, le nombre $p^{e+1}$ ne divise pas $a^{2^{e+1}} - 1$, ce qui contredit $(\star)$.

Donc $a = 1$. Réciproquement, $a = 1$ convient pour tout $p$, car $1^{2^n} - 1 = 0$ est divisible par $p^n$.

**Étape 5 : le cas $p = 2$.**

Avec $n = 1$, le nombre $2$ divise $a^2 - 1$, donc $a$ est impair.

Réciproquement, soit $a$ impair. Dans la factorisation
$$a^{2^n} - 1 = (a - 1)(a + 1)(a^2 + 1)(a^4 + 1)\cdots\left(a^{2^{n-1}} + 1\right),$$
il y a $n + 1$ facteurs, et ils sont tous pairs, car chacun est un nombre impair plus ou moins $1$. Donc $2^{n+1}$ divise $a^{2^n} - 1$, et à plus forte raison $2^n$ le divise : $(\star)$ est vraie.

**Conclusion.** Les couples cherchés sont les $(1, p)$ avec $p$ premier quelconque et les $(a, 2)$ avec $a$ impair. Par exemple, pour $a = 3$ et $p = 2$, les restes de $9$ par $2$, de $81$ par $4$ et de $6561$ par $8$ valent tous $1$. Pour $a = 2$ et $p = 3$, le reste de $4$ par $3$ vaut $1$ mais celui de $16$ par $9$ vaut $7$.

## Going further

Montrer que si $a$ est impair, alors $a^{2^n} - 1$ est même divisible par $2^{n+2}$ pour tout $n \geqslant 1$.

*Réponse :* les deux premiers facteurs $a - 1$ et $a + 1$ sont deux nombres pairs consécutifs, donc l'un d'eux est un multiple de $4$ et leur produit est un multiple de $8$. Les $n - 1$ autres facteurs sont pairs. Au total, $2^{3 + (n-1)} = 2^{n+2}$ divise le produit.
