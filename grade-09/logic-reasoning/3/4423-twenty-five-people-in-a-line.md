---
id: "4423"
title: "Vingt-cinq habitants en file indienne"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [logique, menteurs, absurde, alternance]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Math Kangaroo"
  reference: "Handout-678-781.pdf, problème 23 (réponse dans Handout-679-781.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-678-781.pdf"
---

## Statement

Sur une île vivent des **sincères**, qui disent toujours la vérité, et des **menteurs**, qui
mentent toujours. Rien ne les distingue de l'extérieur.

Vingt-cinq habitants se mettent en file indienne. Chacun d'eux, sauf le premier de la file,
déclare :

> « La personne juste devant moi est un menteur. »

Et le premier de la file déclare :

> « Tous ceux qui sont derrière moi sont des menteurs. »

Combien y a-t-il de menteurs dans la file ?

## Hints

1. Numérote les habitants de $1$ (le premier de la file) à $25$ (le dernier). L'habitant
   numéro $k$, pour $k \geqslant 2$, affirme que l'habitant $k - 1$ est un menteur.
2. Commence par le premier. Suppose qu'il dise la vérité : regarde alors ce que disent les
   habitants $2$ et $3$, et cherche la contradiction.
3. Une fois que tu sais ce qu'est le premier, le deuxième est forcé, puis le troisième, et ainsi
   de suite.

## Solution

Numérotons les habitants de $1$ à $25$ en partant de la tête de la file. Pour $k \geqslant 2$,
l'habitant $k$ affirme : « l'habitant $k - 1$ est un menteur ».

**Le premier est un menteur.** Supposons au contraire que l'habitant $1$ soit sincère. Alors sa
déclaration est vraie : les habitants $2$ à $25$ sont **tous** des menteurs. Regardons alors
l'habitant $3$, qui est donc un menteur : sa déclaration « l'habitant $2$ est un menteur » doit
être fausse, donc l'habitant $2$ serait sincère. Or on vient de dire que l'habitant $2$ est un
menteur. Contradiction.

Donc **l'habitant $1$ est un menteur**.

**On avance dans la file.** L'habitant $2$ dit « l'habitant $1$ est un menteur ». C'est vrai,
donc l'habitant $2$ est **sincère**.

L'habitant $3$ dit « l'habitant $2$ est un menteur ». C'est faux, donc l'habitant $3$ est
**menteur**.

L'habitant $4$ dit « l'habitant $3$ est un menteur ». C'est vrai, donc l'habitant $4$ est
**sincère**.

Et ainsi de suite : la situation alterne. Les habitants de numéro impair sont des menteurs, ceux
de numéro pair sont sincères.

**Cohérence.** Vérifions que tout tient : l'habitant $1$, menteur, affirme que tous les suivants
sont des menteurs ; c'est bien faux, puisque l'habitant $2$ est sincère. Aucune contradiction.

**On compte.** Les numéros impairs de $1$ à $25$ sont $1, 3, 5, \ldots, 25$, et il y en a $13$.

**Il y a $13$ menteurs dans la file.**
