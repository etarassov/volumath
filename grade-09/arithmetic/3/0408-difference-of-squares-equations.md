---
id: "0408"
title: "Des différences de carrés"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [identites-remarquables, diviseurs, nombres-premiers, equation-entiere]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), второе полугодие, часть II, методические указания. Сост. Е. А. Асташов, Я. А. Верёвкин, О. А. Манжина, Д. А. Удимов, МГУ, 2015"
  reference: "AU2.pdf, листок 14, задача 9"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

1. Trouver tous les couples d'entiers naturels $x$ et $y$ tels que $x^2 - y^2 = 19$.
2. Trouver tous les couples d'entiers naturels $x$ et $y$ tels que $x^2 - y^2 = 111$.
3. Trouver tous les couples de nombres premiers dont la différence des carrés est, elle aussi, un nombre premier.

## Hints

1. Une identité remarquable transforme $x^2 - y^2$ en un produit. Écrivez-la.
2. Le problème devient : deux entiers naturels dont le produit vaut $19$ (puis $111$). Lequel des deux facteurs est le plus petit, $x-y$ ou $x+y$ ?
3. $19$ est un nombre premier : il ne s'écrit que d'une seule façon comme produit de deux entiers naturels. Pour $111$, commencez par chercher tous ses diviseurs, il y aura plusieurs cas.
4. Question 3 : si le produit de deux entiers naturels est un nombre premier, que vaut nécessairement le plus petit des deux facteurs ? Deux nombres premiers dont la différence est $1$, est-ce possible, et lesquels ?

## Solution

**L'idée commune : transformer une différence de carrés en produit.**

Pour tout couple de nombres,
$$x^2 - y^2 = (x-y)(x+y).$$

Chercher $x$ et $y$ revient donc à décomposer le nombre de droite en produit de deux facteurs. Comme $x$ et $y$ sont des entiers naturels et que $x^2 > y^2$, on a $x > y \geqslant 0$, donc
$$x - y \geqslant 1, \qquad x + y \geqslant 1, \qquad x - y \leqslant x + y.$$
Les deux facteurs sont des entiers naturels, et le plus petit est $x-y$.

### 1. Le cas $x^2 - y^2 = 19$

On cherche donc $(x-y)(x+y) = 19$. Or $19$ est un nombre premier : la seule façon de l'écrire comme produit de deux entiers naturels est $1 \times 19$. Comme $x-y$ est le plus petit facteur,
$$x - y = 1, \qquad x + y = 19.$$

En additionnant ces deux égalités : $2x = 20$, donc $x = 10$, puis $y = 9$.

Vérification : $10^2 - 9^2 = 100 - 81 = 19$. Le seul couple est $(x, y) = (10, 9)$.

### 2. Le cas $x^2 - y^2 = 111$

Décomposons : $111 = 3 \times 37$, donc les diviseurs de $111$ sont $1$, $3$, $37$ et $111$. Les façons d'écrire $111$ comme produit de deux entiers naturels, le plus petit facteur d'abord, sont
$$111 = 1 \times 111 \qquad \text{et} \qquad 111 = 3 \times 37.$$

**Premier cas :** $x - y = 1$ et $x + y = 111$. En additionnant, $2x = 112$, donc $x = 56$ et $y = 55$.

**Second cas :** $x - y = 3$ et $x + y = 37$. En additionnant, $2x = 40$, donc $x = 20$ et $y = 17$.

Vérifications : $56^2 - 55^2 = 3136 - 3025 = 111$ et $20^2 - 17^2 = 400 - 289 = 111$.

Les couples sont $(56, 55)$ et $(20, 17)$.

(Dans les deux cas les deux facteurs étaient impairs, donc leur somme était paire et $x$ est bien un entier. Si l'on avait cherché $x^2 - y^2 = 2$, avec $2 = 1 \times 2$, la somme $1 + 2 = 3$ serait impaire et il n'y aurait aucune solution.)

### 3. Deux nombres premiers dont la différence des carrés est première

Soient $p$ et $q$ deux nombres premiers tels que $p^2 - q^2$ soit un nombre premier. Comme un nombre premier est positif, $p > q$, et
$$p^2 - q^2 = (p-q)(p+q).$$

Ce nombre premier est donc le produit de deux entiers naturels. Or un nombre premier n'a que deux diviseurs, $1$ et lui-même : le plus petit facteur vaut nécessairement $1$. Comme $p - q < p + q$, cela donne
$$p - q = 1.$$

Deux nombres premiers qui se suivent immédiatement : l'un des deux est pair, car parmi deux entiers consécutifs il y en a toujours un pair. Le seul nombre premier pair est $2$, donc $q = 2$ et $p = 3$.

Vérification : $3^2 - 2^2 = 9 - 4 = 5$, qui est bien premier.

**Conclusion.** Le seul couple de nombres premiers qui convient est $p = 3$ et $q = 2$.

## Going further

1. Pour quels entiers naturels $n$ l'équation $x^2 - y^2 = n$ a-t-elle au moins une solution en entiers naturels ? Essayez $n = 1, 2, 3, \dots, 12$ et cherchez la règle. (Indication : regardez la parité des deux facteurs.)
2. Combien de couples $(x, y)$ d'entiers naturels vérifient $x^2 - y^2 = 2025$ ?
