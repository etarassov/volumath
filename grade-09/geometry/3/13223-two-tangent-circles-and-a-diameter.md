---
id: "13223"
title: "Deux cercles tangents et un diamètre"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [cercle, tangente, alignement, angle-droit, triangle-isocele]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM)"
  reference: "2017-09_coupe_automne_2016.pdf, exercices communs, exercice 4 ; corrigé 2017-09_coupe_automne_2016_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016.pdf"
---

## Statement

Deux cercles $\mathcal{C}_1$ et $\mathcal{C}_2$ sont tangents extérieurement en un point $X$. Une tangente commune aux deux cercles touche $\mathcal{C}_1$ en $Y$ et $\mathcal{C}_2$ en $Z$, avec $Y \neq Z$. Soit $T$ le point tel que $[YT]$ soit un diamètre de $\mathcal{C}_1$.

Montrer que les points $T$, $X$ et $Z$ sont alignés.

## Hints

1. Fais une grande figure. Quel angle du triangle $YXZ$ semble remarquable ?
2. Trace la tangente commune aux deux cercles au point $X$. Elle coupe $(YZ)$ en un point $M$. Compare $MY$, $MX$ et $MZ$.
3. Les triangles $MXY$ et $MXZ$ sont isocèles. Écris la somme des angles du triangle $YXZ$.
4. Que vaut l'angle $\widehat{YXT}$ ? Conclus avec deux droites perpendiculaires à $(XY)$.

## Solution

Notons $O_1$ et $O_2$ les centres des cercles. Le point $X$ est sur la droite $(O_1O_2)$.

**Un point $M$ à égale distance de $X$, $Y$, $Z$.** Traçons la tangente commune aux deux cercles en $X$ : c'est la perpendiculaire à $(O_1O_2)$ en $X$. Elle coupe la droite $(YZ)$ en un point $M$. (Elle ne peut pas lui être parallèle : sinon $(YZ)$ serait perpendiculaire à $(O_1O_2)$, les rayons $[O_1Y]$ et $[O_2Z]$, perpendiculaires à $(YZ)$, seraient portés par la droite $(O_1O_2)$, et $Y$ et $Z$ seraient tous deux à l'intersection de $(YZ)$ et de $(O_1O_2)$, donc $Y = Z$.)

Depuis le point $M$, les deux tangentes au cercle $\mathcal{C}_1$ ont la même longueur, donc $MY = MX$. De même avec $\mathcal{C}_2$, $MX = MZ$. Ainsi $MY = MX = MZ$.

(Rappel : si deux tangentes issues d'un point $M$ touchent un cercle de centre $O$ en $P$ et $Q$, les triangles $MOP$ et $MOQ$ sont rectangles en $P$ et $Q$, ont l'hypoténuse $[MO]$ en commun et $OP = OQ$, donc $MP^2 = MO^2 - OP^2 = MQ^2$.)

**L'angle en $X$ est droit.** Les triangles $MXY$ et $MXZ$ sont isocèles en $M$, donc

$$\widehat{MYX} = \widehat{MXY} \qquad \text{et} \qquad \widehat{MZX} = \widehat{MXZ}.$$

Le point $M$ est sur le segment $[YZ]$, puisque $MY = MZ$ et $Y \neq Z$. Dans le triangle $YXZ$, la somme des angles donne

$$\widehat{MXY} + \left(\widehat{MXY} + \widehat{MXZ}\right) + \widehat{MXZ} = 180^\circ,$$

donc $\widehat{MXY} + \widehat{MXZ} = 90^\circ$, c'est-à-dire $\widehat{YXZ} = 90^\circ$. La droite $(XZ)$ est perpendiculaire à $(XY)$.

**L'angle $\widehat{YXT}$ est droit aussi.** Le point $X$ est sur le cercle $\mathcal{C}_1$ de diamètre $[YT]$. Si $X = T$, les trois points sont évidemment alignés. Sinon, le triangle $YXT$ est inscrit dans un cercle dont $[YT]$ est un diamètre, donc il est rectangle en $X$ : la droite $(XT)$ est perpendiculaire à $(XY)$.

**Conclusion.** Les droites $(XT)$ et $(XZ)$ passent toutes les deux par $X$ et sont perpendiculaires à $(XY)$. Il n'y a qu'une seule perpendiculaire à $(XY)$ passant par $X$, donc ces deux droites sont la même : $T$, $X$ et $Z$ sont alignés.
