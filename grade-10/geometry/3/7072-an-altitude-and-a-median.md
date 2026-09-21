---
id: "7072"
title: "Une hauteur et une médiane"
grade: 10
theme: geometry
difficulty: 3
duration_min: 25
tags: [triangle rectangle, mediane, hauteur, triangle isocele]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2010"
  reference: "stage_junior_2010.pdf, mardi 26 octobre (géométrie), exercices du jour, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2010.pdf"
---

## Statement

Soit $ABC$ un triangle **rectangle en $C$**. On note $M$ le milieu de $[AB]$ et $H$ le pied
de la hauteur issue de $C$.

On sait que
$$CH = 1 \qquad \text{et} \qquad CM = 2 .$$

Déterminer la mesure de l'angle $\widehat{CAB}$.

*(Commence par faire une figure : elle n'est pas fournie, et la dessiner fait partie de
l'exercice.)*

## Hints

1. Dans un triangle rectangle, que peut-on dire de la distance du milieu de l'hypoténuse aux
   trois sommets ?
2. $M$ est le centre du cercle circonscrit, donc $MA = MB = MC = 2$, et $AB = 4$.
3. Le triangle $CHM$ est rectangle en $H$. Que vaut $\sin \widehat{CMH}$ ?
4. Attention : $\sin \alpha = \dfrac12$ a **deux** solutions entre $0°$ et $180°$.
5. Le triangle $MBC$ est isocèle. Relie l'angle $\widehat{CAB}$ à l'angle $\widehat{BMC}$.

## Solution

**Le milieu de l'hypoténuse.**

Dans un triangle rectangle, le milieu de l'hypoténuse est le centre du cercle circonscrit :
il est à égale distance des trois sommets. Donc
$$MA = MB = MC = 2 , \qquad \text{et donc} \qquad AB = 4 .$$

**Lire l'angle en $M$.**

Le triangle $CHM$ est rectangle en $H$ (car $[CH]$ est la hauteur, donc
$(CH) \perp (AB)$, et $M$ est sur $(AB)$).

Notons $\alpha = \widehat{BMC}$. Dans le triangle rectangle $CHM$,
$$\sin \alpha = \frac{CH}{CM} = \frac12 .$$

Entre $0°$ et $180°$, cette équation a **deux** solutions :
$$\alpha = 30° \qquad \text{ou} \qquad \alpha = 150° .$$

Les deux sont possibles : elles correspondent aux deux positions de $H$, d'un côté ou de
l'autre de $M$ sur le segment $[AB]$.

**Relier à l'angle cherché.**

Le triangle $MBC$ est isocèle en $M$, puisque $MB = MC = 2$. Ses angles à la base sont donc
égaux, et la somme des angles donne
$$\widehat{MBC} = \frac{180° - \alpha}{2} = 90° - \frac{\alpha}{2} .$$

Or $\widehat{MBC} = \widehat{ABC}$, puisque $M$ est sur le segment $[AB]$. Et comme le
triangle $ABC$ est rectangle en $C$, ses deux angles aigus sont complémentaires :
$$\widehat{CAB} = 90° - \widehat{ABC} = 90° - \left(90° - \frac{\alpha}{2}\right)
= \frac{\alpha}{2} .$$

**Les deux réponses.**

$$\alpha = 30° \ \Longrightarrow \ \widehat{CAB} = 15° ,
\qquad\qquad \alpha = 150° \ \Longrightarrow \ \widehat{CAB} = 75° .$$

$$\boxed{\widehat{CAB} = 15° \quad \text{ou} \quad \widehat{CAB} = 75° .}$$

On passe d'une solution à l'autre en échangeant les rôles de $A$ et de $B$ : c'est le même
triangle, vu dans l'autre sens.

## Going further

Vérifions la cohérence par un calcul de longueurs. L'aire du triangle vaut, en prenant
$[AB]$ comme base,
$$\mathcal A = \frac{AB \times CH}{2} = \frac{4 \times 1}{2} = 2 ,$$
et en prenant les deux côtés de l'angle droit,
$$\mathcal A = \frac{CA \times CB}{2} , \qquad \text{donc} \qquad CA \times CB = 4 .$$

Le théorème de Pythagore donne par ailleurs $CA^2 + CB^2 = AB^2 = 16$. Donc
$$(CA + CB)^2 = 16 + 8 = 24 \qquad \text{et} \qquad (CA - CB)^2 = 16 - 8 = 8 ,$$
d'où $CA + CB = 2\sqrt6$ et $|CA - CB| = 2\sqrt2$. En prenant $CA$ le plus grand :
$$CA = \sqrt6 + \sqrt2 \approx \text{3,863}, \qquad CB = \sqrt6 - \sqrt2 \approx \text{1,035} .$$

Et alors
$$\tan \widehat{CAB} = \frac{CB}{CA} = \frac{\sqrt6 - \sqrt2}{\sqrt6 + \sqrt2} \approx
\text{0,268} ,$$
ce qui correspond bien à un angle de $15°$.

Au passage, on retrouve la valeur exacte
$\sin 15° = \dfrac{\sqrt6 - \sqrt2}{4}$, puisque $\sin \widehat{CAB} = \dfrac{CB}{AB}$.
