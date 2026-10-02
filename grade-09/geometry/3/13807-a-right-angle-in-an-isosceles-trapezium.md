---
id: "13807"
title: "Un angle droit dans un trapèze isocèle"
grade: 9
theme: geometry
difficulty: 3
duration_min: 20
tags: [trapeze, triangle-rectangle, milieu, droite-des-milieux, cercle]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2018, éliminatoires"
  reference: "2018-05_coupe_printemps_2018_elim_college.pdf, questionnaire collégiens, exercice 7 ; réponse dans 2018-06_coupe_printemps_2018_elim_college_corrige.pdf (tableau des réponses, sans solution rédigée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/05/coupe_printemps_2018_elim_college.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2018-05_coupe_printemps_2018_elim_college.pdf"
---

## Statement

Soit $ABCD$ un trapèze isocèle : les droites $(AB)$ et $(CD)$ sont parallèles, et
$AD = BC$. Soit $M$ le milieu du côté $[AD]$.

On suppose que $AM = 1$ et que le triangle $BMC$ est rectangle en $M$.

Quel est le périmètre du trapèze $ABCD$ ?

## Hints

1. Les côtés $[AD]$ et $[BC]$ sont faciles à trouver. Il reste à trouver $AB + CD$, pas
   forcément $AB$ et $CD$ séparément.
2. Appelle $N$ le milieu de $[BC]$. Dans le triangle $BMC$ rectangle en $M$, que vaut la
   longueur $MN$ ?
3. Pour relier $MN$ à $AB$ et $CD$, appelle $P$ le milieu de la diagonale $[AC]$ et utilise
   le théorème des milieux dans les triangles $ACD$ et $CAB$.

## Solution

**Les côtés obliques.** Comme $M$ est le milieu de $[AD]$, on a $AD = 2 \times AM = 2$, et
$BC = AD = 2$.

**La longueur $MN$.** Soit $N$ le milieu de $[BC]$. Le triangle $BMC$ est rectangle en $M$,
donc $M$ est sur le cercle de diamètre $[BC]$, dont le centre est $N$. Ainsi

$$MN = NB = NC = \frac{BC}{2} = 1.$$

**La longueur $MN$ à partir des bases.** Soit $P$ le milieu de la diagonale $[AC]$.

- Dans le triangle $ACD$, la droite $(MP)$ joint les milieux des côtés $[AD]$ et $[AC]$.
  D'après le théorème des milieux, elle est parallèle à $(CD)$ et $MP = \dfrac{CD}{2}$.
- Dans le triangle $CAB$, la droite $(PN)$ joint les milieux des côtés $[CA]$ et $[CB]$. Elle
  est parallèle à $(AB)$ et $PN = \dfrac{AB}{2}$.

Les droites $(AB)$ et $(CD)$ sont parallèles, donc $(MP)$ et $(PN)$ sont parallèles et ont le
point $P$ en commun : elles sont confondues, et $M$, $P$, $N$ sont alignés. De plus $P$, qui
est sur la diagonale $[AC]$, est à l'intérieur du trapèze, donc entre $M$ et $N$. Par
conséquent

$$MN = MP + PN = \frac{CD}{2} + \frac{AB}{2} = \frac{AB + CD}{2}.$$

**Conclusion.** En comparant les deux calculs de $MN$, on obtient $\dfrac{AB + CD}{2} = 1$,
donc $AB + CD = 2$. Le périmètre vaut

$$AB + BC + CD + DA = (AB + CD) + BC + DA = 2 + 2 + 2 = 6.$$

Un tel trapèze existe bien : par exemple, avec des bases $AB = \tfrac{1}{2}$ et
$CD = \tfrac{3}{2}$ et des côtés obliques de longueur $2$, on a $MN = 1 = \tfrac{BC}{2}$,
donc $M$ est sur le cercle de diamètre $[BC]$ et l'angle en $M$ est droit.

**Le périmètre du trapèze vaut $6$.**
