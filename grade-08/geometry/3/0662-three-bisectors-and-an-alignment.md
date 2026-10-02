---
id: "0662"
title: "Trois bissectrices et un alignement"
grade: 8
theme: geometry
difficulty: 3
duration_min: 30
tags: [bissectrice, angles-adjacents, demi-droites-opposees, alignement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Angles et droites du triangle »"
  reference: "Angles.2.pdf, 6 octobre 2023, problème 14"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Angles.2.pdf"
---

## Statement

Les angles adjacents $\widehat{AOB}$ et $\widehat{BOC}$ ont pour amplitudes $108°$ et $68°$ respectivement. Les demi-droites $[OM)$ et $[ON)$ sont les bissectrices intérieures de $\widehat{AOB}$ et de $\widehat{BOC}$, et la demi-droite $[OP)$ est la bissectrice intérieure de $\widehat{MON}$.

La demi-droite $[OD)$ est la demi-droite opposée à $[OP)$, et le point $E$, intérieur à l'angle $\widehat{AOD}$, est tel que $\widehat{DOE} = 10°$.

Démontrez que $B$, $O$ et $E$ sont alignés.

![Les demi-droites issues de O, les trois bissectrices et le point E](0662-figure-1.svg)

## Hints

1. Commence par calculer, une par une, les amplitudes de $\widehat{AOM}$, $\widehat{MOB}$, $\widehat{BON}$, puis de $\widehat{MON}$ et de $\widehat{MOP}$.
2. Compare $\widehat{MOP}$ et $\widehat{MOB}$ : tu obtiendras l'angle $\widehat{BOP}$, qui est tout petit.
3. Dire que $B$, $O$, $E$ sont alignés, c'est dire que $[OE)$ est la demi-droite opposée à $[OB)$. Appelle $[OB')$ cette demi-droite opposée et calcule $\widehat{B'OD}$ : deux demi-droites opposées forment avec deux autres demi-droites opposées des angles égaux (angles opposés par le sommet).
4. Il reste à vérifier que $[OB')$ est bien à l'intérieur de l'angle $\widehat{AOD}$, car c'est là que se trouve $E$.

## Solution

**Les bissectrices.** Comme $[OM)$ est la bissectrice de $\widehat{AOB}$ :

$$\widehat{AOM} = \widehat{MOB} = \frac{108°}{2} = 54°.$$

Comme $[ON)$ est la bissectrice de $\widehat{BOC}$ :

$$\widehat{BON} = \widehat{NOC} = \frac{68°}{2} = 34°.$$

Les deux angles $\widehat{AOB}$ et $\widehat{BOC}$ sont adjacents, donc $[OM)$ et $[ON)$ sont de part et d'autre de $[OB)$, et

$$\widehat{MON} = \widehat{MOB} + \widehat{BON} = 54° + 34° = 88°.$$

Enfin $[OP)$ est la bissectrice de $\widehat{MON}$ :

$$\widehat{MOP} = \frac{88°}{2} = 44°.$$

**L'angle $\widehat{BOP}$.** La demi-droite $[OP)$ est à l'intérieur de $\widehat{MON}$ et $\widehat{MOP} = 44° < 54° = \widehat{MOB}$, donc $[OP)$ se trouve entre $[OM)$ et $[OB)$. Par conséquent

$$\widehat{BOP} = \widehat{MOB} - \widehat{MOP} = 54° - 44° = 10°.$$

Au passage, $\widehat{AOP} = \widehat{AOM} + \widehat{MOP} = 54° + 44° = 98°$, donc, $[OD)$ étant opposée à $[OP)$,

$$\widehat{AOD} = 180° - \widehat{AOP} = 180° - 98° = 82°.$$

**La demi-droite opposée à $[OB)$.** Notons $[OB')$ la demi-droite opposée à $[OB)$. Les angles $\widehat{BOP}$ et $\widehat{B'OD}$ sont opposés par le sommet, car $[OB')$ est opposée à $[OB)$ et $[OD)$ est opposée à $[OP)$. Donc

$$\widehat{B'OD} = \widehat{BOP} = 10°.$$

De plus

$$\widehat{AOB'} = 180° - \widehat{AOB} = 180° - 108° = 72°,$$

et l'on constate que

$$\widehat{AOB'} + \widehat{B'OD} = 72° + 10° = 82° = \widehat{AOD}.$$

Les trois angles se recollent : la demi-droite $[OB')$ est donc à l'intérieur de l'angle $\widehat{AOD}$.

**Conclusion.** À l'intérieur de l'angle $\widehat{AOD}$, il n'y a qu'une seule demi-droite issue de $O$ qui forme un angle de $10°$ avec $[OD)$. Or $[OE)$ et $[OB')$ sont toutes deux intérieures à $\widehat{AOD}$ et forment toutes deux un angle de $10°$ avec $[OD)$. Elles sont donc confondues :

$$[OE) = [OB').$$

Le point $E$ est ainsi sur la demi-droite opposée à $[OB)$ : **les points $B$, $O$ et $E$ sont alignés**, $O$ étant situé entre $B$ et $E$.

## Going further

Le nombre $10°$ n'est pas tombé du ciel. En reprenant le calcul avec $\widehat{AOB} = a$ et $\widehat{BOC} = b$, on trouve

$$\widehat{BOP} = \frac{a}{2} - \frac{a+b}{4} = \frac{a-b}{4},$$

soit ici $\frac{108° - 68°}{4} = 10°$. L'énoncé a choisi $a$ et $b$ pour que cela tombe juste.
