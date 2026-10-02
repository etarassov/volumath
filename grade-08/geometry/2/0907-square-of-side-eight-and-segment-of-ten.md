---
id: "0907"
title: "Le carré de côté 8 et le segment de 10"
grade: 8
theme: geometry
difficulty: 2
duration_min: 15
tags: [carre, theoreme-de-pythagore, triangle-rectangle]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Géométrie »"
  reference: "Geometry.pdf, P 40 (Chine, 1999), d'après M. Aassila, « Objectif Olympiades de Mathématiques — Géométrie 1 »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Geometry.pdf"
---

## Statement

$ABCD$ est un carré de côté $8$. Le point $Q$ est le milieu du côté $[CD]$, et on pose
$\alpha = \widehat{DAQ}$.

Le point $P$ du côté $[CD]$ est tel que $\widehat{BAP} = 2\alpha$.

![Le carré ABCD, le milieu Q de [CD] et le point P](0907-figure-1.svg)

Sachant que $AP = 10$, calculer la longueur $CP$.

## Hints

1. Dans quel triangle se trouvent à la fois $AP$ et le côté du carré ? Ce triangle a-t-il une
   particularité ?
2. Le triangle $ADP$ est rectangle en $D$, avec $AD = 8$ et $AP = 10$. Il te manque $DP$.
3. Une fois $DP$ connue, souviens-toi que $P$ est sur le côté $[DC]$, qui mesure $8$.

## Solution

**L'idée : le triangle $ADP$ est rectangle, et on y connaît déjà deux longueurs.**

$ABCD$ est un carré, donc l'angle $\widehat{ADP}$ est droit et $AD = 8$. Le triangle $ADP$
est rectangle en $D$, d'hypoténuse $[AP]$.

Le théorème de Pythagore donne

$$AD^2 + DP^2 = AP^2,$$

c'est-à-dire

$$64 + DP^2 = 100, \qquad\text{donc}\qquad DP^2 = 36 \qquad\text{et}\qquad DP = 6.$$

Le point $P$ est sur le côté $[DC]$, qui mesure $8$, donc

$$CP = DC - DP = 8 - 6 = 2.$$

**Conclusion.** $CP = 2$.

**Et les angles, alors ?** C'est la condition $\widehat{BAP} = 2\alpha$ qui place le point $P$
sur le côté $[CD]$ : sans elle, on ne saurait pas de quel point on parle. La donnée $AP = 10$
est une conséquence de cette condition, et c'est elle qui rend le calcul court. Les deux
données désignent bien le même point : avec $DP = 6$, une calculatrice donne
$\widehat{DAQ} \approx \text{26,57}^\circ$ et $\widehat{BAP} \approx \text{53,13}^\circ$, soit très
exactement le double.

## Going further

Retrouver la position de $P$ sans utiliser la donnée $AP = 10$. On pourra placer le point $R$
de la demi-droite $[DC)$ tel que $\widehat{DAR} = 2\alpha$, remarquer que $(AQ)$ est alors la
bissectrice de l'angle $\widehat{DAR}$ et en déduire $DR$, puis comparer les triangles $ADP$
et $RDA$, qui ont les mêmes angles.
