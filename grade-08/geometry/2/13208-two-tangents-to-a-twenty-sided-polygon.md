---
id: "13208"
title: "Deux tangentes à un polygone à vingt côtés"
grade: 8
theme: geometry
difficulty: 2
duration_min: 10
tags: [angles, tangente, polygone-regulier, cercle]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM), éliminatoires"
  reference: "2017-09_coupe_automne_2016_elim.pdf, exercices collégiens, exercice 8 ; corrigé 2017-09_coupe_automne_2016_elim_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016_elim.pdf"
---

## Statement

Les points $A, B, C, \ldots, T$ sont placés sur un cercle de centre $O$ de sorte que $ABC\ldots T$ soit un polygone régulier à $20$ côtés. Les tangentes au cercle en $A$ et en $B$ se coupent en un point $X$.

Combien mesure l'angle $\widehat{AXB}$, en degrés ?

## Hints

1. Que vaut l'angle $\widehat{AOB}$, quand les $20$ sommets sont régulièrement répartis sur le cercle ?
2. Une tangente à un cercle est perpendiculaire au rayon au point de contact. Que valent $\widehat{OAX}$ et $\widehat{OBX}$ ?
3. Dans le quadrilatère $OAXB$, la somme des angles vaut $360^\circ$.

## Solution

**L'angle au centre.** Les $20$ sommets découpent le cercle en $20$ arcs égaux, donc les $20$ angles au centre $\widehat{AOB}, \widehat{BOC}, \ldots$ sont égaux et font un tour complet :

$$\widehat{AOB} = \frac{360^\circ}{20} = 18^\circ.$$

**Les angles droits.** La tangente en $A$ est perpendiculaire au rayon $[OA]$, donc $\widehat{OAX} = 90^\circ$. De même $\widehat{OBX} = 90^\circ$.

**Dans le quadrilatère $OAXB$.** La somme de ses angles vaut $360^\circ$, donc

$$\widehat{AXB} = 360^\circ - 90^\circ - 90^\circ - 18^\circ = 162^\circ.$$

**Conclusion.** $\widehat{AXB} = 162^\circ$.
