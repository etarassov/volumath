---
id: "0652"
title: "Le segment qui joint les pieds de deux médianes"
grade: 8
theme: geometry
difficulty: 1
duration_min: 10
tags: [mediane, milieu, theoreme-des-milieux, triangle]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Angles et droites du triangle »"
  reference: "Angles.2.pdf, 6 octobre 2023, problème 6"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Angles.2.pdf"
---

## Statement

Dans le triangle $ABC$ nous construisons les médianes $[AM]$ et $[BN]$. Démontrez que

$$MN = \frac{AB}{2}.$$

## Hints

1. Une médiane joint un sommet au milieu du côté opposé. De quels côtés $M$ et $N$ sont-ils les milieux ?
2. Le segment $[MN]$ joint les milieux de deux côtés du triangle $ABC$. Quel théorème du cours parle exactement de cette situation ?

## Solution

La médiane $[AM]$ part de $A$, donc $M$ est le milieu du côté opposé $[BC]$.
La médiane $[BN]$ part de $B$, donc $N$ est le milieu du côté opposé $[AC]$.

Le segment $[MN]$ joint donc les milieux des côtés $[BC]$ et $[AC]$ du triangle $ABC$. D'après le théorème des milieux, un tel segment est parallèle au troisième côté et mesure la moitié de sa longueur. Ici le troisième côté est $[AB]$, d'où

$$MN = \frac{AB}{2}.$$

**Le segment qui joint les pieds des deux médianes mesure bien la moitié de $AB$** (et il est de plus parallèle à $(AB)$).
