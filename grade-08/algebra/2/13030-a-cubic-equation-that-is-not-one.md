---
id: "13030"
title: "Une équation de degré trois qui n'en est pas une"
grade: 8
theme: algebra
difficulty: 2
duration_min: 10
tags: [developpement, double distributivite, equation]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, éliminatoires du test de rentrée 2015 (Coupe Animath d'automne), questionnaire collégiens"
  reference: "2017-09_coupe_automne_2015_elim_college.pdf, exercice 3 ; corrigé 2017-09_coupe_automne_2015_elim_college_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015_elim_college.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015_elim_college.pdf"
---

## Statement

Soit $a$ un nombre réel tel que
$$(a - 1)(a - 2)(a - 3) + a^2(6 - a) = 0 .$$
Calculer $11a$.

## Hints

1. Développe d'abord $(a - 1)(a - 2)$.
2. Multiplie le résultat par $(a - 3)$, puis développe $a^2(6 - a)$.
3. Additionne : les termes en $a^3$ et en $a^2$ disparaissent.

## Solution

**Le produit de trois facteurs.** On développe d'abord
$$(a - 1)(a - 2) = a^2 - 2a - a + 2 = a^2 - 3a + 2,$$
puis
$$(a - 1)(a - 2)(a - 3) = \left(a^2 - 3a + 2\right)(a - 3) = a^3 - 3a^2 + 2a - 3a^2 + 9a - 6 = a^3 - 6a^2 + 11a - 6 .$$

**Le deuxième terme.** On a $a^2(6 - a) = 6a^2 - a^3$.

**La somme.** En additionnant,
$$(a - 1)(a - 2)(a - 3) + a^2(6 - a) = a^3 - 6a^2 + 11a - 6 + 6a^2 - a^3 = 11a - 6 .$$
L'équation de départ s'écrit donc simplement $11a - 6 = 0$.

**Conclusion.** On a $11a = 6$ (c'est-à-dire $a = \dfrac{6}{11}$).

## Going further

1. Trouver le nombre $a$ tel que $(a - 2)(a - 3)(a - 4) + a^2(9 - a) = 0$.
2. Dans le développement de $(a - 1)(a - 2)(a - 3)$, le coefficient de $a^2$ est $-6 = -(1 + 2 + 3)$. Comment s'obtient le coefficient $11$ à partir de $1$, $2$ et $3$ ?
