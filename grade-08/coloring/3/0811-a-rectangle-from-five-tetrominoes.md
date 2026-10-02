---
id: "0811"
title: "Un rectangle avec les cinq tétraminos"
grade: 8
theme: coloring
difficulty: 3
duration_min: 25
tags: [coloriage, pavage, echiquier, tetraminos]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers. Démonstrations par coloriage »"
  reference: "Moscou.Coloriage.pdf, exercice 14, d'après Arthur Engel, « Solutions d'expert »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Moscou.Coloriage.pdf"
---

## Statement

Un **tétramino** est une pièce formée de quatre cases d'un quadrillage collées par les côtés. En voici cinq, appelés de gauche à droite le tétramino droit, le tétramino en T, le tétramino carré, le tétramino en L et le tétramino décalé :

![Les cinq tétraminos : droit, en T, carré, en L, décalé](0811-figure-1.svg)

Est-il possible de former un rectangle en utilisant ces cinq tétraminos, chacun exactement une fois ?

Les pièces peuvent être tournées et retournées ; elles doivent suivre le quadrillage, ne pas se chevaucher et ne laisser aucun trou.

## Hints

1. Quelle aire aurait ce rectangle ? Quelles sont toutes les formes de rectangle possibles ?
2. Les rectangles possibles sont $1 \times 20$, $2 \times 10$ et $4 \times 5$. Essaie quelques assemblages : ça ne marche pas, mais un essai raté ne démontre rien.
3. Colorie le rectangle comme un échiquier. Dans chacun des trois rectangles possibles, combien y a-t-il de cases de chaque couleur ?
4. Pose maintenant chaque pièce sur l'échiquier, dans toutes les positions que tu veux, et compte les cases noires qu'elle recouvre. Quatre pièces se comportent pareil. Laquelle fait exception ?

## Solution

**Réponse : non, c'est impossible.**

**Étape 1. Quels rectangles sont envisageables ?**

Les cinq tétraminos recouvrent $5 \times 4 = 20$ cases. Le rectangle aurait donc une aire de $20$ cases, ce qui laisse trois formes possibles :
$$1 \times 20, \qquad 2 \times 10, \qquad 4 \times 5.$$

(Le rectangle $1 \times 20$ est à écarter tout de suite : une bande large d'une seule case ne peut accueillir que le tétramino droit.)

**Étape 2. L'idée : colorier en échiquier.**

Colorions le rectangle comme un échiquier, en alternant deux couleurs, de sorte que deux cases voisines soient toujours de couleurs différentes.

Dans chacun des rectangles envisagés, les cases se répartissent également entre les deux couleurs : le rectangle a $20$ cases, donc **$10$ cases grises et $10$ cases blanches**. (C'est vrai dès que le rectangle a un côté de longueur paire, ce qui est le cas ici.)

**Étape 3. Ce que recouvre chaque pièce.**

![Les cinq tétraminos sur un coloriage en échiquier, avec sous chaque pièce le nombre de cases grises puis de cases blanches qu'elle recouvre](0811-figure-2.svg)

- **Le tétramino droit** couvre quatre cases alignées, dont les couleurs alternent : $2$ grises et $2$ blanches.
- **Le tétramino carré** couvre deux cases sur une ligne et deux sur la ligne suivante : $2$ et $2$.
- **Le tétramino en L** et **le tétramino décalé** : on vérifie de la même façon qu'ils couvrent $2$ cases de chaque couleur, dans toutes leurs positions.
- **Le tétramino en T** est différent. Il couvre trois cases alignées, dont les couleurs alternent : deux d'une couleur et une de l'autre, la case du milieu étant de la couleur minoritaire. La quatrième case, la « queue », touche la case du milieu par un côté : elle est donc de la couleur **majoritaire**. Au total, le tétramino en T couvre toujours **$3$ cases d'une couleur et $1$ de l'autre.**

**Étape 4. La contradiction.**

Supposons qu'un assemblage existe. Comptons les cases grises du rectangle en additionnant, pièce par pièce, celles qu'elle recouvre :

- les quatre pièces autres que le T en recouvrent $2$ chacune, soit $8$ en tout ;
- le tétramino en T en recouvre $3$ ou $1$.

Le rectangle contiendrait donc $8 + 3 = 11$ ou $8 + 1 = 9$ cases grises. Or il en contient $10$.

**Conclusion.** Aucun assemblage n'est possible : on ne peut pas former un rectangle avec ces cinq tétraminos.

## Going further

1. Remplace le tétramino décalé par un **deuxième** tétramino en T, et essaie de former un rectangle $4 \times 5$ avec les cinq pièces : droit, T, T, carré, L. C'est possible, cherche jusqu'à trouver. Pourquoi le raisonnement de l'étape 4 ne s'applique-t-il plus ?
2. Le raisonnement de l'étape 4 démontre en fait beaucoup plus. Montre qu'**aucun** rectangle ne peut être pavé par des tétraminos dont un nombre impair sont des T.
