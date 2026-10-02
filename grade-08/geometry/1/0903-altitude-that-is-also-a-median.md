---
id: "0903"
title: "Une hauteur qui est aussi une médiane"
grade: 8
theme: geometry
difficulty: 1
duration_min: 10
tags: [triangle-isocele, mediatrice, cas-d-egalite, hauteur]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Géométrie »"
  reference: "Geometry.pdf, P 28, d'après M. Aassila, « Objectif Olympiades de Mathématiques — Géométrie 1 »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Geometry.pdf"
---

## Statement

$ABC$ est un triangle et $D$ est un point du côté $[BC]$. On suppose que

$$(AD) \perp (BC) \qquad \text{et} \qquad BD = DC.$$

Montrer que $AB = AC$.

## Hints

1. Le segment $[AD]$ coupe le triangle en deux triangles. Compare-les.
2. Les triangles $ABD$ et $ACD$ ont un côté commun. Que sais-tu de leurs autres côtés et de
   leurs angles en $D$ ?
3. Autre chemin, plus court : que dit l'hypothèse sur la droite $(AD)$ et le segment $[BC]$ ?

## Solution

**Première façon : deux triangles superposables.**

Comparons les triangles $ABD$ et $ACD$ :

- $BD = DC$, c'est l'hypothèse ;
- le côté $[AD]$ est commun aux deux triangles ;
- $\widehat{ADB} = \widehat{ADC} = 90^\circ$, car $(AD) \perp (BC)$.

Les deux triangles ont donc deux côtés égaux deux à deux et l'angle compris entre ces côtés
égal. Ils sont superposables, et par conséquent $AB = AC$.

**Deuxième façon : la médiatrice.**

La droite $(AD)$ passe par le milieu de $[BC]$ et lui est perpendiculaire : c'est la
médiatrice de $[BC]$. Or tout point de la médiatrice d'un segment est à égale distance des
deux extrémités de ce segment. Le point $A$ est sur cette médiatrice, donc $AB = AC$.

**Conclusion.** Dans les deux cas, le triangle $ABC$ est isocèle en $A$.

## Going further

Reprendre l'exercice en remplaçant l'hypothèse $(AD) \perp (BC)$ par « $(AD)$ est la
bissectrice de l'angle $\widehat{BAC}$ ». La conclusion $AB = AC$ tient-elle encore ? C'est
nettement moins facile.
