---
id: "5901"
title: "Vingt et un trominos droits et une case libre"
grade: 10
theme: coloring
difficulty: 5
duration_min: 50
tags: [coloriage, pavage, tromino, damier, demonstration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Coloring (Tom Davis)"
  reference: "Coloring_Tom_Davis_Facilitator_Guide.pdf, « Problems », problème 3"
  url: "https://mathcircles.org/activity/coloring/"
  original_language: "en"
  local_copy: "sources/originals/namc/Coloring_Tom_Davis_Facilitator_Guide.pdf"
---

## Statement

Un **tromino droit** est une pièce de trois cases alignées, que l'on peut poser horizontalement ou verticalement sur un échiquier.

Un échiquier $8 \times 8$ a $64$ cases, et $64$ n'est pas un multiple de $3$ : on ne peut donc pas le recouvrir entièrement. Le mieux qu'on puisse espérer est de poser $21$ trominos, qui recouvrent $63$ cases, et de laisser **une seule case libre**.

Numérotons les lignes de $1$ à $8$ du haut vers le bas, et les colonnes de $1$ à $8$ de la gauche vers la droite. La case de la ligne $i$ et de la colonne $j$ est notée $(i, j)$.

Pour quelles cases $(i, j)$ peut-on recouvrir les $63$ autres cases avec $21$ trominos droits ?

## Hints

1. Comme pour les dominos, un essai raté ne prouve rien. Il faut un argument qui traite d'un coup toutes les façons de poser les pièces.
2. Le damier noir et blanc ne sert à rien ici : les pièces ont trois cases, pas deux. Essaie un coloriage avec **trois** couleurs.
3. Colorie l'échiquier en diagonales : la case $(i, j)$ reçoit la couleur donnée par le reste de $i + j$ dans la division par $3$. Vérifie qu'un tromino droit, dans les deux sens, recouvre exactement une case de chaque couleur.
4. Compte les cases de chaque couleur. Elles ne sont pas en même nombre ! Qu'est-ce que cela impose à la case laissée libre ?
5. Un seul coloriage ne suffit pas à conclure. Recommence avec les diagonales penchées **dans l'autre sens**, c'est-à-dire avec le reste de $j - i$. Croise les deux renseignements.
6. Il reste à montrer que les cases survivantes conviennent vraiment : construis un pavage explicite pour l'une d'elles, et sers-toi des symétries de l'échiquier pour les autres.

## Solution

**Réponse : exactement quatre cases conviennent, les cases $(3, 3)$, $(3, 6)$, $(6, 3)$ et $(6, 6)$.**

### Étape 1. Le premier coloriage

Colorions l'échiquier avec trois couleurs notées $1$, $2$ et $3$, le long de diagonales qui descendent vers la gauche : la case $(i, j)$ reçoit la couleur qui correspond au reste de $i + j$ dans la division par $3$.

| | | | | | | | |
|---|---|---|---|---|---|---|---|
| 1 | 2 | 3 | 1 | 2 | 3 | 1 | 2 |
| 2 | 3 | 1 | 2 | 3 | 1 | 2 | 3 |
| 3 | 1 | 2 | 3 | 1 | 2 | 3 | 1 |
| 1 | 2 | 3 | 1 | 2 | 3 | 1 | 2 |
| 2 | 3 | 1 | 2 | 3 | 1 | 2 | 3 |
| 3 | 1 | 2 | 3 | 1 | 2 | 3 | 1 |
| 1 | 2 | 3 | 1 | 2 | 3 | 1 | 2 |
| 2 | 3 | 1 | 2 | 3 | 1 | 2 | 3 |

**Ce que fait un tromino.** Posé horizontalement sur les cases $(i, j)$, $(i, j+1)$, $(i, j+2)$, il rencontre trois nombres $i+j$, $i+j+1$, $i+j+2$ consécutifs : leurs restes dans la division par $3$ sont les trois restes possibles. Posé verticalement, c'est pareil avec $i+j$, $i+1+j$, $i+2+j$. Donc **un tromino droit recouvre toujours exactement une case de chaque couleur**, où qu'il soit et dans quelque sens que ce soit.

**Le comptage.** En comptant sur le tableau ci-dessus :

- couleur $1$ : $21$ cases ;
- couleur $2$ : $22$ cases ;
- couleur $3$ : $21$ cases.

Les $21$ trominos recouvrent $21$ cases de chaque couleur. Il reste donc une case de couleur $2$, et une seule. **La case libre est de couleur $2$ pour ce coloriage.**

### Étape 2. Le second coloriage

Recommençons avec des diagonales penchées dans l'autre sens : la case $(i, j)$ reçoit cette fois la couleur qui correspond au reste de $j - i$ dans la division par $3$.

| | | | | | | | |
|---|---|---|---|---|---|---|---|
| 1 | 2 | 3 | 1 | 2 | 3 | 1 | 2 |
| 3 | 1 | 2 | 3 | 1 | 2 | 3 | 1 |
| 2 | 3 | 1 | 2 | 3 | 1 | 2 | 3 |
| 1 | 2 | 3 | 1 | 2 | 3 | 1 | 2 |
| 3 | 1 | 2 | 3 | 1 | 2 | 3 | 1 |
| 2 | 3 | 1 | 2 | 3 | 1 | 2 | 3 |
| 1 | 2 | 3 | 1 | 2 | 3 | 1 | 2 |
| 3 | 1 | 2 | 3 | 1 | 2 | 3 | 1 |

Le même raisonnement s'applique : un tromino droit recouvre encore une case de chaque couleur. Cette fois le comptage donne $22$ cases de couleur $1$, et $21$ de chacune des deux autres. **La case libre est donc de couleur $1$ pour ce second coloriage.**

### Étape 3. On croise les deux renseignements

La case libre doit être de couleur $2$ dans le premier tableau et de couleur $1$ dans le second. En superposant les deux tableaux, on trouve seulement quatre cases qui remplissent les deux conditions :
$$(3, 3), \qquad (3, 6), \qquad (6, 3), \qquad (6, 6).$$

(Par le calcul : la première condition s'écrit « $i + j$ est un multiple de $3$ », la seconde « $j - i$ est un multiple de $3$ ». En additionnant, $2j$ est un multiple de $3$, donc $j$ aussi ; puis $i$ aussi. Entre $1$ et $8$, les multiples de $3$ sont $3$ et $6$.)

### Étape 4. Ces quatre cases conviennent vraiment

Tout ce qui précède dit seulement : « aucune autre case ne peut convenir ». Il faut encore exhiber un pavage. En voici un qui laisse libre la case $(3, 3)$, décrit bloc par bloc :

- lignes $1$ et $2$, colonnes $1$ à $6$ : $4$ trominos horizontaux ;
- colonnes $7$ et $8$, lignes $1$ à $3$ : $2$ trominos verticaux ;
- colonnes $1$ et $2$, lignes $3$ à $5$ : $2$ trominos verticaux ;
- ligne $3$, colonnes $4$ à $6$ : $1$ tromino horizontal ;
- lignes $4$ et $5$, colonnes $3$ à $8$ : $4$ trominos horizontaux ;
- lignes $6$ à $8$, colonnes $1$ à $6$ : $6$ trominos horizontaux ;
- colonnes $7$ et $8$, lignes $6$ à $8$ : $2$ trominos verticaux.

Cela fait $4 + 2 + 2 + 1 + 4 + 6 + 2 = 21$ trominos, et la seule case non utilisée est bien $(3, 3)$.

Les trois autres cases s'obtiennent en faisant tourner ce pavage d'un quart de tour, d'un demi-tour et de trois quarts de tour : les quatre cases $(3,3)$, $(3,6)$, $(6,6)$, $(6,3)$ s'échangent par ces rotations.

**Conclusion.** Les cases libres possibles sont exactement $(3, 3)$, $(3, 6)$, $(6, 3)$ et $(6, 6)$.

## Going further

1. Un seul coloriage ne donne qu'une partie de la réponse : il laisse $22$ cases candidates. Combien de cases chaque coloriage élimine-t-il, et pourquoi faut-il vraiment les deux ?
2. Même question sur un échiquier $5 \times 5$, avec $8$ trominos droits et une case libre. Quelles cases peut-on laisser libres ?
3. Et sur un échiquier $7 \times 7$ ? Ici $49 = 3 \times 16 + 1$, donc $16$ trominos et une case libre.
