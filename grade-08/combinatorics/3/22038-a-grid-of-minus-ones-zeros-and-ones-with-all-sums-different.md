---
id: "22038"
title: "Une grille de −1, 0 et 1 aux sommes toutes différentes ?"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [principe-des-tiroirs, grille, somme, denombrement]
adapted_from: null
see_also: ["7251", "8626"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Principe des tiroirs » (Aline), exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $n \geq 1$ un entier. On prend une grille de $n$ lignes et $n$ colonnes, et on écrit dans chaque case l'un des trois nombres $-1$, $0$ ou $1$. On a le droit de répéter les nombres autant qu'on veut.

On calcule ensuite la somme des nombres de chaque ligne, de chaque colonne, et de chacune des deux grandes diagonales.

Peut-on remplir la grille de sorte que toutes ces sommes soient différentes ?

## Hints

1. Combien de sommes calcule-t-on en tout ?
2. Chaque somme est la somme de $n$ nombres pris parmi $-1$, $0$ et $1$. Quelle est la plus petite valeur possible ? La plus grande ? Combien de valeurs entières y a-t-il entre les deux ?
3. Comparez le nombre de sommes et le nombre de valeurs possibles.

## Solution

**Un outil : le principe des tiroirs.** Si l'on range des objets dans des tiroirs et qu'il y a plus d'objets que de tiroirs, alors un tiroir contient au moins deux objets.

**Étape 1 : le nombre de sommes.** Il y a $n$ lignes, $n$ colonnes et $2$ grandes diagonales, donc on calcule

$$n + n + 2 = 2n + 2 \text{ sommes.}$$

**Étape 2 : les valeurs possibles.** Chaque ligne, chaque colonne et chaque grande diagonale contient exactement $n$ cases. Une somme de $n$ nombres, chacun égal à $-1$, $0$ ou $1$, est un entier :

- au moins égal à $-n$, quand toutes les cases valent $-1$ ;
- au plus égal à $n$, quand toutes les cases valent $1$.

Les entiers de $-n$ à $n$ sont $-n, -n + 1, \ldots, -1, 0, 1, \ldots, n$ : il y en a $n$ négatifs, $n$ positifs et le zéro, soit $2n + 1$ valeurs possibles.

**Étape 3 : le principe des tiroirs.** On range chaque somme dans le tiroir qui porte sa valeur. Il y a $2n + 2$ sommes et seulement $2n + 1$ tiroirs. Comme $2n + 2 > 2n + 1$, un tiroir contient au moins deux sommes : deux des sommes sont égales.

**Conclusion.** Non : quelle que soit la taille $n$ de la grille et quelle que soit la façon de la remplir, deux de ces sommes sont toujours égales.

## Going further

1. On oublie les deux diagonales et on ne garde que les sommes des lignes et des colonnes. Pour $n = 2$, peut-on rendre les quatre sommes toutes différentes ?
2. Même question pour $n = 3$, avec les six sommes des lignes et des colonnes. (C'est plus difficile.)
