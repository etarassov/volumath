---
id: "12250"
title: "Des temples gardés par des éléphants"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [recurrence, plus grand element, reduction a un cas plus petit, existence et unicite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de mars 2016"
  reference: "2017-10_ofm-2015-2016-test-mars.pdf, test du 23 mars 2016, exercice 4 (exercice commun aux groupes A et B) ; pas de corrigé publié, solution rédigée pour cette base et énoncé vérifié par ordinateur sur toutes les tailles possibles pour n ⩽ 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-test-mars.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2015-2016-test-mars.pdf"
---

## Statement

Une route droite longe un ravin. Sur cette route se trouvent $n$ temples, les uns à la suite des autres, avec $n \geqslant 1$.

Chaque temple est gardé par deux éléphants qui lui tournent le dos : l'un se tient juste à gauche du temple et regarde vers la gauche, l'autre se tient juste à droite du temple et regarde vers la droite. Les $2n$ éléphants ont des tailles toutes différentes.

Un éléphant qui se met en marche avance droit devant lui, le long de la route, toujours dans la même direction.

- S'il rencontre un éléphant qui lui tourne le dos, il le piétine et continue.
- S'il rencontre un éléphant qui lui fait face, le plus petit des deux est piétiné par le plus gros.

Un éléphant piétiné tombe dans le ravin, et ne revient pas.

Montrer qu'il existe un unique temple $t$ ayant la propriété suivante : pour tout éléphant $e$, si $e$ se met en marche pendant que tous les autres éléphants restent immobiles, alors $e$ ne peut pas atteindre $t$.

## Hints

1. Numérote les temples $T_1, T_2, \ldots, T_n$ de gauche à droite. À quelle condition l'éléphant qui garde la droite de $T_i$ atteint-il le temple $T_j$, pour $j > i$ ?
2. Certains éléphants ne peuvent atteindre aucun temple. Lesquels ?
3. Parmi les autres éléphants, regarde le plus gros. Quels temples atteint-il ? Et qui peut encore atteindre les temples situés derrière lui ?
4. Raisonne par récurrence sur le nombre de temples.

## Solution

On numérote les temples $T_1, T_2, \ldots, T_n$ de gauche à droite. On note $G_i$ l'éléphant situé juste à gauche de $T_i$, qui regarde vers la gauche, et $D_i$ celui situé juste à droite de $T_i$, qui regarde vers la droite. Le long de la route, on trouve donc dans l'ordre
$$G_1, \; T_1, \; D_1, \; G_2, \; T_2, \; D_2, \; \ldots, \; G_n, \; T_n, \; D_n.$$

Dans toute la suite, « $e$ atteint $T_j$ » veut dire : si $e$ se met en marche pendant que tous les autres restent immobiles, il arrive jusqu'au temple $T_j$.

**Étape 1. Quels temples un éléphant peut-il atteindre ?**

Prenons l'éléphant $D_i$. Il marche vers la droite, et s'éloigne donc des temples $T_1, \ldots, T_i$ : il ne peut pas les atteindre. En avançant, il rencontre d'abord $G_{i+1}$, qui regarde vers la gauche et lui fait donc face. S'il est plus gros, il le piétine, arrive au temple $T_{i+1}$, puis rencontre $D_{i+1}$, qui lui tourne le dos et qu'il piétine forcément. Il rencontre ensuite $G_{i+2}$, qui lui fait face, et ainsi de suite.

Les éléphants qui regardent vers la droite ne l'arrêtent donc jamais. Seuls les $G_k$ peuvent l'arrêter. Ainsi, pour $j > i$ :

*$D_i$ atteint $T_j$ si et seulement si $D_i$ est plus gros que chacun des éléphants $G_{i+1}, G_{i+2}, \ldots, G_j$.*

De même, en échangeant la gauche et la droite, pour $j < i$ :

*$G_i$ atteint $T_j$ si et seulement si $G_i$ est plus gros que chacun des éléphants $D_j, D_{j+1}, \ldots, D_{i-1}$,*

et $G_i$ n'atteint aucun des temples $T_i, \ldots, T_n$.

En particulier, $G_1$ et $D_n$ n'atteignent aucun temple. On appelle **utiles** les $2n - 2$ autres éléphants, c'est-à-dire $D_1, \ldots, D_{n-1}$ et $G_2, \ldots, G_n$. Remarquons aussi que, d'après les deux conditions ci-dessus, $G_1$ et $D_n$ n'interviennent jamais dans la question de savoir si un éléphant atteint un temple.

**Étape 2. Le principe de la démonstration.**

On raisonne par récurrence sur le nombre $n$ de temples. Le résultat est vrai pour $n = 1$ : les deux éléphants s'éloignent du seul temple $T_1$, qui ne peut donc pas être atteint, et c'est le seul temple.

Soit maintenant $n \geqslant 2$. On suppose que le résultat est vrai pour toutes les routes qui ont moins de $n$ temples, et l'on va montrer qu'il est vrai pour une route qui en a $n$. Comme il est vrai pour $1$ temple, on obtiendra ainsi qu'il est vrai pour $2$ temples, puis pour $3$, et ainsi de suite.

**Étape 3. Le plus gros éléphant utile.**

Comme $n \geqslant 2$, il y a au moins deux éléphants utiles. Soit $E$ le plus gros d'entre eux. C'est l'un des $D_i$ avec $1 \leqslant i \leqslant n - 1$, ou l'un des $G_i$ avec $2 \leqslant i \leqslant n$. Les deux cas sont symétriques : on traite le premier, $E = D_i$, et le second s'en déduit en échangeant la gauche et la droite.

*Les temples $T_{i+1}, \ldots, T_n$ sont tous atteints.* En effet, les éléphants $G_{i+1}, \ldots, G_n$ sont utiles, donc plus petits que $E = D_i$. D'après l'étape 1, $D_i$ atteint chacun des temples $T_{i+1}, \ldots, T_n$.

*Les temples $T_1, \ldots, T_i$ ne peuvent être atteints que par les gardiens de ces temples.* Soit $j \leqslant i$. Un éléphant $D_k$ qui atteint $T_j$ vérifie $k < j \leqslant i$. Un éléphant $G_k$ avec $k > i$ qui atteindrait $T_j$ devrait être plus gros que $D_j, \ldots, D_{k-1}$, et en particulier que $D_i$. C'est impossible, car $G_k$ est utile (on a $k \geqslant 2$) et donc plus petit que $E = D_i$.

**Étape 4. On se ramène à une route plus courte.**

Considérons une nouvelle route, plus courte, qui ne porte que les $i$ premiers temples $T_1, \ldots, T_i$ et leurs $2i$ gardiens $G_1, D_1, \ldots, G_i, D_i$, avec les mêmes tailles.

D'après l'étape 1, savoir si un gardien $G_k$ ou $D_k$, avec $k \leqslant i$, atteint un temple $T_j$, avec $j \leqslant i$, dépend seulement des tailles des éléphants placés entre lui et $T_j$. Ce sont les mêmes sur les deux routes. Donc, pour $j \leqslant i$, le temple $T_j$ est atteint sur la route courte si et seulement s'il est atteint par l'un de ces gardiens sur la route complète, c'est-à-dire, d'après l'étape 3, si et seulement s'il est atteint sur la route complète.

La route courte a $i \leqslant n - 1$ temples. D'après l'hypothèse de récurrence, exactement un des temples $T_1, \ldots, T_i$ n'y est pas atteint. C'est donc aussi le seul temple non atteint parmi $T_1, \ldots, T_i$ sur la route complète. Comme les temples $T_{i+1}, \ldots, T_n$ sont tous atteints, la route complète a exactement un temple qui n'est atteint par aucun éléphant.

Le cas $E = G_i$ se traite de la même façon : $G_i$ atteint tous les temples $T_1, \ldots, T_{i-1}$, et l'on se ramène à la route courte qui porte les temples $T_i, \ldots, T_n$, au nombre de $n - i + 1 \leqslant n - 1$.

Cela achève la récurrence : pour tout $n \geqslant 1$, il existe un unique temple qu'aucun éléphant ne peut atteindre.

## Going further

1. On numérote les tailles de $1$ à $6$, et l'on place, de gauche à droite, les éléphants $G_1, D_1, G_2, D_2, G_3, D_3$ avec les tailles $4, 2, 1, 6, 5, 3$. Quel est le temple que personne n'atteint ? Retrouve-le en suivant la démonstration.
2. Décris une méthode rapide pour trouver ce temple quand on connaît toutes les tailles.
