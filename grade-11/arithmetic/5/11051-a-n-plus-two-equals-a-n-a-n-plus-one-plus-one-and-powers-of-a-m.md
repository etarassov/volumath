---
id: "11051"
title: "aₙ₊₂ = aₙaₙ₊₁ + 1 : aₘᵐ divise un aₙⁿ"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [suite-recurrente, restes, periodicite, tiroirs, nombres-premiers, contre-exemple]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 3 (arithmétique)"
  reference: "2023-01_Sujet-envoi-3.pdf, Exercices Seniors, exercice 17 ; corrigé 2023-03_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-01_Sujet-envoi-3.pdf"
---

## Statement

Soit $(a_n)_{n \geqslant 1}$ une suite d'entiers strictement positifs telle que $a_1$ et $a_2$ soient
premiers entre eux et que, pour tout $n \geqslant 1$,

$$a_{n+2} = a_n a_{n+1} + 1 .$$

1. Montrer que pour tout entier $m > 1$, il existe un entier $n > m$ tel que $a_m^m$ divise $a_n^n$.
2. Le résultat est-il encore vrai lorsque $m = 1$ ?

## Hints

1. Si $n$ est très grand, et si chaque facteur premier de $a_m$ divise $a_n$, alors $a_m^m$ divise $a_n^n$. Pourquoi ? Il suffit donc de trouver de tels $n$.
2. Soit $p$ un facteur premier de $a_m$. Quel est le reste de $a_{m+1}$ dans la division par $p$ ? C'est ici que $m > 1$ sert.
3. Les restes de $a_m, a_{m+1}, a_{m+2}, \ldots$ dans la division par $p$ forment une suite qui ne dépend que de $p$ : elle commence par $0, 1$. Montre qu'elle revient à $0$, puis qu'elle est périodique. Regarde les couples de restes consécutifs, qui sont en nombre fini.
4. Pour la question 2, essaie $a_1 = 155 = 5 \times 31$ et $a_2 = 29$, et regarde quels termes sont divisibles par $5$ et lesquels par $31$.

## Solution

**Notation.** Pour un entier $X \geqslant 1$ et un nombre premier $p$, on note $e_p(X)$ l'exposant de $p$
dans la décomposition de $X$ en facteurs premiers. Tous les $a_n$ sont des entiers strictement positifs.

### Question 1

Soit $m > 1$. Si $a_m = 1$, il n'y a rien à démontrer. Sinon, soit $p$ un facteur premier de $a_m$.

