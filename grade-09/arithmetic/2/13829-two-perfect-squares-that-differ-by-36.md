---
id: "13829"
title: "Deux carrés parfaits qui diffèrent de 36"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [carre parfait, difference de deux carres, identites remarquables, diviseurs, parite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2019, éliminatoires"
  reference: "2019-06_coupe_animath_printemps_2019_elim.pdf, exercices lycée, exercice 13 ; corrigé dans le même fichier, solution 13 (Olympiades mathématiques belges, demi-finale miDi 2001, Q23)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/06/coupe_animath_printemps_2019_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-06_coupe_animath_printemps_2019_elim.pdf"
---

## Statement

Un carré parfait est le carré d'un entier : $0$, $1$, $4$, $9$, $16$, et ainsi de suite.

Combien existe-t-il de paires de carrés parfaits dont la différence vaut $36$ ? Le nombre $0$
compte comme un carré parfait.

## Hints

1. Écris les deux carrés $x^2$ et $y^2$, avec $x > y \geqslant 0$. Factorise $x^2 - y^2$.
2. Les nombres $x - y$ et $x + y$ sont deux entiers positifs dont le produit vaut $36$. Écris
   toutes les façons de décomposer $36$ en un produit de deux entiers.
3. Les nombres $x - y$ et $x + y$ ont pour somme $2x$. Que peut-on dire de leur parité ?

## Solution

Écrivons les deux carrés $x^2$ et $y^2$, avec $x$ et $y$ entiers et $x > y \geqslant 0$. On
cherche le nombre de solutions de

$$x^2 - y^2 = 36, \qquad \text{c'est-à-dire} \qquad (x - y)(x + y) = 36.$$

**Les décompositions possibles.** Posons $d = x - y$ et $e = x + y$. Ce sont deux entiers, avec
$d > 0$ et $d \leqslant e$, dont le produit vaut $36$. Les décompositions de $36$ en un produit
$d \times e$ avec $d \leqslant e$ sont

$$1 \times 36, \qquad 2 \times 18, \qquad 3 \times 12, \qquad 4 \times 9, \qquad 6 \times 6.$$

**La parité.** On a $d + e = 2x$, qui est pair. Donc $d$ et $e$ sont tous les deux pairs ou
tous les deux impairs. Cela élimine $1 \times 36$, $3 \times 12$ et $4 \times 9$. Il reste deux
cas, et dans chacun on retrouve $x = \dfrac{d + e}{2}$ et $y = \dfrac{e - d}{2}$.

- $d = 2$ et $e = 18$ donnent $x = 10$ et $y = 8$ : on a bien $100 - 64 = 36$.
- $d = 6$ et $e = 6$ donnent $x = 6$ et $y = 0$ : on a bien $36 - 0 = 36$.

**Il existe $2$ paires de carrés parfaits dont la différence vaut $36$ : $\{100, 64\}$ et
$\{36, 0\}$.**
