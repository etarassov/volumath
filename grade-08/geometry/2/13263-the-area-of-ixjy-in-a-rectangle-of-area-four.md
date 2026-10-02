---
id: "13263"
title: "L'aire de IXJY dans un rectangle d'aire 4"
grade: 8
theme: geometry
difficulty: 2
duration_min: 15
tags: [aire, rectangle, milieu, diagonales]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2019"
  reference: "2019-10_coupe_animath_automne_2019_sujet.pdf, exercices collégiens, exercice 4 (aussi exercice 11 des lycéens) ; corrigé 2019-10_Corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/10/coupe_animath_automne_2019_sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-10_coupe_animath_automne_2019_sujet.pdf"
---

## Statement

Soit $ABCD$ un rectangle d'aire $4$. Soit $I$ le milieu de $[AD]$ et $J$ le milieu de $[BC]$. Soit $X$ le point d'intersection des droites $(AJ)$ et $(BI)$, et $Y$ le point d'intersection des droites $(DJ)$ et $(CI)$.

Quelle est l'aire du quadrilatère $IXJY$ ?

## Hints

1. Fais une figure. Quelle est la nature du quadrilatère $ABJI$ ?
2. Où se trouve le point $X$ dans le rectangle $ABJI$ ?
3. Coupe $IXJY$ en deux triangles le long de $[IJ]$.

## Solution

**Deux petits rectangles.** Les points $I$ et $J$ sont les milieux des côtés opposés $[AD]$ et $[BC]$, donc $AI = BJ$ et les segments $[AI]$ et $[BJ]$ sont parallèles. Le quadrilatère $ABJI$ est donc un parallélogramme, avec un angle droit en $A$ : c'est un rectangle, la moitié inférieure de $ABCD$. Son aire vaut $2$. De même, $IJCD$ est un rectangle d'aire $2$.

**Le point $X$.** Les droites $(AJ)$ et $(BI)$ sont les diagonales du rectangle $ABJI$, donc $X$ est le milieu de $[AJ]$ et de $[BI]$. De même, $Y$ est le milieu des diagonales du rectangle $IJCD$.

**L'aire du triangle $IXJ$.** Les diagonales $[AJ]$ et $[BI]$ coupent le rectangle $ABJI$ en quatre triangles. Le triangle $IXJ$ a pour base $[IJ]$, de longueur $AB$, et sa hauteur est la distance de $X$ à la droite $(IJ)$. Comme $X$ est le milieu de $[AJ]$, cette distance est la moitié de la distance de $A$ à $(IJ)$, c'est-à-dire la moitié de $AI$. Donc

$$\mathcal{A}(IXJ) = \frac{1}{2} \times AB \times \frac{AI}{2} = \frac{AB \times AI}{4} = \frac{\mathcal{A}(ABJI)}{4} = \frac{2}{4} = \frac{1}{2}.$$

De même, $\mathcal{A}(IYJ) = \frac{1}{2}$.

**Conclusion.** Le quadrilatère $IXJY$ est formé des triangles $IXJ$ et $IYJ$, situés de part et d'autre de $[IJ]$. Son aire vaut $\frac{1}{2} + \frac{1}{2} = 1$, le quart de l'aire du rectangle.
