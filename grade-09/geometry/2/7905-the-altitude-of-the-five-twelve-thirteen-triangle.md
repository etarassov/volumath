---
id: "7905"
title: "La hauteur du triangle 5, 12, 13"
grade: 9
theme: geometry
difficulty: 2
duration_min: 15
tags: [pythagore, triangle-rectangle, aire, hauteur]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, « Éliminatoires collégiens », exercice 8 (énoncé p. 21, solution p. 26)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Soit $ABC$ un triangle tel que $AB = 5$, $AC = 12$ et $BC = 13$. On note $H$ le pied de la hauteur issue de $A$.

Calculer la longueur $AH$.

## Hints

1. Calcule $5^2 + 12^2$ et compare avec $13^2$. Que peux-tu en déduire sur le triangle $ABC$ ?
2. Une fois que tu connais la nature du triangle, calcule son aire de la façon la plus simple possible.
3. L'aire d'un triangle vaut aussi $\dfrac{\text{base} \times \text{hauteur}}{2}$. Choisis $[BC]$ comme base.

## Solution

**La réponse : $AH = \dfrac{60}{13}$.**

**Étape 1 : le triangle est rectangle en $A$.**

On calcule

$$AB^2 + AC^2 = 5^2 + 12^2 = 25 + 144 = 169 = 13^2 = BC^2 .$$

D'après la réciproque du théorème de Pythagore, le triangle $ABC$ est rectangle en $A$.

**Étape 2 : son aire, calculée de deux façons.**

Comme il est rectangle en $A$, les deux côtés $[AB]$ et $[AC]$ sont perpendiculaires : l'un sert de base, l'autre de hauteur. L'aire vaut donc

$$\mathcal{A} = \frac{AB \times AC}{2} = \frac{5 \times 12}{2} = 30 .$$

Mais on peut aussi prendre $[BC]$ comme base ; la hauteur correspondante est justement $AH$ :

$$\mathcal{A} = \frac{BC \times AH}{2} = \frac{13 \times AH}{2} .$$

**Étape 3 : on identifie.**

$$\frac{13 \times AH}{2} = 30 \qquad \text{donc} \qquad AH = \frac{60}{13} .$$

**Conclusion.** $AH = \boxed{\dfrac{60}{13}}$, soit environ $\text{4,6}$.

Cette fraction est irréductible, car $13$ est premier et ne divise pas $60$.
