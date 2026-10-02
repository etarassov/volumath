---
id: "13848"
title: "L'aire d'un losange de périmètre 52"
grade: 8
theme: geometry
difficulty: 2
duration_min: 10
tags: [losange, pythagore, aire]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet junior, exercice 17 (aussi sujet senior, exercice 14) ; réponse 120 dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Un losange $ABCD$ a pour périmètre $52$, et sa diagonale $[AC]$ mesure $24$.

Quelle est l'aire de ce losange ?

## Hints

1. Combien mesure un côté du losange ?
2. Les diagonales d'un losange se coupent en leur milieu et sont perpendiculaires.
3. Les deux diagonales découpent le losange en quatre triangles rectangles.

## Solution

**Un côté.** Les quatre côtés d'un losange ont la même longueur, donc chacun mesure
$52 \div 4 = 13$.

**L'autre diagonale.** Soit $O$ le point où se coupent les diagonales. Elles se coupent en leur
milieu, donc $AO = 12$, et elles sont perpendiculaires, donc le triangle $AOB$ est rectangle en
$O$. D'après le théorème de Pythagore,

$$BO^2 = AB^2 - AO^2 = 169 - 144 = 25, \qquad \text{donc} \qquad BO = 5 \quad \text{et} \quad BD = 10.$$

**L'aire.** Les diagonales découpent le losange en quatre triangles rectangles, tous de côtés
$12$ et $5$ autour de l'angle droit. Chacun a pour aire $\dfrac{12 \times 5}{2} = 30$.

**L'aire du losange vaut $4 \times 30 = 120$.**

## Going further

Le calcul montre que l'aire d'un losange vaut toujours la moitié du produit de ses diagonales :
ici $\dfrac{24 \times 10}{2} = 120$.
