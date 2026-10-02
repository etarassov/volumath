---
id: "8652"
title: "Quand 5 divise n³ + 2n² − 1"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [congruences, tableau-de-restes, divisibilite, polynome]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Modulos » (Elsa), exercice 7. L'énoncé imprimé écrit n³ + 2n − 1, mais le corrigé donne n ≡ 2 ou 4 mod 5, qui est la réponse pour n³ + 2n² − 1 ; avec 2n l'expression n'est jamais divisible par 5. Publié ici sous la forme corrigée, la version imprimée étant traitée dans « Pour aller plus loin »."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Déterminer tous les entiers $n$ tels que

$$n^3 + 2n^2 - 1$$

soit divisible par $5$.

## Hints

1. Essaie $n = 0, 1, 2, 3, 4, 5, 6, \ldots$ et note lesquels marchent. Une régularité devrait apparaître.
2. Le reste de $n^3 + 2n^2 - 1$ dans la division par $5$ ne dépend que du reste de $n$. Pourquoi ?
3. Il n'y a donc que **cinq** calculs à faire : ceux qui correspondent à $n \equiv 0, 1, 2, 3, 4 \pmod 5$.
4. Dresse un tableau à cinq lignes et remplis-le.

## Solution

**L'idée : il n'y a que cinq cas.**

Si deux entiers ont le même reste dans la division par $5$, alors leurs carrés ont le même reste, leurs cubes aussi, et toute expression construite à partir d'eux par additions et multiplications aussi. Donc le reste de $n^3 + 2n^2 - 1$ modulo $5$ ne dépend que du reste de $n$ modulo $5$.

Il suffit donc de tester les cinq restes possibles.

| $n \bmod 5$ | $n^3 \bmod 5$ | $2n^2 \bmod 5$ | $n^3 + 2n^2 - 1 \bmod 5$ |
|---|---|---|---|
| $0$ | $0$ | $0$ | $-1 \equiv 4$ |
| $1$ | $1$ | $2$ | $1 + 2 - 1 = 2$ |
| $2$ | $8 \equiv 3$ | $8 \equiv 3$ | $3 + 3 - 1 = 5 \equiv 0$ |
| $3$ | $27 \equiv 2$ | $18 \equiv 3$ | $2 + 3 - 1 = 4$ |
| $4$ | $64 \equiv 4$ | $32 \equiv 2$ | $4 + 2 - 1 = 5 \equiv 0$ |

Deux lignes seulement donnent le reste $0$ : celles où $n \equiv 2$ et où $n \equiv 4$.

**Vérification.** Pour $n = 2$ : $8 + 8 - 1 = 15 = 3 \times 5$. Pour $n = 4$ : $64 + 32 - 1 = 95 = 19 \times 5$. Pour $n = 7$ (qui est $\equiv 2$) : $343 + 98 - 1 = 440 = 88 \times 5$. Tout est cohérent.

**Conclusion.**

$$\boxed{n^3 + 2n^2 - 1 \text{ est divisible par } 5 \text{ exactement quand } n \equiv 2 \text{ ou } n \equiv 4 \pmod 5 .}$$

Autrement dit, les entiers cherchés sont ceux qui s'écrivent $5k + 2$ ou $5k + 4$.

## Going further

Refais le même tableau pour l'expression $n^3 + 2n - 1$, en changeant seulement $2n^2$ en $2n$. Tu trouveras les restes $4, 2, 1, 2, 1$ : **aucun n'est nul**. Cette expression-là n'est donc jamais divisible par $5$, quel que soit l'entier $n$.

Une réponse « aucun » est une réponse parfaitement valable, et le tableau des restes la démontre aussi bien qu'il démontre l'autre.
