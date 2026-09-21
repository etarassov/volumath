---
id: "8130"
title: "Le milieu d'un côté et les diagonales perpendiculaires"
grade: 11
theme: geometry
difficulty: 4
duration_min: 35
tags: [cercle, angle-inscrit, triangle-rectangle, perpendiculaire]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Géométrie – Points remarquables », exercice 2"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soit $ABCD$ un quadrilatère convexe dont les quatre sommets sont sur un même cercle. On suppose que ses diagonales $(AC)$ et $(BD)$ sont perpendiculaires ; elles se coupent en $X$.

Soit $M$ le milieu du côté $[AB]$.

Montrer que la droite $(MX)$ est perpendiculaire à la droite $(CD)$.

![Le quadrilatère ABCD inscrit dans un cercle, ses diagonales perpendiculaires en X, et le milieu M de [AB]](8130-midpoint-and-perpendicular-diagonals-figure-1.svg)

## Hints

1. Le triangle $AXB$ est rectangle en $X$ et $M$ est le milieu de son hypoténuse. Que sais-tu alors de $MX$ ?
2. Tu en déduis un triangle isocèle, donc une égalité d'angles en $X$ et en $A$. Pose $\alpha = \widehat{BAC}$.
3. Note $H$ le point où la droite $(MX)$ coupe $(CD)$. Utilise les angles opposés par le sommet en $X$, et le fait que $\widehat{AXD} = 90^\circ$, pour calculer $\widehat{DXH}$.
4. Le théorème de l'angle inscrit relie $\widehat{BAC}$ et $\widehat{BDC}$ : ils regardent le même arc.
5. Il ne reste plus qu'à faire la somme des angles du triangle $DXH$.

## Solution

Posons

$$\alpha = \widehat{BAC} = \widehat{BAX}.$$

**Étape 1 : $MX = MA$.**

Les diagonales sont perpendiculaires, donc le triangle $AXB$ est rectangle en $X$. Son hypoténuse est $[AB]$, et $M$ en est le milieu.

Or, dans un triangle rectangle, le milieu de l'hypoténuse est à égale distance des trois sommets (c'est le centre du cercle circonscrit, dont $[AB]$ est un diamètre). Donc

$$MX = MA = MB.$$

**Étape 2 : l'angle en $X$.**

Le triangle $MAX$ est donc isocèle en $M$, d'où

$$\widehat{MXA} = \widehat{MAX} = \alpha.$$

**Étape 3 : l'angle $\widehat{DXH}$.**

Notons $H$ le point d'intersection de la droite $(MX)$ avec la droite $(CD)$.

Autour du point $X$ partent quatre demi-droites : $[XA)$, $[XB)$, $[XC)$ et $[XD)$, avec $[XC)$ opposée à $[XA)$ et $[XD)$ opposée à $[XB)$. De plus $\widehat{AXD} = \widehat{DXC} = 90^\circ$.

La demi-droite $[XH)$ est opposée à la demi-droite $[XM)$. Comme $\widehat{MXA} = \alpha$, les angles opposés par le sommet donnent

$$\widehat{HXC} = \alpha,$$

et donc, puisque $\widehat{DXC} = 90^\circ$ et que $[XH)$ est à l'intérieur de cet angle droit,

$$\widehat{DXH} = 90^\circ - \alpha.$$

**Étape 4 : l'angle en $D$.**

Les points $A$, $B$, $C$ et $D$ sont sur un même cercle. Les angles $\widehat{BAC}$ et $\widehat{BDC}$ sont deux angles inscrits qui interceptent le même arc $BC$, donc ils sont égaux :

$$\widehat{BDC} = \widehat{BAC} = \alpha.$$

Or $X$ appartient au segment $[BD]$ et $H$ appartient à la droite $(DC)$ du même côté que $C$, donc $\widehat{XDH} = \widehat{BDC} = \alpha$.

**Étape 5 : la somme des angles.**

Dans le triangle $DXH$ :

$$\widehat{DHX} = 180^\circ - \widehat{XDH} - \widehat{DXH} = 180^\circ - \alpha - (90^\circ - \alpha) = 90^\circ.$$

**Conclusion : $(MX) \perp (CD)$.**

Remarque : la démonstration ne privilégie aucun côté. En partant du milieu de $[BC]$, de $[CD]$ ou de $[DA]$, le même raisonnement montre que la perpendiculaire au côté opposé passe elle aussi par $X$. Autrement dit, dans un quadrilatère inscriptible aux diagonales perpendiculaires, les quatre droites qui joignent le milieu d'un côté au point $X$ sont perpendiculaires aux côtés opposés.
