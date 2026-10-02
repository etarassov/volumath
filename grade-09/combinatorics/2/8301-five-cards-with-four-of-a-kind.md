---
id: "8301"
title: "Un carré dans une main de cinq cartes"
grade: 9
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [denombrement, cartes, principe-multiplicatif]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, Coupe Animath de printemps 2020"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Coupe Animath de printemps 2020, exercice 2 (collège) et exercice 9 (lycée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

On a un jeu de $52$ cartes. Chaque carte porte :

- une **valeur** parmi $1, 2, 3, 4, 5, 6, 7, 8, 9, 10$, valet, dame, roi, soit $13$ valeurs ;
- une **couleur** parmi cœur, carreau, pique, trèfle, soit $4$ couleurs.

Pour chaque valeur et chaque couleur, le jeu contient exactement une carte. Par exemple il y a
un seul roi de trèfle.

Une **main** de $5$ cartes est un choix de $5$ cartes du jeu ; l'ordre dans lequel on les choisit
ne compte pas.

Combien y a-t-il de mains de $5$ cartes qui contiennent quatre cartes de la même valeur ?

## Hints

1. Si quatre des cinq cartes ont la même valeur, quelles sont ces quatre cartes exactement ? Combien y a-t-il de cartes portant une valeur donnée dans le jeu ?
2. Une main de ce type est donc entièrement décrite par deux choix : la valeur qui apparaît quatre fois, puis la cinquième carte.
3. Combien de choix pour la valeur ? Et ensuite, combien de cartes reste-t-il pour la cinquième ?
4. Attention à ne pas oublier la couleur de la cinquième carte : ce n'est pas une valeur qu'on choisit, c'est bien une carte.

## Solution

**Ce que contient une telle main.**

Le jeu contient exactement $4$ cartes de chaque valeur, une par couleur. Donc si une main
contient quatre cartes de la même valeur, ces quatre cartes sont forcément **les quatre cartes
de cette valeur** : il n'y a pas d'autre possibilité.

Une main qui convient est donc entièrement décrite par deux informations :

- la valeur qui apparaît quatre fois ;
- la cinquième carte.

**On compte les choix.**

Pour la valeur qui apparaît quatre fois, il y a $13$ choix, puisque le jeu a $13$ valeurs.

Une fois cette valeur fixée, les quatre cartes correspondantes sont posées. Il reste
$52 - 4 = 48$ cartes dans le jeu, et **n'importe laquelle** peut servir de cinquième carte : il y
a donc $48$ choix.

**On multiplie.**

Les deux choix sont indépendants, donc le nombre de mains est

$$13 \times 48 = 624 .$$

**Pourquoi on ne compte pas deux fois la même main.** Deux mains obtenues par des choix
différents sont bien différentes : si la valeur choisie change, le paquet de quatre cartes change ;
et si la cinquième carte change, la main change aussi. Il est d'ailleurs impossible qu'une main
de $5$ cartes contienne deux valeurs répétées quatre fois, cela ferait $8$ cartes.

**Conclusion.** Il y a $\boxed{624}$ mains de cinq cartes contenant quatre cartes de la même valeur.

## Going further

Une erreur très fréquente est de répondre $13 \times 12 = 156$ : on choisit alors la **valeur** de
la cinquième carte et on oublie qu'il faut encore choisir sa couleur. Une autre est de répondre
$13$, en oubliant complètement la cinquième carte.
