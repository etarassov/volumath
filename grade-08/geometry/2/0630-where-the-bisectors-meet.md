---
id: "0630"
title: "Le point de rencontre des bissectrices"
grade: 8
theme: geometry
difficulty: 2
duration_min: 20
tags: [angles, bissectrice, triangle, somme-des-angles, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Ensembles. Géométrie »"
  reference: "Ensembles.Geometry.pdf, 22 septembre 2023, problème P 41, section « Angles », en partie d'après M. Aassila, Objectif Olympiades de Mathématiques"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Ensembles.Geometry.pdf"
---

## Statement

Soit $ABC$ un triangle. La bissectrice de l'angle $\widehat{B}$ et la bissectrice de l'angle $\widehat{C}$ se coupent en un point $I$.

Démontrer que

$$\widehat{BIC} = 90° + \frac{\widehat{A}}{2}.$$

## Hints

1. Le point $I$, les sommets $B$ et $C$ forment un triangle. Écris la somme de ses trois angles.
2. L'angle du triangle $BIC$ en $B$ n'est pas $\widehat{B}$ : c'est la moitié de $\widehat{B}$, puisque $(BI)$ est la bissectrice. Même chose en $C$.
3. Il te manque un lien entre $\widehat{B} + \widehat{C}$ et $\widehat{A}$. Écris la somme des angles du triangle $ABC$.

## Solution

Notons pour alléger

$$a = \widehat{BAC}, \qquad b = \widehat{ABC}, \qquad c = \widehat{BCA}.$$

**Les angles du triangle $BIC$.**

La demi-droite $[BI)$ est la bissectrice de l'angle $\widehat{B}$ : elle coupe cet angle en deux parts égales, donc

$$\widehat{IBC} = \frac{b}{2}.$$

De même, $[CI)$ est la bissectrice de $\widehat{C}$, donc

$$\widehat{ICB} = \frac{c}{2}.$$

**La somme des angles du triangle $BIC$.**

$$\widehat{BIC} = 180° - \widehat{IBC} - \widehat{ICB} = 180° - \frac{b}{2} - \frac{c}{2} = 180° - \frac{b + c}{2}.$$

**On fait apparaître l'angle $\widehat{A}$.**

Dans le triangle $ABC$, la somme des angles vaut $180°$ :

$$a + b + c = 180°, \qquad \text{donc} \qquad b + c = 180° - a.$$

En remplaçant :

$$\widehat{BIC} = 180° - \frac{180° - a}{2} = 180° - 90° + \frac{a}{2} = 90° + \frac{a}{2}.$$

**Conclusion.** On a bien

$$\widehat{BIC} = 90° + \frac{\widehat{A}}{2}.$$

**Ce que dit la formule.** L'angle $\widehat{BIC}$ est toujours **obtus**, quelle que soit la forme du triangle, puisqu'il vaut plus de $90°$. Et il ne dépend que de l'angle $\widehat{A}$ : deux triangles qui ont le même angle en $A$, même très différents par ailleurs, donnent le même angle $\widehat{BIC}$. Par exemple, si $\widehat{A} = 60°$, alors $\widehat{BIC} = 120°$ à tous les coups.

## Going further

1. Les trois bissectrices d'un triangle se coupent en un même point. Le point $I$ est donc aussi sur la bissectrice issue de $A$. En déduire $\widehat{AIB}$ et $\widehat{AIC}$, puis vérifier que les trois angles autour de $I$ ont bien pour somme $360°$.
2. Dans un quadrilatère $ABCD$, les bissectrices des angles $\widehat{A}$ et $\widehat{B}$ se coupent en $O$. Démontrer que
$$\widehat{AOB} = \frac{\widehat{C} + \widehat{D}}{2}.$$
(On rappelle que la somme des angles d'un quadrilatère vaut $360°$.)
3. Cette fois on prend les bissectrices **extérieures** en $B$ et en $C$, c'est-à-dire les bissectrices des angles que forment les côtés $[AB]$ et $[AC]$ prolongés au-delà de $B$ et de $C$ avec le côté $[BC]$. Elles se coupent en un point $J$. Démontrer que $\widehat{BJC} = 90° - \dfrac{\widehat{A}}{2}$.
