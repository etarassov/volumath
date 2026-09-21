---
id: "7814"
title: "La hauteur d'un triangle rectangle de côtés 156 et 65"
grade: 9
theme: geometry
difficulty: 2
duration_min: 20
tags: [triangle rectangle, pythagore, aire, hauteur]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, « Coupe Animath et évaluation initiale », éliminatoires lycéens, exercice 12"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Soit $ABC$ un triangle rectangle en $A$ tel que $AB = 156$ et $AC = 65$.

On note $H$ le pied de la hauteur issue de $A$, c'est-à-dire le point de $[BC]$ tel que
$(AH)$ soit perpendiculaire à $(BC)$.

Déterminer la valeur de $AH$.

## Hints

1. Commence par calculer $BC$ avec le théorème de Pythagore. Les nombres sont gros mais
   $156 = 12 \times 13$ et $65 = 5 \times 13$ : mets $13$ en facteur avant de calculer.
2. L'aire du triangle $ABC$ peut se calculer de deux façons différentes. Lesquelles ?
3. Prends $[AB]$ et $[AC]$ comme base et hauteur pour la première, puis $[BC]$ et $[AH]$ pour
   la seconde. Égale les deux.

## Solution

**Étape 1 : la longueur de l'hypoténuse.**

Le triangle est rectangle en $A$, donc d'après le théorème de Pythagore
$$BC^2 = AB^2 + AC^2 .$$

On met $13$ en facteur pour éviter les gros calculs :
$$AB = 156 = 12 \times 13, \qquad AC = 65 = 5 \times 13 .$$

Donc
$$BC^2 = 13^2 \times 12^2 + 13^2 \times 5^2 = 13^2 \left(144 + 25\right) = 13^2 \times 169 = 13^2 \times 13^2 .$$

D'où
$$BC = 13 \times 13 = 169 .$$

*(On reconnaît le triangle $5$–$12$–$13$, agrandi $13$ fois.)*

**Étape 2 : l'aire, calculée de deux façons.**

Comme le triangle est rectangle en $A$, les côtés $[AB]$ et $[AC]$ sont perpendiculaires : on
peut prendre l'un comme base et l'autre comme hauteur.
$$\mathcal{A} = \frac{AB \times AC}{2} = \frac{156 \times 65}{2}.$$

Mais $(AH)$ est perpendiculaire à $(BC)$, donc on peut aussi prendre $[BC]$ comme base et
$[AH]$ comme hauteur :
$$\mathcal{A} = \frac{BC \times AH}{2} = \frac{169 \times AH}{2}.$$

**Étape 3 : on égale.**

$$\frac{156 \times 65}{2} = \frac{169 \times AH}{2}
\qquad \Longrightarrow \qquad
AH = \frac{156 \times 65}{169}.$$

On simplifie en revenant aux facteurs $13$ :
$$AH = \frac{(12 \times 13) \times (5 \times 13)}{13 \times 13} = 12 \times 5 = \boxed{60}.$$

*Contrôle de bon sens.* La hauteur issue de l'angle droit est forcément plus courte que les deux
côtés de l'angle droit, et $60 < 65 < 156$. C'est cohérent.
