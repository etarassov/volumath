---
id: "22056"
title: "8x + 3y² = 5 en entiers"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [equation-diophantienne, restes, carres, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-26
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Équations diophantiennes, factorisation » (Augustin & Éva), exercice 1 (le corrigé distingue inutilement le cas x = 0 : l'argument modulo 8 suffit pour tout x)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Trouver tous les couples d'entiers $(x, y)$, positifs ou négatifs, tels que
$$8x + 3y^2 = 5.$$

## Hints

1. Le nombre $y$ est-il pair ou impair ?
2. Que vaut le reste de $y^2$ dans la division par $8$ quand $y$ est impair ? Essayez $y = 1, 3, 5, 7$.
3. Comparez les restes des deux membres dans la division par $8$.

## Solution

**Étape 1 : $y$ est impair.** On a $3y^2 = 5 - 8x$, qui est impair. Donc $y^2$ est impair, et $y$ aussi.

**Étape 2 : le carré d'un nombre impair.** Écrivons $y = 2k + 1$. Alors
$$y^2 = 4k^2 + 4k + 1 = 4k\,(k + 1) + 1.$$
Les nombres $k$ et $k + 1$ sont consécutifs, donc l'un d'eux est pair, et $k\,(k+1)$ est pair. Ainsi $4k\,(k+1)$ est un multiple de $8$, et $y^2 = 8m + 1$ pour un entier $m$.

**Étape 3 : la contradiction.** Alors
$$3y^2 = 24m + 3 = 8 \times 3m + 3,$$
dont le reste dans la division par $8$ vaut $3$. Mais $5 - 8x = 8 \times (-x) + 5$ a pour reste $5$. Deux nombres égaux ont le même reste, donc c'est impossible.

**Conclusion.** L'équation $8x + 3y^2 = 5$ n'a aucune solution en entiers.

## Going further

1. L'équation $8x + 3y^2 = 3$ a-t-elle des solutions ? Et $8x + 3y^2 = 7$ ?
2. Montrer plus généralement que le reste de $y^2$ dans la division par $8$ vaut toujours $0$, $1$ ou $4$.
