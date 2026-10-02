---
id: "0378"
title: "Divisibilité dans un triangle pythagoricien"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [pythagore, divisibilite, restes, parite, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей (А. А. Аксёнов, А. А. Севастьянов)"
  reference: "AU2.pdf, листок 6 «Пифагоровы треугольники», задача 11"
  url: "https://mmmf.msu.ru/for_schools/AU2.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

On appelle **triangle pythagoricien** un triangle rectangle dont les trois côtés ont des longueurs entières, comme le triangle $(3, 4, 5)$ ou le triangle $(5, 12, 13)$.

Montrer que dans tout triangle pythagoricien :

1. la longueur de l'un des deux côtés de l'angle droit est divisible par $3$ ;
2. la longueur de l'un des trois côtés est divisible par $5$ ;
3. le produit des longueurs des deux côtés de l'angle droit est divisible par $12$.

## Hints

1. Question 1 : commence par chercher quels restes le carré d'un entier peut donner dans la division par $3$. Sépare les cas $n = 3k$, $n = 3k+1$ et $n = 3k+2$.
2. Question 1 : raisonne ensuite par l'absurde. Si aucun des deux côtés de l'angle droit n'est divisible par $3$, quel reste donne $a^2 + b^2$ dans la division par $3$ ? Est-ce le reste possible d'un carré ?
3. Question 2 : la même méthode marche avec $5$. Cette fois un carré peut donner trois restes différents, et il faut examiner toutes les combinaisons possibles pour $a^2$ et $b^2$.
4. Question 3 : $12 = 3 \times 4$. Le facteur $3$ est donné par la question 1. Pour le facteur $4$, sépare deux cas : les deux côtés de l'angle droit sont pairs, ou bien un seul des deux l'est.
5. Question 3, deuxième cas : montre d'abord que le carré d'un nombre impair donne toujours le reste $1$ dans la division par $8$. Écris $n = 2k+1$ et regarde de près le terme $4k(k+1)$.

## Solution

Dans tout ce qui suit, $a$ et $b$ sont les longueurs des côtés de l'angle droit et $c$ celle de l'hypoténuse, de sorte que $a^2 + b^2 = c^2$.

L'idée commune aux trois questions est toujours la même : **on regarde les restes**. On commence par établir quels restes un carré peut donner, puis on raisonne par l'absurde.

**Question 1. L'un des côtés de l'angle droit est divisible par 3.**

*Les restes des carrés dans la division par 3.* Soit $n$ un entier. Trois cas :

- $n = 3k$ : alors $n^2 = 9k^2 = 3 \times 3k^2$, le reste est $0$ ;
- $n = 3k+1$ : alors $n^2 = 9k^2 + 6k + 1 = 3(3k^2 + 2k) + 1$, le reste est $1$ ;
- $n = 3k+2$ : alors $n^2 = 9k^2 + 12k + 4 = 3(3k^2 + 4k + 1) + 1$, le reste est $1$.

**Un carré donne donc le reste $0$ ou le reste $1$ dans la division par $3$**, jamais le reste $2$. On remarque au passage que le reste est $0$ exactement quand $n$ est divisible par $3$.

*Le raisonnement par l'absurde.* Supposons qu'aucun des deux nombres $a$ et $b$ ne soit divisible par $3$. Alors $a^2$ et $b^2$ donnent tous les deux le reste $1$, donc on peut écrire $a^2 = 3u+1$ et $b^2 = 3v+1$, et

$$c^2 = a^2 + b^2 = 3(u+v) + 2 .$$

Le nombre $c^2$ donnerait le reste $2$ dans la division par $3$, ce qui est impossible pour un carré.

**Donc l'un au moins des deux côtés de l'angle droit a une longueur divisible par $3$.**

**Question 2. L'un des trois côtés est divisible par 5.**

*Les restes des carrés dans la division par 5.* En écrivant $n = 5k + r$ avec $r$ valant $0$, $1$, $2$, $3$ ou $4$, on obtient $n^2 = 5(5k^2 + 2kr) + r^2$ : le reste de $n^2$ est celui de $r^2$. Or

$$0^2 = 0, \quad 1^2 = 1, \quad 2^2 = 4, \quad 3^2 = 9 = 5 + 4, \quad 4^2 = 16 = 15 + 1 .$$

**Un carré donne donc le reste $0$, $1$ ou $4$ dans la division par $5$**, et le reste est $0$ exactement quand le nombre est divisible par $5$.

*Le raisonnement par l'absurde.* Supposons qu'aucun des trois côtés ne soit divisible par $5$. Alors $a^2$ et $b^2$ donnent chacun le reste $1$ ou le reste $4$. Examinons les trois cas :

- restes $1$ et $1$ : $c^2$ donnerait le reste $2$, impossible pour un carré ;
- restes $1$ et $4$ : $1 + 4 = 5$, donc $c^2$ donnerait le reste $0$, c'est-à-dire que $c$ serait divisible par $5$, contrairement à ce qu'on a supposé ;
- restes $4$ et $4$ : $4 + 4 = 8$, donc $c^2$ donnerait le reste $3$, impossible pour un carré.

Chaque cas mène à une contradiction. **Donc l'un au moins des trois côtés a une longueur divisible par $5$.**

**Question 3. Le produit $ab$ est divisible par 12.**

Comme $12 = 3 \times 4$, il suffit de montrer que $ab$ est divisible par $3$ et par $4$.

*Divisible par 3 :* c'est la question 1, qui dit que $3$ divise $a$ ou $b$, donc $3$ divise $ab$.

*Divisible par 4 :* remarquons d'abord que $a$ et $b$ ne peuvent pas être tous les deux impairs. En effet, le carré d'un nombre impair $2k+1$ vaut $4(k^2+k) + 1$ : il donne le reste $1$ dans la division par $4$. Si $a$ et $b$ étaient impairs, $c^2 = a^2 + b^2$ donnerait le reste $2$ dans la division par $4$, alors qu'un carré y donne le reste $0$ ou $1$. Impossible.

Il reste donc deux cas.

*Cas 1 : $a$ et $b$ sont tous les deux pairs.* Alors $a = 2a'$ et $b = 2b'$, donc $ab = 4a'b'$ est divisible par $4$.

*Cas 2 : l'un est pair et l'autre impair.* Disons $a$ impair et $b$ pair. Alors $c^2 = a^2 + b^2$ est impair, donc $c$ est impair.

On utilise alors le fait suivant : **le carré d'un nombre impair donne toujours le reste $1$ dans la division par $8$.** En effet, si $n = 2k+1$, alors

$$n^2 = 4k^2 + 4k + 1 = 4k(k+1) + 1,$$

et $k(k+1)$ est le produit de deux entiers qui se suivent, donc il est pair. Ainsi $4k(k+1)$ est divisible par $8$.

Comme $a$ et $c$ sont impairs, $a^2$ et $c^2$ donnent tous les deux le reste $1$ dans la division par $8$, donc leur différence

$$b^2 = c^2 - a^2$$

est divisible par $8$. Écrivons $b = 2t$ : alors $b^2 = 4t^2$, et $4t^2$ divisible par $8$ signifie que $t^2$ est pair, donc que $t$ est pair. Par conséquent $b = 2t$ est divisible par $4$, et $ab$ aussi.

*Conclusion des deux cas :* $ab$ est divisible par $4$.

*Et donc par 12 :* écrivons $ab = 4m$. Comme $3$ divise $ab = 4m$ et que $3$ est un nombre premier qui ne divise pas $4$, le nombre $3$ divise $m$. On écrit $m = 3m'$, d'où $ab = 12m'$.

**Conclusion.** Dans tout triangle pythagoricien, l'un des côtés de l'angle droit est divisible par $3$, l'un des trois côtés est divisible par $5$, et le produit des deux côtés de l'angle droit est divisible par $12$.

## Going further

1. Vérifier ces trois propriétés sur les triangles $(3,4,5)$, $(5,12,13)$, $(8,15,17)$ et $(20,21,29)$.
2. Donner un triangle pythagoricien dont l'hypoténuse est divisible par $5$, et un autre dont c'est un côté de l'angle droit qui l'est.
3. En combinant les trois résultats, montrer que le produit des longueurs des trois côtés d'un triangle pythagoricien est toujours divisible par $60$.
