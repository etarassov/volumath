---
id: "4421"
title: "999 puis 2001, le même diviseur"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [division-euclidienne, diviseurs, reste, decomposition]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Math Kangaroo"
  reference: "Handout-678-781.pdf, problème 17 (réponse dans Handout-679-781.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-678-781.pdf"
---

## Statement

Quand on divise $999$ par un certain nombre entier à deux chiffres, le reste vaut $3$.

Quel est le reste de la division de $2001$ par ce même nombre ?

## Hints

1. Écris la division euclidienne de $999$ par le nombre cherché, appelons-le $n$. Que peut-on
   dire de $999 - 3$ ?
2. Décompose $996$ en produit de facteurs premiers, puis liste ses diviseurs à deux chiffres.
3. Il se peut qu'il y en ait plusieurs. Calcule le reste demandé pour chacun d'eux et compare.

## Solution

**Ce que dit l'énoncé.** Notons $n$ le nombre cherché. La division euclidienne s'écrit

$$999 = n \times q + 3, \qquad \text{avec } 3 < n.$$

Donc $999 - 3 = 996$ est un multiple de $n$ : **$n$ est un diviseur de $996$.**

**Les diviseurs de $996$ à deux chiffres.** Décomposons :

$$996 = 4 \times 249 = 2^2 \times 3 \times 83,$$

et $83$ est un nombre premier. Les diviseurs de $996$ sont donc

$$1,\ 2,\ 3,\ 4,\ 6,\ 12,\ 83,\ 166,\ 249,\ 332,\ 498,\ 996.$$

Parmi eux, ceux qui ont deux chiffres sont $12$ et $83$. (Tous les deux sont bien strictement
plus grands que le reste $3$, donc les deux sont possibles.)

**Le reste de $2001$.** Traitons les deux cas.

- Si $n = 12$ : $2001 = 12 \times 166 + 9$, donc le reste vaut $9$.
- Si $n = 83$ : $2001 = 83 \times 24 + 9$, donc le reste vaut $9$.

Les deux cas donnent le même reste, la question a donc bien une réponse unique.

**Le reste de la division de $2001$ par ce nombre vaut $9$.**

## Going further

Ce n'est pas un hasard : $2001 - 9 = 1992 = 2 \times 996$. Comme $n$ divise $996$, il divise
aussi $1992$, donc $2001$ laisse le reste $9$ pour **tout** diviseur $n$ de $996$ strictement
plus grand que $9$. On n'avait même pas besoin de chercher les valeurs de $n$.
