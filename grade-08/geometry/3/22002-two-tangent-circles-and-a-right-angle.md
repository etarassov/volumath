---
id: "22002"
title: "Deux cercles tangents et un angle droit"
grade: 8
theme: geometry
difficulty: 3
duration_min: 20
tags: [cercles-tangents, tangente-commune, longueurs-des-tangentes, triangle-isocele, cercle-de-diametre]
adapted_from: null
see_also: ["13223"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « Angle tangent » (Vincent), exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Deux cercles $\Gamma_1$ et $\Gamma_2$ se touchent en un point $T$, et chacun est à l'extérieur de l'autre (on dit qu'ils sont tangents extérieurement).

Une droite touche $\Gamma_1$ en un point $P$ et $\Gamma_2$ en un point $Q$, sans passer par $T$ : c'est une tangente commune aux deux cercles.

Démontrer que le triangle $PTQ$ est rectangle en $T$.

## Hints

1. Les deux cercles ont aussi une tangente commune au point $T$. Tracez-la.
2. Cette tangente coupe la droite $(PQ)$ en un point $M$. Depuis $M$, on a mené deux tangentes au cercle $\Gamma_1$. Que dire des longueurs $MP$ et $MT$ ?
3. Comparez $MP$, $MT$ et $MQ$. Dans un triangle, que se passe-t-il quand la médiane issue d'un sommet mesure la moitié du côté opposé ?

## Solution

**Un outil : les deux tangentes issues d'un même point.** Si, d'un point $M$ extérieur à un cercle de centre $O$, on mène les deux tangentes, qui touchent le cercle en $X$ et $Y$, alors $MX = MY$.

En effet, une tangente est perpendiculaire au rayon au point de contact, donc les triangles $OXM$ et $OYM$ sont rectangles en $X$ et en $Y$. Ils ont la même hypoténuse $[OM]$ et $OX = OY$ (deux rayons). Par le théorème de Pythagore, $MX^2 = OM^2 - OX^2 = OM^2 - OY^2 = MY^2$, donc $MX = MY$.

**Étape 1 : la tangente en $T$.** Les deux cercles se touchent en $T$ : ils ont en ce point la même tangente $t$, perpendiculaire à la droite des centres. Cette droite $t$ coupe la droite $(PQ)$ en un point $M$. (Elle ne peut pas lui être parallèle : sinon $(PQ)$ serait perpendiculaire à la droite des centres, et une telle droite ne peut toucher les deux cercles qu'en passant par $T$.)

**Étape 2 : trois longueurs égales.**

- Depuis $M$, les droites $(MP)$ et $(MT)$ sont deux tangentes au cercle $\Gamma_1$. Donc $MP = MT$.
- Depuis $M$, les droites $(MQ)$ et $(MT)$ sont deux tangentes au cercle $\Gamma_2$. Donc $MQ = MT$.

Ainsi $MP = MT = MQ$. Le point $M$ est donc le milieu du segment $[PQ]$, et le cercle de centre $M$ et de rayon $MP$ passe par $P$, $Q$ et $T$.

**Étape 3 : l'angle droit.** Le cercle de centre $M$ passant par $P$, $Q$ et $T$ a pour diamètre $[PQ]$. Un triangle inscrit dans un cercle, dont un côté est un diamètre, est rectangle, et l'angle droit est le sommet opposé à ce diamètre.

On peut aussi le vérifier avec les angles. Le triangle $MPT$ est isocèle en $M$, donc $\widehat{MPT} = \widehat{MTP}$. Le triangle $MQT$ est isocèle en $M$, donc $\widehat{MQT} = \widehat{MTQ}$. La somme des angles du triangle $PTQ$ donne

$$\widehat{TPQ} + \widehat{TQP} + \widehat{PTQ} = 180^\circ, \quad \text{avec} \quad \widehat{PTQ} = \widehat{MTP} + \widehat{MTQ} = \widehat{TPQ} + \widehat{TQP}.$$

Donc $2\,\widehat{PTQ} = 180^\circ$.

**Conclusion.** $\widehat{PTQ} = 90^\circ$ : le triangle $PTQ$ est rectangle en $T$.

## Going further

1. Montrez que $PQ^2 = 4 r_1 r_2$, où $r_1$ et $r_2$ sont les rayons des deux cercles. (Regardez le triangle formé par les deux centres et $M$ : quel est son angle en $M$ ?)
2. On prolonge $[PT]$ au-delà de $T$ jusqu'à recouper $\Gamma_2$ en un point $R$. Montrez que $[QR]$ est un diamètre de $\Gamma_2$.
