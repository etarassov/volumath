---
id: "8177"
title: "L'échiquier privé d'une case et les barres de trois"
grade: 9
theme: coloring
difficulty: 4
duration_min: 45
tags: [pavage, coloriage, diagonales, echiquier, modulo]
adapted_from: null
see_also: ["0184"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 2, exercice 78 (une étoile). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil. L'énoncé d'origine demande seulement « peut-on ? », sans préciser quelle case est retirée ; la question a été complétée."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

On dispose d'un échiquier de $8 \times 8$ cases dont on a retiré **une seule** case. Il en reste $63$.

Peut-on recouvrir entièrement ces $63$ cases avec $21$ barres de $1 \times 3$ cases, posées le long du quadrillage, sans trou et sans chevauchement ?

Cela dépend de la case que l'on a retirée : déterminer toutes les cases pour lesquelles c'est possible.

## Hints

1. Le compte des cases ne dit rien : $63 = 21 \times 3$. Il faut un argument plus fin.
2. Colorie l'échiquier non pas en deux mais en **trois** couleurs, en bandes diagonales : la case de la ligne $i$ et de la colonne $j$ reçoit le reste de $i + j$ dans la division par $3$.
3. Combien de cases de chaque couleur une barre recouvre-t-elle, qu'elle soit couchée ou debout ?
4. Compte alors les cases de chaque couleur sur l'échiquier entier. Les trois nombres ne sont pas égaux : qu'en déduis-tu sur la couleur de la case retirée ?
5. Recommence avec les bandes diagonales penchées dans l'autre sens : couleur $=$ reste de $i - j$ modulo $3$. En combinant les deux conditions, il ne reste que quelques cases candidates.
6. Une fois les candidates trouvées, il reste à montrer qu'elles conviennent vraiment : dessine un pavage.

## Solution

Numérotons les lignes et les colonnes de $1$ à $8$ ; la case de la ligne $i$ et de la colonne $j$ est notée $(i,j)$.

**La coloration en trois bandes.**

Donnons à la case $(i,j)$ la couleur

$$c(i,j) = \text{reste de } (i+j) \text{ dans la division par } 3 ,$$

donc $0$, $1$ ou $2$. Les cases de même couleur forment des bandes diagonales.

Une barre couchée occupe trois cases $(i,j)$, $(i,j+1)$, $(i,j+2)$ : les trois sommes $i+j$, $i+j+1$, $i+j+2$ sont des entiers consécutifs, donc leurs restes modulo $3$ sont $0$, $1$ et $2$, chacun une fois. Pour une barre debout, ce sont les sommes $i+j$, $i+1+j$, $i+2+j$ : même conclusion. Donc

> **chaque barre recouvre exactement une case de chaque couleur.**

Si un pavage par $21$ barres existe, les cases restantes comptent donc exactement $21$ cases de chaque couleur.

**Compter les couleurs sur l'échiquier.**

Fixons une ligne $i$. Les huit cases de cette ligne ont pour couleurs les restes de

$$i+1,\quad i+2,\quad i+3,\quad \ldots,\quad i+8 .$$

Ce sont huit entiers consécutifs. Comme $8 = 3 \times 2 + 2$, en les parcourant on fait deux tours complets des trois restes, plus deux valeurs supplémentaires : celles de $i+1$ et de $i+2$. Donc les restes de $i+1$ et de $i+2$ apparaissent $3$ fois, et le troisième reste, qui est celui de $i+3$, c'est-à-dire celui de $i$, apparaît seulement $2$ fois.

Autrement dit : **dans la ligne $i$, la couleur $i \bmod 3$ apparaît $2$ fois, les deux autres $3$ fois.**

Il reste à compter les lignes. Parmi $i = 1, 2, \ldots, 8$ :

- $i \equiv 0 \pmod 3$ pour $i = 3$ et $i = 6$ : deux lignes ;
- $i \equiv 1 \pmod 3$ pour $i = 1, 4, 7$ : trois lignes ;
- $i \equiv 2 \pmod 3$ pour $i = 2, 5, 8$ : trois lignes.

Le nombre total de cases de couleur $c$ vaut donc $3 \times 8 = 24$ moins le nombre de lignes $i$ telles que $i \equiv c$ :

| couleur | $0$ | $1$ | $2$ |
|---|---|---|---|
| nombre de cases | $24 - 2 = 22$ | $24 - 3 = 21$ | $24 - 3 = 21$ |

Il y a bien $22+21+21 = 64$ cases en tout.

Pour qu'il reste $21$ cases de chaque couleur, il faut retirer une case de la couleur en excès :

$$i + j \equiv 0 \pmod 3 .$$

**La seconde coloration.**

Recommençons avec les bandes diagonales penchées dans l'autre sens :

$$c'(i,j) = \text{reste de } (i-j) \text{ dans la division par } 3 .$$

Tout le raisonnement précédent se répète mot pour mot : une barre couchée voit les différences $i-j$, $i-j-1$, $i-j-2$, trois entiers consécutifs ; une barre debout voit $i-j$, $i+1-j$, $i+2-j$, trois entiers consécutifs aussi. Chaque barre recouvre donc encore une case de chaque couleur.

Le décompte est identique : dans la ligne $i$, la couleur $i \bmod 3$ apparaît deux fois, et on retrouve

| couleur | $0$ | $1$ | $2$ |
|---|---|---|---|
| nombre de cases | $22$ | $21$ | $21$ |

La case retirée doit donc aussi vérifier

$$i - j \equiv 0 \pmod 3 .$$

**Les quatre cases.**

En additionnant les deux conditions : $2i \equiv 0 \pmod 3$, donc $i \equiv 0 \pmod 3$ (car $3$ est premier et ne divise pas $2$). En les soustrayant : $2j \equiv 0 \pmod 3$, donc $j \equiv 0 \pmod 3$.

Avec $1 \leqslant i, j \leqslant 8$, cela laisse $i \in \{3, 6\}$ et $j \in \{3, 6\}$, soit **quatre cases** :

$$(3,3), \qquad (3,6), \qquad (6,3), \qquad (6,6) .$$

**Ces quatre cases conviennent.**

Il suffit de le vérifier pour $(3,3)$ : les trois autres s'obtiennent en retournant l'échiquier de gauche à droite, de haut en bas, ou les deux, ce qui transforme un pavage en un pavage.

Voici un pavage explicite, le point marquant la case retirée et chaque lettre une barre :

| | c1 | c2 | c3 | c4 | c5 | c6 | c7 | c8 |
|---|---|---|---|---|---|---|---|---|
| **L1** | A | A | A | B | B | B | C | D |
| **L2** | E | E | E | F | F | F | C | D |
| **L3** | G | H | · | I | I | I | C | D |
| **L4** | G | H | J | J | J | K | K | K |
| **L5** | G | H | L | L | L | M | M | M |
| **L6** | N | N | N | O | O | O | P | Q |
| **L7** | R | R | R | S | S | S | P | Q |
| **L8** | T | T | T | U | U | U | P | Q |

Chacune des $21$ lettres apparaît exactement trois fois, et à chaque fois sur trois cases alignées et voisines.

$$\boxed{\ \text{C'est possible exactement pour les quatre cases } (3,3),\ (3,6),\ (6,3),\ (6,6).\ }$$

## Going further

Les deux colorations utilisées sont les deux familles de bandes diagonales. On peut se demander pourquoi une seule ne suffit pas : c'est qu'une barre couchée et une barre debout se comportent de la même manière vis-à-vis de chaque coloration, mais aucune des deux, prise seule, ne distingue assez les cases. Il faut les croiser.

Le même problème avec un échiquier $5 \times 5$ et huit barres de $1 \times 3$ a une réponse analogue, et c'est un classique : la case laissée libre est très contrainte.
