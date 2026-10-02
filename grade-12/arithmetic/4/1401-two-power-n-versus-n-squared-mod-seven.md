---
id: "1401"
title: "Deux puissances qui se croisent modulo 7"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [congruences, periodicite, denombrement, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2, Winter Competition « Game »"
  reference: "Handout-3916-3573.pdf, partie 1 « Numbers », problème 5 (réponse dans Handout-3917-3573.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3916-3573.pdf"
---

## Statement

Combien y a-t-il d'entiers $n$ vérifiant $1 \leqslant n \leqslant 10\,000$ pour lesquels le nombre

$$2^n - n^2$$

est divisible par $7$ ?

## Hints

1. Travailler modulo $7$ : on cherche les $n$ tels que $2^n \equiv n^2 \pmod 7$.
2. Calculer $2^1, 2^2, 2^3, 2^4, \ldots$ modulo $7$. La liste se répète très vite : au bout de combien de termes ?
3. Faire la même chose pour $n^2$ modulo $7$. Cette fois, le reste ne dépend que du reste de $n$ dans la division par $7$, donc la liste se répète au bout de $7$ termes.
4. Une quantité se répète tous les $3$ rangs, l'autre tous les $7$ rangs. Au bout de combien de rangs les **deux** se répètent en même temps ?
5. Il ne reste plus qu'à dresser un tableau des $21$ premiers cas, compter les bons, puis regarder combien de blocs complets de $21$ tiennent dans $10\,000$, et traiter le reste à la main.

## Solution

Dire que $7$ divise $2^n - n^2$, c'est dire que

$$2^n \equiv n^2 \pmod 7 .$$

On étudie séparément les deux côtés.

**Le côté $2^n$.**

$$2^1 \equiv 2, \qquad 2^2 \equiv 4, \qquad 2^3 = 8 \equiv 1 \pmod 7 .$$

Comme $2^3 \equiv 1$, on a $2^{n+3} = 2^n \times 2^3 \equiv 2^n \pmod 7$ pour tout $n$. La suite des restes de $2^n$ est donc **périodique de période $3$** :

$$2,\; 4,\; 1,\; 2,\; 4,\; 1,\; \ldots$$

**Le côté $n^2$.**

Si $n \equiv m \pmod 7$, alors $n^2 \equiv m^2 \pmod 7$. Le reste de $n^2$ ne dépend donc que du reste de $n$ modulo $7$, et la suite des restes de $n^2$ est **périodique de période $7$**. Les valeurs, pour $n \equiv 0, 1, 2, 3, 4, 5, 6$, sont

$$0,\; 1,\; 4,\; 2,\; 2,\; 4,\; 1 .$$

**Les deux ensemble.**

Le membre de gauche se répète tous les $3$ rangs, celui de droite tous les $7$ rangs. Tout se répète donc tous les $\mathrm{PPCM}(3, 7) = 21$ rangs : si $n' = n + 21$, alors $2^{n'} \equiv 2^n$ et $n'^2 \equiv n^2$ modulo $7$. Il suffit donc d'examiner $n = 1, 2, \ldots, 21$.

| $n$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $2^n$ | 2 | 4 | 1 | 2 | 4 | 1 | 2 | 4 | 1 | 2 | 4 | 1 | 2 | 4 | 1 | 2 | 4 | 1 | 2 | 4 | 1 |
| $n^2$ | 1 | 4 | 2 | 2 | 4 | 1 | 0 | 1 | 4 | 2 | 2 | 4 | 1 | 0 | 1 | 4 | 2 | 2 | 4 | 1 | 0 |

Les deux lignes coïncident exactement pour

$$n = 2,\; 4,\; 5,\; 6,\; 10,\; 15 .$$

Il y a donc **$6$ bonnes valeurs dans chaque bloc de $21$ entiers consécutifs**, à savoir les $n$ congrus à $2$, $4$, $5$, $6$, $10$ ou $15$ modulo $21$.

**Le décompte jusqu'à $10\,000$.**

La division euclidienne donne

$$10\,000 = 21 \times 476 + 4 .$$

Les entiers de $1$ à $9\,996 = 21 \times 476$ se rangent en $476$ blocs complets de $21$, ce qui donne

$$476 \times 6 = 2\,856 \text{ bonnes valeurs.}$$

Restent $9\,997$, $9\,998$, $9\,999$ et $10\,000$, qui sont congrus à $1$, $2$, $3$ et $4$ modulo $21$. Parmi ces quatre restes, $2$ et $4$ figurent dans notre liste : cela fait $2$ bonnes valeurs de plus.

**Conclusion.** Il y a

$$2\,856 + 2 = \boxed{2\,858}$$

entiers $n$ entre $1$ et $10\,000$ tels que $7$ divise $2^n - n^2$.

## Going further

1. Combien y a-t-il de tels entiers entre $1$ et $10^6$ ?
2. Existe-t-il un entier $n$ tel que $7$ divise à la fois $2^n - n^2$ et $2^{n+1} - (n+1)^2$ ? (Regarder la liste des restes modulo $21$.)
3. Reprendre l'exercice avec $5$ à la place de $7$ : quelle est alors la période, et combien d'entiers conviennent entre $1$ et $10\,000$ ?
