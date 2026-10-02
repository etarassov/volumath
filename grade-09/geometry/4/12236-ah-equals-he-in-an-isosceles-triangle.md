---
id: "12236"
title: "AH = HE dans un triangle isocèle"
grade: 9
theme: geometry
difficulty: 4
duration_min: 35
tags: [triangle-isocele, triangle-rectangle, mediatrice, chasse-aux-angles, projete-orthogonal]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de janvier 2016"
  reference: "2017-10_ofm-2015-2016-test-janvier.pdf, test du 6 janvier 2016, exercices du groupe B, exercice 1 ; corrigé 2017-10_ofm-2015-2016-test-janvier-corrige.pdf (le corrigé utilise le théorème de l'angle inscrit, la solution ci-dessous n'utilise que des outils du collège)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2015-2016-test-janvier.pdf"
---

## Statement

Soit $ABC$ un triangle isocèle en $A$, dont l'angle en $A$ n'est pas droit. On note :

- $D$ le point de la droite $(BC)$ tel que les droites $(AD)$ et $(AB)$ soient perpendiculaires ;
- $E$ le projeté orthogonal de $D$ sur la droite $(AC)$ ;
- $H$ le milieu de $[BC]$.

Montrer que $AH = HE$.

![Le triangle isocèle ABC, le milieu H de [BC], le point D de la droite (BC) et le point E de la droite (AC)](12236-figure-1.svg)

## Hints

1. Note $O$ le milieu de $[AD]$. Le segment $[AD]$ est l'hypoténuse de deux triangles rectangles. Que peux-tu dire des longueurs $OA$, $OH$ et $OE$ ?
2. Le point $O$ est donc sur la médiatrice de $[AE]$. Que suffit-il de montrer sur la droite $(OH)$ pour que $H$ soit aussi sur cette médiatrice ?
3. Note $\theta$ la mesure des angles $\widehat{ABC}$ et $\widehat{ACB}$. Montre que $\widehat{DAH} = \theta$, puis que $\widehat{OHA} = \theta$.
4. Trace la perpendiculaire à $(AC)$ qui passe par $H$. Quel angle fait-elle avec $(HA)$ ?

## Solution

On note $\theta$ la mesure commune des angles $\widehat{ABC}$ et $\widehat{ACB}$, puisque le triangle est isocèle en $A$. Comme $H$ est le milieu de la base $[BC]$, la droite $(AH)$ est aussi la hauteur issue de $A$ : les triangles $ABH$ et $ACH$ sont rectangles en $H$. Dans le triangle $ABH$, on a donc $\widehat{BAH} = 90° - \theta$, et de même $\widehat{HAC} = 90° - \theta$.

On utilisera ce résultat du collège : **dans un triangle rectangle, le milieu de l'hypoténuse est à égale distance des trois sommets.**

**Étape 1. Où est le point $D$ ?**

Le point $D$ n'est pas $B$, sinon la droite $(AB)$ serait perpendiculaire à elle-même. Le triangle $ABD$ est donc rectangle en $A$, et ses deux autres angles sont aigus.

Si $D$ était de l'autre côté de $B$ par rapport à $C$, l'angle $\widehat{ABD}$ vaudrait $180° - \theta$, qui est obtus, puisque $\theta < 90°$. C'est impossible, donc $D$ est sur la demi-droite $[BC)$.

Comparons maintenant les longueurs. Dans le triangle $ABD$, rectangle en $A$, l'hypoténuse est la plus longue : $BD > AB$. Dans le triangle $ABH$, rectangle en $H$, de même $AB > BH$. Donc $BD > BH$ : les points $H$ et $D$ sont sur la demi-droite $[BC)$, et $H$ est strictement entre $B$ et $D$.

On en tire deux conséquences.

- Le point $D$ est du même côté de la droite $(AH)$ que $C$.
- La demi-droite $[AH)$ est à l'intérieur de l'angle droit $\widehat{BAD}$, donc
$$\widehat{HAD} = \widehat{BAD} - \widehat{BAH} = 90° - (90° - \theta) = \theta.$$

**Étape 2. Le milieu $O$ de $[AD]$.**

Soit $O$ le milieu de $[AD]$.

- Le triangle $AHD$ est rectangle en $H$, et $[AD]$ est son hypoténuse. Donc $OA = OH = OD$.
- Le point $E$ n'est pas $D$ : sinon $D$ serait sur $(AC)$ et sur $(BC)$, donc $D = C$, et l'angle en $A$ serait droit. Le triangle $AED$ est donc rectangle en $E$, d'hypoténuse $[AD]$, et $OA = OE$.

**Étape 3. La droite $(OH)$ est perpendiculaire à $(AC)$.**

Le triangle $OAH$ est isocèle en $O$, puisque $OA = OH$. Ses angles à la base sont égaux, et d'après l'étape 1,
$$\widehat{OHA} = \widehat{OAH} = \widehat{DAH} = \theta.$$

Soit maintenant $K$ le pied de la perpendiculaire à $(AC)$ qui passe par $H$. Comme le triangle $AHC$ est rectangle en $H$, ses angles en $A$ et en $C$ sont aigus, et $K$ est sur le segment $[AC]$, différent de $A$. Le triangle $AHK$ est rectangle en $K$, donc
$$\widehat{AHK} = 90° - \widehat{HAK} = 90° - (90° - \theta) = \theta.$$

Les points $O$ et $K$ sont tous les deux du même côté de la droite $(AH)$ que $C$ : le point $K$ parce qu'il est sur $[AC]$ et différent de $A$, le point $O$ parce qu'il est le milieu de $[AD]$, où $A$ est sur la droite $(AH)$ et $D$ du côté de $C$. Les demi-droites $[HO)$ et $[HK)$ partent donc de $H$, du même côté de $(AH)$, et font le même angle $\theta$ avec $[HA)$. Elles sont confondues.

Ainsi $O$ est sur la droite $(HK)$, qui est perpendiculaire à $(AC)$.

**Étape 4. Conclusion.**

Les points $A$ et $E$ sont différents. Sinon, la droite $(AD)$ serait perpendiculaire à $(AC)$ et à $(AB)$, et ces deux droites seraient parallèles, ce qui est faux.

D'après l'étape 2, $OA = OE$, donc $O$ est sur la médiatrice de $[AE]$. Cette médiatrice est la droite qui passe par $O$ et qui est perpendiculaire à $(AE)$, c'est-à-dire à $(AC)$. D'après l'étape 3, c'est la droite $(OH)$.

Le point $H$ est donc sur la médiatrice de $[AE]$, et $HA = HE$.

## Going further

La preuve n'utilise jamais que l'angle en $A$ est aigu, comme sur la figure. Fais une nouvelle figure avec un angle en $A$ obtus : le point $D$ est alors entre $H$ et $C$, et $E$ entre $A$ et $C$, mais chaque étape reste vraie.

Si l'angle en $A$ est droit, les points $D$ et $E$ sont tous les deux en $C$, et l'égalité $AH = HC$ reste vraie : c'est le résultat sur le milieu de l'hypoténuse, dans le triangle $ABC$ rectangle en $A$. L'énoncé exclut ce cas seulement parce que la figure y devient dégénérée.

L'étape 2 dit que $A$, $H$, $E$ et $D$ sont sur un même cercle, de diamètre $[AD]$. Avec le théorème de l'angle inscrit, vu au lycée, on obtient une preuve plus courte : la droite $(AB)$ est tangente à ce cercle en $A$, et l'on compare les angles $\widehat{HAE}$ et $\widehat{AEH}$.
