---
id: "4403"
title: "Somme des chiffres égale à 8"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [chiffres, somme, entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Math Kangaroo"
  reference: "Handout-678-781.pdf, problème 22 (réponse dans Handout-679-781.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-678-781.pdf"
---

## Statement

On s'intéresse aux nombres à trois chiffres dont la somme des chiffres vaut $8$.

1. Quel est le plus petit d'entre eux ?
2. Quel est le plus grand ?
3. Combien vaut la somme de ces deux nombres ?

## Hints

1. Un nombre à trois chiffres s'écrit $\overline{abc}$, avec $a \neq 0$ puisque c'est bien un
   nombre à trois chiffres.
2. Pour qu'un nombre à trois chiffres soit le plus petit possible, il faut d'abord que son
   chiffre des centaines soit le plus petit possible, puis celui des dizaines, puis celui des
   unités.
3. Pour le plus grand, c'est l'inverse : on met le plus possible dans les centaines.

## Solution

Notons $\overline{abc}$ le nombre, avec $a + b + c = 8$ et $a \geqslant 1$.

**Le plus petit.** On veut $a$ le plus petit possible, donc $a = 1$. Il reste $b + c = 7$, et on
veut ensuite $b$ le plus petit possible, donc $b = 0$ et $c = 7$. Le plus petit nombre est
$$107.$$

**Le plus grand.** On veut $a$ le plus grand possible. Comme $a \leqslant 8$ (sinon la somme
dépasse $8$), on prend $a = 8$, et il reste $b + c = 0$, donc $b = c = 0$. Le plus grand nombre
est
$$800.$$

**La somme.**
$$107 + 800 = 907.$$

**Réponses : $107$, $800$ et $907$.**
