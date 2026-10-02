---
id: "13850"
title: "Un angle de 117° au coin d'un carré"
grade: 8
theme: geometry
difficulty: 2
duration_min: 15
tags: [angles, carre, triangle-isocele, chasse-aux-angles, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet junior, exercice 19 ; réponse 335 (valeur de a + b pour l'angle a/b) dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Soit $ABCD$ un carré, et $E$ un point du segment $[AD]$, différent de $A$ et de $D$. Soit $F$
un point tel que :

- $DF = DE$ ;
- l'angle $\widehat{EDF}$ du triangle $EDF$ est obtus ;
- $\widehat{CDF} = 117^\circ$.

Quelle est la mesure, en degrés, de l'angle $\widehat{AEF}$ ?

## Hints

1. Fais une figure. Il y a deux demi-droites $[DF)$ qui font un angle de $117^\circ$ avec
   $[DC)$. Laquelle donne un angle $\widehat{EDF}$ obtus ?
2. Calcule l'angle $\widehat{EDF}$ en faisant le tour du point $D$.
3. Le triangle $EDF$ est isocèle en $D$. Calcule ses angles à la base, puis utilise
   l'alignement de $A$, $E$ et $D$.

## Solution

Comme $E$ est sur $[DA]$, l'angle $\widehat{EDF}$ est le même que l'angle $\widehat{ADF}$.
Rappelons que $\widehat{ADC} = 90^\circ$.

**Où est $F$ ?** Il y a deux cas.

- Si $F$ est du même côté de la droite $(DC)$ que $A$ : comme $117^\circ$ dépasse $90^\circ$, la
  demi-droite $[DA)$ est à l'intérieur de l'angle $\widehat{CDF}$, et
  $\widehat{ADF} = 117^\circ - 90^\circ = 27^\circ$. Cet angle est aigu, ce cas est exclu.
- Si $F$ est de l'autre côté de $(DC)$ : en tournant autour de $D$, on passe de $[DA)$ à $[DC)$
  par $90^\circ$, puis de $[DC)$ à $[DF)$ par $117^\circ$. Cela fait $207^\circ$, plus qu'un
  demi-tour. L'angle $\widehat{ADF}$, le plus petit des deux angles entre $[DA)$ et $[DF)$, est
  donc ce qui reste du tour complet :
  $$\widehat{ADF} = 360^\circ - 207^\circ = 153^\circ.$$
  Il est obtus, c'est le bon cas.

Donc $\widehat{EDF} = 153^\circ$.

**Le triangle $EDF$.** Il est isocèle en $D$, car $DE = DF$. Ses deux angles à la base sont égaux,
et ils valent

$$\widehat{DEF} = \widehat{DFE} = \frac{180^\circ - 153^\circ}{2} = \frac{27^\circ}{2} = \text{13,5}^\circ.$$

**L'angle cherché.** Le point $E$ est entre $A$ et $D$, donc les angles $\widehat{AEF}$ et
$\widehat{DEF}$ forment un angle plat :

$$\widehat{AEF} = 180^\circ - \text{13,5}^\circ = \text{166,5}^\circ.$$

**L'angle $\widehat{AEF}$ mesure $\text{166,5}^\circ$, c'est-à-dire $\dfrac{333}{2}$ degrés.**
