---
id: "41130"
title: "Deux affirmations vraies, deux fausses"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 10
tags: [divisibilite, logique, multiples]
adapted_from: null
see_also: []
same_as: []
created: 2026-11-27
source:
  name: "MathCool, Грузия, август 2026 г., группа «Земляные элементали», листок «Делимость» (А. А. Пронина)"
  reference: "mathcool-2026-08-17-delimost.pdf, задача 10"
  url: ""
  original_language: "ru"
  local_copy: "sources/originals/mathcool/mathcool-2026-08-17-delimost.pdf"
---

## Statement

On fait quatre affirmations sur un nombre entier strictement positif :

- il est divisible par $2$ ;
- il est divisible par $6$ ;
- il est divisible par $12$ ;
- il est divisible par $48$.

On sait que deux de ces affirmations sont vraies et que les deux autres sont fausses. Lesquelles sont fausses ?

## Hints

1. Si le nombre est divisible par $48$, par quels autres nombres de la liste est-il forcément divisible ?
2. Même question s'il est divisible par $12$.
3. Combien d'affirmations seraient vraies si l'affirmation sur $12$ était vraie ?

## Solution

Chaque nombre de la liste divise le suivant : $6 = 3 \times 2$, $12 = 2 \times 6$ et $48 = 4 \times 12$. Donc un nombre divisible par l'un d'eux est divisible par tous ceux qui le précèdent.

- Si le nombre était divisible par $12$, il serait aussi divisible par $6$ et par $2$ : au moins trois affirmations seraient vraies. C'est impossible, donc **l'affirmation sur $12$ est fausse**.
- Si le nombre était divisible par $48$, il serait divisible par $12$. C'est impossible, donc **l'affirmation sur $48$ est fausse** aussi.

Il y a exactement deux affirmations fausses, ce sont donc celles-là, et les deux autres sont vraies : le nombre est divisible par $2$ et par $6$. Une telle situation existe bien, par exemple avec le nombre $6$.

**Conclusion : les affirmations fausses sont « divisible par $12$ » et « divisible par $48$ ».**
