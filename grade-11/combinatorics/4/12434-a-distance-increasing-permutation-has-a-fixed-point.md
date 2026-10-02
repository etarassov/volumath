---
id: "12434"
title: "Une permutation qui ne rapproche jamais deux points a un point fixe"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 50
tags: [permutation, cycles, parite, coordonnees-entieres, carres, distance]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 9 janvier 2019"
  reference: "2019-01_Test-09-01.pdf, exercices du groupe Senior, exercice 5 ; corrigé 2019-01_Test-09-01-Corrige.pdf (décomposition en cycles détaillée, congruences remplacées par des restes)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/01/Test-09-01.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2019-01_Test-09-01.pdf"
---

## Statement

Soit $n$ un entier impair, et soit $S$ un ensemble de $n$ points du plan dont les deux coordonnées
sont des nombres entiers. On considère une fonction $f$ qui à chaque point de $S$ associe un point
de $S$, de telle sorte que chaque point de $S$ soit l'image d'exactement un point (on dit que $f$
est une **permutation** de $S$). On suppose de plus que, pour tous points $A$ et $B$ de $S$,
$$f(A)f(B) \geqslant AB,$$
c'est-à-dire que $f$ ne rapproche jamais deux points.

Montrer qu'il existe un point $X$ de $S$ tel que $f(X) = X$.

## Hints

1. Pars d'un point $X$ et applique $f$ encore et encore : $X$, $f(X)$, $f(f(X))$, … Montre que
   tu finis par revenir à $X$.
2. L'ensemble $S$ se découpe ainsi en « cycles ». Comme $n$ est impair, l'un d'eux a un nombre
   impair de points. Il suffit de montrer qu'un tel cycle ne peut pas avoir $3$ points ou plus.
3. Dans un cycle $P_1 \to P_2 \to \cdots \to P_m \to P_1$, compare les longueurs $P_1P_2$,
   $P_2P_3$, …, $P_mP_1$.
4. Il reste à voir qu'une ligne brisée fermée, à sommets de coordonnées entières, dont tous les
   côtés ont la même longueur, a un nombre pair de côtés. Regarde la parité des coordonnées des
   vecteurs côtés, et le reste d'un carré dans la division par $4$.

## Solution

On note $f^k(X)$ le point obtenu en appliquant $k$ fois $f$ à partir de $X$ (avec $f^0(X) = X$).
Comme chaque point de $S$ est l'image d'exactement un point, deux points différents ont des images
différentes, et chaque point $Y$ a un unique **antécédent**, le point dont $Y$ est l'image.

### Étape 1 : $S$ se découpe en cycles

Soit $X$ un point de $S$. Les points $f^0(X), f^1(X), f^2(X), \ldots$ sont dans l'ensemble fini
$S$, donc deux d'entre eux sont égaux : $f^i(X) = f^j(X)$ avec $i < j$. Si $i \geqslant 1$, les
points $f^{i-1}(X)$ et $f^{j-1}(X)$ ont la même image, donc ils sont égaux. En recommençant, on
arrive à $X = f^{j-i}(X)$ : **en partant de $X$, on revient à $X$.**

Soit $m \geqslant 1$ le premier entier tel que $f^m(X) = X$. Les points
$X, f(X), \ldots, f^{m-1}(X)$ sont alors distincts, et on les appelle le **cycle** de $X$ ; il a
$m$ points. Ce cycle contient l'antécédent de chacun de ses points : celui de $f^i(X)$ est
$f^{i-1}(X)$, et celui de $X$ est $f^{m-1}(X)$.

Deux cycles sont égaux ou n'ont aucun point commun. En effet, si le cycle de $Y$ contient un point
du cycle de $X$, il contient aussi son antécédent, puis l'antécédent de celui-ci, et ainsi de
suite jusqu'à $X$ ; il contient donc $X$ et tous les $f^k(X)$, c'est-à-dire le cycle de $X$. De
même, le cycle de $X$ contient celui de $Y$.

L'ensemble $S$ est donc découpé en cycles. La somme de leurs nombres de points vaut $n$, qui est
impair, donc **au moins un cycle a un nombre impair $m$ de points.** Si $m = 1$, le point $X$ de
ce cycle vérifie $f(X) = X$, et c'est fini. Supposons donc que $m \geqslant 3$ est impair, et
cherchons une contradiction.

### Étape 2 : tous les côtés du cycle ont la même longueur

Notons $P_1 = X$, $P_2 = f(P_1)$, …, $P_m = f(P_{m-1})$, et $f(P_m) = P_1$. L'hypothèse
appliquée aux points $P_i$ et $P_{i+1}$ donne $P_{i+1}P_{i+2} \geqslant P_iP_{i+1}$, et appliquée
à $P_m$ et $P_1$ elle donne $P_1P_2 \geqslant P_mP_1$. Ainsi
$$P_1P_2 \leqslant P_2P_3 \leqslant \cdots \leqslant P_{m-1}P_m \leqslant P_mP_1 \leqslant P_1P_2.$$
Le premier et le dernier nombre sont égaux, donc **toutes ces longueurs sont égales**, à un nombre
$d > 0$ (les points sont distincts).

### Étape 3 : une ligne brisée fermée impossible

Notons $(a_i, b_i)$ les coordonnées du vecteur $\overrightarrow{P_iP_{i+1}}$ (avec $P_{m+1} = P_1$).
Ce sont des entiers, et :

- $a_i^2 + b_i^2 = d^2$ pour tout $i$ : tous les vecteurs ont la même longueur ;
- $a_1 + a_2 + \cdots + a_m = 0$ et $b_1 + b_2 + \cdots + b_m = 0$, car en suivant tous les
  vecteurs on revient au point de départ.

**On peut supposer qu'une des coordonnées est impaire.** Si les $2m$ nombres $a_i$, $b_i$ sont
tous pairs, remplaçons-les tous par leur moitié : ce sont encore des entiers, les deux sommes
restent nulles et les vecteurs ont encore tous la même longueur. On recommence tant que tous sont
pairs. Cela s'arrête, car les vecteurs ne sont pas nuls et un entier non nul ne peut pas être
divisé par $2$ indéfiniment.

**Les carrés dans la division par 4.** Le carré d'un nombre pair $2k$ est $4k^2$, de reste $0$.
Le carré d'un nombre impair $2k + 1$ est $4k^2 + 4k + 1$, de reste $1$. Donc $a^2 + b^2$ a pour
reste $0$ si $a$ et $b$ sont pairs, $1$ si un seul est impair, $2$ si les deux sont impairs.

Le vecteur qui a une coordonnée impaire a une longueur au carré de reste $1$ ou $2$. Comme tous
les vecteurs ont la même longueur au carré, ils ont tous ce même reste.

- **Reste 1.** Chaque vecteur a exactement une coordonnée impaire, donc chaque $a_i + b_i$ est
  impair. La somme des $m$ nombres $a_i + b_i$ vaut $0 + 0 = 0$, qui est pair. Mais une somme d'un
  nombre impair de nombres impairs est impaire. Contradiction.
- **Reste 2.** Chaque $a_i$ est impair, et leur somme vaut $0$. Même contradiction.

Un cycle à $m \geqslant 3$ points, avec $m$ impair, est donc impossible.

### Conclusion

Le cycle qui a un nombre impair de points n'a qu'un seul point $X$ : **on a $f(X) = X$.**

## Going further

1. Le résultat reste-t-il vrai si $n$ est pair ?
2. Reste-t-il vrai si on ne demande plus que les coordonnées soient entières ? (Pense à un
   triangle équilatéral.)
