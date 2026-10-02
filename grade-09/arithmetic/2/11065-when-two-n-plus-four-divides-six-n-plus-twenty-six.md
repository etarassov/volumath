---
id: "11065"
title: "Quand 2n + 4 divise 6n + 26"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [divisibilite, diviseurs, entiers-relatifs]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 3 (arithmétique)"
  reference: "2025-01_Sujet-envoi-3-2024-2025.pdf, Exercices Juniors, exercice 1 ; corrigé 2025-03_Corrige-envoi-3-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Sujet-envoi-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-01_Sujet-envoi-3-2024-2025.pdf"
---

## Statement

Trouver tous les entiers relatifs $n$ tels que $2n + 4$ divise $6n + 26$.

## Hints

1. Si un nombre divise $A$ et $B$, il divise aussi $A - B$. Quel multiple de $2n + 4$ ressemble beaucoup à $6n + 26$ ?
2. Tu dois arriver à « $2n + 4$ divise $14$ ». Écris $2n + 4 = 2(n + 2)$ et simplifie par $2$.
3. N'oublie pas que $n$ peut être négatif : un diviseur de $7$ peut être négatif lui aussi.

## Solution

**Réponse :** $n \in \{-9,\ -3,\ -1,\ 5\}$.

Soit $n$ un entier tel que $2n + 4$ divise $6n + 26$.

Le nombre $2n + 4$ divise aussi $3 \times (2n + 4) = 6n + 12$. Il divise donc la différence
$$(6n + 26) - (6n + 12) = 14 .$$
Il existe donc un entier $k$ tel que $14 = (2n + 4) \times k = 2(n + 2) \times k$. En divisant par $2$, on obtient $7 = (n + 2) \times k$ : le nombre $n + 2$ divise $7$.

Les diviseurs de $7$ dans les entiers relatifs sont $-7$, $-1$, $1$ et $7$. Donc $n + 2$ vaut l'un de ces nombres, c'est-à-dire
$$n = -9, \qquad n = -3, \qquad n = -1 \qquad \text{ou} \qquad n = 5 .$$

**Vérification.** Le raisonnement montre seulement que ces quatre valeurs sont les seules possibles. Il faut encore vérifier qu'elles conviennent.

| $n$ | $2n + 4$ | $6n + 26$ | quotient |
|---|---|---|---|
| $-9$ | $-14$ | $-28$ | $2$ |
| $-3$ | $-2$ | $8$ | $-4$ |
| $-1$ | $2$ | $20$ | $10$ |
| $5$ | $14$ | $56$ | $4$ |

Les quatre valeurs conviennent : les solutions sont $n = -9$, $n = -3$, $n = -1$ et $n = 5$.

## Going further

Trouver tous les entiers relatifs $n$ tels que $n + 3$ divise $n^2 + 1$.

*Réponse :* $n + 3$ divise $(n + 3)(n - 3) = n^2 - 9$, donc il divise $(n^2 + 1) - (n^2 - 9) = 10$. Ainsi $n + 3 \in \{\pm 1, \pm 2, \pm 5, \pm 10\}$, ce qui donne huit valeurs, $n \in \{-13, -8, -5, -4, -2, -1, 2, 7\}$, et toutes conviennent.
