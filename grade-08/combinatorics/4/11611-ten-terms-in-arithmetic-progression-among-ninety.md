---
id: "11611"
title: "Dix nombres en progression arithmétique parmi quatre-vingt-dix"
grade: 8
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [progression arithmetique, tableau, cas, raisonnement par l'absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 6 (pot-pourri)"
  reference: "2017-10_ofm-2013-2014-envoi-6.pdf, Exercices du groupe B, exercice 2 ; corrigé 2017-10_ofm-2013-2014-envoi-6-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-6.pdf"
---

## Statement

On dit que des nombres forment une **progression arithmétique** si, rangés dans l'ordre croissant, deux nombres consécutifs ont toujours le même écart. Par exemple $3, 7, 11, 15$ forment une progression arithmétique, avec un écart de $4$.

On choisit $90$ nombres parmi les entiers $1, 2, 3, \ldots, 100$.

Prouver que, parmi ces $90$ nombres, on peut toujours en trouver $10$ qui forment une progression arithmétique.

## Hints

1. Choisir $90$ nombres, c'est en enlever $10$. Range les entiers de $1$ à $100$ dans un tableau de $10$ lignes et $10$ colonnes, ligne par ligne. Où lit-on des progressions arithmétiques de $10$ nombres dans ce tableau ?
2. Si une ligne ou une colonne ne perd aucun nombre, c'est gagné. Sinon, combien de nombres enlevés y a-t-il exactement dans chaque ligne et dans chaque colonne ?
3. Compare la colonne du nombre enlevé dans une ligne avec celle du nombre enlevé dans la ligne suivante. Si la seconde est plus à droite, compte les nombres qui se suivent entre les deux.
4. À la fin, il ne reste qu'une seule façon d'enlever les $10$ nombres. Cherche alors une progression d'écart $9$.

## Solution

Choisir $90$ nombres parmi $100$, c'est en **enlever** $10$. On range les entiers de $1$ à $100$ dans un tableau de $10$ lignes et $10$ colonnes : la ligne $1$ contient $1, 2, \ldots, 10$, la ligne $2$ contient $11, 12, \ldots, 20$, et ainsi de suite jusqu'à la ligne $10$, qui contient $91, \ldots, 100$.

**Première remarque.** Les $10$ nombres d'une ligne se suivent : ils forment une progression arithmétique d'écart $1$. Les $10$ nombres d'une colonne, par exemple $3, 13, 23, \ldots, 93$, forment une progression arithmétique d'écart $10$. Si une ligne ou une colonne ne contient aucun nombre enlevé, on a trouvé nos $10$ nombres.

On suppose donc maintenant que chaque ligne et chaque colonne contient au moins un nombre enlevé. Comme il y a $10$ lignes et seulement $10$ nombres enlevés, chaque ligne en contient **exactement un**. De même, chaque colonne en contient exactement un.

**Deuxième remarque : les nombres enlevés vont de droite à gauche.** Prenons deux lignes qui se suivent, la ligne $i$ et la ligne $i + 1$. Notons $c$ la colonne du nombre enlevé de la ligne $i$, et $c'$ celle du nombre enlevé de la ligne $i + 1$. Supposons que $c'$ soit **plus à droite** que $c$, c'est-à-dire $c < c'$.

Partons du nombre enlevé de la ligne $i$ et regardons les $10$ nombres qui le suivent. Ils occupent, dans l'ordre :

- les colonnes $c + 1$ à $10$ de la ligne $i$, qui ne contiennent aucun nombre enlevé, puisque le seul nombre enlevé de cette ligne est dans la colonne $c$ ;
- les colonnes $1$ à $c$ de la ligne $i + 1$, qui ne contiennent aucun nombre enlevé non plus, puisque le seul nombre enlevé de cette ligne est dans la colonne $c'$, plus à droite que $c$.

Ces $10$ nombres consécutifs forment une progression d'écart $1$, et c'est gagné.

On peut donc supposer que, d'une ligne à la suivante, le nombre enlevé est toujours dans une colonne **plus à gauche**.

**Le dernier cas.** Les colonnes des nombres enlevés, lues de la ligne $1$ à la ligne $10$, sont alors $10$ colonnes différentes qui vont de droite à gauche. Comme il n'y a que $10$ colonnes, la ligne $1$ perd son nombre de la colonne $10$, la ligne $2$ celui de la colonne $9$, et ainsi de suite jusqu'à la ligne $10$, qui perd son nombre de la colonne $1$. Les nombres enlevés sont donc

$$10,\ 19,\ 28,\ 37,\ 46,\ 55,\ 64,\ 73,\ 82,\ 91,$$

qui vont de $9$ en $9$. Prenons alors le nombre qui suit chacun d'eux :

$$11,\ 20,\ 29,\ 38,\ 47,\ 56,\ 65,\ 74,\ 83,\ 92.$$

Ils forment une progression arithmétique d'écart $9$, et aucun n'est enlevé : en divisant par $9$, les nombres enlevés ont tous un reste de $1$, alors que ceux-ci ont tous un reste de $2$.

**Conclusion : dans tous les cas, parmi les $90$ nombres choisis, il y en a $10$ qui forment une progression arithmétique.**
