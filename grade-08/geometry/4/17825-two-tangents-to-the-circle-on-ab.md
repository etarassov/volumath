---
id: "17825"
title: "Deux tangentes au cercle de diamètre [AB]"
grade: 8
theme: geometry
difficulty: 4
duration_min: 35
tags: [tangente, cercle-de-diametre, orthocentre, hauteur, triangle-isocele, chasse-aux-angles]
adapted_from: null
see_also: ["8916"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Avancés"
  reference: "stage_junior_2014.pdf, chapitre « Avancés », géométrie, mercredi matin (Vincent Jugé), exercice 4 (Olympiade mathématique lusophone 2013, problème 2), p.63 ; solution p.63. La solution imprimée est en partie illisible (phrases coupées et mélangées) : la solution donnée ici est rédigée à neuf, avec le milieu de [CH]."
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus, et $\mathcal{C}$ le cercle de diamètre $[AB]$. Le cercle $\mathcal{C}$ recoupe la droite $(AC)$ en $E$ et la droite $(BC)$ en $F$. Les tangentes au cercle $\mathcal{C}$ en $E$ et en $F$ se coupent en $P$.

Montrer que la droite $(PC)$ est perpendiculaire à la droite $(AB)$.

## Hints

1. Que valent les angles $\widehat{AEB}$ et $\widehat{AFB}$ ? Que sont les droites $(BE)$ et $(AF)$ pour le triangle $ABC$ ?
2. Soit $H$ le point commun aux hauteurs du triangle. La droite $(CH)$ est perpendiculaire à $(AB)$ : il suffit donc de montrer que $P$ est sur la droite $(CH)$.
3. Soit $N$ le milieu de $[CH]$. Montrez que $N$ est à la même distance de $C$, de $H$, de $E$ et de $F$.
4. Soit $O$ le centre de $\mathcal{C}$. Calculez l'angle $\widehat{OEN}$ en utilisant les triangles isocèles $OAE$ et $NCE$.

## Solution

Notons $O$ le milieu de $[AB]$, centre du cercle $\mathcal{C}$, et $\widehat{A} = \widehat{BAC}$.

**Étape 1 : les hauteurs.** Le point $E$ est sur le cercle de diamètre $[AB]$, donc le triangle $AEB$ est rectangle en $E$ : la droite $(BE)$ est perpendiculaire à $(AC)$. C'est la hauteur issue de $B$, et $E$ en est le pied. De même, $(AF)$ est la hauteur issue de $A$. Ces deux hauteurs se coupent en l'orthocentre $H$, et la troisième hauteur $(CH)$ est perpendiculaire à $(AB)$. Comme le triangle a ses trois angles aigus, $E$ est sur le segment $[AC]$, $F$ sur le segment $[BC]$, et $H$ est à l'intérieur du triangle.

Il suffit donc de montrer que **$P$ est sur la droite $(CH)$**.

**Étape 2 : le milieu $N$ de $[CH]$.** Les triangles $CEH$ et $CFH$ sont rectangles en $E$ et en $F$, d'hypoténuse commune $[CH]$. Dans un triangle rectangle, le milieu de l'hypoténuse est à la même distance des trois sommets. Donc, en notant $N$ le milieu de $[CH]$,

$$NC = NH = NE = NF .$$

**Étape 3 : la droite $(NE)$ est tangente à $\mathcal{C}$.**

- Le triangle $OAE$ est isocèle en $O$ ($OA = OE$, deux rayons de $\mathcal{C}$), donc $\widehat{AEO} = \widehat{EAO} = \widehat{A}$.
- Le triangle $NCE$ est isocèle en $N$ (étape 2), donc $\widehat{NEC} = \widehat{NCE}$. Or $\widehat{NCE}$ est l'angle entre la hauteur $(CH)$ et le côté $(CA)$. Dans le triangle rectangle formé par $C$, $A$ et le pied de la hauteur issue de $C$, cet angle vaut $90^\circ - \widehat{A}$. Donc $\widehat{NEC} = 90^\circ - \widehat{A}$.

Les points $O$ et $N$ sont du même côté de la droite $(AC)$, celui de $B$. Mesurons les angles à partir de la demi-droite $[EA)$ : la demi-droite $[EO)$ fait l'angle $\widehat{A}$, et la demi-droite $[EN)$ fait l'angle $180^\circ - (90^\circ - \widehat{A}) = 90^\circ + \widehat{A}$, puisque $A$, $E$, $C$ sont alignés. Donc

$$\widehat{OEN} = (90^\circ + \widehat{A}) - \widehat{A} = 90^\circ .$$

La droite $(NE)$ est perpendiculaire au rayon $[OE]$ en $E$ : c'est la tangente à $\mathcal{C}$ en $E$.

**Étape 4 : la même chose en $F$.** Le même calcul, avec les triangles isocèles $OBF$ et $NCF$, montre que $(NF)$ est la tangente à $\mathcal{C}$ en $F$.

**Conclusion.** Les tangentes en $E$ et en $F$ sont deux droites différentes qui passent toutes les deux par $N$. Leur point commun $P$ est donc $N$, le milieu de $[CH]$. Ainsi $P$ est sur la hauteur $(CH)$, et **la droite $(PC)$ est perpendiculaire à $(AB)$.**

## Going further

On a obtenu plus que demandé : les tangentes en $E$ et en $F$ se coupent au milieu du segment qui joint $C$ à l'orthocentre. Autrement dit, le cercle de diamètre $[AB]$ et le cercle de diamètre $[CH]$ se coupent à angle droit en $E$ et en $F$ : en ces points, le rayon de l'un est tangent à l'autre.
