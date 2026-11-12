---
id: "22023"
title: "Deux bissectrices, une parallèle et LN = NA"
grade: 8
theme: geometry
difficulty: 5
duration_min: 45
tags: [pole-sud, bissectrice, mediatrice, angle-inscrit, cocyclicite, paralleles, thales]
adapted_from: null
see_also: ["22021", "22024"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « TD de géométrie » (Martin & Maryam), exercice 10, JBMO 2010 (dans la reprise de l'énoncé au-dessus du corrigé, « passant par le point N » doit se lire « passant par le point L »)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $ABC$ un triangle. On note $L$ le point où la bissectrice de l'angle $\widehat{BAC}$ coupe le côté $[BC]$, et $K$ le point où la bissectrice de l'angle $\widehat{ABC}$ coupe le côté $[AC]$.

La médiatrice du segment $[BK]$ coupe la droite $(AL)$ en un point $M$ (on suppose que ces deux droites ne sont pas confondues). La parallèle à la droite $(KM)$ passant par $L$ coupe la droite $(BK)$ en un point $N$.

Démontrer que $LN = NA$.

## Hints

1. Le point $M$ est sur la bissectrice issue de $A$ dans le triangle $ABK$, et sur la médiatrice du côté opposé $[BK]$. Où se trouve-t-il par rapport au cercle circonscrit au triangle $ABK$ ?
2. Montrez que $\widehat{ALN} = \frac{1}{2}\widehat{ABC}$, en passant par l'angle $\widehat{AMK}$.
3. Dans le triangle $ABL$, la bissectrice issue de $B$ recoupe le cercle circonscrit en un point $N'$ tel que $N'A = N'L$. Montrez que $N' = N$.

## Solution

On note $\alpha = \widehat{BAC}$ et $\beta = \widehat{ABC}$, et $I$ le point où se coupent les bissectrices $(AL)$ et $(BK)$.

**Les outils.**

- *Angle inscrit.* Si $U$, $V$, $X$, $Y$ sont quatre points d'un cercle, avec $X$ et $Y$ du même côté de la droite $(UV)$, alors $\widehat{UXV} = \widehat{UYV}$.
- *Le lemme du pôle Sud.* Soit $XYZ$ un triangle. La bissectrice de l'angle $\widehat{YXZ}$ recoupe le cercle circonscrit en un point $P$, situé de l'autre côté de $(YZ)$ par rapport à $X$, et $PY = PZ$. *Preuve.* Sur le cercle, les points se suivent dans l'ordre $X$, $Y$, $P$, $Z$. Par l'angle inscrit, $\widehat{PYZ} = \widehat{PXZ}$ et $\widehat{PZY} = \widehat{PXY}$. Ces deux angles sont égaux puisque $(XP)$ est la bissectrice, donc le triangle $PYZ$ est isocèle en $P$. Le point $P$ est donc aussi sur la médiatrice de $[YZ]$.

**Étape 1 : $A$, $B$, $M$, $K$ sont sur un même cercle.** Dans le triangle $ABK$, la bissectrice de l'angle en $A$ est la droite $(AL)$, puisque $K$ est sur $[AC]$. D'après le lemme, elle recoupe le cercle circonscrit au triangle $ABK$ en un point $P$ de la médiatrice de $[BK]$. Ce point $P$ est commun aux droites $(AL)$ et à la médiatrice de $[BK]$, qui sont distinctes : c'est donc $M$. Ainsi $M$ est sur le cercle circonscrit à $ABK$, de l'autre côté de $(BK)$ par rapport à $A$, et sur ce cercle les points se suivent dans l'ordre $A$, $B$, $M$, $K$.

**Étape 2 : où sont $L$ et $N$.** La droite $(BK)$ partage le triangle $ABC$ en deux, et $L$ est du côté opposé à $A$. Le point $M$ aussi (étape 1). Les points $L$ et $M$ sont donc tous deux sur la demi-droite issue de $I$ qui part à l'opposé de $A$ : le point $I$ est entre $A$ et $L$, et entre $A$ et $M$.

Le point $L$ est sur la demi-droite $[IM)$ et la droite $(LN)$ est parallèle à $(MK)$. D'après le théorème de Thalès, dans les triangles emboîtés $IMK$ et $ILN$, le point $N$ est sur la demi-droite $[IK)$, et les angles correspondants sont égaux :

$$\widehat{ILN} = \widehat{IMK}.$$

**Étape 3 : l'angle en $L$.** Comme $I$ est entre $A$ et $M$, $\widehat{IMK} = \widehat{AMK}$. Dans le cercle de l'étape 1, $B$ et $M$ sont du même côté de la droite $(AK)$, donc $\widehat{AMK} = \widehat{ABK} = \frac{\beta}{2}$. Comme $I$ est entre $A$ et $L$, on obtient

$$\widehat{ALN} = \widehat{ILN} = \frac{\beta}{2}.$$

**Étape 4 : le point $N'$.** Appliquons le lemme au triangle $ABL$ et à la bissectrice issue de $B$, qui est la droite $(BK)$, puisque $L$ est sur $[BC]$. Elle recoupe le cercle circonscrit au triangle $ABL$ en un point $N'$ tel que

$$N'A = N'L,$$

et $N'$ est de l'autre côté de $(AL)$ par rapport à $B$. Sur ce cercle, $B$ et $L$ sont du même côté de la droite $(AN')$, donc $\widehat{ALN'} = \widehat{ABN'} = \frac{\beta}{2}$.

**Étape 5 : $N' = N$.** Les points $N$ et $N'$ sont tous les deux de l'autre côté de la droite $(AL)$ par rapport à $B$ : pour $N'$, c'est l'étape 4 ; pour $N$, il est sur la demi-droite $[IK)$, et $K$ est du côté de $C$. Les demi-droites $[LN)$ et $[LN')$ font le même angle $\frac{\beta}{2}$ avec la demi-droite $[LA)$, et elles sont du même côté de $(AL)$ : elles sont confondues. Cette demi-droite coupe la droite $(BK)$ en un seul point, puisque $L$ n'est pas sur $(BK)$. Donc $N = N'$.

**Conclusion.** D'après l'étape 4, $NA = NL$.

## Going further

1. Déduisez de la solution que les points $A$, $B$, $L$, $N$ sont sur un même cercle.
2. Dans le triangle $ABL$, on note $J$ le point où se coupent les trois bissectrices. Montrez que $NJ = NA = NL$. (Pensez à l'exercice où un cercle de centre $S$ passe par $B$, $I$ et $C$.)
