---
id: "12613"
title: "Des permutations comptées par Fibonacci"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [permutations, denombrement, fibonacci, suite-recurrente, recurrence, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 14 et 21 février 2021"
  reference: "2021-12_Enonce-Test-3-2020.pdf, exercice 4 (junior) et exercice 8 (EGMO), le même énoncé ; corrigé 2021-03_Corrige-Test-3-Web.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Enoncé-Test-3-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-12_Enonce-Test-3-2020.pdf"
---

## Statement

Soit $(F_k)_{k \geqslant 0}$ la suite de Fibonacci, définie par $F_0 = 0$, $F_1 = 1$ et
$F_{k+2} = F_k + F_{k+1}$ pour tout entier $k \geqslant 0$.

Soit $n \geqslant 1$ un entier. Démontrer qu'il existe exactement $F_{n+1}$ façons de ranger les
nombres $1, 2, \ldots, n$ dans un certain ordre $(a_1, a_2, \ldots, a_n)$ de sorte que
$$a_1 \leqslant 2a_2 \leqslant 3a_3 \leqslant \cdots \leqslant n\,a_n .$$

## Hints

1. Compte à la main les bons rangements pour $n = 1$, $n = 2$ et $n = 3$. Compare avec
   $F_2$, $F_3$, $F_4$.
2. Où peut se trouver le plus grand nombre $n$ dans un bon rangement ? Regarde les exemples.
3. Montre d'abord que, dans un bon rangement, $a_k \geqslant k - 1$ pour tout $k$. Raisonne par
   l'absurde avec le **plus petit** $k$ tel que $a_k \leqslant k - 2$, et compare $(k-1)\,a_{k-1}$
   et $k\,a_k$.
4. Si $n$ est à la position $\ell$, que valent $a_{\ell+1}, \ldots, a_n$ ? Compare ensuite
   $\ell\,a_\ell$ et $(\ell+1)\,a_{\ell+1}$ pour montrer que $\ell = n$ ou $\ell = n - 1$.
5. Note $J_n$ le nombre de bons rangements. Montre que $J_n = J_{n-1} + J_{n-2}$ pour
   $n \geqslant 3$.

## Solution

Appelons **bon rangement** de $1, \ldots, n$ un ordre $(a_1, \ldots, a_n)$ qui vérifie la chaîne
d'inégalités de l'énoncé, et notons $J_n$ le nombre de bons rangements.

**Petits cas.** Pour $n = 1$, il y a un seul rangement, $(1)$, et il est bon : $J_1 = 1 = F_2$.
Pour $n = 2$, les deux rangements $(1, 2)$ et $(2, 1)$ sont bons, car $1 \leqslant 4$ et
$2 \leqslant 2$ : $J_2 = 2 = F_3$. Pour $n = 3$, on trouve $(1, 2, 3)$, $(1, 3, 2)$ et
$(2, 1, 3)$, et les trois autres ne marchent pas : $J_3 = 3 = F_4$.

**Étape 1 : dans un bon rangement, $a_k \geqslant k - 1$ pour tout $k$.** Supposons le contraire,
et prenons le plus petit $k$ tel que $a_k \leqslant k - 2$. Comme $a_k \geqslant 1$, on a
$k \geqslant 3$. Par le choix de $k$, l'entier $k - 1$ ne vérifie pas cette propriété, donc
$a_{k-1} \geqslant (k-1) - 1 = k - 2 \geqslant a_k$. Les nombres $a_{k-1}$ et $a_k$ sont
différents, donc $a_{k-1} \geqslant a_k + 1$. Alors
$$(k-1)\,a_{k-1} \geqslant (k-1)(a_k + 1) = k\,a_k + (k - 1 - a_k) \geqslant k\,a_k + 1,$$
car $a_k \leqslant k - 2$. Ainsi $(k-1)\,a_{k-1} > k\,a_k$, ce qui contredit la chaîne
d'inégalités. Donc $a_k \geqslant k - 1$ pour tout $k$.

**Étape 2 : $n$ est à l'une des deux dernières places.** Notons $\ell$ la position de $n$,
c'est-à-dire $a_\ell = n$, et supposons $\ell < n$. Après la position $\ell$, aucune case ne
contient $n$.

- La dernière case vérifie $a_n \geqslant n - 1$ et $a_n \neq n$, donc $a_n = n - 1$.
- L'avant-dernière (si elle est après $\ell$) vérifie $a_{n-1} \geqslant n - 2$, et ne contient
  ni $n$ ni $n - 1$, déjà placés : donc $a_{n-1} = n - 2$.
- En continuant ainsi de la droite vers la gauche, on obtient $a_k = k - 1$ pour toutes les
  positions $k$ de $\ell + 1$ à $n$.

En particulier $a_{\ell+1} = \ell$. La chaîne d'inégalités donne alors
$$\ell\,n = \ell\,a_\ell \leqslant (\ell+1)\,a_{\ell+1} = (\ell+1)\,\ell,$$
donc $n \leqslant \ell + 1$. Ainsi, $\ell = n$ ou $\ell = n - 1$.

**Étape 3 : la relation $J_n = J_{n-1} + J_{n-2}$ pour $n \geqslant 3$.** On sépare les bons
rangements selon la place de $n$.

- *$n$ est à la dernière place.* Alors $(a_1, \ldots, a_{n-1})$ est un rangement de
  $1, \ldots, n-1$. La dernière inégalité $(n-1)\,a_{n-1} \leqslant n \cdot n$ est toujours vraie,
  car $a_{n-1} \leqslant n - 1$. Le rangement est donc bon exactement quand
  $(a_1, \ldots, a_{n-1})$ est un bon rangement de $1, \ldots, n-1$. Cela fait $J_{n-1}$
  rangements.
- *$n$ est à l'avant-dernière place.* Par l'étape 2, $a_n = n - 1$. Alors
  $(a_1, \ldots, a_{n-2})$ est un rangement de $1, \ldots, n-2$. Les deux dernières inégalités
  sont $(n-2)\,a_{n-2} \leqslant (n-1)\,n$, toujours vraie car $a_{n-2} \leqslant n - 2$, et
  $(n-1)\,n \leqslant n\,(n-1)$, qui est une égalité. Le rangement est donc bon exactement quand
  $(a_1, \ldots, a_{n-2})$ est un bon rangement de $1, \ldots, n-2$. Cela fait $J_{n-2}$
  rangements.

Ces deux cas ne se recouvrent pas, et l'étape 2 dit qu'il n'y en a pas d'autre. Donc
$J_n = J_{n-1} + J_{n-2}$.

**Étape 4 : conclusion.** Les suites $(J_n)$ et $(F_{n+1})$ ont les mêmes deux premiers termes,
$J_1 = 1 = F_2$ et $J_2 = 2 = F_3$, et la même règle de calcul :
$J_n = J_{n-1} + J_{n-2}$ et $F_{n+1} = F_n + F_{n-1}$ pour $n \geqslant 3$. Chaque terme se
calcule à partir des deux précédents, donc elles sont égales terme à terme : $J_3 = F_4$, puis
$J_4 = F_5$, et ainsi de suite. (C'est une récurrence « double » : il faut bien vérifier les
**deux** premiers termes, car la relation n'a de sens qu'à partir de $n = 3$.)

Il y a donc exactement $F_{n+1}$ bons rangements de $1, 2, \ldots, n$.

## Going further

La preuve décrit complètement les bons rangements. En lisant de droite à gauche, on place soit
« $n$ » seul en dernier, soit le bloc « $n, n-1$ » aux deux dernières places, puis on recommence
avec ce qui reste. Un bon rangement est donc obtenu à partir de $(1, 2, \ldots, n)$ en échangeant
certaines paires de voisins $k$ et $k+1$, ces paires ne se chevauchant pas. Par exemple, pour
$n = 4$, on trouve les $F_5 = 5$ rangements
$$(1,2,3,4),\quad (2,1,3,4),\quad (1,3,2,4),\quad (1,2,4,3),\quad (2,1,4,3).$$

C'est aussi le nombre de façons de paver un ruban de $n$ cases avec des carrés $1 \times 1$ et
des dominos $1 \times 2$ : un domino correspond à un échange de deux voisins.
