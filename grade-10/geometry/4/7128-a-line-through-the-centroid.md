---
id: "7128"
title: "Une droite qui passe par le centre de gravité"
grade: 10
theme: geometry
difficulty: 4
duration_min: 35
tags: [centre-de-gravite, mediane, thales, distance, trapeze]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Avancés : géométrie », jeudi après-midi (David Zmiaikou), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

Soit $ABC$ un triangle et $G$ son centre de gravité, c'est-à-dire le point d'intersection de
ses trois médianes.

On trace une droite $d$ passant par $G$, et on suppose qu'elle laisse $A$ et $B$ d'un côté et
$C$ de l'autre.

On appelle $X$, $Z$ et $Y$ les pieds des perpendiculaires à $d$ issues respectivement de
$A$, de $B$ et de $C$.

Montrer que

$$CY = AX + BZ .$$

## Hints

1. Fais la figure. Les segments $[AX]$, $[BZ]$ et $[CY]$ sont tous perpendiculaires à $d$,
   donc parallèles entre eux.
2. Introduis le milieu $M$ de $[AB]$ et le pied $N$ de la perpendiculaire à $d$ issue de $M$.
   Que peux-tu dire de $N$ dans le trapèze $AXZB$ ?
3. Où se trouve $G$ par rapport à $C$ et $M$ ? Rappelle-toi la propriété du centre de
   gravité sur une médiane.
4. Applique le théorème de Thalès dans la configuration formée par $C$, $G$, $M$ et leurs
   projections sur $d$.

## Solution

**Un premier point.** Appelons $M$ le milieu de $[AB]$, et $N$ le pied de la perpendiculaire
à $d$ issue de $M$.

Les droites $(AX)$, $(MN)$ et $(BZ)$ sont toutes perpendiculaires à $d$, donc parallèles
entre elles. Comme $A$ et $B$ sont du même côté de $d$, le quadrilatère $AXZB$ est un trapèze
de bases $[AX]$ et $[BZ]$, et $(MN)$ est sa **droite des milieux** : elle passe par le milieu
$M$ de $[AB]$ et coupe donc $[XZ]$ en son milieu.

La longueur d'une droite des milieux d'un trapèze est la demi-somme des deux bases :

$$MN = \frac{AX + BZ}{2} . \qquad (1)$$

**Le centre de gravité.** La droite $(CM)$ est la médiane issue de $C$, et le centre de
gravité $G$ est dessus, avec

$$CG = 2\,GM . \qquad (2)$$

Comme $G$ est sur le segment $[CM]$ et sur la droite $d$, les points $C$ et $M$ sont de part
et d'autre de $d$ : cela colle avec l'hypothèse, $C$ d'un côté et $A$, $B$ — donc aussi leur
milieu $M$ — de l'autre.

**Thalès.** Les droites $(CY)$ et $(MN)$ sont toutes deux perpendiculaires à $d$, donc
parallèles. Dans la configuration formée par les droites $(CM)$ et $d$ qui se coupent en $G$,
le théorème de Thalès donne

$$\frac{CY}{MN} = \frac{CG}{GM} = 2 ,$$

d'après $(2)$. Donc

$$CY = 2\,MN .$$

**On conclut.** En remplaçant $MN$ par sa valeur $(1)$ :

$$CY = 2 \times \frac{AX + BZ}{2} = AX + BZ .$$

**C'est exactement ce qu'il fallait démontrer.**

## Going further

L'hypothèse « $A$ et $B$ d'un côté, $C$ de l'autre » n'est pas une restriction cachée. Une
droite qui passe par $G$ traverse toujours le triangle, donc elle ne peut pas laisser les
trois sommets du même côté. Si aucun sommet n'est sur $d$, il y a donc forcément un sommet
seul d'un côté et deux de l'autre, et le résultat s'énonce ainsi : **la distance du sommet
isolé est la somme des distances des deux autres.** On a traité le cas où le sommet isolé est
$C$ ; les deux autres cas se traitent de la même façon en changeant les noms.

Voici la bonne façon de retenir tout cela. Comptons les distances à $d$ **avec un signe**,
positif d'un côté et négatif de l'autre. Alors, quelle que soit la droite $d$ passant par
$G$,

$$\overline{AX} + \overline{BZ} + \overline{CY} = 0 ,$$

ce qui est une manière de dire que $G$ est la « moyenne » des trois sommets. L'énoncé
ci-dessus n'est que la lecture de cette égalité quand $C$ est seul de son côté.
