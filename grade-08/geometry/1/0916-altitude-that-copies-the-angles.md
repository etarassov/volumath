---
id: "0916"
title: "La hauteur qui recopie les angles"
grade: 8
theme: geometry
difficulty: 1
duration_min: 10
tags: [triangle-rectangle, hauteur, angles-complementaires]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Géométrie »"
  reference: "Geometry.pdf, P 2, d'après M. Aassila, « Objectif Olympiades de Mathématiques — Géométrie 1 »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Geometry.pdf"
---

## Statement

$ABC$ est un triangle rectangle en $A$. Le point $D$ du côté $[BC]$ est le pied de la hauteur
issue de $A$, c'est-à-dire que $(AD) \perp (BC)$.

Démontrer que

$$\widehat{BAD} = \widehat{ACB} \qquad \text{et} \qquad \widehat{CAD} = \widehat{ABC}.$$

## Hints

1. Fais la figure. Combien de triangles rectangles vois-tu ? Il y en a trois.
2. Dans un triangle rectangle, les deux angles aigus ont une somme connue : elle vaut
   $90^\circ$.
3. Écris cette relation dans le triangle $ABD$, puis dans le triangle $ABC$. Les deux font
   apparaître le même angle $\widehat{ABC}$.

## Solution

**L'idée : les deux angles à démontrer égaux sont tous les deux « ce qui manque à
$\widehat{ABC}$ pour faire $90^\circ$ ».**

Dans un triangle rectangle, la somme des deux angles aigus vaut $90^\circ$ : ils sont
complémentaires.

**Première égalité.**

Le triangle $ABD$ est rectangle en $D$, car $(AD) \perp (BC)$ et $D$ est sur $[BC]$. Donc

$$\widehat{BAD} = 90^\circ - \widehat{ABD} = 90^\circ - \widehat{ABC},$$

la dernière égalité venant de ce que $D$ est sur le côté $[BC]$, ce qui fait que
$\widehat{ABD}$ et $\widehat{ABC}$ sont le même angle.

Le triangle $ABC$ est rectangle en $A$, donc

$$\widehat{ACB} = 90^\circ - \widehat{ABC}.$$

Les deux angles $\widehat{BAD}$ et $\widehat{ACB}$ sont donc égaux.

**Deuxième égalité.**

Le triangle $ACD$ est rectangle en $D$, donc

$$\widehat{CAD} = 90^\circ - \widehat{ACD} = 90^\circ - \widehat{ACB}.$$

Et dans le triangle $ABC$, rectangle en $A$ :

$$\widehat{ABC} = 90^\circ - \widehat{ACB}.$$

Les deux angles $\widehat{CAD}$ et $\widehat{ABC}$ sont donc égaux.

**Conclusion.** La hauteur issue de l'angle droit recopie les deux angles aigus du triangle,
mais échangés : l'angle en $B$ réapparaît entre la hauteur et le côté $[AC]$, et l'angle en
$C$ entre la hauteur et le côté $[AB]$.

## Going further

En déduire que les trois triangles $ABC$, $DBA$ et $DAC$ ont les mêmes angles : ils sont
semblables. C'est le point de départ des relations métriques dans le triangle rectangle.
