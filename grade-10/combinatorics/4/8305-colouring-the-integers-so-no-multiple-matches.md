---
id: "8305"
title: "Colorier les entiers sans qu'un multiple ait la couleur de son diviseur"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [coloriage, divisibilite, minimum, chaine, puissances-de-deux]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, Coupe Animath de printemps 2020"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Coupe Animath de printemps 2020, exercice 6 (collège) et exercice 11 (lycée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Alice veut colorier des entiers en respectant la règle suivante :

> si $m$ et $n$ sont deux entiers coloriés, si $m$ est un multiple de $n$ et si $m \neq n$, alors $m$ et $n$ doivent être de couleurs différentes.

1. Alice colorie les entiers de $2$ à $8$. Quel est le plus petit nombre de couleurs $k$ qui lui suffit ?
2. Même question pour les entiers de $2$ à $31$.

## Hints

1. Il y a toujours **deux choses** à faire quand on cherche un plus petit nombre. D'abord montrer qu'un certain nombre de couleurs suffit, en donnant un coloriage qui marche. Ensuite montrer qu'on ne peut pas faire moins.
2. Pour la deuxième moitié, cherche une famille d'entiers qui doivent **tous** être de couleurs deux à deux différentes. De quoi as-tu besoin pour cela ?
3. Prends $2$, $4$, $8$. Chacun divise les suivants. Que peux-tu en dire de leurs couleurs ? Et dans la question 2, jusqu'où peux-tu prolonger cette chaîne ?
4. Pour construire un coloriage, essaie d'attribuer à chaque entier une couleur qui dépend de sa décomposition en facteurs premiers.
5. Compte, pour chaque entier $n$, le nombre total de facteurs premiers en comptant les répétitions : par exemple $12 = 2 \times 2 \times 3$ en a trois. Que se passe-t-il pour ce compteur quand on passe de $n$ à un multiple strict de $n$ ?

## Solution

Pour chaque question il y a deux moitiés : montrer qu'un certain nombre de couleurs **suffit**,
et montrer qu'on ne peut pas descendre plus bas.

**Un outil : le nombre de facteurs premiers, avec répétitions.**

Pour un entier $n \geqslant 2$, écrivons sa décomposition en facteurs premiers

$$n = p_1^{a_1} \times p_2^{a_2} \times \cdots \times p_r^{a_r}$$

et posons

$$\Omega(n) = a_1 + a_2 + \cdots + a_r ,$$

c'est-à-dire le nombre de facteurs premiers de $n$ **comptés avec leur multiplicité**. Par exemple
$\Omega(2) = 1$, $\Omega(12) = \Omega(2 \times 2 \times 3) = 3$, $\Omega(16) = 4$.

Deux propriétés vont tout donner.

**Propriété A.** Si $n$ divise $m$ et $n \neq m$, alors $\Omega(n) < \Omega(m)$.

En effet, $m = n \times q$ avec $q \geqslant 2$ un entier. En juxtaposant les décompositions de
$n$ et de $q$ on obtient celle de $m$, donc $\Omega(m) = \Omega(n) + \Omega(q)$, et
$\Omega(q) \geqslant 1$ puisque $q \geqslant 2$.

**Propriété B.** Si $n \geqslant 2$, alors $n \geqslant 2^{\Omega(n)}$.

En effet, chaque facteur premier de $n$ vaut au moins $2$, et $n$ est le produit de
$\Omega(n)$ tels facteurs.

**Le coloriage qui marche.** Colorions chaque entier $n$ par la couleur numéro $\Omega(n)$.
D'après la propriété A, si $n$ divise strictement $m$, alors $\Omega(n) \neq \Omega(m)$ : les deux
entiers reçoivent bien des couleurs différentes. Ce coloriage est donc toujours valable ; reste
à compter combien de couleurs il consomme.

**Question 1 : les entiers de 2 à 8.**

*Trois couleurs suffisent.* Si $2 \leqslant n \leqslant 8$, la propriété B donne
$2^{\Omega(n)} \leqslant n \leqslant 8 = 2^3$, donc $\Omega(n) \leqslant 3$. Comme
$\Omega(n) \geqslant 1$, le coloriage ci-dessus n'utilise que les couleurs $1$, $2$ et $3$. Concrètement :

| couleur | entiers |
|---|---|
| $1$ | $2, 3, 5, 7$ |
| $2$ | $4, 6$ |
| $3$ | $8$ |

*Trois couleurs sont nécessaires.* Regardons les trois entiers $2$, $4$ et $8$. On a $2 \mid 4$,
$2 \mid 8$ et $4 \mid 8$, et ils sont deux à deux distincts. La règle impose donc trois couleurs
deux à deux différentes pour eux seuls : il faut au moins $3$ couleurs.

**Le plus petit $k$ vaut $3$.**

**Question 2 : les entiers de 2 à 31.**

*Quatre couleurs suffisent.* Si $2 \leqslant n \leqslant 31$, alors $n < 32 = 2^5$, et la
propriété B donne $2^{\Omega(n)} \leqslant n < 2^5$, donc $\Omega(n) < 5$, c'est-à-dire
$\Omega(n) \leqslant 4$. Le coloriage par $\Omega$ n'utilise donc que les couleurs $1$, $2$, $3$, $4$ :

| couleur | entiers |
|---|---|
| $1$ | $2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31$ |
| $2$ | $4, 6, 9, 10, 14, 15, 21, 22, 25, 26$ |
| $3$ | $8, 12, 18, 20, 27, 28, 30$ |
| $4$ | $16, 24$ |

*Quatre couleurs sont nécessaires.* Regardons la chaîne

$$2 \mid 4 \mid 8 \mid 16 ,$$

dont les quatre termes sont bien compris entre $2$ et $31$. Chacun divise strictement tous les
suivants, donc ces quatre entiers portent quatre couleurs deux à deux différentes : il faut au
moins $4$ couleurs.

**Le plus petit $k$ vaut $4$.**

## Going further

Le raisonnement ne dépend pas des nombres $8$ et $31$. Pour colorier les entiers de $2$ à $N$,
la plus longue chaîne $2 \mid 4 \mid 8 \mid \cdots$ que l'on puisse loger a pour longueur le plus
grand entier $j$ tel que $2^j \leqslant N$, et la propriété B montre que ce nombre de couleurs
suffit toujours. Le nombre minimal de couleurs est donc exactement ce $j$.

Pour $N = 100$ par exemple, comme $2^6 = 64 \leqslant 100 < 128 = 2^7$, il faut et il suffit de
$6$ couleurs.
