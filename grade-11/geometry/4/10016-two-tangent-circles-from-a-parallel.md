---
id: "10016"
title: "Deux cercles tangents grâce à une parallèle"
grade: 11
theme: geometry
difficulty: 4
duration_min: 45
tags: [cercles-tangents, tangente, angle-tangentiel, angle-inscrit, chasse-aux-angles, parallelisme]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 6 (géométrie)"
  reference: "2017-10_ofm-2012-2013-envoi6.pdf, Exercices olympiques, exercice 7 ; corrigé 2017-10_ofm-2012-2013-envoi6-corrige.pdf (le corrigé utilise des angles orientés de droites ; la solution est refaite ici avec des angles ordinaires, sur la figure)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi6.pdf"
---

## Statement

Soit $ABC$ un triangle et $M$ un point du segment $[BC]$. On note $\Gamma$ le cercle circonscrit au triangle $AMC$. Un cercle $\omega$ est tangent à la droite $(AB)$ en $T$, à la droite $(BC)$ en $K$, et au cercle $\Gamma$ en $P$.

![Le triangle ABC, le segment [AM], le cercle Γ passant par A, M, C, et le petit cercle ω tangent à (AB) en T, à (BC) en K et à Γ en P](10016-figure-1.svg)

On suppose que les droites $(KT)$ et $(AM)$ sont parallèles. Montrer que le cercle circonscrit au triangle $KPC$ et le cercle circonscrit au triangle $APT$ sont tangents en $P$.

## Hints

1. Souviens-toi que l'angle entre une tangente et une corde est égal à l'angle inscrit qui intercepte cette corde. Utilise-le dans $\omega$, avec la tangente $(BT)$, pour trouver un angle égal à $\widehat{KPT}$.
2. Grâce à la parallèle, remplace cet angle par un angle de sommet $A$, puis coupe-le en deux par la demi-droite $[AP)$.
3. Dans le cercle $\Gamma$, l'angle $\widehat{PAM}$ est un angle inscrit. Quel angle de sommet $C$ lui est égal ?
4. Il reste à montrer que la tangente en $P$ au cercle $KPC$ fait avec $[PT]$ un angle égal à $\widehat{PAT}$.

## Solution

**Rappel : l'angle entre une tangente et une corde.** Soient $X$, $Y$, $Z$ trois points d'un cercle et $\delta$ la tangente au cercle en $X$. L'angle entre $\delta$ et la corde $[XY]$, mesuré du côté de $(XY)$ qui ne contient pas $Z$, est égal à l'angle inscrit $\widehat{XZY}$.

On le démontre avec l'angle au centre. Notons $\Omega$ le centre du cercle, et supposons $\widehat{XZY}$ aigu (le cas obtus se traite de la même façon). L'angle au centre vaut $\widehat{X\Omega Y} = 2\widehat{XZY}$, et le triangle $\Omega XY$ est isocèle, donc $\widehat{\Omega XY} = 90° - \widehat{XZY}$. Comme $\delta$ est perpendiculaire au rayon $[\Omega X]$, l'angle entre $\delta$ et $[XY]$ vaut $90° - \widehat{\Omega XY} = \widehat{XZY}$.

Réciproquement, une seule droite passant par $X$ fait un angle donné avec la demi-droite $[XY)$ d'un côté donné. Donc une droite qui passe par $X$ et fait l'angle $\widehat{XZY}$ avec $[XY]$, du côté qui ne contient pas $Z$, est la tangente en $X$.

Enfin, deux cercles qui passent par un même point $P$ sont tangents en $P$ lorsqu'ils ont la même tangente en $P$.

On raisonne sur la figure : $\omega$ est le petit cercle placé dans l'angle $\widehat{ABC}$, du côté de $B$. Il existe d'autres cercles $\omega$ possibles, et pour eux certaines sommes d'angles ci-dessous deviennent des différences, mais le raisonnement s'adapte.

