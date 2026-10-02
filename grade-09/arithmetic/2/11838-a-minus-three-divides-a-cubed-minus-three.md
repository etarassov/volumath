---
id: "11838"
title: "a − 3 divise a³ − 3"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 20
tags: [divisibilite, diviseurs, factorisation, entiers relatifs]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 5 (pot-pourri)"
  reference: "2022-03_sujet-envoi-5.pdf, Exercices Seniors, exercice 11 ; corrigé 2022-05_corrige-envoi-5.pdf (la liste finale du corrigé contient à tort a = 3 et oublie a = 7)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/03/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-03_sujet-envoi-5.pdf"
---

## Statement

Déterminer tous les entiers relatifs $a$ tels que $a - 3$ divise $a^3 - 3$.

## Hints

1. Vérifier en développant que $(a - 3)(a^2 + 3a + 9) = a^3 - 27$.
2. Si $a - 3$ divise $a^3 - 3$ et $a^3 - 27$, que divise-t-il encore ?
3. Ne pas oublier les diviseurs négatifs, et regarder à part le cas $a = 3$.

## Solution

**Étape 1 : une factorisation.** En développant,

$$(a - 3)(a^2 + 3a + 9) = a^3 + 3a^2 + 9a - 3a^2 - 9a - 27 = a^3 - 27.$$

On en déduit

$$a^3 - 3 = (a^3 - 27) + 24 = (a - 3)(a^2 + 3a + 9) + 24.$$

**Étape 2 : se ramener à $24$.** Le nombre $a - 3$ divise toujours $(a - 3)(a^2 + 3a + 9)$. D'après l'égalité ci-dessus :

- si $a - 3$ divise $a^3 - 3$, il divise aussi la différence $(a^3 - 3) - (a - 3)(a^2 + 3a + 9) = 24$ ;
- inversement, si $a - 3$ divise $24$, il divise la somme $(a - 3)(a^2 + 3a + 9) + 24 = a^3 - 3$.

Donc $a - 3$ divise $a^3 - 3$ exactement quand $a - 3$ divise $24$.

**Étape 3 : le cas $a = 3$.** Si $a = 3$, alors $a - 3 = 0$, et $0$ ne divise que $0$. Or $a^3 - 3 = 24 \neq 0$. Donc $a = 3$ ne convient pas. Cela est cohérent avec l'étape 2, puisque $0$ n'est pas un diviseur de $24$.

**Étape 4 : la liste.** Les diviseurs de $24$ sont

$$\pm 1, \ \pm 2, \ \pm 3, \ \pm 4, \ \pm 6, \ \pm 8, \ \pm 12, \ \pm 24.$$

On ajoute $3$ à chacun pour obtenir $a$ :

| $a - 3$ | $1$ | $2$ | $3$ | $4$ | $6$ | $8$ | $12$ | $24$ |
|---|---|---|---|---|---|---|---|---|
| $a$ | $4$ | $5$ | $6$ | $7$ | $9$ | $11$ | $15$ | $27$ |

| $a - 3$ | $-1$ | $-2$ | $-3$ | $-4$ | $-6$ | $-8$ | $-12$ | $-24$ |
|---|---|---|---|---|---|---|---|---|
| $a$ | $2$ | $1$ | $0$ | $-1$ | $-3$ | $-5$ | $-9$ | $-21$ |

**Conclusion.** Il y a $16$ entiers qui conviennent :

$$a \in \{-21, -9, -5, -3, -1, 0, 1, 2, 4, 5, 6, 7, 9, 11, 15, 27\}.$$

Par exemple, pour $a = 7$ : $a - 3 = 4$ et $a^3 - 3 = 340 = 4 \times 85$.

## Going further

Déterminer tous les entiers relatifs $a$ tels que $a + 2$ divise $a^4 + 3$.
