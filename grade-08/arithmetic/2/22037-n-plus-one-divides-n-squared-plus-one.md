---
id: "22037"
title: "Quand n + 1 divise n² + 1"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [divisibilite, diviseurs, factorisation]
adapted_from: null
see_also: ["7016", "22031", "8577"]
same_as: ["7662"]
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Divisibilité, PGCD » (Paul), exercice 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Trouver tous les entiers naturels $n$ tels que $n + 1$ divise $n^2 + 1$.

*Rappel : un entier $a$ divise un entier $b$ s'il existe un entier $k$ tel que $b = k \times a$.*

## Hints

1. Trouvez un multiple de $n + 1$ qui ressemble beaucoup à $n^2 + 1$. Pensez à $(n + 1)(n - 1)$.
2. Si un nombre divise deux entiers, il divise aussi leur différence.
3. Calculez $(n^2 + 1) - (n + 1)(n - 1)$.

## Solution

**Un outil : diviser une différence.** Si $a$ divise $b$ et $a$ divise $c$, alors $a$ divise $b - c$. En effet, on peut écrire $b = k \times a$ et $c = l \times a$ avec $k$ et $l$ entiers, donc $b - c = (k - l) \times a$, et $k - l$ est un entier.

**Étape 1 : un multiple de $n + 1$.** On a

$$(n + 1)(n - 1) = n^2 - n + n - 1 = n^2 - 1.$$

Comme $n - 1$ est un entier, $n + 1$ divise $n^2 - 1$.

**Étape 2 : la différence.** Supposons que $n + 1$ divise $n^2 + 1$. Il divise aussi $n^2 - 1$, donc d'après l'outil il divise la différence

$$(n^2 + 1) - (n^2 - 1) = 2.$$

**Étape 3 : les diviseurs de $2$.** Comme $n \geq 0$, on a $n + 1 \geq 1$. Les diviseurs de $2$ supérieurs ou égaux à $1$ sont $1$ et $2$. Donc $n + 1 = 1$ ou $n + 1 = 2$, c'est-à-dire $n = 0$ ou $n = 1$.

**Étape 4 : on vérifie.**

- Pour $n = 0$ : $n + 1 = 1$ et $n^2 + 1 = 1$, et $1$ divise $1$.
- Pour $n = 1$ : $n + 1 = 2$ et $n^2 + 1 = 2$, et $2$ divise $2$.

**Conclusion.** Les entiers naturels qui conviennent sont $n = 0$ et $n = 1$.

## Going further

1. Trouver tous les entiers naturels $n$ tels que $n + 1$ divise $n^2 + 7$.
2. Trouver tous les entiers naturels $n$ tels que $n + 2$ divise $n^2 + 1$.
