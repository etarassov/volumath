---
id: "4223"
title: "Dix personnes et quatorze inimitiés"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 25
tags: [denombrement, principe-des-tiroirs, combinaisons]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, More Graphs and Geometry"
  reference: "Handout-2069-1883.pdf, exercice 5 (corrigé dans Handout-2070-1883.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2069-1883.pdf"
---

## Statement

Dans un groupe de $10$ personnes, il y a exactement $14$ paires de personnes qui se détestent.
On suppose que l'inimitié est réciproque : si $X$ déteste $Y$, alors $Y$ déteste $X$.

Démontrer qu'on peut malgré tout trouver dans ce groupe trois personnes qui s'entendent toutes
les trois, c'est-à-dire un trio dans lequel aucune des trois paires n'est une paire d'ennemis.

## Hints

1. Plutôt que de chercher un trio directement, compte **tous** les trios possibles dans le groupe.
2. Combien y a-t-il de façons de choisir $3$ personnes parmi $10$ ?
3. Un trio est « gâché » dès qu'il contient au moins une paire d'ennemis. Pour une paire
   d'ennemis donnée, combien de trios contiennent cette paire ?
4. Compare le nombre de trios gâchés au nombre total de trios.

## Solution

L'idée est de compter les trios, pas les personnes.

**Étape 1 : combien y a-t-il de trios en tout ?**

Choisir $3$ personnes parmi $10$ sans tenir compte de l'ordre : il y a $10$ choix pour la
première, $9$ pour la deuxième, $8$ pour la troisième, soit $10 \times 9 \times 8 = 720$ listes
ordonnées. Mais chaque trio est ainsi compté $3 \times 2 \times 1 = 6$ fois, une fois par ordre
possible. Le nombre de trios vaut donc
$$\frac{10 \times 9 \times 8}{6} = \frac{720}{6} = 120.$$

**Étape 2 : combien de trios une paire d'ennemis peut-elle gâcher ?**

Fixons une paire d'ennemis, disons $X$ et $Y$. Les trios qui contiennent à la fois $X$ et $Y$
s'obtiennent en ajoutant une troisième personne, choisie parmi les $10 - 2 = 8$ autres. Cette
paire d'ennemis est donc contenue dans exactement $8$ trios.

**Étape 3 : on majore le nombre de trios gâchés.**

Il y a $14$ paires d'ennemis. Chacune gâche au plus $8$ trios, donc le nombre de trios contenant
au moins une paire d'ennemis est au plus
$$14 \times 8 = 112.$$

C'est bien une majoration, et non une égalité : un même trio peut contenir deux ou trois paires
d'ennemis, et il est alors compté plusieurs fois dans ces $112$.

**Étape 4 : on conclut.**

Il y a $120$ trios en tout, et au plus $112$ d'entre eux sont gâchés. Il reste donc au moins
$$120 - 112 = 8$$
trios dans lesquels aucune paire n'est une paire d'ennemis.

**Conclusion.** Il existe forcément un trio de trois personnes qui s'entendent deux à deux. Le
raisonnement en donne même au moins huit.

## Going further

1. Jusqu'à combien de paires d'ennemis ce raisonnement reste-t-il concluant ?
   ($14 \times 8 = 112 < 120$, mais $15 \times 8 = 120$ : le comptage ne conclut plus à partir de
   $15$ paires.)
2. Le comptage n'est donc pas optimal : on peut montrer que le trio d'amis existe encore avec
   $19$ paires d'ennemis. En revanche, avec $20$ paires, ce n'est plus vrai. Trouve la
   configuration qui l'empêche.
   *(Indication : partage les $10$ personnes en deux groupes de $5$ dans lesquels tout le monde
   déteste tout le monde. Cela fait $10 + 10 = 20$ paires d'ennemis, et tout trio contient deux
   personnes d'un même groupe.)*
