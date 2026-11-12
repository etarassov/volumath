---
id: "17812"
title: "Deux distances au point d'intersection des diagonales"
grade: 9
theme: geometry
difficulty: 2
duration_min: 20
tags: [angle-inscrit, quadrilatere-inscrit, triangles-semblables, hauteur, aire]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Débutants"
  reference: "stage_junior_2014.pdf, chapitre « Débutants », géométrie, mercredi matin, « Le théorème de l'angle inscrit » (Jean-Louis Tu), exercice 8, p.42 ; solution p.43"
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soit $ABCD$ un quadrilatère convexe dont les quatre sommets sont sur un même cercle. Ses diagonales $[AC]$ et $[BD]$ se coupent en $X$.

On note $H$ le pied de la perpendiculaire menée de $X$ à la droite $(BC)$, et $K$ le pied de la perpendiculaire menée de $X$ à la droite $(AD)$.

Montrer que

$$\frac{XH}{XK} = \frac{BC}{AD} .$$

## Hints

1. Cherchez deux triangles semblables sur la figure. Le théorème de l'angle inscrit donne des angles égaux.
2. Comparez les triangles $XAD$ et $XBC$.
3. $XK$ est une hauteur du triangle $XAD$, et $XH$ une hauteur du triangle $XBC$. Pensez aux aires de ces deux triangles.

## Solution

**Un outil : le théorème de l'angle inscrit.** Dans un cercle, un angle inscrit vaut la moitié de l'angle au centre qui intercepte le même arc. Par conséquent, deux angles inscrits qui interceptent le même arc, avec leurs sommets du même côté de la corde, sont égaux.

**Étape 1 : deux triangles semblables.** Le point $X$ est sur $[AC]$ et sur $[BD]$.

- Les angles $\widehat{CAD}$ et $\widehat{CBD}$ interceptent le même arc $CD$, et $A$ et $B$ sont du même côté de $(CD)$ car $ABCD$ est convexe. Donc $\widehat{XAD} = \widehat{CAD} = \widehat{CBD} = \widehat{XBC}$.
- De même, $\widehat{BDA}$ et $\widehat{BCA}$ interceptent l'arc $AB$, donc $\widehat{XDA} = \widehat{XCB}$.

Les triangles $XAD$ et $XBC$ ont donc les mêmes angles : ils sont semblables, avec $A$ qui correspond à $B$, $D$ à $C$ et $X$ à $X$. Le côté $[BC]$ correspond au côté $[AD]$, donc le triangle $XBC$ est un agrandissement (ou une réduction) du triangle $XAD$ de rapport

$$k = \frac{BC}{AD} .$$

**Étape 2 : les aires.** Dans un agrandissement de rapport $k$, les aires sont multipliées par $k^2$. Donc

$$\text{aire}(XBC) = k^2 \times \text{aire}(XAD) .$$

Or $XH$ est la hauteur du triangle $XBC$ relative au côté $[BC]$, et $XK$ est la hauteur du triangle $XAD$ relative au côté $[AD]$. Ainsi

$$\frac{1}{2}\, XH \times BC = k^2 \times \frac{1}{2}\, XK \times AD .$$

On remplace $BC$ par $k \times AD$ et on simplifie par $\frac{1}{2}\, k \times AD$ :

$$XH = k \times XK .$$

**Conclusion :**

$$\frac{XH}{XK} = k = \frac{BC}{AD} .$$

## Going further

Le même raisonnement montre que dans deux triangles semblables, toutes les longueurs qui se correspondent (hauteurs, médianes, rayons des cercles inscrits) sont dans le même rapport $k$.
