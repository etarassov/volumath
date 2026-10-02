---
id: "11072"
title: "Deux expressions qui ne sont jamais des cubes en même temps"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [cubes, restes, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 3 (arithmétique)"
  reference: "2025-01_Sujet-envoi-3-2024-2025.pdf, Exercices Juniors, exercice 8 ; corrigé 2025-03_Corrige-envoi-3-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Sujet-envoi-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-01_Sujet-envoi-3-2024-2025.pdf"
---

## Statement

Soit $n$ un entier strictement positif tel que $n^5 + n^3 + 2n^2 + 2n + 2$ soit le cube d'un entier.

Montrer que $2n^2 + n + 2$ n'est pas le cube d'un entier.

## Hints

1. Les cubes ont très peu de restes possibles dans la division par $9$. Lesquels ?
2. Le reste de chacune des deux expressions dans la division par $9$ ne dépend que du reste de $n$. Fais un tableau pour les neuf restes possibles de $n$.
3. Regarde pour quels restes de $n$ la première expression peut être un cube, et ce que vaut alors la seconde.

## Solution

Notons $A = n^5 + n^3 + 2n^2 + 2n + 2$ et $B = 2n^2 + n + 2$.

**L'outil.** Écrivons $n = 9q + r$ avec $r \in \{0, 1, \ldots, 8\}$. En développant une puissance $(9q + r)^k$, tous les termes contiennent $9q$ sauf le dernier, $r^k$. Donc $n^k$ a le même reste que $r^k$ dans la division par $9$, et une expression comme $A$ ou $B$ a le même reste que l'expression obtenue en remplaçant $n$ par $r$.

**Les restes des cubes.** Pour un entier $k$, le reste de $k^3$ par $9$ est donc celui de $r^3$, avec $r$ entre $0$ et $8$. Or
$$0,\ 1,\ 8,\ 27,\ 64,\ 125,\ 216,\ 343,\ 512$$
ont pour restes $0, 1, 8, 0, 1, 8, 0, 1, 8$. **Un cube a pour reste $0$, $1$ ou $8$ dans la division par $9$.**

**Le tableau.** On calcule les restes de $A$ et de $B$ pour chaque reste $r$ de $n$. Par exemple, pour $r = 2$ : $32 + 8 + 8 + 4 + 2 = 54 = 6 \times 9$ donne $0$, et $8 + 2 + 2 = 12$ donne $3$.

| reste de $n$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
|---|---|---|---|---|---|---|---|---|---|
| reste de $A$ | 2 | 8 | 0 | 8 | 5 | 0 | 5 | 2 | 0 |
| reste de $B$ | 2 | 5 | 3 | 5 | 2 | 3 | 8 | 8 | 3 |

**Conclusion.** Comme $A$ est un cube, son reste vaut $0$, $1$ ou $8$. D'après le tableau, le reste de $n$ est alors $1$, $2$, $3$, $5$ ou $8$. Pour chacun de ces restes, le reste de $B$ vaut $5$ ou $3$, qui n'est le reste d'aucun cube. Donc $B = 2n^2 + n + 2$ n'est pas un cube.

## Going further

Montrer qu'aucun entier dont le reste dans la division par $9$ vaut $4$ ou $5$ ne peut s'écrire comme la somme de trois cubes d'entiers relatifs.

*Piste :* le reste d'un cube vaut $0$, $1$ ou $8$, et $8$ se comporte comme $-1$. La somme de trois nombres pris parmi $0$, $1$ et $-1$ est comprise entre $-3$ et $3$, ce qui ne donne jamais les restes $4$ ou $5$. Pour les autres entiers, on conjecture que c'est toujours possible, mais les cubes à trouver peuvent être énormes : pour $33$, on ne les a trouvés qu'en $2019$, avec des nombres de seize chiffres.
