---
id: "8185"
title: "x² + y² + z² = 2xyz"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [descente-infinie, parite, carres-modulo-4, equation-diophantienne]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe C"
  reference: "stage_ete_2018.pdf, chapitre V « Groupe C », section 2 « Arithmétique », cours « Exercices divers », exercice 3 (le polycopié ne nomme pas l'auteur du cours). La solution imprimée tient en trois lignes très condensées ; celle ci-dessous la reprend en détail."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Trouver tous les triplets d'entiers relatifs $(x, y, z)$ tels que

$$x^2 + y^2 + z^2 = 2xyz.$$

## Hints

1. Le triplet $(0, 0, 0)$ convient. Cherche à montrer qu'il n'y en a pas d'autre.
2. Un carré d'entier vaut $0$ ou $1$ modulo $4$ : si l'entier est pair son carré est un
   multiple de $4$, s'il est impair son carré vaut $1$ modulo $8$, donc $1$ modulo $4$.
3. Regarde d'abord combien de $x$, $y$, $z$ peuvent être impairs. Le membre de droite est pair.
4. Suppose que deux d'entre eux sont impairs et le troisième pair. Que vaut le membre de
   gauche modulo $4$ ? Et le membre de droite ?
5. Il reste le cas où les trois sont pairs. Pose $x = 2a$, $y = 2b$, $z = 2c$ et regarde
   l'équation que vérifient $a$, $b$, $c$. Elle ressemble à la première, mais pas tout à fait.
6. Pour conclure, introduis la plus grande puissance de $2$ qui divise à la fois $x$, $y$ et
   $z$, et cherche une contradiction avec le mot « plus grande ».

## Solution

**Réponse : le seul triplet est $(0, 0, 0)$.**

Il convient bien : $0 + 0 + 0 = 0 = 2 \times 0 \times 0 \times 0$.

**L'outil : les carrés modulo 4.**

Si $n$ est pair, $n = 2k$ et $n^2 = 4k^2$ est un multiple de $4$ : $n^2 \equiv 0 \pmod 4$.

Si $n$ est impair, $n = 2k+1$ et $n^2 = 4k(k+1) + 1 \equiv 1 \pmod 4$.

Donc **le carré d'un entier vaut toujours $0$ ou $1$ modulo $4$**, selon que l'entier est pair
ou impair.

**Étape 1 : une équation légèrement plus générale.**

Fixons un entier $k \geq 1$ et considérons l'équation

$$(\star) \qquad a^2 + b^2 + c^2 = 2^k \, abc.$$

Pour $k = 1$ c'est l'équation de l'énoncé. Montrons :

> si $(a, b, c)$ est une solution de $(\star)$, alors $a$, $b$ et $c$ sont tous les trois pairs.

*Cas $k = 1$.* Le membre de droite $2abc$ est pair, donc $a^2 + b^2 + c^2$ est pair, donc le
nombre d'impairs parmi $a$, $b$, $c$ est pair : il vaut $0$ ou $2$.

Supposons qu'il vaille $2$, disons $a$ et $b$ impairs et $c$ pair. Modulo $4$ :

$$a^2 + b^2 + c^2 \equiv 1 + 1 + 0 = 2 \pmod 4.$$

Mais $c$ est pair, donc $2abc = 2ab \cdot c$ est un multiple de $4$, c'est-à-dire
$2abc \equiv 0 \pmod 4$. On aurait $2 \equiv 0 \pmod 4$, ce qui est faux.

Il reste donc $0$ impair : $a$, $b$, $c$ sont tous pairs.

*Cas $k \geq 2$.* Le membre de droite $2^k abc$ est un multiple de $4$. Modulo $4$, la somme
$a^2 + b^2 + c^2$ vaut donc $0$. Or chacun de ces carrés vaut $0$ ou $1$ modulo $4$, donc la
somme vaut $0$, $1$, $2$ ou $3$ modulo $4$, et elle ne vaut $0$ que si les trois carrés valent
$0$ modulo $4$, c'est-à-dire si $a$, $b$ et $c$ sont tous pairs.

Dans les deux cas, les trois entiers sont pairs.

**Étape 2 : en divisant par 2, on retombe sur une équation du même type.**

Soit $(a, b, c)$ une solution de $(\star)$. On vient de voir que $a = 2a'$, $b = 2b'$,
$c = 2c'$ avec $a', b', c'$ entiers. En reportant :

$$4a'^2 + 4b'^2 + 4c'^2 = 2^k \cdot 8 \, a'b'c',$$

puis en divisant les deux membres par $4$ :

$$a'^2 + b'^2 + c'^2 = 2^{k+1} \, a'b'c'.$$

Donc $(a', b', c')$ est solution de la même équation, avec $k$ remplacé par $k+1$.

**Étape 3 : la descente.**

Soit $(x, y, z)$ une solution de l'équation de l'énoncé, c'est-à-dire de $(\star)$ avec $k = 1$.

D'après les étapes 1 et 2, $(x/2, y/2, z/2)$ est un triplet d'entiers, solution de $(\star)$
avec $k = 2$. En recommençant, $(x/4, y/4, z/4)$ est un triplet d'entiers, solution avec
$k = 3$. Et ainsi de suite.

Par récurrence, pour **tout** entier $n \geq 0$, le triplet
$$\left( \frac{x}{2^n}, \; \frac{y}{2^n}, \; \frac{z}{2^n} \right)$$
est un triplet d'entiers. Autrement dit, $2^n$ divise $x$, $y$ et $z$, quel que soit $n$.

Un entier non nul n'est divisible que par un nombre fini de puissances de $2$ : si $x \neq 0$,
alors $2^n \leq |x|$ dès que $2^n$ divise $x$, ce qui interdit les grands $n$. Donc $x = 0$, et
de même $y = 0$ et $z = 0$.

**Conclusion : $(0,0,0)$ est la seule solution en entiers relatifs.**

## Going further

L'équation voisine $x^2 + y^2 + z^2 = xyz$, elle, a une infinité de solutions en entiers
strictement positifs : $(3,3,3)$ convient, et à partir d'une solution $(x,y,z)$ on en fabrique
une autre en remplaçant $z$ par $xy - z$, ce qui donne $(3,3,6)$, puis $(3,6,15)$, puis
$(6,15,87)$, et ainsi de suite. Ces triplets sont exactement les triples de Markov multipliés
par $3$.

La différence tient entièrement au facteur $2$ : c'est lui qui rend le membre de droite trop
divisible par $2$ pour que le membre de gauche suive.
