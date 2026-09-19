---
id: "3412"
title: "Le volume d'un tétraèdre donné par ses arêtes"
grade: 10
theme: geometry
difficulty: 4
duration_min: 30
tags: [tetraedre, volume, pythagore, espace, pyramide]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12 Training, Week 6: Geometry: Triangles"
  reference: "Handout-3746-3344.pdf, section 3.2, exercice 3, d'après AMC 10A 2021, problème 13"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3746-3344.pdf"
---

## Statement

Un tétraèdre $ABCD$ a pour longueurs d'arêtes

$$AB = 2, \quad AC = 3, \quad AD = 4, \quad BC = \sqrt{13}, \quad BD = 2\sqrt{5}, \quad CD = 5.$$

Quel est son volume ?

## Hints

1. Six longueurs, c'est beaucoup. Commence par les regrouper par faces : quelles sont les trois longueurs de la face $ABC$ ?
2. Pour la face $ABC$ : compare $AB^2 + AC^2$ et $BC^2$.
3. Fais la même comparaison pour les faces $ABD$ et $ACD$. Que remarques-tu sur le sommet $A$ ?
4. Les trois arêtes issues de $A$ sont deux à deux perpendiculaires : le tétraèdre est le coin d'un pavé droit. Quelle base et quelle hauteur choisis-tu alors ?

## Solution

**L'idée : les trois arêtes issues de $A$ sont deux à deux perpendiculaires. Le tétraèdre est alors simplement un coin de pavé droit.**

**Étape 1. La face $ABC$.**

$$AB^2 + AC^2 = 2^2 + 3^2 = 4 + 9 = 13 = \left(\sqrt{13}\right)^2 = BC^2.$$

D'après la réciproque du théorème de Pythagore, le triangle $ABC$ est rectangle en $A$ : les droites $(AB)$ et $(AC)$ sont perpendiculaires.

**Étape 2. La face $ABD$.**

$$AB^2 + AD^2 = 2^2 + 4^2 = 4 + 16 = 20 = \left(2\sqrt{5}\right)^2 = BD^2.$$

Le triangle $ABD$ est rectangle en $A$ : $(AB)$ et $(AD)$ sont perpendiculaires.

**Étape 3. La face $ACD$.**

$$AC^2 + AD^2 = 3^2 + 4^2 = 9 + 16 = 25 = 5^2 = CD^2.$$

Le triangle $ACD$ est rectangle en $A$ : $(AC)$ et $(AD)$ sont perpendiculaires.

**Étape 4. Le volume.**

Les trois arêtes $[AB]$, $[AC]$ et $[AD]$ sont donc deux à deux perpendiculaires : le tétraèdre $ABCD$ est le coin d'un pavé droit de dimensions $2$, $3$ et $4$.

Prenons le triangle $ABC$ comme base. Il est rectangle en $A$, donc son aire vaut

$$\mathcal{A} = \frac{AB \times AC}{2} = \frac{2 \times 3}{2} = 3.$$

L'arête $[AD]$ est perpendiculaire à la fois à $(AB)$ et à $(AC)$, donc elle est perpendiculaire au plan $(ABC)$ : la hauteur du tétraèdre issue de $D$ est exactement $AD = 4$.

Le volume d'une pyramide vaut $\dfrac13 \times \text{aire de la base} \times \text{hauteur}$ :

$$V = \frac{1}{3} \times 3 \times 4 = 4.$$

**Conclusion : le volume du tétraèdre vaut $4$.**

## Going further

Ce tétraèdre est le sixième d'un pavé droit $2 \times 3 \times 4$, dont le volume vaut $24$. C'est cohérent : $24 / 6 = 4$. En effet, on peut découper un pavé droit en six tétraèdres de ce type, tous de même volume.
