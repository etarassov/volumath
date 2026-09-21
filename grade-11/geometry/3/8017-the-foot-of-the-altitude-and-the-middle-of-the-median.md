---
id: "8017"
title: "Le pied de la hauteur et le milieu de la médiane"
grade: 11
theme: geometry
difficulty: 3
duration_min: 25
tags: [theoreme de la mediane, triangle rectangle, cercle circonscrit, longueurs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, Coupe Animath 2017, éliminatoires lycéens, exercice 9 (la solution imprimée écrit l'identité avec AC² et BC² intervertis, voir la note ci-dessous)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Soit $ABC$ un triangle. On note :

- $H$ le pied de la hauteur issue de $A$ ;
- $M$ le milieu de $[BC]$ ;
- $N$ le milieu de $[AM]$.

Montrer que

$$16\,HN^2 = 2AB^2 + 2AC^2 - BC^2 .$$

## Hints

1. Regarde le triangle $AHM$. Quelle est sa particularité ?
2. Dans un triangle rectangle, où se trouve le centre du cercle circonscrit ? Qu'en déduis-tu
   pour $HN$ ?
3. Il ne reste plus qu'à exprimer $AM$, la longueur d'une médiane, en fonction des trois
   côtés.

## Solution

**Le triangle $AHM$ est rectangle en $H$.** Le point $H$ est le pied de la hauteur issue de
$A$, donc $(AH)$ est perpendiculaire à $(BC)$. Or $M$ est sur $(BC)$, donc $(AH)$ est
perpendiculaire à $(HM)$ : le triangle $AHM$ est rectangle en $H$.

**On en déduit $HN$.** Dans un triangle rectangle, le milieu de l'hypoténuse est à égale
distance des trois sommets : c'est le centre du cercle circonscrit, et l'hypoténuse en est un
diamètre. Ici l'hypoténuse est $[AM]$ et $N$ en est le milieu, donc

$$HN = \frac{AM}{2} .$$

*(Si $H$ et $M$ sont confondus, c'est-à-dire si $AB = AC$, l'égalité $HN = AM/2$ reste vraie :
$N$ est alors le milieu de $[AH]$.)*

Par conséquent

$$16\,HN^2 = 16 \times \frac{AM^2}{4} = 4\,AM^2 .$$

**La longueur de la médiane.** Le théorème de la médiane appliqué à la médiane $[AM]$ du
triangle $ABC$ donne

$$AB^2 + AC^2 = 2\,AM^2 + \frac{BC^2}{2} .$$

En multipliant par $2$ puis en isolant $AM^2$ :

$$2AB^2 + 2AC^2 = 4\,AM^2 + BC^2, \qquad \text{donc} \qquad 4\,AM^2 = 2AB^2 + 2AC^2 - BC^2 .$$

**On conclut.** En rapprochant les deux résultats :

$$16\,HN^2 = 4\,AM^2 = 2AB^2 + 2AC^2 - BC^2 .$$

**L'égalité demandée est démontrée.**

## Going further

Un contrôle sur un exemple concret. Prenons pour $A$, $B$, $C$ les points de coordonnées
$(0, 0)$, $(16, 0)$ et $(4, 12)$. Alors

$$AB^2 = 256, \qquad AC^2 = 4^2 + 12^2 = 160, \qquad BC^2 = 12^2 + 12^2 = 288,$$

donc le membre de droite vaut $2 \times 256 + 2 \times 160 - 288 = 544$.

De l'autre côté, $M$ est le milieu de $[BC]$, donc $M = (10, 6)$, et $N$ le milieu de $[AM]$,
donc $N = (5, 3)$. Le pied de la hauteur issue de $A$ est $H = (8, 8)$ : on vérifie bien que
le vecteur $\overrightarrow{AH} = (8, 8)$ est orthogonal à $\overrightarrow{BC} = (-12, 12)$,
car $8 \times (-12) + 8 \times 12 = 0$. On calcule alors

$$HN^2 = (8-5)^2 + (8-3)^2 = 9 + 25 = 34,$$

d'où $16\,HN^2 = 544$. Les deux côtés s'accordent.

**Une remarque sur la source.** Le polycopié de Valbonne 2017 pose cette question sous la
forme : « trouver les entiers $x$, $y$, $z$ tels que $16HN^2 = xBC^2 + yCA^2 + zAB^2$, puis
calculer $x^2 + y^2 + z^2$ ». Sa solution écrit l'identité sous la forme
$16HN^2 = -AC^2 + 2(AB^2 + BC^2)$, ce qui est faux : les rôles de $AC$ et de $BC$ y sont
intervertis. Le nombre demandé, $x^2 + y^2 + z^2 = 2^2 + 2^2 + (-1)^2 = 9$, est malgré tout
correct, puisqu'il ne dépend pas de l'ordre des trois coefficients.
