---
id: "12041"
title: "Une seule façon de couper ℤ en trois"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [ensembles, partition, sommes-d-ensembles, periode, restes, division-euclidienne]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 15 mai 2013"
  reference: "2017-10_ofm-2012-2013-test-mai.pdf, exercice 4 ; pas de corrigé publié, solution rédigée ici et vérifiée par ordinateur sur les partitions périodiques de période au plus 12"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-mai.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-mai.pdf"
---

## Statement

On dit que $\{A, B, C\}$ est une **partition** de l'ensemble $\mathbb{Z}$ des entiers relatifs si $A$, $B$ et $C$ sont trois ensembles non vides, deux à deux disjoints, dont la réunion est $\mathbb{Z}$. Autrement dit, chaque entier relatif appartient à un et un seul des trois ensembles.

Si $X$ et $Y$ sont deux ensembles d'entiers, on note $X + Y$ l'ensemble des entiers qui s'écrivent $x + y$ avec $x$ dans $X$ et $y$ dans $Y$.

Montrer qu'il existe une et une seule partition $\{A, B, C\}$ de $\mathbb{Z}$ telle que les trois ensembles $A + B$, $B + C$ et $C + A$ soient deux à deux disjoints.

## Hints

1. Cherchez d'abord un exemple, en pensant aux restes dans la division par un petit entier.
2. Prenez $a$ dans $A$, $b$ dans $B$ et $c$ dans $C$. À lequel des trois ensembles appartient l'entier $a + b - c$ ?
3. Soient $a$ et $a'$ deux éléments de $A$. Déduisez de l'indication 2 que $c + (a' - a)$ est dans $C$ pour tout $c$ de $C$. Autrement dit, décaler $C$ de $a' - a$ ne le change pas. Montrez que ce décalage ne change pas non plus $B$, puis $A$.
4. Considérez le plus petit entier $t > 0$ tel que le décalage de $t$ ne change aucun des trois ensembles.

## Solution

**Réponse.** La seule partition qui convient est formée de l'ensemble des multiples de $3$, de l'ensemble des entiers de reste $1$ dans la division par $3$, et de l'ensemble des entiers de reste $2$.

**Elle convient.** Notons $R_0$, $R_1$, $R_2$ les ensembles des entiers de reste $0$, $1$, $2$ dans la division par $3$, et prenons $A = R_0$, $B = R_1$, $C = R_2$. Ces trois ensembles forment une partition de $\mathbb{Z}$. Le reste d'une somme se lit sur la somme des restes, donc

- $A + B$ ne contient que des entiers de reste $0 + 1 = 1$ ;
- $B + C$ ne contient que des entiers de reste $0$, car $1 + 2 = 3$ ;
- $C + A$ ne contient que des entiers de reste $2 + 0 = 2$.

Ces trois ensembles sont donc deux à deux disjoints.

**C'est la seule.** Soit maintenant $\{A, B, C\}$ une partition qui convient. Remarquons que la condition ne change pas si l'on échange les noms des trois ensembles : tout ce que l'on démontre pour $A$, $B$, $C$ reste vrai pour ces ensembles pris dans un autre ordre.

*Étape 1 : si $a \in A$, $b \in B$ et $c \in C$, alors $a + b - c \in C$.* Posons $n = a + b - c$. Si $n$ était dans $A$, alors $a + b = n + c$ serait à la fois dans $A + B$ et dans $C + A$. Si $n$ était dans $B$, alors $a + b = n + c$ serait à la fois dans $A + B$ et dans $B + C$. Ces deux cas sont exclus, donc $n$ est dans $C$.

*Étape 2 : des périodes.* Disons qu'un entier $t$ est une **période** d'un ensemble d'entiers $X$ si, pour tout entier $n$, on a $n \in X$ exactement quand $n + t \in X$. Autrement dit, décaler $X$ de $t$ ne le change pas. Directement d'après cette définition :

- si $t$ est une période de $X$, alors $-t$ aussi, ainsi que tous les multiples de $t$ ;
- si $s$ et $t$ sont des périodes de $X$, alors $s + t$ et $s - t$ aussi.

*Étape 3 : la différence de deux éléments de $A$ est une période de $C$.* Soient $a$ et $a'$ dans $A$, et $d = a' - a$. Fixons un élément $b$ de $B$, qui n'est pas vide, et prenons $c$ dans $C$. D'après l'étape 1, $c_1 = a + b - c$ est dans $C$. En appliquant encore l'étape 1 à $a'$, $b$ et $c_1$, on obtient que

$$a' + b - c_1 = a' + b - (a + b - c) = c + d$$

est dans $C$. Ainsi, $c \in C$ entraîne $c + d \in C$. En échangeant les rôles de $a$ et $a'$, on obtient aussi que $c \in C$ entraîne $c - d \in C$. Enfin, si $n + d \in C$, alors $n = (n + d) - d \in C$. Donc $d$ est une période de $C$.

En échangeant les noms des ensembles, on obtient de même : la différence de deux éléments de l'un des trois ensembles est une période de chacun des deux autres.

*Étape 4 : une telle différence est une période des trois ensembles.* Soit $d$ une période de $B$ et de $C$. Pour tout entier $n$, on a $n \in A$ exactement quand $n$ n'est ni dans $B$ ni dans $C$, donc exactement quand $n + d$ n'est ni dans $B$ ni dans $C$, c'est-à-dire quand $n + d \in A$. Donc $d$ est aussi une période de $A$.

Appelons **période commune** un entier qui est une période de $A$, de $B$ et de $C$. D'après les étapes 3 et 4, la différence de deux éléments d'un même ensemble, $A$, $B$ ou $C$, est une période commune.

*Étape 5 : la plus petite période commune positive.* L'un des trois ensembles a au moins deux éléments, car leur réunion $\mathbb{Z}$ est infinie. Si $u < v$ sont deux éléments de cet ensemble, $v - u$ est une période commune strictement positive. Il existe donc une plus petite période commune strictement positive ; notons-la $t$.

Toute période commune $s$ est un multiple de $t$. En effet, effectuons la division euclidienne de $s$ par $t$ : $s = qt + r$ avec $q$ entier et $0 \leqslant r < t$. D'après l'étape 2, $r = s - qt$ est une période commune. Comme $r < t$ et que $t$ est la plus petite période commune strictement positive, on a $r = 0$.

*Étape 6 : chaque ensemble est formé des entiers d'un même reste dans la division par $t$.* Fixons $a$ dans $A$.

- Comme $t$ est une période de $A$, tous les entiers $a + jt$, avec $j$ entier relatif, sont dans $A$.
- Réciproquement, si $a'$ est dans $A$, alors $a' - a$ est une période commune (étape 4), donc un multiple de $t$ (étape 5) : $a' = a + jt$ pour un entier $j$.

Donc $A$ est exactement l'ensemble des entiers qui ont le même reste que $a$ dans la division par $t$. Il en est de même pour $B$ et pour $C$.

*Étape 7 : $t = 3$.* Dans la division par $t$, il y a exactement $t$ restes possibles, $0, 1, \ldots, t - 1$, donc les entiers se répartissent en exactement $t$ ensembles de même reste. D'après l'étape 6, $A$, $B$ et $C$ sont trois de ces ensembles, différents car disjoints, et leur réunion est $\mathbb{Z}$ tout entier. Il n'y en a donc pas d'autre : $t = 3$, et $\{A, B, C\}$ est la partition $\{R_0, R_1, R_2\}$.

**Conclusion.** Il existe une et une seule partition qui convient : celle des entiers selon leur reste dans la division par $3$.
