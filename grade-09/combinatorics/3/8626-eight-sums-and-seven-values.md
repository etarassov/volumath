---
id: "8626"
title: "Huit sommes pour sept valeurs possibles"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [tiroirs, grille, somme, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Principe des tiroirs » (Maena), exercice 10"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Dans chaque case d'un tableau $3 \times 3$, on écrit $-1$, $0$ ou $1$.

On calcule ensuite la somme des nombres de chaque ligne, de chaque colonne, et de chacune des deux grandes diagonales.

Montrer que parmi toutes ces sommes, il y en a toujours deux qui sont égales.

## Hints

1. Commence par compter : combien de sommes calcule-t-on en tout ?
2. Une somme est faite de trois nombres valant chacun $-1$, $0$ ou $1$. Entre quelles bornes est-elle comprise ?
3. Combien de valeurs entières une telle somme peut-elle prendre ?
4. Compare les deux nombres obtenus.

## Solution

**Combien de sommes ?** Il y a $3$ lignes, $3$ colonnes et $2$ grandes diagonales, soit

$$3 + 3 + 2 = 8 \text{ sommes.}$$

**Quelles valeurs peuvent-elles prendre ?** Chaque somme est faite de trois nombres pris parmi $-1$, $0$ et $1$. La plus petite valeur possible est $(-1) + (-1) + (-1) = -3$, la plus grande est $1 + 1 + 1 = 3$, et toute somme est un entier. Chaque somme appartient donc à l'ensemble

$$\{-3, -2, -1, 0, 1, 2, 3\} ,$$

qui contient $7$ valeurs.

**Le principe des tiroirs.** Les huit sommes sont les objets à ranger, et les sept valeurs possibles sont les tiroirs. Comme $8 > 7$, deux au moins de nos huit sommes tombent dans le même tiroir.

**Conclusion.** Deux de ces sommes sont égales, quel que soit le remplissage du tableau.

## Going further

Le raisonnement n'utilise pas du tout la structure du tableau : il ne se sert que du nombre de sommes et du nombre de valeurs possibles.

Cela suggère une question : avec un tableau $4 \times 4$ rempli de $-1$, $0$ et $1$, y a-t-il encore forcément deux sommes égales ? Il y a alors $4 + 4 + 2 = 10$ sommes, pour des valeurs allant de $-4$ à $4$, soit $9$ possibilités. La réponse est donc encore oui, mais de justesse. Et pour un tableau $5 \times 5$, l'argument s'effondre : $12$ sommes pour $11$ valeurs, ça passe encore ; à partir de quelle taille ne marche-t-il plus ?
