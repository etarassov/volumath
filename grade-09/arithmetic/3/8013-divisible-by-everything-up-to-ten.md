---
id: "8013"
title: "Divisible par tout ce qui va jusqu'à 10"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [ppcm, multiples, divisibilite, denombrement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, Coupe Animath 2017, éliminatoires lycéens, exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Combien y a-t-il d'entiers $n$ tels que

$$1 \leqslant n \leqslant 10^{10}$$

et tels que $n$ soit divisible par chacun des entiers $1, 2, 3, \ldots, 10$ ?

## Hints

1. Un nombre divisible par $2$, par $3$, ..., par $10$ à la fois est un multiple commun de
   tous ces nombres. Que sont les multiples communs de plusieurs nombres ?
2. Calcule le plus petit multiple commun de $1, 2, \ldots, 10$ en décomposant chacun en
   facteurs premiers. Attention à $8$ et à $9$.
3. Compter les multiples de $m$ entre $1$ et $N$ revient à faire une division euclidienne.

## Solution

**Les nombres cherchés sont les multiples d'un seul nombre.** Un entier divisible par
$1, 2, \ldots, 10$ est un multiple commun de ces dix nombres. Or les multiples communs de
plusieurs nombres sont exactement les multiples de leur plus petit multiple commun. Notons-le
$m$.

**Calcul de $m$.** Décomposons chacun des nombres :

$$1, \quad 2, \quad 3, \quad 2^2, \quad 5, \quad 2 \times 3, \quad 7, \quad 2^3, \quad 3^2, \quad 2 \times 5.$$

Pour être divisible par tous, il faut et il suffit de contenir :

- le facteur $2$ à la puissance la plus grande rencontrée, soit $2^3$ (à cause de $8$) ;
- le facteur $3$ à la puissance la plus grande rencontrée, soit $3^2$ (à cause de $9$) ;
- le facteur $5$ (à cause de $5$ et de $10$) ;
- le facteur $7$ (à cause de $7$).

Donc

$$m = 2^3 \times 3^2 \times 5 \times 7 = 8 \times 9 \times 5 \times 7 = 2520.$$

**On compte les multiples de $2520$ jusqu'à $10^{10}$.** Les multiples de $2520$ compris entre
$1$ et $N$ sont $2520 \times 1,\ 2520 \times 2,\ \ldots$ : il y en a autant que d'entiers $q
\geqslant 1$ tels que $2520\,q \leqslant N$, c'est-à-dire le quotient de la division
euclidienne de $N$ par $2520$.

Ici $N = 10^{10} = 10\,000\,000\,000$. Posons la division :

$$10\,000\,000\,000 = 2520 \times 3\,968\,253 + 2\,440.$$

*(Vérification : $2520 \times 3\,968\,253 = 9\,999\,997\,560$, et $9\,999\,997\,560 + 2\,440 = 10\,000\,000\,000$.)*

**Il y a $3\,968\,253$ entiers qui conviennent.**

## Going further

On aurait pu croire qu'il fallait multiplier $1 \times 2 \times \cdots \times 10 = 3\,628\,800$,
mais c'est beaucoup trop : ce produit compte plusieurs fois les mêmes facteurs premiers. Le
plus petit multiple commun $2520$ est plus de mille fois plus petit.
