---
id: "4414"
title: "Reste 1, reste 2, reste 3, reste 4, reste 5"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [division-euclidienne, reste, multiple]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Divisibility"
  reference: "Handout-1265-1276.pdf, problème 6 (réponse dans Handout-1271-1276.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1265-1276.pdf"
---

## Statement

Trouver le plus petit entier naturel qui laisse

- un reste de $1$ dans la division par $2$,
- un reste de $2$ dans la division par $3$,
- un reste de $3$ dans la division par $4$,
- un reste de $4$ dans la division par $5$,
- un reste de $5$ dans la division par $6$.

## Hints

1. Regarde bien la liste : à chaque fois, quelle est la différence entre le diviseur et le
   reste ?
2. Il manque toujours exactement $1$ pour tomber juste. Que se passe-t-il si on ajoute $1$ au
   nombre cherché ?
3. Cherche alors le plus petit entier strictement positif divisible à la fois par $2$, $3$, $4$,
   $5$ et $6$.

## Solution

**L'idée.** Appelons $n$ le nombre cherché. Regardons les cinq conditions :
le reste est $1$ pour le diviseur $2$, $2$ pour le diviseur $3$, $3$ pour le diviseur $4$, et
ainsi de suite. À chaque fois, **il manque exactement $1$ pour que la division tombe juste**.

Autrement dit, $n + 1$ est divisible par $2$, par $3$, par $4$, par $5$ et par $6$.

**Le plus petit multiple commun.** Cherchons le plus petit entier strictement positif divisible
par $2$, $3$, $4$, $5$ et $6$. Décomposons ces nombres :

$$2 = 2, \quad 3 = 3, \quad 4 = 2 \times 2, \quad 5 = 5, \quad 6 = 2 \times 3.$$

Pour être divisible par $4$, il faut au moins deux facteurs $2$ ; il faut aussi un facteur $3$ et
un facteur $5$. Le plus petit tel nombre est

$$2 \times 2 \times 3 \times 5 = 60.$$

On vérifie que $60$ est bien divisible par $2$, $3$, $4$, $5$ et $6$.

**Conclusion.** Le plus petit $n + 1$ possible est $60$, donc le plus petit $n$ possible est
$n = 59$.

**Vérification.** $59 = 2 \times 29 + 1$, $59 = 3 \times 19 + 2$, $59 = 4 \times 14 + 3$,
$59 = 5 \times 11 + 4$, $59 = 6 \times 9 + 5$. Toutes les conditions sont remplies.

**Le nombre cherché est $59$.**

## Going further

Tous les nombres qui conviennent sont $59$, $119$, $179$, … c'est-à-dire les nombres de la forme
$60k - 1$ avec $k$ entier strictement positif.
