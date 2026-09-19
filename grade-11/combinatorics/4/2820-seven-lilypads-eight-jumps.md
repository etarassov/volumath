---
id: "2820"
title: "Sept nénuphars, huit sauts"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [denombrement, permutations, repetition, evenement-contraire]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School II, Counting and probabilities"
  reference: "Handout-854-941.pdf, problème 2"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-854-941.pdf"
---

## Statement

Sept nénuphars flottent sur un étang. Ils sont tous différents les uns des autres.

Une grenouille, qui se trouve dans l'eau, veut se poser sur **chacun** des sept nénuphars. Elle décide de se poser **exactement deux fois** sur l'un d'entre eux, et une seule fois sur chacun des six autres. De plus, elle refuse de se poser deux fois de suite sur le même nénuphar : entre ses deux passages sur le nénuphar répété, elle doit s'être posée ailleurs au moins une fois.

Combien de parcours différents la grenouille peut-elle faire ?

## Hints

1. Combien de fois la grenouille se pose-t-elle en tout ? Un parcours, c'est donc une liste de combien de noms de nénuphars ?
2. Commence par choisir **lequel** des sept nénuphars sera visité deux fois. Ce choix se fait indépendamment du reste.
3. Une fois ce choix fait, compte d'abord tous les ordres possibles, sans se soucier de l'interdiction. Attention : deux des huit passages sont sur le même nénuphar, donc les échanger ne donne pas un nouveau parcours.
4. Il est plus simple de compter les parcours **interdits** et de les retrancher. Un parcours interdit est un parcours où les deux passages sur le nénuphar répété sont côte à côte.
5. Pour compter ceux-là, colle les deux passages en un seul bloc. Combien d'objets reste-t-il à ranger ? Sont-ils tous différents ?

## Solution

**Ce qu'est un parcours.**

La grenouille se pose $6 \times 1 + 1 \times 2 = 8$ fois. Un parcours est donc la liste, dans l'ordre, des huit nénuphars sur lesquels elle se pose : six noms apparaissant une fois, et un septième nom apparaissant deux fois.

**Étape 1 : choisir le nénuphar répété.**

Il y a $7$ façons de choisir lequel des sept nénuphars sera visité deux fois. Fixons ce choix, et comptons les parcours correspondants ; il suffira de multiplier par $7$ à la fin.

**Étape 2 : tous les ordres possibles, sans l'interdiction.**

Il faut ranger huit passages dans huit positions. Si les huit passages étaient tous différents, il y aurait $8! = 40\,320$ rangements.

Mais deux d'entre eux sont identiques : ce sont les deux passages sur le nénuphar répété. Échanger ces deux-là ne change pas le parcours, or ce sont les seules répétitions. Chaque parcours est donc compté exactement deux fois dans les $8!$ rangements, et le nombre de parcours vaut

$$\frac{8!}{2} = \frac{40\,320}{2} = 20\,160 .$$

**Étape 3 : les parcours interdits.**

Un parcours est interdit lorsque les deux passages sur le nénuphar répété sont **consécutifs**.

Pour les compter, collons ces deux passages ensemble : ils forment un unique bloc, indissociable. Il reste alors à ranger $7$ objets : les six nénuphars visités une fois, et le bloc. Ces sept objets sont tous différents, donc il y a

$$7! = 5040$$

rangements. Et chacun de ces rangements donne exactement un parcours interdit. (Il n'y a pas à diviser par $2$ ici : à l'intérieur du bloc, les deux passages sont sur le même nénuphar, il n'y a rien à ordonner.)

**Étape 4 : soustraire.**

Pour un nénuphar répété fixé, le nombre de parcours autorisés vaut

$$20\,160 - 5040 = 15\,120 .$$

**Étape 5 : le total.**

En tenant compte des $7$ choix du nénuphar répété :

$$7 \times 15\,120 = 105\,840 .$$

**Conclusion.** La grenouille peut faire

$$105\,840$$

parcours différents.

**Un contrôle sur un petit cas.** Avec seulement $3$ nénuphars, la même méthode donne $3 \times \left(\dfrac{4!}{2} - 3!\right) = 3 \times (12 - 6) = 18$. On peut vérifier ce nombre à la main : en notant $A$ le nénuphar répété et $B$, $C$ les deux autres, les parcours valides sont $ABAC$, $ABCA$, $ACAB$, $ACBA$, $BACA$, $CABA$, soit $6$ parcours, et il y a $3$ choix pour le nénuphar répété, d'où $18$.

## Going further

1. Reprendre le problème sans l'interdiction « pas deux fois de suite » : combien de parcours ?
2. La grenouille se pose maintenant exactement deux fois sur **deux** nénuphars différents (et une fois sur les cinq autres), toujours sans jamais se poser deux fois de suite au même endroit. Combien de parcours ?
3. Sur $n$ nénuphars, donner une formule générale pour le problème de l'énoncé, et vérifier qu'elle redonne $105\,840$ pour $n = 7$.
