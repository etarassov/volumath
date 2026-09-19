---
id: "4621"
title: "Une case noire et une case blanche"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [denombrement, echiquier, principe multiplicatif]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Beginners, Combinatorics on a Chessboard"
  reference: "Handout-1191-1195.pdf, section « Combinatorics on a Chessboard », exercice 1 (réponse dans Handout-1192-1195.pdf), d'après N. Vilenkine, « Combinatoire »"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1191-1195.pdf"
---

## Statement

Un échiquier a $8$ lignes et $8$ colonnes, soit $64$ cases, alternativement noires et blanches :
$32$ cases noires et $32$ cases blanches. Deux cases voisines par un côté sont toujours de
couleurs différentes.

De combien de façons peut-on choisir une case noire **et** une case blanche qui ne soient ni sur
la même ligne, ni sur la même colonne ?

## Hints

1. Choisis d'abord la case noire, puis la case blanche. Combien de choix pour la case noire ?
2. La case noire étant choisie, il faut écarter toutes les cases blanches de sa ligne et toutes
   celles de sa colonne. Combien y en a-t-il sur une ligne ? sur une colonne ?
3. Attention à ne pas compter deux fois : la case blanche interdite qui serait à la fois sur la
   ligne et sur la colonne de la case noire, ça n'existe pas. Pourquoi ?
4. Le nombre de cases blanches restantes ne dépend pas de la case noire choisie. Multiplie.

## Solution

**Étape 1 : le choix de la case noire.**

Il y a $32$ cases noires, donc $32$ choix possibles.

**Étape 2 : les cases blanches interdites.**

Fixons une case noire. Sur sa ligne, il y a $8$ cases, alternativement noires et blanches, donc
$4$ cases blanches. Sur sa colonne, de même, il y a $4$ cases blanches.

Ces deux groupes de $4$ cases n'ont aucune case commune. En effet, la seule case qui se trouve à
la fois sur la ligne et sur la colonne de notre case noire, c'est la case noire elle-même, qui
n'est pas blanche.

Il y a donc exactement $4 + 4 = 8$ cases blanches interdites.

**Étape 3 : les cases blanches autorisées.**

Il reste
$$32 - 8 = 24$$
cases blanches possibles. Et ce nombre, $24$, est le même quelle que soit la case noire choisie :
le raisonnement de l'étape 2 n'a utilisé aucune particularité de cette case.

**Étape 4 : multiplier.**

Chaque choix de case noire se combine avec chacun des $24$ choix de case blanche, et deux choix
différents donnent deux couples différents. Le nombre total vaut donc
$$32 \times 24 = 768 .$$

**Conclusion.** Il y a **$768$** façons de choisir une case noire et une case blanche qui ne
soient ni sur la même ligne ni sur la même colonne.

## Going further

Compare avec la même question sans la couleur : choisir deux cases quelconques (une première,
puis une seconde) qui ne soient ni sur la même ligne ni sur la même colonne. Il y a $64$ choix
pour la première, puis il faut retirer les $7$ cases de sa ligne et les $7$ de sa colonne,
c'est-à-dire $64 - 1 - 7 - 7 = 49$ choix pour la seconde, soit $64 \times 49 = 3136$ couples
ordonnés. C'est exactement le nombre de façons de poser une tour blanche et une tour noire sur
l'échiquier sans qu'elles se menacent.
