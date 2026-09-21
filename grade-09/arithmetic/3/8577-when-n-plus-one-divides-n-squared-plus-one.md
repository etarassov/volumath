---
id: "8577"
title: "Quand n + 1 divise n² + 1"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [divisibilite, diviseurs, entiers-relatifs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Divisibilité, PGCD et nombres premiers » (Matthieu Bo.), exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Trouver tous les entiers relatifs $n$ tels que $n + 1$ divise $n^2 + 1$.

*Les entiers relatifs sont les entiers positifs, négatifs ou nuls : $\ldots, -2, -1, 0, 1, 2, \ldots$*

## Hints

1. Cherche un multiple de $n+1$ qui ressemble beaucoup à $n^2 + 1$. Que vaut $(n+1)(n-1)$ ?
2. Si $n+1$ divise $n^2+1$ et divise aussi $n^2 - 1$, il divise leur différence.
3. Cette différence est un nombre fixe. Liste tous ses diviseurs, sans oublier les négatifs.

## Solution

**On fait baisser le degré.** On sait que $(n+1)(n-1) = n^2 - 1$, donc $n + 1$ divise
toujours $n^2 - 1$.

Si de plus $n+1$ divise $n^2 + 1$, alors il divise la différence

$$(n^2 + 1) - (n^2 - 1) = 2 .$$

Réciproquement, si $n+1$ divise $2$, alors il divise $(n^2 - 1) + 2 = n^2 + 1$.

Donc

$$n + 1 \text{ divise } n^2 + 1 \iff n + 1 \text{ divise } 2 .$$

**Les diviseurs de 2.** Comme $n$ est un entier relatif, $n+1$ peut être négatif. Les
diviseurs de $2$ dans les entiers relatifs sont

$$-2, \quad -1, \quad 1, \quad 2 .$$

Donc $n + 1 \in \{-2, -1, 1, 2\}$, c'est-à-dire

$$n \in \{-3, \; -2, \; 0, \; 1\} .$$

**Vérification.**

- $n = -3$ : $n+1 = -2$ et $n^2 + 1 = 10 = (-2) \times (-5)$. C'est bon.
- $n = -2$ : $n+1 = -1$ et $n^2 + 1 = 5$. Tout entier est divisible par $-1$. C'est bon.
- $n = 0$ : $n+1 = 1$ et $n^2 + 1 = 1$. C'est bon.
- $n = 1$ : $n+1 = 2$ et $n^2 + 1 = 2$. C'est bon.

**Conclusion.** Les solutions sont $n = -3$, $n = -2$, $n = 0$ et $n = 1$.
