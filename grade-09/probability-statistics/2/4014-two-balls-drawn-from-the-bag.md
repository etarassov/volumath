---
id: "4014"
title: "Deux boules tirées du sac"
grade: 9
theme: probability-statistics
difficulty: 2
duration_min: 15
tags: [probabilite, parite, tirage-sans-remise]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 2A, Week 1 Competition"
  reference: "Handout-3131-2694.pdf, problème 17 (réponse 4/9 dans le barème en fin de fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3131-2694.pdf"
---

## Statement

Un sac contient dix boules numérotées de $1$ à $10$.

Jacques tire une boule au hasard et la garde. Julie tire ensuite au hasard l'une des neuf
boules restantes.

Quelle est la probabilité que la somme des deux numéros tirés soit paire ?

## Hints

1. Quand la somme de deux entiers est-elle paire ?
2. Combien y a-t-il de numéros pairs dans le sac ? Combien d'impairs ?
3. Place-toi juste après le tirage de Jacques. Quelle que soit la boule qu'il a prise, combien reste-t-il de boules de la même parité que la sienne, et combien de boules en tout ?

## Solution

**Étape 1. Quand la somme est-elle paire ?**

La somme de deux entiers est paire exactement lorsque les deux entiers ont la même parité :
tous les deux pairs, ou tous les deux impairs.

Il faut donc calculer la probabilité que Julie tire une boule **de la même parité** que
celle de Jacques.

**Étape 2. Le tirage de Julie.**

Le sac contient cinq numéros pairs ($2$, $4$, $6$, $8$, $10$) et cinq numéros impairs
($1$, $3$, $5$, $7$, $9$).

Jacques tire une boule. Peu importe laquelle : dans tous les cas, il enlève du sac une boule
de la parité de son numéro. Il reste donc, parmi les neuf boules restantes :

- $4$ boules de la même parité que celle de Jacques ;
- $5$ boules de l'autre parité.

Julie tire au hasard l'une des $9$ boules restantes, toutes également probables. La
probabilité qu'elle tombe sur l'une des $4$ boules de la même parité vaut donc

$$\frac{4}{9}.$$

**Réponse : la probabilité que la somme soit paire vaut $\dfrac{4}{9}$.**

## Going further

Le résultat est inférieur à $\dfrac12$, et c'est logique : en retirant une boule, Jacques
rend la parité qu'il a tirée un peu plus rare dans le sac. Si Julie remettait la boule de
Jacques dans le sac avant de tirer, la probabilité serait exactement $\dfrac{5}{10} = \dfrac12$.
