---
id: "10003"
title: "Une hauteur, une médiane, et un triangle équilatéral"
grade: 8
theme: geometry
difficulty: 3
duration_min: 25
tags: [triangles egaux, triangle isocele, triangle equilateral, hauteur, mediane]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 1 (géométrie)"
  reference: "2017-10_ofm-2012-2013-envoi1.pdf, Exercices Juniors, exercice 3 ; corrigé 2017-10_ofm-2012-2013-envoi1-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi1.pdf"
---

## Statement

$ABC$ est un triangle dont les trois angles sont aigus. On note :

- $H$ le pied de la hauteur issue de $C$, c'est-à-dire le point de $[AB]$ tel que $(CH)$ soit perpendiculaire à $(AB)$ ;
- $K$ le milieu du côté $[AC]$.

On suppose que $BK = CH$ et que $\widehat{KBC} = \widehat{HCB}$.

Montrer que le triangle $ABC$ est équilatéral.

## Hints

1. Trace les deux triangles $KBC$ et $HCB$. Ils ont un côté en commun. Que dit l'énoncé sur leurs autres côtés et leurs angles ?
2. Ces deux triangles sont égaux (cas d'égalité : deux côtés et l'angle compris entre eux). Écris toutes les égalités d'angles qu'on en tire.
3. L'une d'elles dit que les angles en $B$ et en $C$ du triangle $ABC$ sont égaux. Une autre transforme l'angle droit en $H$ en un angle droit en $K$.
4. Une médiane qui est aussi une hauteur : que peut-on dire du triangle ?

## Solution

### Deux triangles égaux

Comparons les triangles $KBC$ et $HCB$ :

- $BK = CH$, par hypothèse ;
- le côté $[BC]$ est commun ;
- l'angle compris entre ces deux côtés est $\widehat{KBC}$ dans le premier triangle et $\widehat{HCB}$ dans le second, et ces angles sont égaux par hypothèse.

Par le cas d'égalité « deux côtés et l'angle compris », les triangles $KBC$ et $HCB$ sont égaux, le sommet $B$ du premier correspondant à $C$, $K$ à $H$, et $C$ à $B$. Leurs angles correspondants sont donc égaux :
$$\widehat{BCK} = \widehat{CBH} \qquad \text{et} \qquad \widehat{BKC} = \widehat{CHB} .$$

### Le triangle est isocèle en $A$

Le point $K$ est sur le segment $[AC]$, donc $\widehat{BCK} = \widehat{BCA}$. Comme les angles du triangle sont aigus, le pied $H$ de la hauteur est sur le segment $[AB]$, donc $\widehat{CBH} = \widehat{CBA}$. La première égalité devient
$$\widehat{BCA} = \widehat{CBA} .$$
Un triangle qui a deux angles égaux est isocèle : $AB = AC$.

### Le triangle est isocèle en $B$

Comme $(CH)$ est perpendiculaire à $(AB)$, l'angle $\widehat{CHB}$ est droit. La seconde égalité donne donc $\widehat{BKC} = 90°$ : la droite $(BK)$ est perpendiculaire à $(AC)$.

Or $K$ est le milieu de $[AC]$. La droite $(BK)$ passe par le milieu de $[AC]$ et lui est perpendiculaire : c'est la médiatrice de $[AC]$. Le point $B$ est sur cette médiatrice, donc il est à égale distance de $A$ et de $C$ :
$$BA = BC .$$

**Conclusion.** On a $AB = AC$ et $BA = BC$, donc les trois côtés sont égaux : le triangle $ABC$ est équilatéral.
