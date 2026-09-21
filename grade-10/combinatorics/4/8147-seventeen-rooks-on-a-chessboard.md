---
id: "8147"
title: "Dix-sept tours sur un échiquier"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [principe-des-tiroirs, echiquier, tours, construction]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 1, exercice 35 (deux étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

On place $17$ tours sur un échiquier ordinaire de $8$ cases sur $8$, à raison d'au plus une tour par case.

Deux tours se menacent quand elles sont sur la même ligne ou sur la même colonne.

Montrer qu'on peut toujours en trouver trois qui ne se menacent pas deux à deux.

## Hints

1. On cherche trois tours sur trois lignes différentes **et** trois colonnes différentes.
2. Compte les tours ligne par ligne : $17$ tours sur $8$ lignes. Que peux-tu dire de la ligne la plus chargée ?
3. Montre qu'il existe forcément une ligne avec au moins $3$ tours, une autre avec au moins $2$, et une troisième avec au moins $1$.
4. Choisis ensuite les trois tours dans le bon ordre : commence par la ligne la moins chargée des trois. Pourquoi cet ordre-là ?

## Solution

Notons $n_1 \geq n_2 \geq \cdots \geq n_8$ les nombres de tours sur chacune des huit lignes, rangés dans l'ordre décroissant. Leur somme vaut $17$.

**Étape 1 : $n_1 \geq 3$.**

Si toutes les lignes portaient au plus $2$ tours, le total serait au plus $8 \times 2 = 16 < 17$. Donc $n_1 \geq 3$.

**Étape 2 : $n_2 \geq 2$.**

Supposons $n_2 \leq 1$. Alors $n_2, n_3, \ldots, n_8$ valent tous au plus $1$, donc

$$17 = n_1 + n_2 + \cdots + n_8 \leq n_1 + 7 \leq 8 + 7 = 15,$$

puisqu'une ligne ne peut porter plus de $8$ tours. C'est faux, donc $n_2 \geq 2$.

**Étape 3 : $n_3 \geq 1$.**

Supposons $n_3 = 0$. Alors $n_3 = n_4 = \cdots = n_8 = 0$ et

$$17 = n_1 + n_2 \leq 8 + 8 = 16,$$

ce qui est faux. Donc $n_3 \geq 1$.

**Étape 4 : le choix des trois tours.**

Il existe donc trois lignes distinctes, appelons-les $L_1$, $L_2$, $L_3$, portant respectivement au moins $3$, au moins $2$ et au moins $1$ tour.

Choisissons les tours dans l'ordre de la ligne la moins chargée vers la plus chargée.

1. Sur $L_3$, prenons n'importe quelle tour. Elle occupe une certaine colonne ; une seule colonne est désormais interdite.
2. Sur $L_2$, il y a au moins $2$ tours. Deux tours d'une même ligne sont sur des colonnes différentes, donc ces $2$ tours occupent $2$ colonnes distinctes. Une seule étant interdite, il en reste au moins une : choisissons-y une tour. Deux colonnes sont maintenant interdites.
3. Sur $L_1$, il y a au moins $3$ tours, donc au moins $3$ colonnes distinctes. Deux seulement sont interdites, il en reste au moins une : choisissons-y une tour.

**Conclusion.**

Les trois tours choisies sont sur trois lignes différentes et sur trois colonnes différentes : elles ne se menacent pas deux à deux.

## Going further

Le nombre $17$ est le plus petit qui convienne. Avec $16$ tours, on peut les éviter : il suffit de remplir entièrement deux lignes, la première et la deuxième par exemple. Toutes les tours sont alors sur deux lignes seulement, donc parmi trois tours quelconques, deux au moins partagent une ligne.
