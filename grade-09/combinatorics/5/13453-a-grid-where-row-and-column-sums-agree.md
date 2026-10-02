---
id: "13453"
title: "Une grille où ligne et colonne ont la même somme"
grade: 9
theme: combinatorics
difficulty: 5
duration_min: 45
tags: [grille, double comptage, somme, tableau]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2025"
  reference: "2025-10_Sujet-coupe-Animath-Automne-2025.pdf, épreuve collège, exercice 7, et épreuve lycée, exercice 13 (même énoncé) ; corrigé 2025-10_Corrige-commente-Coupe-Animath-Automne-2025.pdf. La solution ci-dessous, par des quotients, n'est pas celle du corrigé, qui regroupe les lignes et les colonnes de même somme. Dans le corrigé, « b le nombre de lignes de somme s » doit se lire « de colonnes »"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-coupe-Animath-Automne-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2025-10_Sujet-coupe-Animath-Automne-2025.pdf"
---

## Statement

Aurélien remplit une grille de $m$ lignes et $n$ colonnes avec des nombres réels positifs ou nuls. Chaque ligne et chaque colonne contient au moins un nombre non nul.

Il veut aussi que, pour toute case qui contient un nombre non nul, la somme des nombres de sa ligne soit égale à la somme des nombres de sa colonne.

Montrer que s'il y arrive, alors $m = n$.

## Hints

1. Vérifie que la grille de trois lignes $(1, 2, 0)$, $(2, 1, 0)$ et $(0, 0, 5)$ respecte les règles. Essaie ensuite de remplir une grille de $2$ lignes et $3$ colonnes : où cela coince-t-il ?
2. Pourquoi la somme de chaque ligne et la somme de chaque colonne sont-elles strictement positives ?
3. Dans chaque case, remplace le nombre par ce nombre divisé par la somme de sa ligne. Que vaut la somme des nouveaux nombres d'une ligne ? Et la somme de tous les nouveaux nombres de la grille ?
4. Recommence en divisant cette fois par la somme de la colonne. Compare les deux nouvelles grilles, case par case.

## Solution

On note $x$ le nombre écrit dans une case, $L$ la somme des nombres de la ligne de cette case, et $C$ la somme des nombres de sa colonne. La règle d'Aurélien dit : **si $x \neq 0$, alors $L = C$.**

**Les sommes sont strictement positives.** Tous les nombres sont positifs ou nuls, et chaque ligne contient au moins un nombre non nul, donc strictement positif. La somme de chaque ligne est donc strictement positive. De même pour chaque colonne. On pourra donc diviser par ces sommes.

**Première nouvelle grille.** Dans chaque case, on écrit le nombre $x / L$ : le nombre de la case divisé par la somme de sa ligne.

Dans une ligne de somme $L$, dont les nombres sont $x_1, x_2, \ldots, x_n$, les nouveaux nombres ont pour somme

$$\frac{x_1}{L} + \frac{x_2}{L} + \ldots + \frac{x_n}{L} = \frac{x_1 + x_2 + \ldots + x_n}{L} = \frac{L}{L} = 1.$$

Chacune des $m$ lignes de la nouvelle grille a donc pour somme $1$, et la somme de tous les nombres de la nouvelle grille vaut $m$.

**Seconde nouvelle grille.** Dans chaque case, on écrit cette fois le nombre $x / C$ : le nombre de la case divisé par la somme de sa colonne. Le même calcul montre que chacune des $n$ colonnes a maintenant pour somme $1$, et la somme de tous les nombres de cette grille vaut $n$.

**Les deux nouvelles grilles sont identiques.** Comparons-les case par case.

- Si $x = 0$, les deux nouvelles grilles contiennent $0$ dans cette case.
- Si $x \neq 0$, la règle d'Aurélien donne $L = C$, donc $x / L = x / C$.

Dans tous les cas, les deux nouvelles grilles ont le même nombre dans chaque case. Elles ont donc la même somme totale.

**Conclusion.** La somme totale vaut $m$ quand on la calcule ligne par ligne dans la première grille, et $n$ quand on la calcule colonne par colonne dans la seconde. Comme ces deux grilles sont identiques, $m = n$.

*Sur un exemple.* Prenons la grille de trois lignes $(1, 2, 0)$, $(2, 1, 0)$ et $(0, 0, 5)$, qui respecte les règles. Les sommes des lignes sont $3$, $3$ et $5$, celles des colonnes aussi. Les deux nouvelles grilles valent toutes les deux

| $1/3$ | $2/3$ | $0$ |
|:---:|:---:|:---:|
| $2/3$ | $1/3$ | $0$ |
| $0$ | $0$ | $1$ |

et leur somme est bien $3$.

*Attention.* Donner un exemple de grille carrée qui marche ne prouve rien : il faut montrer qu'**aucune** grille avec $m \neq n$ ne peut marcher.

## Going further

Montrer un résultat plus précis : pour chaque nombre $s$, il y a autant de lignes de somme $s$ que de colonnes de somme $s$. On pourra recommencer le raisonnement en ne gardant que les cases dont la ligne a pour somme $s$.
