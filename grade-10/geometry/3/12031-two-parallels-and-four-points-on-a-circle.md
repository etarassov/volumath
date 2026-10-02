---
id: "12031"
title: "Deux parallèles et quatre points sur un cercle"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [cercle, angle inscrit, cocycliques, triangle isocele, parallelogramme, triangles egaux]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test du 23 mars 2013"
  reference: "2017-10_ofm-2012-2013-test-mars-1.pdf, exercice 1 ; corrigé 2017-10_ofm-2012-2013-test-mars-corrige.pdf (le corrigé utilise une rotation de centre O ; solution réécrite avec des triangles égaux et des angles ordinaires)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-mars-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-mars-1.pdf"
---

## Statement

Soit $ABC$ un triangle isocèle en $A$, et $O$ le centre de son cercle circonscrit. Soit $D$ un point du segment $[BC]$, distinct de $B$ et de $C$. La parallèle à $(AB)$ passant par $D$ coupe $(AC)$ en $E$, et la parallèle à $(AC)$ passant par $D$ coupe $(AB)$ en $F$.

![Le triangle ABC isocèle en A, son cercle circonscrit de centre O, et le parallélogramme AFDE](12031-figure-1.svg)

Démontrer que les points $A$, $E$, $O$ et $F$ sont sur un même cercle.

## Hints

1. Le quadrilatère $AFDE$ est un parallélogramme. Regardez aussi le triangle $BFD$ : quels sont ses angles ?
2. Vous devez trouver $BF = AE$. Comparez alors les triangles $OBF$ et $OAE$.
3. Les points $F$ et $E$ sont de part et d'autre de la droite $(AO)$. Que faut-il montrer sur les angles $\widehat{AFO}$ et $\widehat{AEO}$ ?

## Solution

**L'outil.** On utilise la réciproque du théorème de l'angle inscrit, sous la forme suivante. *Soient $X$ et $Y$ deux points, et $M$, $N$ deux points situés de part et d'autre de la droite $(XY)$. Si $\widehat{XMY} + \widehat{XNY} = 180^\circ$, alors $X$, $Y$, $M$, $N$ sont sur un même cercle.* (Un cercle passant par $X$ et $Y$ est coupé par la corde $[XY]$ en deux arcs, et un angle inscrit qui intercepte $[XY]$ vaut $\varphi$ sur l'un des arcs et $180^\circ - \varphi$ sur l'autre.)

Comme $D$ est strictement entre $B$ et $C$, le point $F$ est strictement entre $A$ et $B$, et le point $E$ strictement entre $A$ et $C$.

**Étape 1 : $BF = AE$.** Les côtés de $AFDE$ sont parallèles deux à deux, donc $AFDE$ est un parallélogramme, et $FD = AE$.

Dans le triangle $BFD$, les droites $(FD)$ et $(AC)$ sont parallèles, donc les angles correspondants $\widehat{FDB}$ et $\widehat{ACB}$ sont égaux. Comme $ABC$ est isocèle en $A$, on a $\widehat{ACB} = \widehat{ABC} = \widehat{FBD}$. Le triangle $BFD$ a donc deux angles égaux, en $B$ et en $D$ : il est isocèle en $F$, et $FB = FD$. Finalement

$$BF = FD = AE .$$

**Étape 2 : les triangles $OBF$ et $OAE$ sont égaux.**

- $OB = OA$, car $O$ est le centre du cercle circonscrit.
- $BF = AE$, d'après l'étape 1.
- $\widehat{OBF} = \widehat{OAE}$. En effet, le triangle $OAB$ est isocèle en $O$, donc $\widehat{OBA} = \widehat{OAB}$. De plus, la droite $(AO)$ est l'axe de symétrie du triangle isocèle $ABC$ (c'est la médiatrice de $[BC]$, et elle passe par $A$). Cette symétrie échange $B$ et $C$ et laisse $A$ et $O$ en place, donc $\widehat{OAB} = \widehat{OAC}$. Comme $F$ est sur $[BA]$ et $E$ sur $[AC]$, on obtient $\widehat{OBF} = \widehat{OBA} = \widehat{OAB} = \widehat{OAC} = \widehat{OAE}$.

Les deux triangles ont un angle égal compris entre deux côtés égaux : ils sont égaux. Les angles opposés aux côtés égaux $[OB]$ et $[OA]$ sont donc égaux :

$$\widehat{OFB} = \widehat{OEA} .$$

**Étape 3 : conclure.** Comme $F$ est entre $A$ et $B$, on a $\widehat{AFO} = 180^\circ - \widehat{OFB}$. D'après l'étape 2,

$$\widehat{AFO} + \widehat{AEO} = \left(180^\circ - \widehat{OFB}\right) + \widehat{OFB} = 180^\circ .$$

Enfin, $F$ et $E$ sont de part et d'autre de la droite $(AO)$ : cette droite sépare $B$ de $C$, et elle ne coupe les segments $[AB]$ et $[AC]$ qu'en $A$, donc $F$ est du côté de $B$ et $E$ du côté de $C$.

**Conclusion.** D'après l'outil, avec $X = A$, $Y = O$, $M = F$ et $N = E$, les points $A$, $E$, $O$ et $F$ sont sur un même cercle.

## Going further

Quand $D$ est le milieu de $[BC]$, les points $E$ et $F$ sont les milieux de $[AC]$ et de $[AB]$. Retrouver le résultat directement dans ce cas, en montrant que le cercle cherché est le cercle de diamètre $[AO]$.
