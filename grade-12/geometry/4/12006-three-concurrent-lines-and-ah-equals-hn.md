---
id: "12006"
title: "Trois droites concourantes et AH = HN"
grade: 12
theme: geometry
difficulty: 4
duration_min: 60
tags: [orthocentre, cercle-circonscrit, parallelogramme, angle-droit, mediatrice, equivalence]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mars 2012"
  reference: "2017-10_ofm-2011-2012-test-mars-1.pdf, exercice 2 ; corrigé 2017-10_ofm-2011-2012-test-mars-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2011-2012-test-mars-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2011-2012-test-mars-1.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus, avec $AB \ne AC$. On note $\Gamma$ son cercle circonscrit, $O$ le centre de $\Gamma$ et $H$ l'orthocentre du triangle. Soit $M$ le milieu de $[BC]$.

La droite $(AM)$ recoupe $\Gamma$ en $N$, et le cercle de diamètre $[AM]$ recoupe $\Gamma$ en $P$.

![Le triangle ABC, son cercle circonscrit de centre O, l'orthocentre H, le milieu M de [BC], le point N sur le cercle, et le cercle de diamètre [AM] en pointillés qui recoupe le cercle en P](12006-figure-1.svg)

Démontrer que les droites $(AP)$, $(BC)$ et $(OH)$ sont concourantes si et seulement si $AH = HN$.

## Hints

1. Commencez par montrer que les points $P$, $H$ et $M$ sont alignés. Pour cela, introduisez le point $V$ diamétralement opposé à $A$ sur $\Gamma$.
2. Les angles $\widehat{ABV}$ et $\widehat{ACV}$ sont droits. Comparez les droites $(VC)$ et $(BH)$, puis $(VB)$ et $(CH)$. Quelle est la nature du quadrilatère $BHCV$ ?
3. Notez $J$ le point d'intersection de $(AP)$ et $(BC)$. Dans le triangle $AJM$, repérez deux hauteurs qui passent par $H$. Qu'en déduire pour la droite $(JH)$ ?
4. Il reste à comprendre quand $(OH)$ est perpendiculaire à $(AN)$. Pensez à la médiatrice de $[AN]$, sur laquelle se trouve déjà $O$.

## Solution

On utilise plusieurs fois le fait suivant : un point $X$ d'un cercle de diamètre $[UW]$, distinct de $U$ et $W$, voit ce diamètre sous un angle droit, et réciproquement.

**Étape 1 : les points $P$, $H$ et $M$ sont alignés, et $(MP) \perp (AP)$.**

Soit $V$ le point de $\Gamma$ diamétralement opposé à $A$. Comme $[AV]$ est un diamètre, les angles $\widehat{ABV}$ et $\widehat{ACV}$ sont droits : $(VC) \perp (AC)$ et $(VB) \perp (AB)$.

Or $(BH)$ est la hauteur issue de $B$, donc $(BH) \perp (AC)$. Les droites $(BH)$ et $(VC)$ sont toutes deux perpendiculaires à $(AC)$ : elles sont parallèles. De même, $(CH)$ et $(VB)$ sont perpendiculaires à $(AB)$, donc parallèles.

Le quadrilatère $BHCV$ a ses côtés opposés parallèles : c'est un parallélogramme. Ses diagonales $[BC]$ et $[HV]$ se coupent en leur milieu, qui est $M$. Donc **$H$, $M$ et $V$ sont alignés**, et $M$ est le milieu de $[HV]$.

La droite $(HV)$ recoupe $\Gamma$ en un point $U$ autre que $V$. On a $U \ne A$ : sinon $A$, $M$ et $V$ seraient alignés, la droite $(AM)$ passerait par $O$, et comme $(OM) \perp (BC)$, la médiane $(AM)$ serait perpendiculaire à $(BC)$, ce qui donnerait $AB = AC$. Comme $[AV]$ est un diamètre de $\Gamma$, l'angle $\widehat{AUV}$ est droit. Puisque $M$ est sur la droite $(UV)$, l'angle $\widehat{AUM}$ est droit aussi, donc $U$ est sur le cercle de diamètre $[AM]$. Le point $U$ est ainsi sur $\Gamma$ et sur le cercle de diamètre $[AM]$, et il est distinct de $A$ : c'est $P$.

Conclusion de l'étape : **$P$, $H$, $M$ et $V$ sont alignés**, et l'angle $\widehat{APM}$ est droit, c'est-à-dire $(MP) \perp (AP)$.

**Étape 2 : le point $J$.** Les droites $(AP)$ et $(BC)$ ne sont pas parallèles : sinon $(MH)$, perpendiculaire à $(AP)$, serait perpendiculaire à $(BC)$, comme la hauteur $(AH)$. Ces deux droites passant par $H$ seraient confondues, et $A$ serait sur la médiatrice $(MH)$ de $[BC]$, d'où $AB = AC$. Notons $J$ leur point d'intersection.

Dans le triangle $AJM$ :

- la droite $(AH)$ est perpendiculaire à $(BC)$, c'est-à-dire à $(JM)$ : c'est la hauteur issue de $A$ ;
- la droite $(MP)$ est perpendiculaire à $(AP)$, c'est-à-dire à $(AJ)$ : c'est la hauteur issue de $M$, et elle passe par $H$ d'après l'étape 1.

Deux hauteurs du triangle $AJM$ passent par $H$ : **$H$ est l'orthocentre de $AJM$**. Donc la troisième hauteur, issue de $J$, passe aussi par $H$ :

$$(JH) \perp (AM) .$$

Remarquons que $H \ne J$, car $H$ est à l'intérieur du triangle $ABC$ (ses angles sont aigus) alors que $J$ est sur la droite $(BC)$. De même $H \ne O$, car sinon les hauteurs seraient aussi des médiatrices et le triangle serait équilatéral.

**Étape 3 : la droite $(OH)$ passe par $J$ si et seulement si $(OH) \perp (AN)$.** Rappelons que $(AN) = (AM)$.

- Si $J$ est sur $(OH)$, alors $(OH) = (JH)$, qui est perpendiculaire à $(AM)$.
- Si $(OH) \perp (AM)$, alors $(OH)$ et $(JH)$ sont deux droites passant par $H$ et perpendiculaires à $(AM)$ : elles sont confondues, donc $J$ est sur $(OH)$.

Or $(AP)$ et $(BC)$ se coupent en $J$. Donc : **les trois droites sont concourantes si et seulement si $(OH) \perp (AN)$.**

**Étape 4 : $(OH) \perp (AN)$ si et seulement si $HA = HN$.** Comme $OA = ON$, le point $O$ est sur la médiatrice de $[AN]$. Cette médiatrice est l'unique droite passant par $O$ et perpendiculaire à $(AN)$.

- Si $(OH) \perp (AN)$, alors $(OH)$ est cette médiatrice, donc $H$ est sur la médiatrice de $[AN]$ et $HA = HN$.
- Si $HA = HN$, alors $H$ est sur la médiatrice de $[AN]$, comme $O$. Puisque $H \ne O$, la droite $(OH)$ est cette médiatrice, donc elle est perpendiculaire à $(AN)$.

**Conclusion.** En mettant bout à bout les étapes 3 et 4 : les droites $(AP)$, $(BC)$ et $(OH)$ sont concourantes si et seulement si $AH = HN$.

## Going further

Le fait démontré à l'étape 1 est classique et très utile : le symétrique de l'orthocentre $H$ par rapport au milieu $M$ de $[BC]$ est le point de $\Gamma$ diamétralement opposé à $A$.
