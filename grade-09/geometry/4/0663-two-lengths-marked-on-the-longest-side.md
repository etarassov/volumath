---
id: "0663"
title: "Deux longueurs reportées sur le plus grand côté"
grade: 9
theme: geometry
difficulty: 4
duration_min: 35
tags: [triangle-isocele, inegalite-triangulaire, somme-des-angles, chasse-aux-angles]
adapted_from: null
see_also: []
same_as: ["8503"]
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Angles et droites du triangle »"
  reference: "Angles.2.pdf, 6 octobre 2023, problème 10, d'après la Coupe Animath de printemps 2022, problème 4"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Angles.2.pdf"
---

## Statement

Soit $ABC$ un triangle dans lequel $BC > AB$ et $BC > AC$. Soit $P$ le point du segment $[BC]$ tel que $AB = BP$, et soit $Q$ le point du segment $[BC]$ tel que $AC = CQ$.

Montrer que $\widehat{BAC} + 2\,\widehat{PAQ} = 180°$.

![Le triangle ABC avec les points P et Q sur le côté [BC]](0663-figure-1.svg)

## Hints

1. Les triangles $ABP$ et $ACQ$ sont isocèles. Calcule $\widehat{BAP}$ en fonction de $\widehat{ABC}$, puis $\widehat{CAQ}$ en fonction de $\widehat{ACB}$.
2. Additionne ces deux angles. Avec la somme des angles du triangle, tu trouves $\widehat{BAP} + \widehat{CAQ} = 90° + \frac{\widehat{BAC}}{2}$, qui est plus grand que $\widehat{BAC}$ : les deux angles se chevauchent.
3. Dans quel ordre les points $B$, $P$, $Q$, $C$ sont-ils placés sur le segment ? Compare $BQ = BC - CQ$ et $BP = AB$ à l'aide de l'inégalité triangulaire.
4. Une fois l'ordre $B$, $Q$, $P$, $C$ connu, écris $\widehat{BAP} + \widehat{CAQ}$ en fonction de $\widehat{BAC}$ et de $\widehat{PAQ}$.

## Solution

Notons $a = BC$, $b = CA$, $c = AB$, et $\widehat{A}$, $\widehat{B}$, $\widehat{C}$ les trois angles du triangle.

**Les deux triangles isocèles.** Par hypothèse $BP = AB$, donc le triangle $ABP$ est isocèle de sommet principal $B$, et ses angles à la base sont égaux :

$$\widehat{BAP} = \widehat{BPA} = \frac{180° - \widehat{B}}{2} = 90° - \frac{\widehat{B}}{2}.$$

De même $CQ = AC$, donc le triangle $ACQ$ est isocèle de sommet principal $C$ et

$$\widehat{CAQ} = \frac{180° - \widehat{C}}{2} = 90° - \frac{\widehat{C}}{2}.$$

En additionnant, et en utilisant $\widehat{B} + \widehat{C} = 180° - \widehat{A}$ :

$$\widehat{BAP} + \widehat{CAQ} = 180° - \frac{\widehat{B} + \widehat{C}}{2} = 180° - \frac{180° - \widehat{A}}{2} = 90° + \frac{\widehat{A}}{2}. \qquad (\star)$$

**L'ordre des points sur $[BC]$.** Les hypothèses $BC > AB$ et $BC > AC$ donnent $BP = c < a$ et $CQ = b < a$, donc $P$ et $Q$ sont bien sur le segment $[BC]$. De plus

$$BQ = BC - CQ = a - b \qquad \text{et} \qquad BP = c,$$

et l'inégalité triangulaire dans le triangle $ABC$ donne $a < b + c$, c'est-à-dire $a - b < c$. Donc

$$BQ < BP :$$

en partant de $B$, on rencontre $Q$ avant $P$. Les quatre points sont dans l'ordre $B$, $Q$, $P$, $C$.

**Le recollement des angles.** Comme $Q$ et $P$ sont sur le segment $[BC]$ dans cet ordre, les demi-droites issues de $A$ se succèdent dans l'ordre $[AB)$, $[AQ)$, $[AP)$, $[AC)$. On peut donc découper :

$$\widehat{BAP} = \widehat{BAQ} + \widehat{QAP}, \qquad \widehat{CAQ} = \widehat{CAP} + \widehat{PAQ}, \qquad \widehat{BAC} = \widehat{BAQ} + \widehat{QAP} + \widehat{PAC}.$$

En additionnant les deux premières égalités :

$$\widehat{BAP} + \widehat{CAQ} = (\widehat{BAQ} + \widehat{QAP} + \widehat{PAC}) + \widehat{PAQ} = \widehat{BAC} + \widehat{PAQ}.$$

**Conclusion.** En comparant avec $(\star)$ :

$$\widehat{A} + \widehat{PAQ} = 90° + \frac{\widehat{A}}{2}, \qquad \text{donc} \qquad \widehat{PAQ} = 90° - \frac{\widehat{A}}{2},$$

et en multipliant par $2$ :

$$2\,\widehat{PAQ} = 180° - \widehat{A}, \qquad \text{c'est-à-dire} \qquad \widehat{BAC} + 2\,\widehat{PAQ} = 180°.$$

## Going further

La relation démontrée se lit aussi $\widehat{PAQ} = 90° - \frac{\widehat{A}}{2}$ : l'angle $\widehat{PAQ}$ ne dépend que de l'angle $\widehat{A}$, pas du reste de la forme du triangle.

Comme $[BC]$ est le côté strictement le plus long, $\widehat{A}$ est le plus grand des trois angles, donc $\widehat{A} > 60°$ et par conséquent $\widehat{PAQ} < 60°$.