**Étape 1 : la suite des restes.** Comme $m - 1 \geqslant 1$, on peut écrire
$a_{m+1} = a_{m-1} a_m + 1$, et ce nombre a pour reste $1$ dans la division par $p$. (C'est le seul endroit où
l'on utilise $m > 1$.) Notons $w_k$ le reste de $a_{m+k}$ dans la division par $p$. Alors $w_0 = 0$,
$w_1 = 1$, et pour tout $k \geqslant 0$,

$$w_{k+2} = \text{le reste de } w_k w_{k+1} + 1 \text{ dans la division par } p ,$$

car le reste d'une somme ou d'un produit se calcule à partir des restes. Le couple $(w_k, w_{k+1})$
détermine donc toute la suite à partir du rang $k$.

**Étape 2 : la suite $(w_k)$ est périodique.** Les couples $(w_k, w_{k+1})$ ne peuvent prendre que $p^2$
valeurs, donc deux d'entre eux sont égaux. Choisissons $i < j$ tels que $(w_i, w_{i+1}) = (w_j, w_{j+1})$,
avec $i$ le plus petit possible. Montrons que $i = 0$.

Supposons $i \geqslant 1$.

* Si $w_i = 0$, alors $w_{i+1}$ est le reste de $w_{i-1} \times 0 + 1$, c'est-à-dire $1$. Donc
  $(w_i, w_{i+1}) = (0, 1) = (w_0, w_1)$ : le couple du rang $0$ se répète au rang $i$, ce qui contredit le
  choix de $i$ (on pouvait prendre $0$ et $i$).
* Si $w_i \neq 0$ : comme $w_{i+1} = w_{j+1}$, le nombre $p$ divise
  $(w_{i-1} w_i + 1) - (w_{j-1} w_j + 1) = w_i (w_{i-1} - w_{j-1})$, puisque $w_i = w_j$. Comme $p$ est premier
  et ne divise pas $w_i$ (qui est entre $1$ et $p - 1$), il divise $w_{i-1} - w_{j-1}$. Ce sont deux restes
  entre $0$ et $p - 1$, donc $w_{i-1} = w_{j-1}$. Ainsi $(w_{i-1}, w_i) = (w_{j-1}, w_j)$, ce qui contredit
  encore le choix de $i$.

Donc $i = 0$ : $(w_j, w_{j+1}) = (w_0, w_1)$ avec $j \geqslant 1$. Comme chaque couple détermine la suite,
on a $w_{k+j} = w_k$ pour tout $k$. Notons $L_p = j$ cette période. En particulier, $w_{tL_p} = w_0 = 0$ :
**$p$ divise $a_{m + tL_p}$ pour tout entier $t \geqslant 0$.**

**Étape 3 : tous les facteurs premiers à la fois.** Soit $L$ le produit des périodes $L_p$, pour tous les
facteurs premiers $p$ de $a_m$. Pour tout $t \geqslant 0$, $tL$ est un multiple de chaque $L_p$, donc chaque
facteur premier de $a_m$ divise $a_{m+tL}$.

**Étape 4 : les exposants.** Prenons $t \geqslant 1$ assez grand pour que $n = m + tL$ vérifie
$n \geqslant m\,a_m$. Alors $n > m$. Soit $p$ un facteur premier de $a_m$. Comme $p^{e_p(a_m)} \leqslant a_m$
et $p \geqslant 2$, on a $e_p(a_m) < 2^{e_p(a_m)} \leqslant a_m$. Et comme $p$ divise $a_n$,

$$e_p(a_n^n) = n\,e_p(a_n) \geqslant n \geqslant m\,a_m > m\,e_p(a_m) = e_p(a_m^m) .$$

Ceci vaut pour tout facteur premier de $a_m$, donc $a_m^m$ divise $a_n^n$.

### Question 2

**Non, le résultat est faux pour $m = 1$.** Prenons $a_1 = 155 = 5 \times 31$ et $a_2 = 29$, qui sont bien
premiers entre eux. Il faudrait trouver $n > 1$ avec $155$ divisant $a_n^n$, donc avec $5$ et $31$
divisant tous les deux $a_n$. Montrons que cela n'arrive jamais.

Remarquons d'abord que la suite d'entiers $0, 1, 1, 2, 3, 7, 22, 155$ vérifie la même relation (chaque
terme est le produit des deux précédents plus $1$), et que son terme $155$ est divisible par $5$ et par
$31$.

**Divisibilité par 5.** Les restes de $a_1, a_2, a_3, a_4$ sont $0, 4, 1$, puis $4 \times 1 + 1 = 5$,
c'est-à-dire $0$. Donc $5$ divise $a_4$, et $a_5$ a pour reste $1$. À partir du rang $4$, les restes suivent
ceux de $0, 1, 1, 2, 3, 7, 22, 155$, soit $0, 1, 1, 2, 3, 2, 2, 0$, puis cela recommence. Pour $n > 1$,
le nombre $5$ divise donc $a_n$ exactement quand $n = 4, 11, 18, \ldots$, c'est-à-dire quand $n$ s'écrit
$7t + 4$.

**Divisibilité par 31.** Les restes de $a_1, a_2, a_3, a_4, a_5$ sont $0, 29, 1$, puis le reste de
$29 \times 1 + 1 = 30$, soit $30$, puis le reste de $1 \times 30 + 1 = 31$, soit $0$. Donc $31$ divise $a_5$.
À partir du rang $5$, les restes suivent ceux de $0, 1, 1, 2, 3, 7, 22, 155$, soit
$0, 1, 1, 2, 3, 7, 22, 0$, puis cela recommence. Pour $n > 1$, le nombre $31$ divise donc $a_n$ exactement
quand $n$ s'écrit $7t + 5$.

Un entier ne peut pas s'écrire à la fois $7t + 4$ et $7t' + 5$. Donc, pour $n > 1$, $a_n$ n'est jamais
divisible à la fois par $5$ et par $31$, et $a_1 = 155$ ne divise aucun $a_n^n$ avec $n > 1$.

**Conclusion.** Pour $m > 1$, il existe toujours $n > m$ tel que $a_m^m$ divise $a_n^n$. Pour $m = 1$,
c'est faux en général.

**Remarque.** L'hypothèse « $a_1$ et $a_2$ premiers entre eux » ne sert pas dans la question 1. Elle rend
seulement la question 2 plus intéressante : sans elle, on pourrait prendre $a_2$ multiple de $a_1$, et
alors $n = 2$ conviendrait.

## Going further

Montrer que deux termes consécutifs $a_n$ et $a_{n+1}$ sont toujours premiers entre eux.
