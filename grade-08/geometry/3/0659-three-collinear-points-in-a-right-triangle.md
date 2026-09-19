---
id: "0659"
title: "Trois points alignés dans un triangle rectangle"
grade: 8
theme: geometry
difficulty: 3
duration_min: 25
tags: [symetrie-axiale, triangle-rectangle, alignement, angles]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Angles et droites du triangle »"
  reference: "Angles.2.pdf, 6 octobre 2023, problème 13"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Angles.2.pdf"
---

## Statement

Soit un triangle $ABC$, rectangle en $A$. Le point $D$ est le milieu du segment $[BC]$, et $E$ et $F$ sont les symétriques de $D$ par rapport à $(AB)$ et à $(AC)$.

Démontrez que les points $E$, $A$, $F$ sont alignés.

![Le triangle rectangle ABC, le milieu D de [BC] et ses deux symétriques E et F](0659-figure-1.svg)

## Hints

1. Trois points $E$, $A$, $F$ sont alignés exactement quand l'angle $\widehat{EAF}$ mesure $180°$. C'est donc un calcul d'angles.
2. $A$ est sur l'axe $(AB)$ : la symétrie par rapport à $(AB)$ ne le bouge pas. Que devient alors l'angle $\widehat{BAD}$ ?
3. Écris $\widehat{EAF}$ comme la somme de quatre angles : $\widehat{EAB}$, $\widehat{BAD}$, $\widehat{DAC}$ et $\widehat{CAF}$. Deux d'entre eux sont égaux aux deux autres.

## Solution

**Ce que fait la symétrie par rapport à $(AB)$.** Le point $A$ appartient à l'axe $(AB)$, donc il est son propre symétrique. Une symétrie axiale conserve les angles, et elle envoie $D$ sur $E$ et laisse $B$ en place, donc

$$\widehat{EAB} = \widehat{DAB}.$$

De plus $E$ est de l'autre côté de la droite $(AB)$ que $D$.

**Ce que fait la symétrie par rapport à $(AC)$.** De la même façon,

$$\widehat{FAC} = \widehat{DAC},$$

et $F$ est de l'autre côté de la droite $(AC)$ que $D$.

**La position des quatre demi-droites.** Le point $D$ est sur le segment $[BC]$, donc la demi-droite $[AD)$ est à l'intérieur de l'angle $\widehat{BAC}$. La demi-droite $[AE)$, elle, est au-delà de $[AB)$, et $[AF)$ est au-delà de $[AC)$. En tournant autour de $A$ toujours dans le même sens, on rencontre donc les demi-droites dans cet ordre :

$$[AE), \quad [AB), \quad [AD), \quad [AC), \quad [AF).$$

**Le calcul.** L'angle $\widehat{EAF}$ est donc la somme des quatre angles consécutifs :

$$\widehat{EAF} = \widehat{EAB} + \widehat{BAD} + \widehat{DAC} + \widehat{CAF} = \widehat{BAD} + \widehat{BAD} + \widehat{DAC} + \widehat{DAC},$$

c'est-à-dire

$$\widehat{EAF} = 2\left(\widehat{BAD} + \widehat{DAC}\right) = 2 \times \widehat{BAC} = 2 \times 90° = 180°.$$

Un angle plat en $A$ signifie que les demi-droites $[AE)$ et $[AF)$ sont opposées.

**Les points $E$, $A$, $F$ sont donc alignés**, et $A$ est situé entre $E$ et $F$.

## Going further

Le calcul n'a jamais utilisé que $D$ est le milieu de $[BC]$ : n'importe quel point $D$ du segment $[BC]$ (et même n'importe quel point intérieur à l'angle $\widehat{BAC}$) convient. Ce qui compte vraiment, c'est que l'angle en $A$ mesure $90°$, car l'angle $\widehat{EAF}$ vaut toujours le double de $\widehat{BAC}$.
