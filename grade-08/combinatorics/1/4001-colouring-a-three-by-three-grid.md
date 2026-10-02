---
id: "4001"
title: "Colorier un carré 3 × 3"
grade: 8
theme: combinatorics
difficulty: 1
duration_min: 10
tags: [denombrement, principe-multiplicatif, puissances, coloriage]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 2B, Basic Combinatorics and Probability"
  reference: "Handout-3816-3443.pdf, exercice 4 (réponse dans Handout-3817-3443.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3816-3443.pdf"
---

## Statement

On veut colorier chacune des cases d'un carré $3 \times 3$ avec l'une des trois couleurs
suivantes : rouge, bleu ou vert. Deux cases voisines ont le droit d'avoir la même couleur,
et une couleur peut ne pas être utilisée du tout.

Combien y a-t-il de coloriages différents du carré ?

## Hints

1. Combien y a-t-il de coloriages d'un carré qui n'aurait qu'une seule case ? Et d'une bande de deux cases ?
2. Le choix de la couleur d'une case n'impose rien aux autres cases : les neuf choix sont indépendants.
3. Multiplie entre eux les nombres de possibilités, une fois par case.

## Solution

**L'idée : les cases se colorient une par une, sans se gêner.**

Le carré $3 \times 3$ contient $3 \times 3 = 9$ cases.

Colorions-les l'une après l'autre. Pour la première case, il y a $3$ couleurs possibles.
Quelle que soit la couleur choisie, il reste encore $3$ couleurs possibles pour la
deuxième case, puisque rien n'interdit de répéter une couleur. Et ainsi de suite jusqu'à
la neuvième case.

D'après le principe multiplicatif, le nombre total de coloriages est donc

$$\underbrace{3 \times 3 \times \cdots \times 3}_{9 \text{ facteurs}} = 3^9.$$

Il reste à calculer cette puissance :

$$3^2 = 9, \quad 3^4 = 81, \quad 3^8 = 81 \times 81 = 6561, \quad 3^9 = 3 \times 6561 = 19\,683.$$

**Réponse : il y a $19\,683$ coloriages différents.**

## Going further

Le même raisonnement donne $c^{n}$ coloriages pour une grille de $n$ cases et $c$ couleurs.
Avec seulement $2$ couleurs et une grille $8 \times 8$ (un échiquier), cela ferait déjà
$2^{64}$ coloriages, soit plus de $18$ milliards de milliards.
