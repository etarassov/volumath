---
id: "17803"
title: "Deux perpendiculaires issues du milieu d'un côté"
grade: 8
theme: geometry
difficulty: 4
duration_min: 30
tags: [angle-inscrit, quadrilatere-inscrit, cercle-de-diametre, mediatrice, chasse-aux-angles, perpendiculaire]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Débutants"
  reference: "stage_junior_2014.pdf, chapitre « Débutants », géométrie (mardi matin, le théorème de l'angle inscrit), exercice 2, p.25 ; solution p.25-26. Dans la solution imprimée, « S l'intersection de (CD) et (AQ) » doit se lire (CD) et (EQ), comme le montre la figure. La solution publiée ici évite la réciproque du théorème de l'angle inscrit."
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Les quatre sommets du quadrilatère convexe $ABCD$ sont sur un même cercle, et l'angle $\widehat{ABC}$ est aigu. Soit $E$ le milieu du segment $[AB]$.

- La perpendiculaire à $(AB)$ passant par $E$ coupe la droite $(BC)$ en $P$.
- La perpendiculaire à $(CD)$ passant par $E$ coupe la droite $(AD)$ en $Q$.

Montrer que la droite $(PQ)$ est perpendiculaire à la droite $(AD)$.

## Hints

1. Faites une grande figure. Le point $P$ est sur la médiatrice de $[AB]$ : que dire du triangle $APB$ ?
2. Appelez $\alpha$ l'angle $\widehat{BPE}$. Exprimez $\widehat{ABC}$, puis $\widehat{ADC}$, à l'aide de $\alpha$.
3. Au lieu de partir de $Q$, partez du pied $H$ de la perpendiculaire menée de $P$ à la droite $(AD)$. Les points $E$ et $H$ voient tous les deux le segment $[AP]$ sous un angle droit : sur quel cercle sont-ils ?
4. Sur ce cercle, comparez $\widehat{AHE}$ et $\widehat{APE}$. Montrez ensuite que $(HE)$ est perpendiculaire à $(CD)$, et concluez que $H = Q$.

## Solution

**Deux outils.**

- *L'angle inscrit.* Dans un cercle, un angle inscrit vaut la moitié de l'angle au centre qui intercepte le même arc. Par conséquent, deux angles inscrits qui interceptent le même arc, avec leurs sommets du même côté de la corde, sont égaux. Autre conséquence : dans un quadrilatère convexe dont les quatre sommets sont sur un cercle, deux angles opposés interceptent à eux deux le cercle entier, donc leur somme vaut $\frac{360^\circ}{2} = 180^\circ$.
- *Le cercle de diamètre $[AP]$.* Si le triangle $AXP$ est rectangle en $X$, le point $X$ est sur le cercle de diamètre $[AP]$ : le milieu de l'hypoténuse est à la même distance des trois sommets.

On fait la figure : $P$ est sur la demi-droite $[BC)$ au-delà de $C$, et $Q$ est sur la droite $(AD)$ au-delà de $D$.

**Étape 1 : l'angle $\alpha$.** Posons $\alpha = \widehat{BPE}$. Le point $P$ est sur la médiatrice de $[AB]$, donc le triangle $APB$ est isocèle en $P$ et la droite $(PE)$ est son axe de symétrie. Ainsi

$$\widehat{APE} = \widehat{BPE} = \alpha .$$

Le triangle $EBP$ est rectangle en $E$, donc $\widehat{EBP} = 90^\circ - \alpha$, c'est-à-dire $\widehat{ABC} = 90^\circ - \alpha$.

**Étape 2 : l'angle en $D$.** Les angles $\widehat{ABC}$ et $\widehat{ADC}$ sont opposés dans le quadrilatère $ABCD$, dont les sommets sont sur un cercle. Leur somme vaut $180^\circ$, donc $\widehat{ADC} = 90^\circ + \alpha$. Comme $D$ est entre $A$ et $Q$, l'angle entre $[DC)$ et $[DQ)$ est le supplémentaire :

$$\widehat{CDQ} = 180^\circ - (90^\circ + \alpha) = 90^\circ - \alpha .$$

**Étape 3 : un point $H$ sur un cercle.** Soit $H$ le pied de la perpendiculaire menée de $P$ à la droite $(AD)$. Les triangles $AEP$ et $AHP$ sont rectangles, en $E$ et en $H$. Donc $E$ et $H$ sont tous les deux sur le cercle de diamètre $[AP]$.

Sur ce cercle, les angles inscrits $\widehat{AHE}$ et $\widehat{APE}$ interceptent le même arc $AE$, et $H$, $P$ sont du même côté de la droite $(AE)$. Ils sont donc égaux :

$$\widehat{AHE} = \widehat{APE} = \alpha .$$

**Étape 4 : la droite $(HE)$ est perpendiculaire à $(CD)$.** Appelons $S$ le point où la droite $(HE)$ coupe la droite $(CD)$. Dans le triangle $HDS$, l'angle en $H$ vaut $\alpha$ (c'est l'angle $\widehat{AHE}$) et l'angle en $D$ vaut $\widehat{CDQ} = 90^\circ - \alpha$ (étape 2). La somme des angles d'un triangle vaut $180^\circ$, donc l'angle en $S$ vaut

$$180^\circ - \alpha - (90^\circ - \alpha) = 90^\circ .$$

**Étape 5 : $H$ est le point $Q$.** La droite $(HE)$ passe par $E$ et elle est perpendiculaire à $(CD)$ : c'est donc la perpendiculaire à $(CD)$ passant par $E$, celle qui définit $Q$. Le point $H$ est sur cette droite et sur la droite $(AD)$, comme $Q$. Deux droites distinctes ont un seul point commun, donc $H = Q$.

**Conclusion.** Le point $Q$ est le pied de la perpendiculaire menée de $P$ à $(AD)$ : **la droite $(PQ)$ est perpendiculaire à la droite $(AD)$.**
