---
id: "3824"
title: "Un triangle dans l'octogone"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [probabilite, denombrement, combinaisons, polygone regulier]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Mid-Quarter Competition"
  reference: "Handout-4070-3775.pdf, problème 24, d'après AMC 8 2018, problème 23 (corrigé dans Handout-4071-3775.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4070-3775.pdf"
---

## Statement

On choisit au hasard trois sommets d'un octogone régulier, et on trace le triangle qu'ils déterminent. Les trois sommets sont choisis simultanément, tous les choix de trois sommets étant équiprobables.

Quelle est la probabilité qu'au moins un côté de ce triangle soit aussi un côté de l'octogone ?

## Hints

1. Combien y a-t-il de façons de choisir trois sommets parmi huit ?
2. Un côté du triangle est un côté de l'octogone exactement quand deux des sommets choisis sont voisins sur l'octogone.
3. Compte séparément les triangles qui ont exactement un côté commun avec l'octogone et ceux qui en ont deux. Peut-il y en avoir trois ?
4. Pour « exactement un côté commun » : choisis d'abord le côté, puis le troisième sommet. Attention, ce troisième sommet ne doit être voisin d'aucune des deux extrémités.

## Solution

**L'idée : classer les triangles selon le nombre de côtés qu'ils partagent avec l'octogone.**

Notons les sommets $S_1, S_2, \ldots, S_8$ dans l'ordre autour de l'octogone, $S_8$ étant voisin de $S_1$.

**Étape 1. Le nombre total de triangles.**

Choisir trois sommets parmi huit, sans tenir compte de l'ordre :

$$\binom{8}{3} = \frac{8 \times 7 \times 6}{3 \times 2 \times 1} = 56.$$

Ces $56$ triangles sont équiprobables.

**Étape 2. Combien de côtés communs un triangle peut-il avoir ?**

Un côté du triangle est un côté de l'octogone exactement quand ses deux extrémités sont voisines sur l'octogone.

- Trois côtés communs demanderait trois sommets deux à deux voisins, donc un « triangle » formé de trois côtés consécutifs de l'octogone : impossible, car cela ferait le tour d'un polygone à trois côtés, ce que l'octogone n'est pas. Concrètement, si $S_i$ et $S_j$ sont voisins et $S_j$ et $S_k$ aussi, alors $S_i$ et $S_k$ sont séparés par $S_j$ : ils ne sont pas voisins.
- Il y a donc **zéro, un ou deux** côtés communs.

**Étape 3. Les triangles avec exactement deux côtés communs.**

Ce sont ceux formés de trois sommets consécutifs, $S_i$, $S_{i+1}$, $S_{i+2}$. Il y en a autant que de choix du sommet du milieu, soit

$$8.$$

**Étape 4. Les triangles avec exactement un côté commun.**

On choisit d'abord le côté commun : il y a $8$ côtés dans l'octogone. Disons qu'il s'agit de $[S_1 S_2]$.

Le troisième sommet doit être choisi parmi les six autres, mais il ne doit être voisin ni de $S_1$ ni de $S_2$, sinon on aurait deux côtés communs. Il faut donc écarter $S_8$ (voisin de $S_1$) et $S_3$ (voisin de $S_2$).

Il reste $S_4$, $S_5$, $S_6$, $S_7$, soit $4$ possibilités.

Chaque triangle de ce type est compté une seule fois, puisqu'il n'a qu'un seul côté commun. Cela fait

$$8 \times 4 = 32$$

triangles.

**Étape 5. On conclut.**

Les triangles ayant au moins un côté commun sont au nombre de

$$32 + 8 = 40.$$

D'où

$$P = \frac{40}{56} = \frac{5}{7}.$$

**Vérification par le complémentaire.** Les triangles sans aucun côté commun sont $56 - 40 = 16$. On peut les compter directement : ce sont les choix de trois sommets deux à deux non voisins. En écartant les $8$ triangles à trois sommets consécutifs et les $32$ à exactement deux sommets voisins, on retrouve bien $16$.

**Conclusion.** La probabilité vaut $\dfrac{5}{7}$, soit environ $71\ \%$.

## Going further

1. Reprends le problème avec un hexagone régulier, puis avec un décagone régulier.
2. Reprends le comptage pour un polygone régulier à $n$ côtés ($n \geqslant 6$) : montre qu'il y a $n(n-3)$ triangles ayant au moins un côté commun, puis écris la probabilité en fonction de $n$ et vérifie-la sur $n = 8$.
3. Quelle est la probabilité que le triangle tiré soit isocèle ?
