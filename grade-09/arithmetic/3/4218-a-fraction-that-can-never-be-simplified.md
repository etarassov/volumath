---
id: "4218"
title: "Une fraction qui ne se simplifie jamais"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [pgcd, fraction-irreductible, combinaison-lineaire]
adapted_from: null
see_also: ["7040"]
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Greatest Common Divisors"
  reference: "Handout-1957-1801.pdf, exercice 3"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1957-1801.pdf"
---

## Statement

Démontrer que la fraction
$$\frac{12n + 1}{30n + 1}$$
est irréductible pour tout entier $n$ strictement positif.

*Une fraction est dite irréductible lorsque son numérateur et son dénominateur n'ont pas d'autre
diviseur commun positif que $1$.*

## Hints

1. Essaie d'abord avec $n = 1, 2, 3$ : tu obtiens $\dfrac{13}{31}$, $\dfrac{25}{61}$,
   $\dfrac{37}{91}$. Vérifie que ces fractions ne se simplifient pas.
2. Appelle $d$ un diviseur commun de $12n+1$ et de $30n+1$. Alors $d$ divise aussi toute
   combinaison $u(12n+1) + v(30n+1)$ avec $u$ et $v$ entiers.
3. Cherche $u$ et $v$ qui font disparaître le $n$. Les coefficients $12$ et $30$ ont pour
   $\mathrm{PPCM}$ le nombre $60$.

## Solution

Soit $n$ un entier strictement positif, et soit $d$ un diviseur commun positif de $12n+1$ et de
$30n+1$. Montrons que $d = 1$.

**On fait disparaître le $n$.**

Puisque $d$ divise $12n+1$, il divise aussi $5 \times (12n+1) = 60n + 5$.

Puisque $d$ divise $30n+1$, il divise aussi $2 \times (30n+1) = 60n + 2$.

Un diviseur commun de deux nombres divise leur différence, donc $d$ divise
$$(60n + 5) - (60n + 2) = 3.$$

**On élimine le cas $d = 3$.**

Les diviseurs positifs de $3$ sont $1$ et $3$. Supposons $d = 3$. Alors $3$ divise $12n + 1$. Mais
$12n = 3 \times 4n$ est un multiple de $3$, donc $3$ devrait diviser
$$(12n + 1) - 12n = 1,$$
ce qui est faux.

Le cas $d = 3$ est donc impossible, et il ne reste que $d = 1$.

**Conclusion.** Le seul diviseur commun positif de $12n+1$ et $30n+1$ est $1$ : leur
$\mathrm{PGCD}$ vaut $1$, et la fraction $\dfrac{12n+1}{30n+1}$ est irréductible pour tout entier
$n > 0$.

*Remarque.* Le raisonnement vaut en fait pour tout entier $n$, y compris $n = 0$ (la fraction
vaut alors $\dfrac{1}{1}$) et les entiers négatifs.

## Going further

Par la même méthode, montrer que $\dfrac{21n + 4}{14n + 3}$ est irréductible pour tout entier
naturel $n$. (C'est le premier problème de la première Olympiade internationale de mathématiques,
en 1959.)
