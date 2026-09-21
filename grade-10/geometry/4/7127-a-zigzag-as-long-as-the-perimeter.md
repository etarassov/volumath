---
id: "7127"
title: "Une ligne brisée aussi longue que le périmètre"
grade: 10
theme: geometry
difficulty: 4
duration_min: 35
tags: [mediane, triangle rectangle, hauteurs, milieux, demonstration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Avancés : géométrie », jeudi après-midi (David Zmiaikou), exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus. On trace :

- les trois hauteurs, dont les pieds sont $A_1$ sur $[BC]$, $B_1$ sur $[CA]$ et $C_1$ sur
  $[AB]$ ;
- les milieux $A_2$ de $[BC]$, $B_2$ de $[CA]$ et $C_2$ de $[AB]$.

On parcourt ensuite la ligne brisée fermée

$$A_1 \to B_2 \to C_1 \to A_2 \to B_1 \to C_2 \to A_1 .$$

Montrer que sa longueur totale est égale au périmètre du triangle $ABC$.

## Hints

1. Fais une grande figure. La ligne brisée compte six segments ; mesure-les et compare-les
   aux côtés du triangle. Une régularité doit sauter aux yeux.
2. Rappelle-toi une propriété du triangle rectangle : dans un triangle rectangle, la médiane
   issue de l'angle droit mesure la moitié de l'hypoténuse. (Pense au cercle circonscrit.)
3. Regarde le segment $[C_2 A_1]$. Dans quel triangle rectangle se trouve-t-il ? Quel est son
   angle droit, et quelle est son hypoténuse ?
4. Recommence pour les cinq autres segments, puis additionne.

## Solution

**L'outil.** Dans un triangle rectangle, la médiane issue du sommet de l'angle droit mesure
la moitié de l'hypoténuse. C'est une autre façon de dire que le milieu de l'hypoténuse est le
centre du cercle circonscrit, donc à égale distance des trois sommets.

Notons $a = BC$, $b = CA$ et $c = AB$.

**Les six segments, un par un.**

- La hauteur issue de $A$ donne $\widehat{AA_1B} = 90^\circ$. Le triangle $ABA_1$ est donc
  rectangle en $A_1$, d'hypoténuse $[AB]$, dont $C_2$ est le milieu. D'où
  $$C_2A_1 = \frac{c}{2} .$$
- La hauteur issue de $B$ donne $\widehat{AB_1B} = 90^\circ$. Le triangle $ABB_1$ est
  rectangle en $B_1$, d'hypoténuse $[AB]$, de milieu $C_2$. D'où
  $$C_2B_1 = \frac{c}{2} .$$
- Le triangle $BCB_1$ est rectangle en $B_1$, d'hypoténuse $[BC]$, de milieu $A_2$. D'où
  $$A_2B_1 = \frac{a}{2} .$$
- Le triangle $BCC_1$ est rectangle en $C_1$, d'hypoténuse $[BC]$, de milieu $A_2$. D'où
  $$A_2C_1 = \frac{a}{2} .$$
- Le triangle $ACC_1$ est rectangle en $C_1$, d'hypoténuse $[CA]$, de milieu $B_2$. D'où
  $$B_2C_1 = \frac{b}{2} .$$
- Le triangle $ACA_1$ est rectangle en $A_1$, d'hypoténuse $[CA]$, de milieu $B_2$. D'où
  $$B_2A_1 = \frac{b}{2} .$$

**On additionne.** La ligne brisée $A_1B_2C_1A_2B_1C_2A_1$ est faite exactement de ces six
segments :

$$A_1B_2 + B_2C_1 + C_1A_2 + A_2B_1 + B_1C_2 + C_2A_1
= \frac{b}{2} + \frac{b}{2} + \frac{a}{2} + \frac{a}{2} + \frac{c}{2} + \frac{c}{2} .$$

C'est-à-dire

$$a + b + c .$$

**Conclusion.** La longueur de la ligne brisée est exactement le périmètre du triangle
$ABC$.

## Going further

Ce qui rend le calcul si simple, c'est que chacun des six segments joint un **pied de
hauteur** au **milieu d'un côté qui ne le contient pas**, et que ces deux points sont
toujours sur un même cercle : le cercle de diamètre le côté en question.

Il y a mieux. Les neuf points $A_1$, $B_1$, $C_1$, $A_2$, $B_2$, $C_2$, ainsi que les milieux
des segments joignant l'orthocentre aux trois sommets, sont tous sur un même cercle, appelé
le **cercle d'Euler** ou cercle des neuf points. Son rayon vaut la moitié de celui du cercle
circonscrit à $ABC$.
