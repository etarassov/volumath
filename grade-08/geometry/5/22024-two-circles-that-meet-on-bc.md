---
id: "22024"
title: "Deux cercles qui se recoupent sur [BC]"
grade: 8
theme: geometry
difficulty: 5
duration_min: 50
tags: [pole-sud, cercle-de-diametre, angle-inscrit, quadrilatere-inscrit, cocyclicite, bissectrice, mediatrice, orthocentre]
adapted_from: null
see_also: ["22021", "22023"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « TD de géométrie » (Martin & Maryam), exercice 11, OIM 2004, problème 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus, avec $AB \neq AC$. Le cercle de diamètre $[BC]$ recoupe les côtés $[AB]$ et $[AC]$ en $M$ et $N$. Soit $O$ le milieu de $[BC]$.

La bissectrice de l'angle $\widehat{BAC}$ et la bissectrice de l'angle $\widehat{MON}$ se coupent en un point $R$.

Démontrer que le cercle qui passe par $B$, $M$, $R$ et le cercle qui passe par $C$, $N$, $R$ ont un point commun sur le segment $[BC]$.

## Hints

1. Le triangle $MON$ est isocèle. Quelle droite est la bissectrice de l'angle $\widehat{MON}$ ?
2. Le point $R$ est donc sur la bissectrice issue de $A$ du triangle $AMN$, et sur la médiatrice du côté opposé. Que peut-on en dire ?
3. Appelez $X$ le point où la bissectrice issue de $A$ coupe $[BC]$. Montrez que $B$, $M$, $R$, $X$ sont sur un même cercle, en calculant l'angle $\widehat{ARM}$.

## Solution

On note $\beta = \widehat{ABC}$ et $\gamma = \widehat{ACB}$.

**Les outils.**

- *Cercle de diamètre.* Un point $P$, autre que $U$ et $V$, est sur le cercle de diamètre $[UV]$ si et seulement si $\widehat{UPV} = 90^\circ$.
- *Angle inscrit.* Si $U$, $V$, $X$, $Y$ sont quatre points d'un cercle, avec $X$ et $Y$ du même côté de $(UV)$, alors $\widehat{UXV} = \widehat{UYV}$. Dans un quadrilatère convexe dont les sommets sont sur un cercle, deux angles opposés ont pour somme $180^\circ$.
- *Réciproque.* Si un quadrilatère convexe a deux angles opposés de somme $180^\circ$, ses quatre sommets sont sur un même cercle. (On le montre par l'absurde : le cercle qui passe par trois des sommets recoupe un côté en un point qui donnerait un angle trop grand ou trop petit.)
- *Le lemme du pôle Sud.* Dans un triangle $XYZ$, la bissectrice issue de $X$ recoupe le cercle circonscrit en un point $P$ de la médiatrice de $[YZ]$, situé sur l'arc $YZ$ qui ne contient pas $X$. (Par l'angle inscrit, $\widehat{PYZ} = \widehat{PXZ} = \widehat{PXY} = \widehat{PZY}$, donc $PY = PZ$.)

**Étape 1 : $M$ et $N$ sont des pieds de hauteurs.** Comme $M$ est sur le cercle de diamètre $[BC]$, $\widehat{BMC} = 90^\circ$ : la droite $(CM)$ est la hauteur issue de $C$. De même, $(BN)$ est la hauteur issue de $B$. Elles se coupent en l'orthocentre $H$ du triangle, qui est à l'intérieur du triangle puisque ses angles sont aigus.

**Étape 2 : $R$ est sur le cercle circonscrit au triangle $AMN$.** On a $OM = ON$, deux rayons du cercle de diamètre $[BC]$. Le triangle $MON$ est isocèle en $O$, donc la bissectrice de $\widehat{MON}$ est la médiatrice de $[MN]$.

Dans le triangle $AMN$, la bissectrice issue de $A$ est celle de l'angle $\widehat{BAC}$. Ces deux droites ne sont pas confondues. En effet, dans le triangle $AMC$ rectangle en $M$, $AM = AC \times \cos\widehat{BAC}$, et dans le triangle $ANB$ rectangle en $N$, $AN = AB \times \cos\widehat{BAC}$. Comme $AB \neq AC$, on a $AM \neq AN$, donc la médiatrice de $[MN]$ ne passe pas par $A$.

D'après le lemme, le point $R$ est le pôle Sud de $A$ dans le triangle $AMN$ : il est sur le cercle circonscrit au triangle $AMN$, et sur ce cercle les points se suivent dans l'ordre $A$, $M$, $R$, $N$.

**Étape 3 : le point $X$.** Soit $X$ le point où la bissectrice de $\widehat{BAC}$ coupe le segment $[BC]$. Montrons que $R$ est strictement entre $A$ et $X$.

Comme $\widehat{AMH} = \widehat{ANH} = 90^\circ$, le cercle circonscrit au triangle $AMN$ est le cercle de diamètre $[AH]$. Aucun de ses points n'est à une distance de $A$ plus grande que le diamètre $AH$. Donc $AR \leq AH$. Soit $D$ le pied de la hauteur issue de $A$. Le point $H$ est strictement entre $A$ et $D$, donc $AH < AD$, et $AD \leq AX$ car la perpendiculaire est le plus court chemin de $A$ à la droite $(BC)$. Finalement $AR < AX$ : le point $R$ est entre $A$ et $X$.

**Étape 4 : $B$, $M$, $R$, $X$ sont sur un même cercle.**

- Dans le cercle $AMRN$, les points $R$ et $N$ sont du même côté de $(AM)$, donc $\widehat{ARM} = \widehat{ANM}$.
- Les points $B$, $M$, $N$, $C$ sont sur le cercle de diamètre $[BC]$, et le quadrilatère $BMNC$ est convexe. Ses angles opposés en $N$ et en $B$ ont pour somme $180^\circ$ : $\widehat{MNC} = 180^\circ - \beta$. Comme $N$ est sur $[AC]$, $\widehat{ANM} = 180^\circ - \widehat{MNC} = \beta$.

Donc $\widehat{ARM} = \beta$. Le quadrilatère $BMRX$ est convexe : on l'obtient en coupant le coin $AMR$ du triangle $ABX$. Son angle en $R$ vaut $\widehat{MRX} = 180^\circ - \widehat{ARM} = 180^\circ - \beta$, et son angle en $B$ vaut $\widehat{XBM} = \widehat{CBA} = \beta$. Leur somme fait $180^\circ$, donc, par la réciproque, $B$, $M$, $R$, $X$ sont sur un même cercle.

**Étape 5 : $C$, $N$, $R$, $X$ sont sur un même cercle.** C'est le même raisonnement de l'autre côté : $\widehat{ARN} = \widehat{AMN} = \gamma$, donc l'angle en $R$ du quadrilatère convexe $CNRX$ vaut $180^\circ - \gamma$, et son angle en $C$ vaut $\gamma$.

**Conclusion.** Le point $X$, qui est sur le segment $[BC]$, appartient au cercle qui passe par $B$, $M$, $R$ et au cercle qui passe par $C$, $N$, $R$. Ces deux cercles se recoupent donc en $X$, sur $[BC]$.

## Going further

1. Pourquoi l'énoncé exige-t-il $AB \neq AC$ ? Que se passe-t-il dans un triangle isocèle en $A$ ?
2. Le corrigé de la source part du point $X'$ où le cercle $CNR$ recoupe $[BC]$, et montre que $X'$ est sur le cercle $BMR$. Refaites ce chemin. Pourquoi est-il plus délicat de savoir où se trouve $X'$ ?
