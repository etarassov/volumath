---
id: "13824"
title: "Les couples d'entiers tels que x²y² = 100"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [diviseurs, entiers relatifs, denombrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2019, éliminatoires"
  reference: "2019-06_coupe_animath_printemps_2019_elim.pdf, exercices collège, exercice 8 ; corrigé dans le même fichier, solution 8 (Olympiades mathématiques belges, éliminatoire miDi 1999, Q27)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/06/coupe_animath_printemps_2019_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-06_coupe_animath_printemps_2019_elim.pdf"
---

## Statement

Combien y a-t-il de couples $(x, y)$ d'entiers, positifs ou négatifs, tels que

$$x^2 y^2 = 100 \ ?$$

L'ordre compte dans un couple : $(1, 2)$ et $(2, 1)$ sont deux couples différents.

## Hints

1. Que vaut $x^2 y^2$ en fonction du produit $xy$ ?
2. Le nombre $xy$ a pour carré $100$. Quelles valeurs peut-il prendre ?
3. Pour $xy = 10$, le nombre $x$ doit diviser $10$. N'oublie pas les diviseurs négatifs.

## Solution

**On se ramène au produit $xy$.** On a $x^2 y^2 = (xy)^2$. L'égalité s'écrit donc
$(xy)^2 = 100$, ce qui veut dire que $xy = 10$ ou $xy = -10$.

**Les couples tels que $xy = 10$.** Le nombre $x$ divise alors $10$, et $y = \dfrac{10}{x}$ est
déterminé par $x$. Les diviseurs de $10$, positifs ou négatifs, sont
$1, 2, 5, 10, -1, -2, -5, -10$. Cela donne $8$ couples :

$$(1, 10),\ (2, 5),\ (5, 2),\ (10, 1),\ (-1, -10),\ (-2, -5),\ (-5, -2),\ (-10, -1).$$

**Les couples tels que $xy = -10$.** De même, $x$ est l'un des $8$ diviseurs de $10$ et
$y = \dfrac{-10}{x}$. On obtient encore $8$ couples, par exemple $(1, -10)$ ou $(-5, 2)$.

**En tout.** Les deux listes ne se recouvrent pas, puisque le produit $xy$ n'y est pas le même.
Il y a donc $8 + 8 = 16$ couples.

**Il y a $16$ couples d'entiers $(x, y)$ tels que $x^2 y^2 = 100$.**
