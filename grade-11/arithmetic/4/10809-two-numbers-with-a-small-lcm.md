---
id: "10809"
title: "Deux nombres dont le PPCM est petit"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [ppcm, tiroirs, puissances-de-deux, partie-entiere]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 3 (arithmétique)"
  reference: "2017-10_ofm-2012-2013-envoi3.pdf, Exercices Olympiques, exercice 10 ; corrigé 2017-10_ofm-2012-2013-envoi3-corrige.pdf (solution réécrite avec le principe des tiroirs)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi3.pdf"
---

## Statement

Soit $n \geqslant 5$ un entier. On choisit $n$ entiers **deux à deux distincts** $a_1, a_2, \ldots, a_n$ parmi $1, 2, \ldots, 2n$.

Montrer qu'on peut toujours en trouver deux, $a_i$ et $a_j$ avec $i \neq j$, tels que
$$\mathrm{PPCM}(a_i, a_j) \leqslant 6\left(E\!\left(\frac{n}{2}\right) + 1\right),$$
où $E(x)$ désigne la partie entière de $x$.

*Par exemple, pour $n = 5$, on choisit cinq nombres parmi $1, \ldots, 10$, et il faut en trouver deux dont le PPCM vaut au plus $18$.*

## Hints

1. Note $k = E(n/2) + 1$. Que se passe-t-il si l'un des nombres choisis divise un autre ?
2. Prends un nombre $m$ entre $1$ et $2n$ et double-le autant de fois qu'il le faut : $m, 2m, 4m, \ldots$ Montre qu'on tombe une et une seule fois dans l'intervalle $\{n+1, n+2, \ldots, 2n\}$.
3. Associe à chaque $a_i$ le nombre de cet intervalle obtenu en le doublant. L'intervalle contient $n$ nombres. Si deux $a_i$ donnent le même nombre, l'un divise l'autre. Sinon, que peux-tu dire ?
4. Vérifie que $2k$ et $3k$ sont tous les deux dans l'intervalle $\{n+1, \ldots, 2n\}$.

## Solution

Notons $k = E(n/2) + 1$. On doit trouver deux des nombres dont le PPCM vaut au plus $6k$.

Un calcul qui servira : comme $E(n/2) > \dfrac{n}{2} - 1$, on a $k > \dfrac{n}{2}$, donc $6k > 3n > 2n$.

### Étape 1 : ramener chaque nombre dans la moitié haute

Appelons **moitié haute** l'ensemble $H = \{n + 1, n + 2, \ldots, 2n\}$. Il contient exactement $n$ nombres.

Soit $m$ un entier entre $1$ et $2n$. On regarde la liste $m, 2m, 4m, 8m, \ldots$ :

- Elle finit par dépasser $n$. Le premier terme qui dépasse $n$ est soit $m$ lui-même (et alors il est au plus $2n$), soit le double d'un terme au plus égal à $n$ (et alors il est au plus $2n$ aussi). Ce terme est donc dans $H$.
- Un seul terme de la liste est dans $H$ : deux termes différents sont dans un rapport au moins $2$, alors que dans $H$ le plus grand nombre $2n$ est moins du double du plus petit $n + 1$.

On note $f(m)$ ce terme : c'est un nombre de $H$ de la forme $2^s \times m$, avec $s \geqslant 0$. En particulier **$m$ divise $f(m)$**.

### Étape 2 : si deux nombres ont le même représentant

Supposons que $f(a_i) = f(a_j)$ pour deux indices $i \neq j$. On a $2^s a_i = 2^t a_j$, et $s \neq t$ puisque $a_i \neq a_j$. Disons $s > t$ : alors $a_j = 2^{s-t} a_i$, donc $a_i$ divise $a_j$, et
$$\mathrm{PPCM}(a_i, a_j) = a_j \leqslant 2n < 6k .$$
Le couple $(a_i, a_j)$ convient.

### Étape 3 : sinon, tous les nombres de $H$ sont atteints

Supposons maintenant que les $n$ nombres $f(a_1), \ldots, f(a_n)$ sont deux à deux distincts. Ce sont $n$ nombres différents de $H$, qui en contient exactement $n$ : **chaque nombre de $H$ est atteint une fois** (c'est le principe des tiroirs, à l'envers).

Vérifions que $2k$ et $3k$ sont dans $H$.

- $2k = 2E(n/2) + 2 \geqslant (n - 1) + 2 = n + 1$.
- Si $n = 2r$ est pair, alors $r \geqslant 3$ (car $n \geqslant 5$), $k = r + 1$, et $3k = 3r + 3 \leqslant 4r = 2n$.
- Si $n = 2r + 1$ est impair, alors $r \geqslant 2$, $k = r + 1$, et $3k = 3r + 3 \leqslant 4r + 2 = 2n$.

Donc $n + 1 \leqslant 2k < 3k \leqslant 2n$. Il existe un indice $i$ avec $f(a_i) = 2k$ et un indice $j$ avec $f(a_j) = 3k$, et $i \neq j$ puisque $2k \neq 3k$.

Alors $a_i$ divise $2k$ et $a_j$ divise $3k$. Le nombre $6k$ est un multiple de $2k$ et de $3k$, donc un multiple commun de $a_i$ et de $a_j$. Par conséquent
$$\mathrm{PPCM}(a_i, a_j) \leqslant 6k .$$

### Conclusion

Dans tous les cas, on trouve deux nombres $a_i$ et $a_j$ avec $i \neq j$ et
$$\mathrm{PPCM}(a_i, a_j) \leqslant 6\left(E\!\left(\frac{n}{2}\right) + 1\right).$$

*Pour $n = 5$ :* $k = 3$, $H = \{6, 7, 8, 9, 10\}$, et l'on trouve toujours deux nombres de PPCM au plus $18$, par exemple les antécédents de $6$ et de $9$.

## Going further

1. Montre que la borne ne peut pas être améliorée : pour $a_1, \ldots, a_n$ égaux à $n + 1, \ldots, 2n$, le plus petit PPCM de deux d'entre eux vaut exactement $6k$. Vérifie-le au moins pour $n = 5$ et $n = 6$.
2. Pourquoi faut-il $n \geqslant 5$ ? Regarde ce qui se passe pour $n = 4$ avec les nombres $5, 6, 7, 8$.
