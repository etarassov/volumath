---
id: "11816"
title: "Une médiane égale à une hauteur, et deux angles égaux"
grade: 8
theme: geometry
difficulty: 3
duration_min: 25
tags: [triangle-equilateral, mediane, hauteur, angles-opposes-par-le-sommet, aire, mediatrice]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 5 (pot-pourri)"
  reference: "2021-02_sujet-envoi-5.pdf, Exercices Juniors, exercice 2 ; corrigé 2021-04_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-02_sujet-envoi-5.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus. On note :

- $M$ le milieu du côté $[BC]$, de sorte que $[AM]$ est la médiane issue de $A$ ;
- $H$ le pied de la hauteur issue de $B$, sur le côté $[AC]$.

On suppose que $AM = BH$ et que $\widehat{MAC} = \widehat{HBC}$.

Montrer que le triangle $ABC$ est équilatéral.

## Hints

1. Faire une figure. Les segments $[AM]$ et $[BH]$ se coupent en un point $Q$ à l'intérieur du triangle. Regarder les triangles $AQH$ et $BQM$.
2. Ces deux triangles ont deux angles égaux deux à deux. Que dire de leur troisième angle ? En déduire l'angle $\widehat{AMB}$.
3. Pour montrer que $AC = BC$, calculer l'aire du triangle $ABC$ de deux façons.

## Solution

Comme les angles du triangle sont aigus, le pied $H$ est bien sur le segment $[AC]$, et les segments $[AM]$ et $[BH]$ se coupent en un point $Q$ situé à l'intérieur du triangle.

**Étape 1 : la médiane est aussi une hauteur.** Comparons les triangles $AQH$ et $BQM$.

- Les angles $\widehat{AQH}$ et $\widehat{BQM}$ sont égaux, car ils sont opposés par le sommet $Q$.
- L'angle $\widehat{QAH}$ est l'angle $\widehat{MAC}$, et l'angle $\widehat{QBM}$ est l'angle $\widehat{HBC}$. Par hypothèse, ils sont égaux.

La somme des angles d'un triangle vaut $180°$, donc les troisièmes angles sont égaux eux aussi : $\widehat{QMB} = \widehat{QHA}$. Or $\widehat{QHA} = 90°$, puisque $(BH)$ est perpendiculaire à $(AC)$. Donc $\widehat{AMB} = 90°$ : la droite $(AM)$ est perpendiculaire à $(BC)$.

**Étape 2 : $AB = AC$.** La droite $(AM)$ est perpendiculaire à $[BC]$ et passe par son milieu $M$ : c'est la médiatrice de $[BC]$. Le point $A$ est sur cette médiatrice, donc $AB = AC$.

**Étape 3 : $AC = BC$.** D'après l'étape 1, $[AM]$ est la hauteur issue de $A$. On peut donc calculer l'aire $\mathcal{A}$ du triangle $ABC$ de deux façons :

$$\mathcal{A} = \frac{BC \times AM}{2} = \frac{AC \times BH}{2}.$$

Comme $AM = BH$, on en déduit $BC = AC$.

**Conclusion.** On a $AB = AC = BC$ : **le triangle $ABC$ est équilatéral.**

## Going further

- Chacune des deux hypothèses seule ne suffit pas. Trouver un triangle aux angles aigus, non équilatéral, où $AM = BH$, puis un autre où $\widehat{MAC} = \widehat{HBC}$.
