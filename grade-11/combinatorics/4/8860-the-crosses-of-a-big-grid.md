---
id: "8860"
title: "Les croix d'une grande grille"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [double-comptage, parite, grille, diagonales, raisonnement-par-labsurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, entraînement de fin de parcours du Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Entraînement de fin de parcours », exercice 4, p. 150"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

On dispose d'une grille $2025 \times 2025$. Dans chaque case, on écrit un nombre entier entre $1$ et $4049$.

Pour chaque $i$ entre $1$ et $2025$, la **croix $i$** est l'ensemble des nombres écrits dans la ligne $i$ et dans la colonne $i$, comptés avec leur multiplicité (si un nombre apparaît quatre fois dans la croix, il compte quatre fois).

On dit que la grille est **jolie** si, dans chaque croix, chacun des nombres $1, 2, \dots, 4049$ apparaît exactement une fois.

Existe-t-il une grille jolie ?

## Hints

1. Commence par vérifier que la question a un sens : combien de cases y a-t-il dans une croix ? Attention à la case commune à la ligne $i$ et à la colonne $i$.
2. Fixe un nombre $v$ entre $1$ et $4049$ et compte de deux façons le nombre de couples (croix, occurrence de $v$ dans cette croix).
3. Une case $(i,j)$ avec $i \neq j$ appartient à combien de croix ? Et une case $(i,i)$ de la diagonale ?
4. Le nombre $2025$ est impair. Qu'est-ce que cela impose à chaque valeur $v$ ?

## Solution

### La question a un sens

La croix $i$ est formée de la ligne $i$ ($2025$ cases) et de la colonne $i$ ($2025$ cases), la case $(i,i)$ appartenant aux deux. Elle contient donc
$$2025 + 2025 - 1 = 4049 \quad \text{cases.}$$

C'est exactement le nombre de valeurs autorisées : dire que la grille est jolie, c'est dire que chaque croix contient chacune des valeurs $1, \dots, 4049$ une fois et une seule.

### Un comptage par valeur

Supposons par l'absurde qu'une grille jolie existe, et fixons une valeur $v$ entre $1$ et $4049$.

Comptons le nombre $T$ de couples
$$(\text{croix } i, \; \text{case de cette croix contenant } v) .$$

**Première façon de compter : par les croix.** Chaque croix contient $v$ exactement une fois, et il y a $2025$ croix. Donc
$$T = 2025 ,$$
qui est un nombre **impair**.

**Deuxième façon : par les cases.** Une case $(i,j)$ qui contient $v$ apparaît dans ce comptage autant de fois qu'elle appartient à des croix.

- Si $i \neq j$, la case $(i,j)$ appartient à la croix $i$ (par sa ligne) et à la croix $j$ (par sa colonne) : elle compte **deux** fois.
- Si $i = j$, la case est sur la diagonale et n'appartient qu'à la croix $i$ : elle compte **une** fois.

Notons $h$ le nombre de cases hors diagonale contenant $v$, et $d$ le nombre de cases de la diagonale contenant $v$. Alors
$$T = 2h + d .$$

### La contradiction

En rapprochant les deux comptages :
$$2h + d = 2025 .$$

Comme $2025$ est impair et que $2h$ est pair, $d$ est **impair**. En particulier $d \geqslant 1$ :

> chaque valeur $v$ entre $1$ et $4049$ apparaît au moins une fois sur la diagonale.

Mais la diagonale ne comporte que $2025$ cases, alors qu'il y a $4049$ valeurs différentes à y loger. Comme $4049 > 2025$, c'est impossible.

### Conclusion

$$\boxed{\text{Il n'existe aucune grille jolie.}}$$

### Ce qui fait marcher la preuve

Deux ingrédients, tous les deux liés à la **parité**. D'abord, une case hors diagonale sert deux fois et une case diagonale une seule fois : c'est cette asymétrie qui force la diagonale à intervenir. Ensuite, le nombre de croix, $2025$, est impair : si la grille avait un nombre pair de lignes, l'argument ne dirait plus rien.

## Going further

Reprendre la question avec une grille $n \times n$ et les valeurs de $1$ à $2n-1$. Pour quelles valeurs de $n$ une grille jolie peut-elle exister ? Et en construire une pour le plus petit $n$ qui convient.
