---
id: "3805"
title: "Trois menteurs et leurs cailloux"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 15
tags: [menteurs, negation, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Problem Solving: Think Outside the Box"
  reference: "Handout-4165-3921.pdf, problème 20"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4165-3921.pdf"
---

## Statement

Antoine, Basile et Clément mentent toujours : tout ce qu'ils disent est faux.

Chacun d'eux ramasse un caillou, rouge ou vert.

- Antoine dit : « Mon caillou est de la même couleur que celui de Basile. »
- Basile dit : « Mon caillou est de la même couleur que celui de Clément. »
- Clément dit : « Exactement deux d'entre nous ont un caillou rouge. »

De quelle couleur est le caillou de chacun ?

## Hints

1. Ils mentent tous : commence par écrire ce qui est vrai, c'est-à-dire le contraire de chaque phrase.
2. Des deux premières phrases, tu tires que le caillou d'Antoine et celui de Basile sont de couleurs différentes, et de même pour Basile et Clément. Comme il n'y a que deux couleurs, que peux-tu en déduire sur Antoine et Clément ?
3. Il ne reste alors que deux possibilités. Utilise la phrase de Clément pour éliminer la mauvaise.

## Solution

**L'idée : un menteur nous renseigne autant qu'un honnête, il suffit de prendre le contraire de ce qu'il dit.**

**Étape 1. On transforme les mensonges en vérités.**

- Antoine ment : le caillou d'Antoine **n'est pas** de la même couleur que celui de Basile.
- Basile ment : le caillou de Basile **n'est pas** de la même couleur que celui de Clément.
- Clément ment : il n'y a **pas** exactement deux cailloux rouges.

**Étape 2. Antoine et Clément ont la même couleur.**

Il n'y a que deux couleurs. Le caillou de Basile est différent de celui d'Antoine, et différent de celui de Clément. Antoine et Clément ont donc tous les deux la couleur qui n'est pas celle de Basile : **ils ont la même couleur**.

Il ne reste donc que deux possibilités :

- Antoine et Clément rouges, Basile vert ;
- Antoine et Clément verts, Basile rouge.

**Étape 3. On élimine grâce à Clément.**

Dans la première possibilité, il y a exactement deux cailloux rouges (ceux d'Antoine et de Clément). Mais Clément a menti en disant qu'il y en avait exactement deux, donc c'est impossible.

Dans la seconde possibilité, il y a un seul caillou rouge, celui de Basile. Ce n'est pas deux : la phrase de Clément est bien fausse. Tout est cohérent.

**Conclusion.** Antoine et Clément ont un caillou vert, Basile a un caillou rouge.

## Going further

1. Reprends le problème en supposant que les trois disent toujours la vérité. Y a-t-il une solution ?
2. Et si Clément avait dit « Exactement un d'entre nous a un caillou rouge » (toujours en mentant) ? Combien de solutions trouves-tu alors ?
