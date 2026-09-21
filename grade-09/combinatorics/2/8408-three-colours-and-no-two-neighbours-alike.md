---
id: "8408"
title: "Trois couleurs, jamais deux voisins pareils"
grade: 9
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [denombrement, coloriage, principe-multiplicatif, puissance]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, Coupe Animath de printemps 2021"
  reference: "Poly-2021-Valbonne.pdf, « Coupe Animath de printemps 2021 », énoncés destinés aux élèves de lycée, exercice 12"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

On veut colorier les entiers de $1$ à $2021$. Chaque entier reçoit une couleur et une seule : bleu, vert ou rouge. La seule contrainte est que **deux entiers consécutifs n'aient jamais la même couleur**.

De combien de façons peut-on le faire ?

## Hints

1. Commence petit. Combien de coloriages pour les entiers de $1$ à $2$ ? Et de $1$ à $3$ ?
2. Colorie les entiers dans l'ordre : d'abord $1$, puis $2$, puis $3$, et ainsi de suite. Combien de couleurs sont possibles pour $1$ ?
3. Une fois que l'entier $k$ est colorié, combien de couleurs restent permises pour $k+1$ ? La réponse dépend-elle de ce qui s'est passé avant ?
4. Quand on fait un choix, puis un autre, puis un autre, le nombre total de possibilités se **multiplie**, il ne s'additionne pas.

## Solution

**Colorier dans l'ordre.**

Décidons de la couleur de $1$, puis de celle de $2$, puis de celle de $3$, et ainsi de suite jusqu'à $2021$. Un coloriage, c'est exactement une suite de tels choix.

- Pour l'entier $1$, il n'y a aucune contrainte : $3$ couleurs possibles.
- Pour l'entier $2$, la seule contrainte est de ne pas reprendre la couleur de $1$ : il reste $2$ couleurs possibles.
- Plus généralement, une fois que $1, 2, \ldots, k$ sont coloriés, l'entier $k+1$ ne doit pas avoir la couleur de $k$. Il n'a aucune contrainte vis-à-vis des entiers plus petits, puisque seuls les **voisins** comptent. Il reste donc toujours exactement $2$ couleurs possibles.

Ce point est important : le nombre de choix pour $k+1$ vaut $2$ **quoi qu'il se soit passé avant**. C'est ce qui permet de multiplier.

**Compter.**

Il y a $1$ choix à $3$ possibilités (pour l'entier $1$), puis $2020$ choix à $2$ possibilités (pour les entiers $2, 3, \ldots, 2021$). En tout

$$3 \times \underbrace{2 \times 2 \times \cdots \times 2}_{2020 \text{ facteurs}} = 3 \times 2^{2020}$$

coloriages.

De plus, deux suites de choix différentes donnent bien deux coloriages différents, et tout coloriage valide s'obtient ainsi. Le compte est donc exact.

**Réponse :** il y a $\boxed{3 \times 2^{2020}}$ coloriages.

## Going further

La même méthode donne $3 \times 2^{n-1}$ coloriages pour les entiers de $1$ à $n$. On peut vérifier les petits cas à la main :

| $n$ | formule | coloriages |
|---|---|---|
| $1$ | $3 \times 2^0$ | $3$ |
| $2$ | $3 \times 2^1$ | $6$ |
| $3$ | $3 \times 2^2$ | $12$ |

Pour $n = 2$, les six coloriages sont bien : bleu-vert, bleu-rouge, vert-bleu, vert-rouge, rouge-bleu, rouge-vert.
