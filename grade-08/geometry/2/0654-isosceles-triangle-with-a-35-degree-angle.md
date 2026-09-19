---
id: "0654"
title: "Un triangle isocèle avec un angle de 35 degrés"
grade: 8
theme: geometry
difficulty: 2
duration_min: 15
tags: [triangle-isocele, somme-des-angles, disjonction-de-cas, angles]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Angles et droites du triangle »"
  reference: "Angles.2.pdf, 6 octobre 2023, problème 2"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Angles.2.pdf"
---

## Statement

Soit le triangle $ABC$. Si le triangle est isocèle et $\widehat{ABC} = 35°$, quelle est la valeur de $\widehat{BCA}$ ?

L'énoncé ne dit pas quels côtés sont égaux : donne **toutes** les valeurs possibles.

## Hints

1. Un triangle isocèle a deux côtés de même longueur, mais lesquels ? Il y a trois possibilités : $AB = AC$, ou $BA = BC$, ou $CA = CB$.
2. Traite les trois cas l'un après l'autre. Dans chacun, les angles à la base sont égaux et la somme des trois angles vaut $180°$.
3. Vérifie à chaque fois que l'angle de $35°$ est bien celui du sommet $B$.

## Solution

Un triangle isocèle a deux côtés égaux, et l'énoncé ne précise pas lesquels. Il faut donc examiner les trois cas.

**Cas 1 : $AB = AC$.** Le triangle est isocèle de sommet principal $A$, donc les angles à la base $[BC]$ sont égaux :

$$\widehat{BCA} = \widehat{ABC} = 35°.$$

**Cas 2 : $BA = BC$.** Le triangle est isocèle de sommet principal $B$, donc les deux autres angles sont égaux :

$$\widehat{BAC} = \widehat{BCA} = \frac{180° - 35°}{2} = \frac{145°}{2} = \text{72,5°.}$$

**Cas 3 : $CA = CB$.** Le triangle est isocèle de sommet principal $C$, donc $\widehat{CAB} = \widehat{CBA} = 35°$, et il reste

$$\widehat{BCA} = 180° - 35° - 35° = 110°.$$

Les trois cas donnent bien un vrai triangle (les trois angles sont strictement positifs à chaque fois).

**L'angle $\widehat{BCA}$ peut donc mesurer $35°$, ou $\text{72,5°}$, ou $110°$.**

## Going further

L'énoncé n'avait qu'une seule réponse en tête, mais il en a trois. C'est un réflexe utile : quand on dit « le triangle est isocèle » sans dire en quel sommet, il faut toujours ouvrir les trois cas.
