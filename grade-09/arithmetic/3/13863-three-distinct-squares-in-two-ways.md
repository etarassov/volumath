---
id: "13863"
title: "Trois carrés distincts de deux façons"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [carre-parfait, somme, decomposition, recherche-exhaustive]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet senior, exercice 20 ; réponse 62 dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Quel est le plus petit entier qui s'écrit **de deux façons différentes** comme la somme de trois
carrés d'entiers strictement positifs et distincts ?

Par exemple, $1^2 + 2^2 + 4^2 = 21$ est une telle somme. Changer l'ordre des trois carrés ne
compte pas comme une nouvelle façon.

## Hints

1. Les carrés qui peuvent servir sont $1, 4, 9, 16, 25, 36, 49, \ldots$ Range les sommes selon le
   plus grand des trois carrés.
2. Écris toutes les sommes possibles jusqu'à $60$ environ. En trouves-tu deux égales ?
3. Cherche du côté de $1 + 25 + 36$.

## Solution

**Une somme qui marche.** On a

$$62 = 1^2 + 5^2 + 6^2 = 1 + 25 + 36 \qquad \text{et} \qquad 62 = 2^2 + 3^2 + 7^2 = 4 + 9 + 49.$$

**Aucun entier plus petit ne marche.** Pour une somme inférieure à $62$, les trois carrés sont
pris parmi $1, 4, 9, 16, 25, 36, 49$, puisque $64 > 62$. Écrivons toutes les sommes de trois
d'entre eux qui sont inférieures à $62$, rangées selon le plus grand des trois carrés.

| plus grand carré | sommes inférieures à $62$ |
|---|---|
| $9$ | $1 + 4 + 9 = 14$ |
| $16$ | $1 + 4 + 16 = 21$, $1 + 9 + 16 = 26$, $4 + 9 + 16 = 29$ |
| $25$ | $30$, $35$, $38$, $42$, $45$, $50$ |
| $36$ | $41$, $46$, $49$, $53$, $56$, $61$ |
| $49$ | $1 + 4 + 49 = 54$, $1 + 9 + 49 = 59$ |

Pour le plus grand carré $25$, les deux autres sont pris parmi $1, 4, 9, 16$, ce qui donne
$1 + 4$, $1 + 9$, $4 + 9$, $1 + 16$, $4 + 16$, $9 + 16$, soit $5, 10, 13, 17, 20, 25$ à ajouter à
$25$. Pour $36$, on ajoute les mêmes nombres à $36$, et la somme suivante, $36 + 1 + 25 = 62$,
n'est plus inférieure à $62$. Pour $49$, seules $49 + 5$ et $49 + 10$ sont inférieures à $62$.

Rangées dans l'ordre, ces $18$ sommes sont

$$14,\ 21,\ 26,\ 29,\ 30,\ 35,\ 38,\ 41,\ 42,\ 45,\ 46,\ 49,\ 50,\ 53,\ 54,\ 56,\ 59,\ 61.$$

Elles sont toutes différentes, donc aucun entier inférieur à $62$ ne s'écrit de deux façons.

**Le plus petit entier cherché est $62$.**
