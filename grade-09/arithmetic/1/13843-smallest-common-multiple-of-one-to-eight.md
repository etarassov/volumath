---
id: "13843"
title: "Le plus petit multiple commun de 1, 2, …, 8"
grade: 9
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [ppcm, multiples, decomposition-en-facteurs-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet junior, exercice 12 (aussi sujet senior, exercice 10) ; réponse 840 dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Quel est le plus petit entier strictement positif qui soit un multiple de chacun des entiers
$1, 2, 3, 4, 5, 6, 7$ et $8$ ?

## Hints

1. Certains de ces nombres sont réglés d'office : un multiple de $8$ est aussi un multiple de
   $2$ et de $4$.
2. Décompose les entiers de $1$ à $8$ en facteurs premiers. Combien de fois le facteur $2$
   doit-il apparaître au moins dans le nombre cherché ? Et les facteurs $3$, $5$ et $7$ ?

## Solution

Soit $N$ un entier strictement positif multiple de $1, 2, \ldots, 8$.

**$N$ vaut au moins $840$.** Comme $8 = 2^3$ divise $N$, la décomposition de $N$ en facteurs
premiers contient au moins trois fois le facteur $2$. Comme $3$, $5$ et $7$ divisent $N$ et sont
premiers, elle contient aussi au moins une fois chacun des facteurs $3$, $5$ et $7$. Donc $N$ est
un multiple de

$$2^3 \times 3 \times 5 \times 7 = 840,$$

et en particulier $N \geqslant 840$.

**$840$ convient.** On a $840 = 2^3 \times 3 \times 5 \times 7$, donc $840$ est divisible par
$2$, $4 = 2^2$, $8 = 2^3$, $3$, $6 = 2 \times 3$, $5$ et $7$, et bien sûr par $1$.

**Le nombre cherché est $840$.**
