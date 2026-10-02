---
id: "12658"
title: "Trois produits qui valent une factorielle moins un"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [factorielles, restes, carres, division-euclidienne, equations]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test du 18 mai 2022"
  reference: "2022-07_Enonce-Web-Test-5.pdf, exercice 1 (junior) ; corrigé 2022-06_Corrige-Web-Test-5.pdf. Le corrigé écrit « d ≠ 3 », ce qui doit se lire « 3 ne divise pas x! »."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/07/Énoncé-Web-Test-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2022-07_Enonce-Web-Test-5.pdf"
---

## Statement

Pour tout entier $n \geqslant 1$, on note $n!$ le produit $1 \times 2 \times \cdots \times n$. Par exemple, $1! = 1$, $2! = 2$, $3! = 6$ et $4! = 24$.

Trouver tous les entiers $a$, $b$ et $c$, au moins égaux à $1$, pour lesquels il existe des entiers $x$, $y$ et $z$, au moins égaux à $1$, tels que
$$x! = ab + 1, \qquad y! = bc + 1, \qquad z! = ca + 1.$$

## Hints

1. Essaie $a = b = 1$. Que peut valoir $c$ ?
2. Si $x \geqslant 3$, le nombre $x!$ est un multiple de $3$. Quel est alors le reste de $ab$ dans la division par $3$ ?
3. Suppose que $x$, $y$ et $z$ valent tous au moins $3$. Quel est le reste du produit $(ab)(bc)(ca)$ dans la division par $3$ ? Remarque que ce produit est un carré. Quels restes peut avoir un carré ?
4. L'un des trois nombres $ab + 1$, $bc + 1$, $ca + 1$ vaut donc $1!$ ou $2!$. Lequel de ces deux cas est possible, et qu'en déduis-tu ?

## Solution

On va montrer que **les triplets cherchés sont $(1, 1, n! - 1)$, $(1, n! - 1, 1)$ et $(n! - 1, 1, 1)$, pour un entier $n \geqslant 2$.**

**Étape 1 : la condition et ses symétries.** La condition dit exactement que chacun des trois nombres $ab + 1$, $bc + 1$ et $ca + 1$ est une factorielle. Si l'on échange les rôles de $a$, $b$ et $c$, ces trois nombres sont simplement permutés entre eux. Un triplet qui convient reste donc solution quand on change l'ordre de ses trois nombres.

*Les triplets annoncés conviennent.* Soit $n \geqslant 2$ et $(a, b, c) = (1, 1, n! - 1)$. On a bien $c \geqslant 1$, car $n! \geqslant 2$. Ensuite
$$ab + 1 = 2 = 2!, \qquad bc + 1 = n!, \qquad ca + 1 = n!,$$
donc $x = 2$ et $y = z = n$ conviennent. D'après la remarque précédente, $(1, n! - 1, 1)$ et $(n! - 1, 1, 1)$ conviennent aussi.

**Étape 2 : deux faits sur les restes dans la division par $3$.**

- *(R1) Un produit de trois entiers qui ont tous le reste $2$ a lui aussi le reste $2$.* Si $u = 3p + 2$ et $v = 3q + 2$, alors
$$uv = 9pq + 6p + 6q + 4 = 3(3pq + 2p + 2q + 1) + 1,$$
donc $uv$ a le reste $1$. Si de plus $w = 3r + 2$, en écrivant $uv = 3s + 1$, on obtient
$$uvw = (3s + 1)(3r + 2) = 9sr + 6s + 3r + 2 = 3(3sr + 2s + r) + 2,$$
qui a le reste $2$.
- *(R2) Le carré d'un entier a le reste $0$ ou $1$, jamais $2$.* On regarde le reste de l'entier :
$$(3k)^2 = 3 \times 3k^2, \qquad (3k + 1)^2 = 3(3k^2 + 2k) + 1, \qquad (3k + 2)^2 = 3(3k^2 + 4k + 1) + 1.$$

**Étape 3 : l'une des trois factorielles vaut $1!$ ou $2!$.** Supposons au contraire que $x$, $y$ et $z$ valent tous au moins $3$. Alors chacun des produits $x!$, $y!$ et $z!$ contient le facteur $3$ : ce sont des multiples de $3$. Or un multiple de $3$ moins $1$ s'écrit $3m - 1 = 3(m - 1) + 2$, et a donc le reste $2$. Ainsi les trois nombres
$$ab = x! - 1, \qquad bc = y! - 1, \qquad ca = z! - 1$$
ont tous le reste $2$ dans la division par $3$. D'après (R1), leur produit a le reste $2$. Mais ce produit est un carré :
$$(ab) \times (bc) \times (ca) = a^2 b^2 c^2 = (abc)^2.$$
D'après (R2), il ne peut pas avoir le reste $2$. C'est une contradiction.

Donc l'un au moins des entiers $x$, $y$, $z$ vaut $1$ ou $2$.

**Étape 4 : on termine.** D'après l'étape 1, quitte à changer l'ordre de $a$, $b$ et $c$, on peut supposer que c'est $x$ qui vaut $1$ ou $2$. Comme $a$ et $b$ valent au moins $1$, on a $x! = ab + 1 \geqslant 2$, donc $x \neq 1$. Ainsi $x = 2$, puis $ab = 2! - 1 = 1$, ce qui force $a = b = 1$.

Les deux autres égalités deviennent alors $y! = c + 1$ et $z! = c + 1$. Donc $c = y! - 1$, et comme $c \geqslant 1$, on a $y \geqslant 2$. Le triplet est $(1, 1, y! - 1)$ avec $y \geqslant 2$, à l'ordre près.

**Conclusion.** **Les triplets $(a, b, c)$ qui conviennent sont $(1, 1, n! - 1)$ et les deux triplets obtenus en changeant l'ordre, $(1, n! - 1, 1)$ et $(n! - 1, 1, 1)$, pour un entier $n \geqslant 2$.** Par exemple $(1, 1, 1)$ pour $n = 2$, $(1, 1, 5)$ pour $n = 3$ et $(1, 1, 23)$ pour $n = 4$.

## Going further

- Le corrigé officiel écrit le même raisonnement avec les congruences : $ab$, $bc$ et $ca$ sont tous congrus à $-1$ modulo $3$, donc $(abc)^2 \equiv (-1)^3 = -1 \pmod 3$, ce qui est impossible car $-1$ n'est pas le reste d'un carré modulo $3$.
- Pourquoi le nombre $3$ ? On cherche un nombre $d$ qui divise toutes les factorielles assez grandes, et tel que « un multiple de $d$ moins $1$ » ne soit jamais le reste d'un carré. Le nombre $2$ ne marche pas, car un carré peut être impair. Le nombre $3$ est le plus petit qui marche, et il ne laisse que les cas $x \leqslant 2$ à examiner.
- Le commentaire des correcteurs note que beaucoup d'élèves ont supposé que $n! - 1$ était toujours un nombre premier. C'est faux : $5! - 1 = 119 = 7 \times 17$. La solution ci-dessus n'a jamais besoin de savoir si $n! - 1$ est premier.
