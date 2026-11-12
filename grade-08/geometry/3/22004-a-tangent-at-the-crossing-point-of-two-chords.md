---
id: "22004"
title: "Une tangente au point où deux cordes se croisent"
grade: 8
theme: geometry
difficulty: 3
duration_min: 30
tags: [chasse-aux-angles, angle-inscrit, angle-tangentiel, tangente, cercle]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « Angle tangent » (Vincent), exercice 6 (l'original énonce l'égalité en angles orientés de droites, (FE, FC) = (DB, DP) ; ici la position des points est fixée et l'égalité est écrite avec des angles ordinaires)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $\Gamma$ un cercle et $A$, $B$, $C$, $D$ quatre points de $\Gamma$ tels que les cordes $[AB]$ et $[CD]$ se coupent en un point $E$.

On place un point $P$ sur la droite $(AB)$, au-delà de $B$ : le point $B$ est entre $E$ et $P$.

On trace le cercle qui passe par $D$, $E$ et $P$, puis la tangente à ce cercle au point $E$. On suppose que cette tangente coupe la demi-droite $[AC)$ en un point $F$.

![Le cercle Γ avec les cordes [AB] et [CD] qui se coupent en E, le point P sur (AB) au-delà de B, le cercle passant par D, E, P en pointillés, et la tangente en E qui coupe (AC) en F](22004-figure-1.svg)

Démontrer que $\widehat{AFE} = \widehat{BDP}$.

## Hints

1. Le point $F$ est difficile à atteindre directement. Dans quel triangle se trouve l'angle $\widehat{AFE}$ ? Exprimez-le avec les deux autres angles de ce triangle.
2. L'angle entre la tangente $(EF)$ et la corde $[EP]$ du petit cercle est égal à un angle inscrit de ce cercle. Lequel ?
3. Découpez l'angle $\widehat{CDP}$ en deux morceaux à l'aide de la demi-droite $[DB)$.
4. Dans le cercle $\Gamma$, l'angle $\widehat{CDB}$ est égal à un autre angle inscrit qui intercepte le même arc.

## Solution

**Deux outils sur les cercles.**

- *Angles inscrits.* Dans un cercle, un angle inscrit vaut la moitié de l'angle au centre qui intercepte le même arc. Par conséquent, deux angles inscrits qui interceptent le même arc, avec leurs sommets du même côté de la corde, sont égaux.
- *Angle entre une tangente et une corde.* Si $[EP]$ est une corde d'un cercle de centre $Q$ et $D$ un point du cercle, l'angle entre la tangente en $E$ et la corde $[EP]$, pris du côté opposé à $D$, est égal à l'angle inscrit $\widehat{EDP}$. Pourquoi : le triangle $QEP$ est isocèle en $Q$ et son angle au sommet est l'angle au centre $2\,\widehat{EDP}$, donc $\widehat{QEP} = 90^\circ - \widehat{EDP}$. Comme la tangente est perpendiculaire au rayon $[QE]$, l'angle entre la tangente et $[EP]$ vaut $90^\circ - \widehat{QEP} = \widehat{EDP}$.

**Étape 1 : où sont les points.** Le point $E$ est entre $A$ et $B$, et entre $C$ et $D$. Comme la droite $(CD)$ traverse la droite $(AB)$ en $E$, les points $C$ et $D$ sont de part et d'autre de $(AB)$. Le point $F$ est sur la demi-droite $[AC)$, donc du même côté de $(AB)$ que $C$, c'est-à-dire du côté opposé à $D$.

**Étape 2 : la tangente.** Dans le cercle qui passe par $D$, $E$, $P$, la demi-droite $[EF)$ est sur la tangente en $E$, du côté de la corde $[EP]$ opposé à $D$. D'après le deuxième outil,

$$\widehat{FEP} = \widehat{EDP}.$$

**Étape 3 : découper l'angle en $D$.** Le point $E$ est sur le segment $[DC]$, donc $\widehat{EDP} = \widehat{CDP}$. Le point $B$ est entre $E$ et $P$, donc la demi-droite $[DB)$ passe à l'intérieur de l'angle $\widehat{EDP}$ :

$$\widehat{FEP} = \widehat{CDP} = \widehat{CDB} + \widehat{BDP}.$$

**Étape 4 : le grand cercle.** Comme les cordes $[AB]$ et $[CD]$ se croisent, les points se succèdent sur $\Gamma$ dans l'ordre $A$, $C$, $B$, $D$. Les points $A$ et $D$ sont donc sur le même arc d'extrémités $B$ et $C$, c'est-à-dire du même côté de la corde $[BC]$. Les angles inscrits $\widehat{CAB}$ et $\widehat{CDB}$ interceptent le même arc $BC$, donc

$$\widehat{CDB} = \widehat{CAB}.$$

**Étape 5 : le triangle $AEF$.** Ses trois angles sont :

- en $A$ : $\widehat{EAF} = \widehat{BAC}$, car $E$ est sur $[AB)$ et $F$ sur $[AC)$ ;
- en $E$ : les points $A$, $E$, $P$ sont alignés avec $E$ entre $A$ et $P$, donc $\widehat{AEF} = 180^\circ - \widehat{FEP}$ ;
- en $F$ : l'angle cherché $\widehat{AFE}$.

Leur somme vaut $180^\circ$, donc

$$\widehat{AFE} = 180^\circ - \widehat{BAC} - \left(180^\circ - \widehat{FEP}\right) = \widehat{FEP} - \widehat{BAC}.$$

**Conclusion.** Avec les étapes 3 et 4,

$$\widehat{AFE} = \widehat{CDB} + \widehat{BDP} - \widehat{CAB} = \widehat{BDP}.$$

## Going further

1. Sur la figure, $F$ est au-delà de $C$. Le calcul a-t-il utilisé la position de $F$ par rapport à $C$ ?
2. On note $k = \frac{EP}{EB}$. En faisant varier $P$ sur une figure soignée, observez le rapport $\frac{AF}{AC}$. Pouvez-vous deviner une formule ?
