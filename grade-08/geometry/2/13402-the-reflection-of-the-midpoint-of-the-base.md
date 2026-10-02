---
id: "13402"
title: "Le symétrique du milieu de la base"
grade: 8
theme: geometry
difficulty: 2
duration_min: 20
tags: [symetrie axiale, triangle isocele, angles, somme des angles]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2021"
  reference: "2021-10_Sujet.pdf, épreuve collège, exercice 2 (repris tel quel en exercice 9 de l'épreuve lycée) ; corrigé 2021-10_sujetcommentairecorrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/10/Sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2021-10_Sujet.pdf"
---

## Statement

Soit $ABC$ un triangle isocèle en $A$, et soit $M$ le milieu du segment $[BC]$. On appelle $D$ le symétrique du point $M$ par rapport à la droite $(AC)$.

On note $x$ la mesure de l'angle $\widehat{BAC}$. Déterminer la mesure de l'angle $\widehat{MDC}$ en fonction de $x$.

## Hints

1. Fais une grande figure, avec un angle $x$ quelconque (ni $60^\circ$, ni $90^\circ$). Mesure $\widehat{MDC}$ pour te faire une idée de la réponse.
2. Une symétrie axiale conserve les longueurs et les angles. Que peux-tu dire des longueurs $CM$ et $CD$ ? Et des angles $\widehat{ACM}$ et $\widehat{ACD}$ ?
3. Le triangle $MCD$ est donc isocèle. Pour trouver ses angles à la base, il suffit de connaître l'angle au sommet $\widehat{MCD}$.
4. Exprime d'abord l'angle $\widehat{ACB}$ en fonction de $x$, en utilisant que le triangle $ABC$ est isocèle.

## Solution

![Le triangle ABC isocèle en A, le milieu M de [BC], son symétrique D par rapport à (AC), et le point E où [MD] coupe (AC)](13402-figure-1.svg)

**Ce que donne la symétrie.**

Le point $C$ est sur la droite $(AC)$, donc il est son propre symétrique. La symétrie par rapport à $(AC)$ envoie donc le segment $[CM]$ sur le segment $[CD]$, et l'angle $\widehat{ACM}$ sur l'angle $\widehat{ACD}$. Comme une symétrie conserve les longueurs et les angles :

$$CD = CM \qquad \text{et} \qquad \widehat{ACD} = \widehat{ACM}.$$

**L'angle au sommet du triangle $MCD$.**

Le point $M$ est sur $[BC]$, donc $\widehat{ACM} = \widehat{ACB}$. Le triangle $ABC$ est isocèle en $A$, donc ses angles en $B$ et en $C$ sont égaux. La somme des angles d'un triangle vaut $180^\circ$, donc

$$\widehat{ACB} = \frac{180^\circ - x}{2}.$$

Les angles $\widehat{ACM}$ et $\widehat{ACD}$ sont côte à côte, de part et d'autre de la droite $(AC)$, donc

$$\widehat{MCD} = \widehat{ACM} + \widehat{ACD} = 2 \times \frac{180^\circ - x}{2} = 180^\circ - x.$$

**Les angles à la base du triangle $MCD$.**

Comme $CD = CM$, le triangle $MCD$ est isocèle en $C$, donc $\widehat{MDC} = \widehat{DMC}$. La somme de ses angles vaut $180^\circ$ :

$$2 \times \widehat{MDC} + (180^\circ - x) = 180^\circ, \qquad \text{donc} \qquad 2 \times \widehat{MDC} = x.$$

**Conclusion.**

$$\widehat{MDC} = \frac{x}{2}.$$

*Une autre façon de voir.* Dans le triangle isocèle $ABC$, la médiane $(AM)$ est aussi une hauteur, donc $\widehat{AMC} = 90^\circ$. Par symétrie, $\widehat{ADC} = 90^\circ$ aussi. Les points $M$ et $D$ voient donc tous les deux le segment $[AC]$ sous un angle droit : ils sont sur le cercle de diamètre $[AC]$. Le théorème de l'angle inscrit donne alors $\widehat{MDC} = \widehat{MAC}$, et $\widehat{MAC} = \frac{x}{2}$ car $(AM)$ est aussi la bissectrice de $\widehat{BAC}$.

## Going further

Avec la même figure, calculer l'angle $\widehat{ADM}$ en fonction de $x$, puis vérifier que $\widehat{ADM} + \widehat{MDC} = 90^\circ$.
