---
id: "0104"
title: "Le nombre écrit au tableau"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [chiffres, produit, cycle, periodicite, reste]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, кружок 7 класса, I полугодие, пособие для преподавателей"
  reference: "Ast2017.pdf, листок 2, задача 2"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017.pdf"
---

## Statement

Le nombre $23$ est écrit au tableau.

Chaque minute, on efface le nombre écrit au tableau et on écrit à la place le produit de ses chiffres, augmenté de $12$.

Par exemple, à la première minute, on efface $23$ et on écrit $2 \times 3 + 12 = 18$.

Quel nombre sera écrit au tableau au bout d'une heure ?

## Hints

1. Calcule les nombres un par un : après une minute, après deux minutes, après trois minutes. Ne cherche pas encore de formule, écris simplement la liste.
2. Continue la liste jusqu'à la sixième minute au moins. Que remarques-tu ?
3. La liste finit par tourner en rond. Quel est le premier nombre qui réapparaît, et au bout de combien de minutes revient-il ?
4. Une heure, cela fait $60$ minutes. Comme le cycle a une longueur de $5$, regarde le reste de $60$ dans la division par $5$. Attention à bien repérer à quelle minute le cycle commence.

## Solution

**L'idée : on calcule, et on cherche si la liste se répète.**

**Étape 1. On écrit les premiers nombres.**

| Minute | Calcul | Nombre au tableau |
| --- | --- | --- |
| $0$ (départ) | | $23$ |
| $1$ | $2 \times 3 + 12$ | $18$ |
| $2$ | $1 \times 8 + 12$ | $20$ |
| $3$ | $2 \times 0 + 12$ | $12$ |
| $4$ | $1 \times 2 + 12$ | $14$ |
| $5$ | $1 \times 4 + 12$ | $16$ |
| $6$ | $1 \times 6 + 12$ | $18$ |

**Étape 2. On repère le cycle.**

À la minute $6$, on retrouve $18$, qui était déjà là à la minute $1$.

Or la règle ne dépend que du nombre écrit au tableau : si le même nombre revient, alors toute la suite se répète à l'identique. À partir de la minute $1$, les nombres tournent donc en rond :

$$18 \to 20 \to 12 \to 14 \to 16 \to 18 \to 20 \to \dots$$

**Le cycle a une longueur de $5$ minutes**, et il commence à la minute $1$.

**Étape 3. On situe la soixantième minute dans le cycle.**

Le nombre écrit à la minute $n$ (pour $n \geqslant 1$) ne dépend que du reste de $n$ dans la division par $5$ :

| Reste de $n$ par $5$ | $1$ | $2$ | $3$ | $4$ | $0$ |
| --- | --- | --- | --- | --- | --- |
| Nombre au tableau | $18$ | $20$ | $12$ | $14$ | $16$ |

On vérifie sur le tableau de l'étape 1 : la minute $5$ donne $16$ et $5$ a pour reste $0$ ; la minute $6$ donne $18$ et $6$ a pour reste $1$. Cela concorde.

Une heure vaut $60$ minutes, et

$$60 = 5 \times 12 + 0$$

Le reste est $0$.

**Conclusion.** Au bout d'une heure, le nombre écrit au tableau est $16$.

## Going further

1. Reprends le problème en partant de $25$ au lieu de $23$. Que se passe-t-il ?
2. Existe-t-il un nombre de départ pour lequel le nombre écrit au tableau ne change jamais ? Il y en a exactement deux : sauras-tu les trouver tous les deux, et montrer qu'il n'y en a pas d'autres ?
3. On repart de $23$. Quel nombre sera écrit au tableau au bout de $2026$ minutes ?
