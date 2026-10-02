---
id: "8152"
title: "Les inverses des carrés dans un triangle rectangle"
grade: 10
theme: geometry
difficulty: 2
duration_min: 20
tags: [triangle-rectangle, hauteur, pythagore, aire]
adapted_from: null
see_also: ["0835"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, conférence du soir"
  reference: "stage_ete_2018.pdf, chapitre VII « Les soirées », conférence « Des cercles, des lampes et π²/6 » (le polycopié ne nomme pas l'orateur), lemme 3.0.1. L'exposé démontre le lemme en trois lignes ; l'énoncé, les indications et la rédaction ci-dessous ont été écrits pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

$ABC$ est un triangle rectangle en $A$, et $H$ est le pied de la hauteur issue de $A$.

![Le triangle ABC rectangle en A, la hauteur [AH] et le point H sur l'hypoténuse](8152-figure-1.svg)

Démontrer que

$$\frac{1}{AB^2} + \frac{1}{AC^2} = \frac{1}{AH^2}.$$

## Hints

1. Mets les deux fractions de gauche au même dénominateur. Que reconnais-tu au numérateur ?
2. L'aire du triangle $ABC$ se calcule de deux façons : avec les deux côtés de l'angle droit, ou avec l'hypoténuse et la hauteur correspondante.
3. Ces deux façons donnent une égalité entre $AB \times AC$ et $BC \times AH$. Élève-la au carré.

## Solution

**Première étape : mettre au même dénominateur.**

$$\frac{1}{AB^2} + \frac{1}{AC^2} = \frac{AC^2 + AB^2}{AB^2 \times AC^2}.$$

Le triangle est rectangle en $A$, donc le théorème de Pythagore donne $AB^2 + AC^2 = BC^2$. Le numérateur vaut donc $BC^2$ :

$$\frac{1}{AB^2} + \frac{1}{AC^2} = \frac{BC^2}{AB^2 \times AC^2}.$$

**Deuxième étape : calculer l'aire de deux façons.**

Comme l'angle en $A$ est droit, les côtés $[AB]$ et $[AC]$ sont perpendiculaires : l'un sert de base, l'autre de hauteur, et

$$\mathcal{A}(ABC) = \frac{AB \times AC}{2}.$$

Mais on peut aussi prendre $[BC]$ comme base ; la hauteur correspondante est justement $[AH]$, et

$$\mathcal{A}(ABC) = \frac{BC \times AH}{2}.$$

C'est la même aire, donc

$$AB \times AC = BC \times AH.$$

**Troisième étape : conclure.**

Élevons cette dernière égalité au carré :

$$AB^2 \times AC^2 = BC^2 \times AH^2 .$$

En reportant dans l'expression obtenue à la première étape :

$$\frac{1}{AB^2} + \frac{1}{AC^2} = \frac{BC^2}{AB^2 \times AC^2} = \frac{BC^2}{BC^2 \times AH^2} = \frac{1}{AH^2}.$$

$$\boxed{\ \frac{1}{AB^2} + \frac{1}{AC^2} = \frac{1}{AH^2}\ }$$

## Going further

Cette égalité est parfois appelée « théorème de Pythagore inverse ». Elle a une jolie lecture physique, et c'est d'ailleurs sous cette forme qu'elle est apparue au stage : si on place une lampe en $H$, un observateur situé en $A$ reçoit exactement autant de lumière que si on remplaçait cette lampe par deux lampes identiques placées en $B$ et en $C$. En effet l'énergie reçue d'une lampe décroît comme l'inverse du carré de la distance.