### Étape 1 : $\widehat{KPT} = \widehat{BAM}$

La droite $(BT)$ est tangente à $\omega$ en $T$, et le point $P$ de $\omega$ est de l'autre côté de $(KT)$ par rapport à $B$. D'après le rappel, appliqué à la corde $[TK]$,
$$\widehat{KPT} = \widehat{BTK} .$$
Les droites $(TK)$ et $(AM)$ sont parallèles, $T$ est sur $[BA]$ et $K$ sur $[BM]$. Les angles $\widehat{BTK}$ et $\widehat{BAM}$ sont donc correspondants, et $\widehat{BTK} = \widehat{BAM}$. Ainsi $\widehat{KPT} = \widehat{BAM}$.

### Étape 2 : $\widehat{BAM} = \widehat{PAT} + \widehat{PCK}$

Sur la figure, la demi-droite $[AP)$ est à l'intérieur de l'angle $\widehat{BAM}$, donc $\widehat{BAM} = \widehat{BAP} + \widehat{PAM}$. Comme $T$ est sur le segment $[AB]$, on a $\widehat{BAP} = \widehat{TAP}$.

Les points $A$, $P$, $M$, $C$ sont sur le cercle $\Gamma$, et $A$ et $C$ sont du même côté de $(PM)$. Les angles inscrits $\widehat{PAM}$ et $\widehat{PCM}$ interceptent le même arc, donc ils sont égaux. Enfin $K$ est entre $B$ et $M$, donc sur la demi-droite $[CM)$, et $\widehat{PCM} = \widehat{PCK}$.

Avec l'étape 1, on obtient
$$\widehat{KPT} = \widehat{PAT} + \widehat{PCK} . \qquad (\star)$$

### Étape 3 : une tangente commune

Soit $\delta$ la tangente en $P$ au cercle circonscrit à $KPC$. D'après le rappel, $\delta$ fait avec $[PK]$ un angle égal à $\widehat{PCK}$, du côté de $(PK)$ qui ne contient pas $C$. Sur la figure, $T$ est de ce côté-là. Comme $\widehat{PCK}$ est plus petit que $\widehat{KPT}$ d'après $(\star)$, la demi-droite $d$ de $\delta$ située de ce côté est à l'intérieur de l'angle $\widehat{KPT}$, et elle fait avec $[PT]$ l'angle
$$\widehat{KPT} - \widehat{PCK} = \widehat{PAT},$$
encore d'après $(\star)$.

De plus, $d$ est du même côté de $(PT)$ que $K$. Sur la figure, $A$ est de l'autre côté de $(PT)$ par rapport à $K$, donc $d$ est du côté de $(PT)$ qui ne contient pas $A$. La droite $\delta$ passe par $P$ et fait avec $[PT]$ l'angle inscrit $\widehat{PAT}$, du côté opposé à $A$ : d'après la réciproque du rappel, elle est tangente en $P$ au cercle circonscrit à $APT$.

**Conclusion.** Les cercles circonscrits à $KPC$ et à $APT$ passent tous les deux par $P$ et ont la même tangente $\delta$ en ce point : ils sont tangents en $P$.

## Going further

- La preuve n'utilise jamais le fait que $\omega$ et $\Gamma$ sont tangents en $P$ : elle utilise seulement que $P$ est sur les deux cercles. Le résultat reste donc vrai si $\omega$ coupe $\Gamma$ en $P$ au lieu de lui être tangent.
- L'hypothèse $(KT) \parallel (AM)$ a une traduction simple. Les deux tangentes menées de $B$ à $\omega$ ont la même longueur, donc $BK = BT$. Par le théorème de Thalès, $(KT) \parallel (AM)$ équivaut à $\dfrac{BK}{BM} = \dfrac{BT}{BA}$, c'est-à-dire à $BM = BA$ : le triangle $ABM$ est isocèle en $B$.
