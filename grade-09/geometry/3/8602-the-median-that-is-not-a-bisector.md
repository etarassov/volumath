---
id: "8602"
title: "Un angle de 20°, une médiane et un angle de 40°"
grade: 9
theme: geometry
difficulty: 3
duration_min: 20
tags: [angles, triangle-isocele, milieu, cercle-circonscrit]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023"
  reference: "valbonne-2023.pdf, Coupe Animath de printemps 2023, exercices collégiens, exercice 2 (repris comme exercice 9 pour les lycéens)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

$ABC$ est un triangle dans lequel l'angle $\widehat{CAB}$ mesure $20^\circ$.

On appelle $D$ le milieu du segment $[AB]$, et on sait que l'angle $\widehat{CDB}$ mesure $40^\circ$.

Combien mesure l'angle $\widehat{ABC}$ ?

*Commence par faire une figure : ici elle fait la moitié du travail.*

## Hints

1. Sur la figure, $A$, $D$ et $B$ sont alignés dans cet ordre. Que peux-tu dire des angles $\widehat{CDA}$ et $\widehat{CDB}$ ?
2. Une fois $\widehat{CDA}$ connu, tu connais deux angles du triangle $ADC$. Calcule le troisième.
3. Le triangle $ADC$ a deux angles égaux. Qu'est-ce que cela donne sur ses côtés ?
4. $D$ est le milieu de $[AB]$, donc $DA = DB$. Et tu viens de trouver que $DA = DC$. Regarde alors le triangle $DBC$.

## Solution

**Étape 1 : l'angle $\widehat{CDA}$.**

Les points $A$, $D$ et $B$ sont alignés, donc les angles $\widehat{CDA}$ et $\widehat{CDB}$ sont supplémentaires :

$$\widehat{CDA} = 180^\circ - \widehat{CDB} = 180^\circ - 40^\circ = 140^\circ .$$

**Étape 2 : le triangle $ADC$.**

Dans ce triangle on connaît déjà deux angles : $\widehat{DAC} = \widehat{BAC} = 20^\circ$ (c'est le même angle, puisque $D$ est sur $[AB]$) et $\widehat{ADC} = 140^\circ$. La somme des angles d'un triangle vaut $180^\circ$, donc

$$\widehat{DCA} = 180^\circ - 20^\circ - 140^\circ = 20^\circ .$$

**Étape 3 : $ADC$ est isocèle.**

Les angles $\widehat{DAC}$ et $\widehat{DCA}$ sont tous les deux égaux à $20^\circ$. Le triangle $ADC$ est donc isocèle en $D$, ce qui donne

$$DA = DC .$$

**Étape 4 : le triangle $DBC$.**

Comme $D$ est le milieu de $[AB]$, on a $DA = DB$. En combinant avec l'étape précédente :

$$DB = DA = DC .$$

Le triangle $DBC$ est donc isocèle en $D$, et ses deux angles à la base sont égaux : $\widehat{DBC} = \widehat{DCB}$.

Dans ce triangle, $\widehat{BDC} = 40^\circ$, donc

$$\widehat{DBC} + \widehat{DCB} = 180^\circ - 40^\circ = 140^\circ, \qquad \text{d'où} \qquad \widehat{DBC} = \frac{140^\circ}{2} = 70^\circ .$$

Comme $D$ est sur $[AB]$, l'angle $\widehat{DBC}$ est exactement l'angle $\widehat{ABC}$.

**Conclusion.** $\widehat{ABC} = \boxed{70^\circ}$.

## Going further

L'étape 4 dit que $DA = DB = DC$ : les trois sommets $A$, $B$, $C$ sont à la même distance de $D$, autrement dit $D$ est le centre du cercle circonscrit à $ABC$, et $[AB]$ en est un diamètre. Un triangle inscrit dans un cercle dont un côté est un diamètre est rectangle : $ABC$ est donc rectangle en $C$.

On retrouve alors la réponse d'un coup : dans un triangle rectangle, les deux angles aigus sont complémentaires, donc

$$\widehat{ABC} = 90^\circ - \widehat{BAC} = 90^\circ - 20^\circ = 70^\circ .$$

**Attention au piège signalé par les correcteurs.** La droite $(CD)$ coupe $[AB]$ en son milieu, mais elle ne coupe pas l'angle $\widehat{ACB}$ en deux parties égales. Une médiane n'est pas une bissectrice, sauf dans un triangle isocèle.
