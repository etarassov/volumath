---
id: "13846"
title: "Un triangle de même aire que le rectangle"
grade: 8
theme: geometry
difficulty: 2
duration_min: 10
tags: [aire, rectangle, pythagore]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet junior, exercice 15 (aussi sujet senior, exercice 11) ; réponse 13 dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Soit $ABCD$ un rectangle tel que $AD = 6$ et $AB = 5$. Soit $E$ un point de la demi-droite
$[BC)$ tel que l'aire du triangle $DCE$ soit égale à l'aire du rectangle $ABCD$.

Que vaut la longueur $DE$ ?

## Hints

1. Fais une figure. Le triangle $DCE$ a un angle droit. Où ?
2. Calcule l'aire du rectangle, puis la longueur $CE$.
3. Termine avec le théorème de Pythagore.

## Solution

**L'aire du rectangle.** Elle vaut $AB \times AD = 5 \times 6 = 30$. De plus $DC = AB = 5$.

**La longueur $CE$.** Le point $E$ est sur la droite $(BC)$, et la droite $(DC)$ est
perpendiculaire à $(BC)$. Le triangle $DCE$ est donc rectangle en $C$, et son aire vaut

$$\frac{DC \times CE}{2} = \frac{5 \times CE}{2}.$$

Elle doit valoir $30$, donc $5 \times CE = 60$ et $CE = 12$.

Comme $BC = AD = 6$, le point $E$ est au-delà de $C$ sur la demi-droite, avec $BE = 18$. Le point
situé à $12$ de $C$ de l'autre côté ne conviendrait pas : il serait derrière $B$, hors de la
demi-droite $[BC)$.

**La longueur $DE$.** Dans le triangle $DCE$ rectangle en $C$, le théorème de Pythagore donne

$$DE^2 = DC^2 + CE^2 = 25 + 144 = 169, \qquad \text{donc} \qquad DE = 13.$$

**On trouve $DE = 13$.**
