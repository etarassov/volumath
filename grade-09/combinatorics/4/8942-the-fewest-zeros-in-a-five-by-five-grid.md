---
id: "8942"
title: "Le moins de zéros possible dans une grille 5 × 5"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [grille, double-comptage, parite, construction, minimum]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe B"
  reference: "Poly-Valbonne-2026.pdf, chapitre IV « Groupe B », « Combinatoire : Grilles » (Tiphaine et Théo), exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Dans chaque case d'une grille $5 \times 5$, Eva écrit $0$, $1$ ou $-1$. Elle s'arrange pour que :

- la somme des nombres de chaque **colonne** soit positive ou nulle ;
- la somme des nombres de chaque **ligne** soit négative ou nulle.

Quel est le plus petit nombre de $0$ qu'il peut y avoir dans la grille ?

## Hints

1. Appelons $S$ la somme des $25$ nombres de la grille. On peut calculer $S$ de deux façons : en ajoutant les cinq sommes de colonnes, ou en ajoutant les cinq sommes de lignes. Que donne chacun des deux calculs ?
2. Vous devriez obtenir à la fois $S \geqslant 0$ et $S \leqslant 0$. Qu'en déduisez-vous sur $S$ ?
3. Une somme de cinq nombres positifs ou nuls vaut $0$ : que vaut chacun d'eux ?
4. Vous savez maintenant que **chaque ligne** a une somme nulle. Dans une ligne, combien y a-t-il de $1$ et combien de $-1$ ? Que cela impose-t-il au nombre de cases non nulles de cette ligne ?
5. Vous obtenez ainsi un minimum. Il reste le plus important : **construire** une grille qui atteint ce minimum. Essayez de décaler la même ligne d'un cran à chaque fois.

## Solution

### Étape 1 : toutes les sommes sont nulles

Notons $S$ la somme des $25$ nombres écrits dans la grille. On peut la calculer de deux manières.

- En regroupant par colonnes : $S$ est la somme des cinq sommes de colonnes. Chacune est positive ou nulle, donc $S \geqslant 0$.
- En regroupant par lignes : $S$ est la somme des cinq sommes de lignes. Chacune est négative ou nulle, donc $S \leqslant 0$.

Les deux ensemble donnent $S = 0$.

Reprenons alors le premier calcul : cinq nombres positifs ou nuls dont la somme vaut $0$ sont tous nuls. Donc **chaque colonne a une somme nulle**. De même, avec le second calcul, **chaque ligne a une somme nulle**.

C'est le cœur de l'exercice : les deux conditions de l'énoncé, qui avaient l'air larges, se referment l'une sur l'autre et imposent l'égalité partout.

### Étape 2 : chaque ligne contient au moins un zéro

Fixons une ligne. Elle contient $5$ cases, chacune valant $0$, $1$ ou $-1$, et la somme vaut $0$. Notons $p$ le nombre de $1$ et $m$ le nombre de $-1$ dans cette ligne. La somme vaut $p - m$, donc

$$p = m.$$

Le nombre de cases non nulles de la ligne est $p + m = 2p$, un nombre **pair**. Comme la ligne n'a que $5$ cases et que $5$ est impair, ce nombre pair est au plus $4$. Il y a donc au moins une case nulle dans cette ligne.

Chacune des cinq lignes contient au moins un $0$, et deux lignes différentes ne partagent aucune case, donc la grille contient

$$\text{au moins } 5 \text{ zéros.}$$

### Étape 3 : une grille avec exactement cinq zéros

Il reste à montrer que $5$ est atteignable. Voici une grille qui convient : on écrit la ligne $0,\ 1,\ 1,\ -1,\ -1$ puis on la décale d'un cran vers la droite à chaque ligne suivante.

| | | | | |
|---|---|---|---|---|
| $0$ | $1$ | $1$ | $-1$ | $-1$ |
| $-1$ | $0$ | $1$ | $1$ | $-1$ |
| $-1$ | $-1$ | $0$ | $1$ | $1$ |
| $1$ | $-1$ | $-1$ | $0$ | $1$ |
| $1$ | $1$ | $-1$ | $-1$ | $0$ |

Vérifions. Chaque ligne contient deux $1$, deux $-1$ et un $0$ : sa somme vaut $0$, donc elle est bien négative ou nulle. Par construction du décalage, chaque colonne contient elle aussi exactement deux $1$, deux $-1$ et un $0$ : sa somme vaut $0$, donc elle est bien positive ou nulle. Et la grille contient exactement cinq $0$, ceux de la diagonale.

### Conclusion

$$\boxed{\text{Le plus petit nombre de zéros possible est } 5.}$$

*Le point de méthode.* Un problème de minimum se traite toujours en deux temps qu'il ne faut pas confondre : d'abord une **majoration du possible** (« il y a forcément au moins $5$ zéros »), ensuite un **exemple** qui montre que cette barrière est atteinte. Sans l'exemple, on n'aurait prouvé que « au moins $5$ », et la vraie réponse aurait pu être $6$ ou $7$.

## Going further

1. Reprenez l'exercice avec une grille $n \times n$ au lieu de $5 \times 5$. L'étape 1 ne change pas. Que devient l'étape 2 selon que $n$ est pair ou impair ?
2. Que se passe-t-il si on inverse les deux conditions, c'est-à-dire sommes de colonnes négatives ou nulles et sommes de lignes positives ou nulles ? Et si les deux familles de sommes doivent être positives ou nulles ?
