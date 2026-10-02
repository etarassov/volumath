---
id: "0902"
title: "Deux hauteurs et deux angles égaux"
grade: 8
theme: geometry
difficulty: 1
duration_min: 10
tags: [triangle, hauteur, somme-des-angles]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Géométrie »"
  reference: "Geometry.pdf, P 3, d'après M. Aassila, « Objectif Olympiades de Mathématiques — Géométrie 1 »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Geometry.pdf"
---

## Statement

$ABC$ est un triangle dont les trois angles sont aigus. La hauteur issue de $B$ coupe le côté
$[AC]$ en $D$, et la hauteur issue de $C$ coupe le côté $[AB]$ en $E$.

![Le triangle ABC avec la hauteur BD et la hauteur CE](0902-figure-1.svg)

Montrer que $\widehat{ABD} = \widehat{ACE}$.

## Hints

1. Combien y a-t-il d'angles droits sur la figure ? Où sont-ils ?
2. Regarde le triangle $ABD$ : il est rectangle en $D$. Que vaut la somme de ses deux angles aigus ?
3. Fais la même chose avec le triangle $ACE$. Les deux calculs font apparaître le même angle.

## Solution

**L'idée : les deux angles se calculent tous les deux à partir de l'angle $\widehat{BAC}$.**

Posons $\alpha = \widehat{BAC}$.

**Le triangle $ABD$.** La hauteur issue de $B$ est perpendiculaire à $(AC)$, donc le triangle
$ABD$ est rectangle en $D$. Ses deux angles aigus sont complémentaires :

$$\widehat{ABD} = 90^\circ - \widehat{BAD}.$$

Le point $D$ est sur le côté $[AC]$, donc l'angle $\widehat{BAD}$ est l'angle $\widehat{BAC}$
lui-même. Ainsi $\widehat{ABD} = 90^\circ - \alpha$.

**Le triangle $ACE$.** De la même façon, la hauteur issue de $C$ est perpendiculaire à $(AB)$,
donc le triangle $ACE$ est rectangle en $E$ et

$$\widehat{ACE} = 90^\circ - \widehat{CAE}.$$

Le point $E$ est sur le côté $[AB]$, donc $\widehat{CAE} = \widehat{BAC} = \alpha$, et
$\widehat{ACE} = 90^\circ - \alpha$.

**Conclusion.** Les deux angles valent tous les deux $90^\circ - \alpha$, donc

$$\widehat{ABD} = \widehat{ACE}.$$

## Going further

Les deux hauteurs se coupent en un point $H$. Exprimer l'angle $\widehat{BHC}$ en fonction de
$\alpha$.
