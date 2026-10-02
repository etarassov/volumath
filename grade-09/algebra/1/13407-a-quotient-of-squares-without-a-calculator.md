---
id: "13407"
title: "Un quotient de carrés sans calculatrice"
grade: 9
theme: algebra
difficulty: 1
duration_min: 10
tags: [identites-remarquables, difference-de-carres, calcul-astucieux]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2021"
  reference: "2021-10_Sujet.pdf, épreuve lycée, exercice 8 ; corrigé 2021-10_sujetcommentairecorrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/10/Sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2021-10_Sujet.pdf"
---

## Statement

Calculer, sans calculatrice, le nombre

$$\frac{1000^2}{252^2 - 248^2}.$$

## Hints

1. Ne calcule pas $252^2$ : il y a beaucoup plus simple.
2. Le dénominateur est une différence de deux carrés. Quelle identité remarquable connais-tu pour $a^2 - b^2$ ?

## Solution

On utilise l'identité remarquable $a^2 - b^2 = (a - b)(a + b)$ au dénominateur :

$$252^2 - 248^2 = (252 - 248)(252 + 248) = 4 \times 500 = 2000.$$

Donc

$$\frac{1000^2}{252^2 - 248^2} = \frac{1000 \times 1000}{2000} = \frac{1000}{2} = 500.$$

## Going further

Calculer de la même façon $\dfrac{2026^2 - 2024^2}{2025}$, puis $1001^2 - 999^2$.
