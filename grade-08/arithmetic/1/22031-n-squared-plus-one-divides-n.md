---
id: "22031"
title: "Quand n² + 1 divise n"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [divisibilite, diviseurs, majoration]
adapted_from: null
see_also: ["22037"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Divisibilité, PGCD » (Paul), exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Trouver tous les entiers naturels $n$ tels que $n^2 + 1$ divise $n$.

*Rappel : un entier $a$ divise un entier $b$ s'il existe un entier $k$ tel que $b = k \times a$. En particulier, tout entier divise $0$, car $0 = 0 \times a$.*

## Hints

1. Si $n \geq 1$, comparez $n^2 + 1$ et $n$.
2. Un diviseur positif d'un entier $b \geq 1$ peut-il être plus grand que $b$ ?

## Solution

**Un fait utile.** Si $a \geq 1$ divise un entier $b \geq 1$, alors $a \leq b$. En effet, $b = k \times a$ avec $k$ entier, et $k \geq 1$ puisque $a$ et $b$ sont positifs. Donc $b = k \times a \geq a$.

**Étape 1 : le cas $n \geq 1$.** On a $n^2 + 1 > n^2 \geq n$, car $n^2 = n \times n \geq n$ quand $n \geq 1$. Donc $n^2 + 1 > n$. D'après le fait utile, $n^2 + 1$ ne peut pas diviser $n$.

**Étape 2 : le cas $n = 0$.** Alors $n^2 + 1 = 1$, et $1$ divise $0$ puisque $0 = 0 \times 1$.

**Conclusion.** Le seul entier naturel qui convient est $n = 0$.

## Going further

1. Trouver tous les entiers naturels $n$ tels que $n$ divise $n^2 + 1$.
2. Trouver tous les entiers naturels $n$ tels que $n^2 + 1$ divise $n^3 + n + 5$. (On pourra remarquer que $n^3 + n = n \times (n^2 + 1)$.)
