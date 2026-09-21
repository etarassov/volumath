---
id: "7208"
title: "MA plus petit que MB + MC + MD"
grade: 9
theme: geometry
difficulty: 3
duration_min: 20
tags: [inegalite triangulaire, quadrilatere, diagonales]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Première journée », exercices d'échauffement, exercice 13. L'énoncé d'origine dit seulement « un quadrilatère ABCD » ; sans l'hypothèse de convexité l'inégalité stricte est fausse. Contre-exemple : A(0;0), B(2;0,5), C(1;0), D(2;-0,5), qui est un quadrilatère non croisé avec AC = BD = 1, et M(2;0), pour lequel MA = MB + MC + MD = 2."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

$ABCD$ est un quadrilatère **convexe** dont les deux diagonales ont la même longueur :
$$AC = BD .$$

Soit $M$ un point quelconque du plan. Montrer que
$$MA < MB + MC + MD .$$

## Hints

1. L'inégalité triangulaire dit que dans un triangle $XYZ$, on a $XZ \leqslant XY + YZ$, et que
   l'égalité a lieu exactement quand $Y$ appartient au segment $[XZ]$.
2. Applique-la d'abord au triangle $MAC$ : il apparaît la longueur $AC$.
3. Or $AC$ vaut $BD$. Applique de nouveau l'inégalité triangulaire, cette fois dans le triangle
   $MBD$, pour couper $BD$ en deux morceaux.
4. Pour la stricte inégalité : les deux égalités devraient avoir lieu en même temps. Où cela
   placerait-il $M$ ?

## Solution

**Première inégalité triangulaire.** Dans le triangle $MAC$,
$$MA \leqslant MC + CA ,$$
avec égalité exactement lorsque $C$ appartient au segment $[MA]$.

**On remplace $CA$ par $BD$.** Par hypothèse $CA = BD$, donc
$$MA \leqslant MC + BD .$$

**Deuxième inégalité triangulaire.** Dans le triangle $MBD$,
$$BD \leqslant BM + MD ,$$
avec égalité exactement lorsque $M$ appartient au segment $[BD]$.

En reportant :
$$MA \leqslant MC + BM + MD = MB + MC + MD .$$

**L'inégalité est stricte.**

Pour qu'il y ait égalité dans le résultat final, il faudrait qu'il y ait égalité dans les deux
inégalités triangulaires à la fois, c'est-à-dire :

- $C$ appartient au segment $[MA]$ ;
- $M$ appartient au segment $[BD]$.

La première condition oblige $M$, $C$ et $A$ à être alignés : le point $M$ est donc sur la droite
$(AC)$.

Comme le quadrilatère est convexe, la diagonale $[AC]$ sépare $B$ et $D$ : ces deux points sont
de part et d'autre de la droite $(AC)$. Le segment $[BD]$ traverse donc la droite $(AC)$ en un
seul point, à savoir le point $P$ d'intersection des deux diagonales. La deuxième condition
donne alors $M = P$.

Mais $P$ est, toujours par convexité, situé **entre** $A$ et $C$ sur la diagonale $[AC]$. Le
point $C$ n'est donc pas entre $P$ et $A$ : la première condition n'est pas satisfaite.

Les deux égalités ne peuvent pas avoir lieu en même temps, donc au moins l'une des deux
inégalités est stricte :
$$\boxed{MA < MB + MC + MD} .$$

## Going further

L'hypothèse de convexité est indispensable. Prenons $A(0\,;0)$, $B(2\,;\text{0,5})$, $C(1\,;0)$ et
$D(2\,;-\text{0,5})$ : ce quadrilatère n'est pas croisé, ses diagonales mesurent toutes les deux
$1$, et pourtant le point $M(2\,;0)$ donne
$$MA = 2 \qquad \text{et} \qquad MB + MC + MD = \text{0,5} + 1 + \text{0,5} = 2 .$$
Il y a égalité. Le quadrilatère n'est pas convexe : le sommet $C$ est à l'intérieur du triangle
$ABD$.
