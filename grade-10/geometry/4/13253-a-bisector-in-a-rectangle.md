---
id: "13253"
title: "Une bissectrice dans un rectangle"
grade: 10
theme: geometry
difficulty: 4
duration_min: 40
tags: [bissectrice, rectangle, cercle, trigonometrie, triangle-isocele]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017"
  reference: "2017-10_coupe_automne_2017.pdf, énoncés lycée, exercice 8 ; corrigé 2017-10_coupe_automne_2017_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017.pdf"
---

## Statement

Soit $ABCD$ un rectangle tel que $AB > BC$. Soit $E$ le pied de la perpendiculaire à $(AC)$ passant par $B$. Soit $\Gamma$ le cercle qui passe par $A$ et par $E$ et dont le centre est sur la droite $(AD)$. On note $F$ le point d'intersection de $\Gamma$ et du segment $[CD]$.

Démontrer que la droite $(BF)$ est la bissectrice de l'angle $\widehat{AFC}$.

## Hints

1. Fais une figure. Note $H$ le point du cercle $\Gamma$ diamétralement opposé à $A$. Où se trouve $H$ ?
2. Quels angles droits vois-tu dans les triangles $AFH$ et $AEH$ ?
3. Exprime le cosinus de l'angle $\widehat{DAF}$ de deux façons, puis celui de $\widehat{DAC}$, puis celui de $\widehat{BAC}$.
4. Tu dois trouver $AF = AB$. Que dire alors du triangle $ABF$ ?

## Solution

**Le point $H$.** Le centre $O$ de $\Gamma$ est sur $(AD)$, donc le point $H$ diamétralement opposé à $A$ est aussi sur $(AD)$, et $[AH]$ est un diamètre de $\Gamma$.

$O$ est du même côté de $A$ que $D$. En effet, si $P$ est un point de $(AD)$ situé de l'autre côté de $A$, l'angle $\widehat{PAE}$ est obtus (c'est $180^\circ - \widehat{DAE}$, et $\widehat{DAE}$ est aigu). Dans le triangle $PAE$, le plus grand côté est alors $[PE]$, opposé à l'angle obtus, donc $PE > PA$ et $P$ ne peut pas être le centre. Ainsi $O$, et donc $H$, sont sur la demi-droite $[AD)$.

Comme $E$ et $F$ sont sur le cercle de diamètre $[AH]$, les triangles $AEH$ et $AFH$ sont rectangles, en $E$ et en $F$.

**Trois égalités de cosinus.** Les points $D$ et $H$ sont sur la même demi-droite issue de $A$, et $E$ est sur $[AC]$ (le pied de la hauteur issue de $B$ tombe entre $A$ et $C$, car les angles en $A$ et en $C$ du triangle $ABC$ sont aigus).

- L'angle $\widehat{DAF}$, dans le triangle $ADF$ rectangle en $D$ et dans le triangle $AFH$ rectangle en $F$ : $\cos \widehat{DAF} = \frac{AD}{AF} = \frac{AF}{AH}$, donc $AF^2 = AD \times AH$.
- L'angle $\widehat{DAC}$, dans le triangle $ADC$ rectangle en $D$ et dans le triangle $AEH$ rectangle en $E$ : $\cos \widehat{DAC} = \frac{AD}{AC} = \frac{AE}{AH}$, donc $AE \times AC = AD \times AH$.
- L'angle $\widehat{BAC}$, dans le triangle $ABC$ rectangle en $B$ et dans le triangle $AEB$ rectangle en $E$ : $\cos \widehat{BAC} = \frac{AB}{AC} = \frac{AE}{AB}$, donc $AB^2 = AE \times AC$.

En mettant bout à bout : $AF^2 = AD \times AH = AE \times AC = AB^2$, donc $AF = AB$.

**Le triangle isocèle.** Le triangle $ABF$ est isocèle en $A$, donc $\widehat{AFB} = \widehat{ABF}$.

Comme $F$ est sur $[CD]$, la demi-droite $[BF)$ est dans l'angle droit $\widehat{ABC}$, donc $\widehat{ABF} = 90^\circ - \widehat{FBC}$. Dans le triangle $FBC$ rectangle en $C$, on a aussi $\widehat{CFB} = 90^\circ - \widehat{FBC}$. Donc

$$\widehat{AFB} = \widehat{ABF} = 90^\circ - \widehat{FBC} = \widehat{CFB}.$$

**Conclusion.** Les angles $\widehat{AFB}$ et $\widehat{BFC}$ sont égaux : la droite $(BF)$ est la bissectrice de l'angle $\widehat{AFC}$.

## Going further

Que se passe-t-il si $ABCD$ est un carré ? Où se trouve alors le point $F$, et la conclusion reste-t-elle vraie ?
