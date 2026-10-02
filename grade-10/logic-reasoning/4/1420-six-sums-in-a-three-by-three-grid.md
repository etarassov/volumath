---
id: "1420"
title: "Six sommes dans une grille 3 sur 3"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [somme-totale, invariant, entiers-consecutifs, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2, Winter Competition « Game »"
  reference: "Handout-3916-3573.pdf, partie 4 « Misc », problème 3 (réponse dans Handout-3917-3573.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3916-3573.pdf"
---

## Statement

On écrit les nombres de $1$ à $9$ dans une grille de $3$ cases sur $3$, un nombre par case, chaque nombre une seule fois.

On calcule ensuite les six sommes suivantes : la somme de chacune des trois lignes, et la somme de chacune des trois colonnes.

Quel est le plus grand nombre d'**entiers consécutifs** que l'on puisse trouver parmi ces six sommes ?

Par exemple, si les six sommes étaient $8$, $12$, $13$, $14$, $19$, $19$, on aurait trouvé trois entiers consécutifs ($12$, $13$, $14$).

## Hints

1. Combien vaut la somme des trois sommes de lignes ? Et celle des trois sommes de colonnes ?
2. En déduire la valeur du total des six sommes, quelle que soit la grille. C'est une quantité qui ne dépend pas du rangement choisi.
3. Supposons qu'on trouve six entiers consécutifs. Comme il n'y a que six sommes, elles seraient toutes utilisées. Calculer leur total en fonction du plus petit.
4. Comparer avec le total obtenu à la question 2 : une équation apparaît. A-t-elle une solution entière ?
5. Il reste à construire une grille qui donne cinq entiers consécutifs. Tâtonner en visant des sommes proches les unes des autres.

## Solution

**Un total qui ne change jamais.**

Les trois lignes contiennent ensemble tous les nombres de $1$ à $9$, donc la somme des trois sommes de lignes vaut

$$1 + 2 + \cdots + 9 = 45 .$$

Pour la même raison, la somme des trois sommes de colonnes vaut aussi $45$. Donc, quelle que soit la grille,

$$\text{total des six sommes} = 45 + 45 = 90 .$$

**Six entiers consécutifs, c'est impossible.**

Supposons qu'on puisse trouver six entiers consécutifs parmi les six sommes. Comme il n'y a que six sommes en tout, cela veut dire que les six sommes sont exactement ces six entiers, deux à deux différents. Notons $k$ le plus petit : les sommes sont $k, k+1, k+2, k+3, k+4, k+5$, et leur total vaut

$$6k + (0+1+2+3+4+5) = 6k + 15 .$$

Ce total doit être égal à $90$ :

$$6k + 15 = 90 \quad \Longrightarrow \quad 6k = 75 .$$

Or $75$ n'est pas un multiple de $6$, donc $k$ ne serait pas un entier. C'est impossible.

(On peut aussi le voir par parité : $6k$ est pair et $15$ est impair, donc $6k+15$ est **impair**, alors que $90$ est pair.)

Le plus grand nombre d'entiers consécutifs est donc **au plus $5$**.

**Cinq entiers consécutifs, c'est possible.**

Voici une grille qui y parvient :

```
1  2  7
4  8  5
9  6  3
```

Les sommes des lignes valent $1+2+7 = 10$, puis $4+8+5 = 17$, puis $9+6+3 = 18$.

Les sommes des colonnes valent $1+4+9 = 14$, puis $2+8+6 = 16$, puis $7+5+3 = 15$.

Les six sommes sont donc

$$10, \quad 14, \quad 15, \quad 16, \quad 17, \quad 18 ,$$

et l'on y lit les cinq entiers consécutifs $14, 15, 16, 17, 18$.

(Contrôle : $10 + 14 + 15 + 16 + 17 + 18 = 90$, comme prévu.)

**Conclusion.** Le plus grand nombre d'entiers consécutifs que l'on puisse obtenir est $\boxed{5}$.

## Going further

1. Dans l'exemple ci-dessus, la sixième somme vaut $10$. Peut-on obtenir cinq entiers consécutifs avec une sixième somme plus grande ?
2. Reprendre le problème avec les nombres de $1$ à $16$ dans une grille $4 \times 4$ : combien de sommes y a-t-il, quel est leur total, et six entiers consécutifs sont-ils possibles ?
3. Si l'on ajoute les deux diagonales aux six sommes, cela fait huit nombres. Peut-on alors trouver six entiers consécutifs ?
