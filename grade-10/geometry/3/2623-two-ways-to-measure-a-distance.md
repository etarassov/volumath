---
id: "2623"
title: "Deux façons de mesurer une distance"
grade: 10
theme: geometry
difficulty: 3
duration_min: 35
tags: [distance, valeur-absolue, inegalite, identites-remarquables, quadrillage]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School I Circle, Taxicab Geometry"
  reference: "Handout-543-668.pdf, exercice 2"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-543-668.pdf"
---

## Statement

Dans le plan muni d'un repère orthonormé, on connaît la distance habituelle entre deux points $P(x_1\,;\,y_1)$ et $Q(x_2\,;\,y_2)$ :
$$d_E(P, Q) = \sqrt{(x_2 - x_1)^2 + (y_2 - y_1)^2} .$$

On en introduit une autre, la **distance du taxi** : dans une ville dont les rues forment un quadrillage, un taxi ne peut pas couper en diagonale, il doit suivre les rues. On pose donc
$$d_T(P, Q) = |x_2 - x_1| + |y_2 - y_1| .$$

1. Calculer $d_E$ et $d_T$ pour $P(1\,;\,1)$ et $Q(4\,;\,5)$, puis pour $P(2\,;\,3)$ et $Q(-2\,;\,3)$.
2. Montrer que pour tous points $P$ et $Q$ :
$$d_E(P,Q) \ \leq \ d_T(P,Q) \ \leq \ \sqrt{2}\ d_E(P,Q) .$$
3. Dans quels cas a-t-on $d_E(P,Q) = d_T(P,Q)$ ?

## Hints

1. Pose $a = |x_2 - x_1|$ et $b = |y_2 - y_1|$. Ce sont deux nombres positifs ou nuls, et tout s'écrit avec eux : $d_E = \sqrt{a^2+b^2}$ et $d_T = a+b$.
2. Les deux quantités étant positives, comparer $d_E$ et $d_T$ revient à comparer leurs carrés. Développe $(a+b)^2$.
3. Pour l'inégalité de droite, compare $(a+b)^2$ et $2(a^2+b^2)$. Une identité remarquable très simple donne le résultat : pense à $(a-b)^2$.
4. Pour la question 3, regarde à quelle condition l'inégalité de gauche devient une égalité, en reprenant le calcul de la question 2.

## Solution

**1. Deux exemples.**

*Pour $P(1\,;\,1)$ et $Q(4\,;\,5)$ :*
$$d_E = \sqrt{3^2 + 4^2} = \sqrt{25} = 5, \qquad d_T = |3| + |4| = 7 .$$

*Pour $P(2\,;\,3)$ et $Q(-2\,;\,3)$ :*
$$d_E = \sqrt{(-4)^2 + 0^2} = 4, \qquad d_T = |-4| + |0| = 4 .$$

Sur le second exemple les deux distances coïncident : les deux points sont sur une même horizontale, le taxi n'a pas besoin de tourner.

**2. L'encadrement.**

Posons $a = |x_2 - x_1| \geq 0$ et $b = |y_2 - y_1| \geq 0$. Comme $(x_2-x_1)^2 = a^2$ et $(y_2-y_1)^2 = b^2$, on a
$$d_E = \sqrt{a^2 + b^2} \qquad \text{et} \qquad d_T = a + b .$$

Ces deux quantités sont positives ou nulles, donc comparer les distances revient à comparer leurs carrés.

**Inégalité de gauche : $d_E \leq d_T$.**
$$d_T^2 - d_E^2 = (a+b)^2 - (a^2+b^2) = a^2 + 2ab + b^2 - a^2 - b^2 = 2ab .$$
Comme $a \geq 0$ et $b \geq 0$, on a $2ab \geq 0$, donc $d_T^2 \geq d_E^2$, donc $d_T \geq d_E$.

**Inégalité de droite : $d_T \leq \sqrt2\, d_E$.**
$$2 d_E^2 - d_T^2 = 2(a^2+b^2) - (a+b)^2 = 2a^2 + 2b^2 - a^2 - 2ab - b^2 = a^2 - 2ab + b^2 = (a-b)^2 .$$
Un carré est toujours positif ou nul, donc $d_T^2 \leq 2\,d_E^2 = \left(\sqrt2\,d_E\right)^2$, donc $d_T \leq \sqrt2\,d_E$.

**On a donc bien, pour tous points $P$ et $Q$ :**
$$d_E(P,Q) \ \leq \ d_T(P,Q) \ \leq \ \sqrt{2}\ d_E(P,Q) .$$

**3. Le cas d'égalité à gauche.**

D'après le calcul ci-dessus, $d_E = d_T$ équivaut à $2ab = 0$, c'est-à-dire à $a = 0$ ou $b = 0$.

- $a = 0$ signifie $x_1 = x_2$ : les deux points sont sur une même **verticale** ;
- $b = 0$ signifie $y_1 = y_2$ : les deux points sont sur une même **horizontale**.

$$\boxed{d_E(P,Q) = d_T(P,Q) \text{ si et seulement si } P \text{ et } Q \text{ sont sur une même horizontale ou une même verticale.}}$$

C'est bien ce que dit l'image du taxi : les deux distances ne coïncident que lorsque le trajet se fait tout droit, sans avoir à tourner.

## Going further

Le cas d'égalité à droite se traite pareil : $d_T = \sqrt2\,d_E$ équivaut à $(a-b)^2 = 0$, c'est-à-dire $a = b$. Le trajet est alors « à $45°$ », et c'est là que le taxi perd le plus : il parcourt $\sqrt2 \approx \text{1,41}$ fois la distance à vol d'oiseau, soit environ $41\,\%$ de plus.
