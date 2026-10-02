---
id: "7207"
title: "L'hexagone et le triangle de même périmètre"
grade: 9
theme: geometry
difficulty: 2
duration_min: 15
tags: [aire, hexagone, triangle-equilateral, rapport]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Première journée », exercices d'échauffement, exercice 12"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

Un hexagone régulier et un triangle équilatéral ont le même périmètre.

Quel est le rapport de leurs aires ?

## Hints

1. Si le triangle a pour côté $a$, combien mesure le côté de l'hexagone ?
2. Un hexagone régulier se découpe, à partir de son centre, en six triangles tous identiques.
   Quelle est la forme de ces triangles ?
3. Quand on multiplie toutes les longueurs d'une figure par $k$, par combien son aire est-elle
   multipliée ?

## Solution

**Les côtés.**

Notons $a$ le côté du triangle équilatéral. Son périmètre vaut $3a$.

L'hexagone régulier a six côtés de même longueur $c$, donc son périmètre vaut $6c$. Les deux
périmètres sont égaux :
$$6c = 3a, \qquad \text{donc} \qquad c = \frac{a}{2} .$$

**Découper l'hexagone.**

Relions le centre de l'hexagone régulier à ses six sommets. On obtient six triangles identiques.
Chacun a deux côtés égaux (deux rayons) et un angle au centre de $360^\circ / 6 = 60^\circ$ :
c'est donc un triangle isocèle avec un angle de $60^\circ$, autrement dit un **triangle
équilatéral**, de côté $c = \frac{a}{2}$.

**Comparer les aires.**

Chacun de ces six petits triangles équilatéraux a un côté deux fois plus court que celui du grand
triangle. Quand on divise toutes les longueurs par $2$, l'aire est divisée par $2^2 = 4$. L'aire
d'un petit triangle vaut donc $\frac{1}{4}$ de celle du grand triangle. Notons $S$ l'aire du
triangle équilatéral de côté $a$. L'hexagone est fait de six petits triangles, donc son aire vaut
$$6 \times \frac{S}{4} = \frac{3S}{2} .$$

**Le rapport de l'aire de l'hexagone à celle du triangle vaut $\dfrac{3}{2}$ : l'hexagone est une
fois et demie plus grand.**

## Going further

À périmètre égal, plus un polygone régulier a de côtés, plus son aire est grande. Le triangle est
le moins efficace, puis viennent le carré, le pentagone, l'hexagone, et ainsi de suite ; le
disque, qui est en quelque sorte le polygone régulier à une infinité de côtés, est le champion
toutes catégories.
