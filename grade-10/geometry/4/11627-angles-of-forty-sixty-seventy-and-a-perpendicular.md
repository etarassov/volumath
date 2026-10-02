---
id: "11627"
title: "Des angles de 40°, 60° et 70°, et une perpendiculaire"
grade: 10
theme: geometry
difficulty: 4
duration_min: 45
tags: [triangle isocele, triangle equilateral, symetrie axiale, mediatrice, chasse aux angles]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 6 (pot-pourri)"
  reference: "2017-10_ofm-2014-2015-envoi-6.pdf, Jour 2, exercices du groupe B, exercice 9 ; corrigé 2017-10_ofm-2014-2015-envoi-6-solutions.pdf (première solution, la seconde est résumée dans « Pour aller plus loin »)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-6.pdf"
---

## Statement

Soit $ABC$ un triangle tel que $\widehat{BAC} = 40°$ et $\widehat{ABC} = 60°$. Soit $D$ le point du segment $[AC]$ tel que $\widehat{CBD} = 40°$, et $E$ le point du segment $[AB]$ tel que $\widehat{ECB} = 70°$. Les droites $(BD)$ et $(CE)$ se coupent en $F$.

![Le triangle ABC, les segments [BD] et [CE] qui se coupent en F](11627-figure-1.svg)

Montrer que les droites $(AF)$ et $(BC)$ sont perpendiculaires.

## Hints

1. Calcule tous les angles que tu peux. Que remarques-tu dans le triangle $BFC$ ?
2. Place le point $M$ de $[AC]$ tel que $\widehat{CBM} = 20°$. Cherche des triangles isocèles : quels segments ont la même longueur que $[BC]$ ?
3. L'angle en $B$ vaut $60°$. Construis le triangle équilatéral $ABB'$, avec $B'$ sur la demi-droite $[BC)$, et regarde la symétrie par rapport à la bissectrice de l'angle $\widehat{ABB'}$.
4. Pour montrer que $(AF)$ est perpendiculaire à $(BC)$, il suffit de montrer que $F$ est sur la médiatrice de $[BB']$.

## Solution

Commençons par l'angle qui manque : $\widehat{ACB} = 180° - 40° - 60° = 80°$. On a aussi $\widehat{ABD} = 60° - 40° = 20°$.

**Étape 1 : $BF = BC$.** Dans le triangle $BFC$, on a $\widehat{FBC} = 40°$ et $\widehat{FCB} = 70°$, donc

$$\widehat{BFC} = 180° - 40° - 70° = 70° = \widehat{FCB}.$$

Le triangle $BFC$ a deux angles égaux : il est isocèle en $B$, et $BF = BC$.

**Étape 2 : un point $M$ tel que $MA = MB = BC$.** Soit $M$ le point du segment $[AC]$ tel que $\widehat{CBM} = 20°$.

- Dans le triangle $ABM$, on a $\widehat{ABM} = 60° - 20° = 40° = \widehat{BAM}$. Il est isocèle en $M$, donc $MA = MB$.
- Dans le triangle $BMC$, on a $\widehat{MBC} = 20°$ et $\widehat{MCB} = 80°$, donc $\widehat{BMC} = 180° - 20° - 80° = 80° = \widehat{MCB}$. Il est isocèle en $B$, donc $BM = BC$.

Avec l'étape 1, on obtient

$$MA = MB = BC = BF.$$

**Étape 3 : un triangle équilatéral et une symétrie.** Soit $B'$ le point de la demi-droite $[BC)$ tel que $BB' = BA$. Le triangle $ABB'$ a deux côtés égaux et un angle de $60°$ entre eux : il est équilatéral.

![Le point M, le triangle équilatéral ABB' et l'axe Δ ; les segments [MA] et [FB'] sont en rouge](11627-figure-2.svg)

Soit $\Delta$ la bissectrice de l'angle $\widehat{ABB'}$, et $s$ la symétrie d'axe $\Delta$. Elle échange les demi-droites $[BA)$ et $[BB')$. Comme $BA = BB'$, elle échange aussi les points $A$ et $B'$.

Le point $F$ est sur la demi-droite qui fait un angle de $20°$ avec $[BA)$, à l'intérieur de l'angle $\widehat{ABC}$, à la distance $BF$ de $B$. Son symétrique est donc sur la demi-droite qui fait un angle de $20°$ avec $[BB')$, c'est-à-dire sur $[BM)$, à la même distance de $B$. Comme $BM = BF$, ce symétrique est $M$ lui-même : $s(F) = M$.

Une symétrie conserve les longueurs. Le segment $[FB']$ a pour image le segment $[MA]$, donc $FB' = MA$.

**Étape 4 : conclusion.** On a obtenu $FB' = MA = BF$. Le point $F$ est à la même distance de $B$ et de $B'$ : il est sur la médiatrice de $[BB']$. Le point $A$ est aussi sur cette médiatrice, puisque $AB = AB'$. Enfin $F \neq A$, car $A$ n'est pas sur la droite $(BD)$ (sinon $D$ serait égal à $A$, et l'angle $\widehat{CBD}$ vaudrait $60°$).

La droite $(AF)$ est donc la médiatrice de $[BB']$, et elle est perpendiculaire à $(BB')$, qui est la droite $(BC)$.

**Conclusion : les droites $(AF)$ et $(BC)$ sont perpendiculaires.**

## Going further

**Une autre preuve, avec la trigonométrie.** Soit $H$ le pied de la perpendiculaire à $(BC)$ passant par $F$, et $H'$ celui de la hauteur issue de $A$. Il suffit de montrer que $BH = BH'$. Dans les triangles rectangles $BHF$ et $BH'A$ :

$$BH = BF \cos 40° = BC \cos 40° \qquad \text{et} \qquad BH' = AB \cos 60° = \frac{AB}{2}.$$

La hauteur issue de $B$, de pied $L$, se calcule de deux façons : $BL = AB \sin 40° = BC \sin 80°$. On se ramène ainsi à montrer que $\sin 80° = 2 \sin 40° \cos 40°$.

C'est un cas de la formule $\sin 2x = 2 \sin x \cos x$, valable pour $0° < x < 45°$. Pour la démontrer, prends un triangle $OPQ$ isocèle en $O$, avec $OP = OQ = 1$ et $\widehat{POQ} = 2x$. Sa hauteur issue de $Q$ mesure $\sin 2x$, donc son aire vaut $\frac{1}{2} \sin 2x$. Mais sa hauteur issue de $O$ est aussi la bissectrice : elle coupe $[PQ]$ en son milieu $I$, avec $OI = \cos x$ et $PQ = 2 PI = 2 \sin x$. L'aire vaut donc aussi $\frac{1}{2} \times 2 \sin x \times \cos x$. En comparant les deux, $\sin 2x = 2 \sin x \cos x$.
