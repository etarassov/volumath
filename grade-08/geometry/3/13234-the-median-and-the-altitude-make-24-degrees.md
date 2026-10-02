---
id: "13234"
title: "La médiane et la hauteur font 24°"
grade: 8
theme: geometry
difficulty: 3
duration_min: 15
tags: [angles, triangle-rectangle, cercle-circonscrit, triangle-isocele]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017, premier tour"
  reference: "2017-10_coupe_automne_2017_elim.pdf, exercices collégiens, exercice 8 ; réponse (33) dans 2017-10_coupe_automne_2017_elim_college.pdf, pas de corrigé rédigé"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017_elim.pdf"
---

## Statement

Dans un triangle $ABC$ rectangle en $A$, l'angle entre la médiane issue de $A$ et la hauteur issue de $A$ est égal à $24^\circ$.

Déterminer, en degrés, le plus petit angle du triangle.

## Hints

1. Note $M$ le milieu de $[BC]$ et $H$ le pied de la hauteur. Où est le centre du cercle circonscrit à un triangle rectangle ?
2. Le triangle $AMC$ est isocèle. Que vaut l'angle $\widehat{MAC}$ ?
3. Dans le triangle rectangle $AHC$, que vaut l'angle $\widehat{HAC}$ ?

## Solution

Notons $M$ le milieu de $[BC]$ et $H$ le pied de la hauteur issue de $A$. Notons $\widehat{B}$ et $\widehat{C}$ les angles du triangle en $B$ et en $C$ : ils sont aigus et $\widehat{B} + \widehat{C} = 90^\circ$. Le plus petit angle du triangle est l'un des deux ; quitte à échanger les noms de $B$ et $C$, supposons $\widehat{B} \leqslant \widehat{C}$.

**L'angle de la médiane avec $[AC]$.** Dans un triangle rectangle, le milieu de l'hypoténuse est le centre du cercle circonscrit, donc $MA = MC$. Le triangle $AMC$ est isocèle en $M$, d'où $\widehat{MAC} = \widehat{C}$.

**L'angle de la hauteur avec $[AC]$.** Le triangle $AHC$ est rectangle en $H$, donc $\widehat{HAC} = 90^\circ - \widehat{C} = \widehat{B}$.

**L'angle entre les deux.** Les demi-droites $[AH)$ et $[AM)$ sont toutes deux à l'intérieur de l'angle droit $\widehat{BAC}$. Elles font avec $[AC)$ les angles $\widehat{B}$ et $\widehat{C}$, et $\widehat{B} \leqslant \widehat{C}$, donc l'angle entre elles vaut $\widehat{C} - \widehat{B}$. On obtient

$$\widehat{C} - \widehat{B} = 24^\circ \qquad \text{et} \qquad \widehat{C} + \widehat{B} = 90^\circ.$$

En additionnant, $2\widehat{C} = 114^\circ$, donc $\widehat{C} = 57^\circ$ et $\widehat{B} = 33^\circ$.

**Conclusion.** Les angles du triangle valent $90^\circ$, $57^\circ$ et $33^\circ$ : le plus petit vaut $33^\circ$.
