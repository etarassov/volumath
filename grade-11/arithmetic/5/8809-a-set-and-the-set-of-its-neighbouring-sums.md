---
id: "8809"
title: "Des entiers consécutifs, et leurs sommes aussi"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [entiers-consecutifs, somme, parite, construction, analyse-synthese]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, Coupe Animath de printemps 2025 (dans le polycopié du stage olympique de Valbonne 2025)"
  reference: "Poly-2025-compresse.pdf, chapitre II « Coupe Animath de printemps 2025 », exercice 12 (lycéens), p. 33"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier. On cherche $n$ entiers strictement positifs $a_1, a_2, \dots, a_n$, rangés en cercle, tels que les deux listes
$$a_1, \; a_2, \; \dots, \; a_n$$
et
$$a_1 + a_2, \; a_2 + a_3, \; \dots, \; a_{n-1} + a_n, \; a_n + a_1$$
soient, chacune, formées de $n$ entiers **consécutifs** (dans un ordre quelconque).

Déterminer tous les entiers $n \geqslant 2$ pour lesquels c'est possible.

Par exemple, pour $n = 3$, la liste $1, 2, 3$ donne pour sommes $3, 5, 4$, qui sont bien trois entiers consécutifs : $n = 3$ convient.

## Hints

1. On demande « tous les $n$ » : il faudra une analyse (les $n$ qui marchent sont forcément d'une certaine forme) **et** une synthèse (tous ceux-là marchent vraiment).
2. Additionne tous les termes de la deuxième liste. Chaque $a_i$ y apparaît combien de fois ?
3. Calcule la somme de $n$ entiers consécutifs. Si le plus petit est $k+1$, la somme vaut $\dfrac{n(n+1)}{2} + kn$. Écris cela pour les deux listes.
4. Compare les deux expressions : tu obtiens une égalité où $\dfrac{n+1}{2}$ doit être un entier.
5. Pour la synthèse, avec $n = 2m+1$, essaie d'alterner les petits et les gros : $1$, puis un gros, puis $2$, puis un gros, etc.

## Solution

### Un lemme de calcul

**La somme de $n$ entiers consécutifs vaut $\dfrac{n(n+1)}{2} + kn$ pour un certain entier $k$.**

En effet, si $k$ désigne l'entier qui précède le plus petit d'entre eux, ces entiers sont $k+1, k+2, \dots, k+n$, et
$$(k+1) + (k+2) + \cdots + (k+n) = (1 + 2 + \cdots + n) + kn = \frac{n(n+1)}{2} + kn .$$

### Analyse : $n$ doit être impair

Supposons qu'un entier $n$ convienne, et prenons des entiers $a_1, \dots, a_n$ qui marchent.

La première liste est formée de $n$ entiers consécutifs, donc d'après le lemme il existe un entier $k$ tel que
$$a_1 + a_2 + \cdots + a_n = \frac{n(n+1)}{2} + kn .$$

La deuxième liste est aussi formée de $n$ entiers consécutifs, donc il existe un entier $\ell$ tel que
$$(a_1+a_2) + (a_2+a_3) + \cdots + (a_n+a_1) = \frac{n(n+1)}{2} + \ell n .$$

Mais dans cette deuxième somme, chaque $a_i$ apparaît exactement **deux fois** : une fois avec son voisin de gauche, une fois avec son voisin de droite. Donc
$$(a_1+a_2) + (a_2+a_3) + \cdots + (a_n+a_1) = 2\,(a_1 + a_2 + \cdots + a_n).$$

En rapprochant les trois égalités :
$$\frac{n(n+1)}{2} + \ell n = 2\left( \frac{n(n+1)}{2} + kn \right) = n(n+1) + 2kn .$$

On simplifie par $n$, qui n'est pas nul :
$$\frac{n+1}{2} + \ell = n + 1 + 2k, \qquad \text{donc} \qquad \frac{n+1}{2} = n + 1 + 2k - \ell .$$

Le membre de droite est un entier, donc $\dfrac{n+1}{2}$ en est un, c'est-à-dire que $n+1$ est pair : **$n$ est impair**.

### Synthèse : tous les $n$ impairs conviennent

Soit $n = 2m+1$ avec $m \geqslant 1$. Construisons une liste explicite en alternant les petits nombres $1, 2, \dots, m+1$ et les gros $m+2, \dots, 2m+1$ :
$$a_{2i-1} = i \quad (1 \leqslant i \leqslant m+1), \qquad a_{2i} = m + 1 + i \quad (1 \leqslant i \leqslant m).$$

Pour $n = 7$ (donc $m = 3$), cela donne
$$1, \; 5, \; 2, \; 6, \; 3, \; 7, \; 4 .$$

**Première liste.** Les indices impairs $1, 3, \dots, 2m+1$ donnent les valeurs $1, 2, \dots, m+1$, et les indices pairs $2, 4, \dots, 2m$ donnent $m+2, m+3, \dots, 2m+1$. Réunies, ce sont exactement les entiers de $1$ à $2m+1$ : ils sont bien consécutifs.

**Deuxième liste.** Calculons les sommes de voisins.

- Pour $1 \leqslant i \leqslant m$ : $\; a_{2i-1} + a_{2i} = i + (m+1+i) = m + 1 + 2i$. Quand $i$ parcourt $1, \dots, m$, on obtient $m+3, \; m+5, \; \dots, \; 3m+1$ : les nombres de la bonne parité entre $m+3$ et $3m+1$.
- Pour $1 \leqslant i \leqslant m$ : $\; a_{2i} + a_{2i+1} = (m+1+i) + (i+1) = m + 2 + 2i$. Quand $i$ parcourt $1, \dots, m$, on obtient $m+4, \; m+6, \; \dots, \; 3m+2$ : les nombres de l'autre parité entre $m+4$ et $3m+2$.
- Enfin la somme qui referme le cercle : $\; a_n + a_1 = a_{2m+1} + a_1 = (m+1) + 1 = m+2$.

En rassemblant, on obtient $m+2$, puis tous les entiers de $m+3$ à $3m+2$ : c'est-à-dire tous les entiers de $m+2$ à $3m+2$, chacun une fois et une seule. Cela fait $2m+1 = n$ entiers consécutifs.

La construction fonctionne donc pour tout $n$ impair.

**Conclusion.** Les entiers $n \geqslant 2$ qui conviennent sont exactement les entiers **impairs**.

### Le piège principal

Une liste $a_1, \dots, a_n$ n'est pas un ensemble : l'**ordre compte**, car ce sont les voisins qui sont additionnés. Ainsi $1, 2, 3, 4$ et $1, 3, 2, 4$ contiennent les mêmes nombres, mais donnent les sommes $3, 5, 7, 5$ dans le premier cas et $4, 5, 6, 5$ dans le second. Supposer que les $a_i$ sont rangés dans l'ordre croissant fait perdre presque toutes les solutions.

## Going further

Pour $n$ impair, la construction donnée n'est pas la seule. Combien y a-t-il de listes qui conviennent pour $n = 5$ ?
