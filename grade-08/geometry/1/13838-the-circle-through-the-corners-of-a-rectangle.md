---
id: "13838"
title: "Le cercle qui passe par les sommets d'un rectangle"
grade: 8
theme: geometry
difficulty: 1
duration_min: 10
tags: [rectangle, cercle-circonscrit, pythagore, diagonales]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet junior, exercice 7 ; réponse 10 dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

On trace un rectangle de longueur $8$ et de largeur $6$, puis le cercle qui passe par ses quatre
sommets.

Combien mesure le diamètre de ce cercle ?

## Hints

1. Où se trouve le centre de ce cercle ? Pense aux diagonales du rectangle.
2. Les diagonales d'un rectangle ont la même longueur et se coupent en leur milieu.
3. Calcule la longueur d'une diagonale avec le théorème de Pythagore.

## Solution

Appelons $ABCD$ le rectangle, avec $AB = 8$ et $BC = 6$, et $O$ le point où se coupent ses
diagonales.

**Le centre du cercle.** Les diagonales d'un rectangle ont la même longueur et se coupent en leur
milieu. Donc

$$OA = OB = OC = OD = \frac{AC}{2}.$$

Le cercle de centre $O$ et de rayon $\dfrac{AC}{2}$ passe ainsi par les quatre sommets. C'est le
cercle de l'énoncé, car un seul cercle passe par trois points $A$, $B$, $C$ qui ne sont pas
alignés. Son diamètre est la diagonale $[AC]$.

**La longueur de la diagonale.** Le triangle $ABC$ est rectangle en $B$. D'après le théorème de
Pythagore,

$$AC^2 = AB^2 + BC^2 = 64 + 36 = 100, \qquad \text{donc} \qquad AC = 10.$$

**Le diamètre du cercle vaut $10$.**

## Going further

On peut aussi dire : le triangle $ABC$ est rectangle en $B$ et inscrit dans le cercle, donc son
hypoténuse $[AC]$ est un diamètre du cercle.
