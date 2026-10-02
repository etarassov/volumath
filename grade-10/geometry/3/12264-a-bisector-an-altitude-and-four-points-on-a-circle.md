---
id: "12264"
title: "Une bissectrice, une hauteur et quatre points sur un cercle"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [triangle rectangle, bissectrice, triangle isocele, hauteur, angle inscrit, cocyclicite]
adapted_from: null
see_also: []
created: 2026-10-02
source:
  name: "POFM, test de janvier 2017"
  reference: "2017-10_ofm-2016-2017-test-janvier.pdf et son corrigé, test du 4 janvier 2017, exercice 4 (exercice commun aux groupes A et B). La solution suit celle du corrigé, en justifiant les positions des points ; elle a été vérifiée numériquement sur 2 000 triangles"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2016-2017-test-janvier.pdf"
---

## Statement

Soit $ABC$ un triangle rectangle en $C$. On note $D$ le pied de la hauteur issue de $C$, et $Z$ le point du segment $[AB]$ tel que $AZ = AC$.

La bissectrice de l'angle $\widehat{BAC}$ coupe la droite $(CB)$ en $X$ et la droite $(CZ)$ en $Y$.

Montrer que les quatre points $B$, $X$, $Y$, $D$ sont sur un même cercle.

![Le triangle ABC rectangle en C, la hauteur [CD], le point Z de [AB] tel que AZ = AC, le segment [CZ] et la bissectrice issue de A, qui coupe [CZ] en Y et [CB] en X](12264-figure-1.svg)

## Hints

1. Le triangle $ACZ$ est isocèle en $A$. Que peut-on dire de la bissectrice issue de $A$ dans ce triangle ?
2. Montre que les points $A$, $D$, $Y$, $C$ sont sur un même cercle. Quel est son diamètre ?
3. Compare les angles $\widehat{AYD}$ et $\widehat{ACD}$, puis les angles $\widehat{ACD}$ et $\widehat{ABC}$.
4. Pour conclure, montre que $\widehat{DYX} + \widehat{DBX} = 180^\circ$.

## Solution

On utilise le **théorème de l'angle inscrit et sa réciproque**, sous la forme suivante. Soient $P$ et $Q$ deux points, et $M$ et $N$ deux points hors de la droite $(PQ)$.

- Si $M$ et $N$ sont du même côté de $(PQ)$, alors $P$, $Q$, $M$, $N$ sont sur un même cercle si et seulement si $\widehat{PMQ} = \widehat{PNQ}$.
- Si $M$ et $N$ sont de part et d'autre de $(PQ)$, alors $P$, $Q$, $M$, $N$ sont sur un même cercle si et seulement si $\widehat{PMQ} + \widehat{PNQ} = 180^\circ$.

On note $\alpha = \widehat{BAC}$.

**Étape 1. Le point $Y$ est le milieu de $[CZ]$, et $(AY) \perp (CZ)$.**

Le triangle $ACZ$ est isocèle en $A$, puisque $AZ = AC$. Dans un triangle isocèle, la bissectrice issue du sommet principal est l'axe de symétrie du triangle : c'est la médiatrice de la base. La bissectrice de $\widehat{CAZ} = \widehat{BAC}$ coupe donc $[CZ]$ en son milieu, à angle droit. Ainsi $Y$ est le milieu de $[CZ]$, et $\widehat{AYC} = 90^\circ$.

**Étape 2. La position des points sur les droites.**

- *Le point $D$ est entre $A$ et $B$.* Dans le triangle $ADC$ rectangle en $D$, l'hypoténuse est $[AC]$, donc $AD < AC$. Dans le triangle $ACB$ rectangle en $C$, l'hypoténuse est $[AB]$, donc $AC < AB$. Ainsi $AD < AB$.
- *Le point $Y$ est entre $A$ et $X$.* Les points $X$ et $Y$ sont sur la bissectrice, du même côté de $A$. Dans le triangle $AYC$ rectangle en $Y$, on a $AY < AC$. Le triangle $ACX$ est rectangle en $C$, car $X$ est sur $(CB)$, donc $AC < AX$. Ainsi $AY < AX$.

**Étape 3. Les points $A$, $D$, $Y$, $C$ sont sur le cercle de diamètre $[AC]$.**

On a $\widehat{ADC} = 90^\circ$ par définition de $D$, et $\widehat{AYC} = 90^\circ$ d'après l'étape 1. Un point qui voit le segment $[AC]$ sous un angle droit est sur le cercle de diamètre $[AC]$. Donc $D$ et $Y$ sont sur ce cercle, que l'on note $\Gamma$.

**Étape 4. On a $\widehat{AYD} = \widehat{ACD}$.**

Le point $C$ n'est pas sur la droite $(AB)$, et $Y$ est le milieu de $[CZ]$, où $Z$ est sur $(AB)$. Donc $Y$ est du même côté de la droite $(AD) = (AB)$ que $C$. Les points $A$, $D$, $Y$, $C$ sont sur le cercle $\Gamma$, donc, d'après le théorème de l'angle inscrit, $\widehat{AYD} = \widehat{ACD}$.

**Étape 5. On a $\widehat{ACD} = \widehat{ABC}$.**

Dans le triangle $ADC$ rectangle en $D$, on a $\widehat{ACD} = 90^\circ - \widehat{CAD} = 90^\circ - \alpha$. Dans le triangle $ACB$ rectangle en $C$, on a $\widehat{ABC} = 90^\circ - \alpha$. Donc $\widehat{ACD} = \widehat{ABC}$.

**Étape 6. Conclusion.**

Comme $Y$ est entre $A$ et $X$, les angles $\widehat{AYD}$ et $\widehat{DYX}$ sont supplémentaires. Avec les étapes 4 et 5 :
$$\widehat{DYX} = 180^\circ - \widehat{AYD} = 180^\circ - \widehat{ABC}.$$
Comme $D$ est sur $[BA]$ et $X$ sur $[BC]$, on a $\widehat{DBX} = \widehat{ABC}$. Donc
$$\widehat{DYX} + \widehat{DBX} = 180^\circ.$$

Il reste à voir que $Y$ et $B$ sont de part et d'autre de la droite $(DX)$. Le point $X$ n'est pas sur $(AB)$, car la bissectrice ne passe pas par $B$, donc $(DX)$ est une droite qui passe par $D$ et qui est différente de $(AB)$. Comme $D$ est strictement entre $A$ et $B$, les points $A$ et $B$ sont de part et d'autre de $(DX)$. Le segment $[AY]$ ne rencontre pas la droite $(DX)$, car la droite $(AX)$ ne la coupe qu'en $X$, qui n'est pas sur $[AY]$. Donc $Y$ est du même côté que $A$, c'est-à-dire de l'autre côté que $B$.

D'après la réciproque du théorème de l'angle inscrit, les points $D$, $X$, $Y$, $B$ sont sur un même cercle.

## Going further

1. Montre que la droite $(XZ)$ est perpendiculaire à $(AB)$. On pourra utiliser la symétrie par rapport à la bissectrice.
2. Montre que $AY \times AX = AC^2 = AD \times AB$. Retrouve ainsi le résultat avec des triangles semblables.
