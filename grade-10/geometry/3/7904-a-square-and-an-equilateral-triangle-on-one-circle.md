---
id: "7904"
title: "Un carré et un triangle équilatéral sur le même cercle"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [cercle, angle-inscrit, arcs, carre, triangle-equilateral]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, « Éliminatoires collégiens », exercice 7 (énoncé p. 21, solution p. 25). L'énoncé d'origine demandait 10 fois l'angle, pour que la réponse soit un entier."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

$ABCD$ est un carré et $EFG$ est un triangle équilatéral. Les sept points $A$, $E$, $B$, $F$, $C$, $D$, $G$ sont sur un même cercle, et dans cet ordre. De plus $AE = EB$.

Quelle est la mesure, en degrés, de l'angle $\widehat{DAG}$ ?

![Le carré ABCD et le triangle équilatéral EFG inscrits dans le même cercle ; en pointillés, le segment [AG]](7904-figure-1.svg)

## Hints

1. Raisonne avec les **arcs** du cercle plutôt qu'avec les angles des polygones. Un arc se mesure en degrés : le cercle entier fait $360°$.
2. Le carré découpe le cercle en quatre arcs. Combien mesure chacun ? Et le triangle équilatéral ?
3. La condition $AE = EB$ dit que $E$ est au milieu de l'arc $AB$. Tu peux alors calculer de proche en proche les arcs $BF$, $FC$, $CD$, $DG$, $GA$.
4. L'angle $\widehat{DAG}$ est un angle inscrit : son sommet $A$ est sur le cercle et il intercepte l'arc $DG$. Il vaut donc la moitié de cet arc.

## Solution

**La réponse : $\widehat{DAG} = \text{7,5}°$.**

Tout se joue sur les **arcs**. Chaque arc du cercle a une mesure en degrés, et les arcs qui se suivent s'additionnent ; le tour complet fait $360°$.

**Étape 1 : les arcs du carré.**

Les quatre sommets $A$, $B$, $C$, $D$ du carré sont régulièrement répartis sur le cercle, donc

$$\text{arc } AB = \text{arc } BC = \text{arc } CD = \text{arc } DA = 90° .$$

**Étape 2 : les arcs du triangle.**

Les trois sommets $E$, $F$, $G$ du triangle équilatéral sont eux aussi régulièrement répartis, donc

$$\text{arc } EF = \text{arc } FG = \text{arc } GE = 120° .$$

**Étape 3 : on place $E$.**

Les cordes $AE$ et $EB$ ont la même longueur, donc les arcs $AE$ et $EB$ sont égaux. Comme ils forment ensemble l'arc $AB$ de $90°$ :

$$\text{arc } AE = \text{arc } EB = 45° .$$

**Étape 4 : on avance dans l'ordre $A$, $E$, $B$, $F$, $C$, $D$, $G$.**

L'arc $EF$ est formé de l'arc $EB$ suivi de l'arc $BF$, donc

$$45° + \text{arc } BF = 120° \qquad \text{d'où} \qquad \text{arc } BF = 75° .$$

Comme l'arc $BC$ vaut $90°$, il reste

$$\text{arc } FC = 90° - 75° = 15° .$$

L'arc $FG$ est formé des arcs $FC$, $CD$ et $DG$ :

$$15° + 90° + \text{arc } DG = 120° \qquad \text{d'où} \qquad \text{arc } DG = 15° .$$

*Vérification :* l'arc $GA$ vaut alors $90° - 15° = 75°$, et l'arc $GE$ vaut $75° + 45° = 120°$. C'est bien ce qu'il fallait.

**Étape 5 : l'angle inscrit.**

L'angle $\widehat{DAG}$ a son sommet $A$ sur le cercle et ses côtés passent par $D$ et par $G$ : c'est l'angle inscrit qui intercepte l'arc $DG$. D'après le théorème de l'angle inscrit, il vaut la moitié de cet arc :

$$\widehat{DAG} = \frac{15°}{2} = \text{7,5}° .$$

**Conclusion.** $\widehat{DAG} = \boxed{\text{7,5}°}$.

## Going further

L'énoncé original de la Coupe Animath demandait la valeur de $10 \times \widehat{DAG}$, c'est-à-dire $75$ : la réponse devait être un entier, puisque les éliminatoires se corrigeaient automatiquement.
