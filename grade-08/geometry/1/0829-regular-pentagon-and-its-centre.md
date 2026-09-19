---
id: "0829"
title: "Le pentagone régulier et son centre"
grade: 8
theme: geometry
difficulty: 1
duration_min: 10
tags: [pentagone, angles, cercle]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Triangles semblables », 11 avril 2024"
  reference: "Geometrie.pdf, problème 39, d'après les stages Animath 2015, éliminatoires"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Geometrie.pdf"
---

## Statement

$ABCDE$ est un pentagone régulier : ses cinq côtés ont la même longueur et ses cinq angles la même mesure. Ses cinq sommets sont sur un cercle de centre $O$.

![Le pentagone régulier ABCDE inscrit dans un cercle de centre O, avec les deux rayons [OA] et [OB]](0829-figure-1.svg)

Déterminer, en degrés, la mesure de l'angle $\widehat{OAB}$.

## Hints

1. Trace les cinq segments $[OA]$, $[OB]$, $[OC]$, $[OD]$, $[OE]$. Ils découpent le disque en cinq parts identiques. Que vaut l'angle $\widehat{AOB}$ ?
2. Que peut-on dire du triangle $OAB$, sachant que $OA$ et $OB$ sont deux rayons du même cercle ?
3. Dans un triangle isocèle, les deux angles à la base sont égaux, et la somme des trois angles d'un triangle vaut $180°$.

## Solution

**L'angle au centre.** Les cinq côtés du pentagone ont la même longueur, donc les cinq triangles $OAB$, $OBC$, $OCD$, $ODE$, $OEA$ sont superposables et les cinq angles au centre

$$\widehat{AOB}, \quad \widehat{BOC}, \quad \widehat{COD}, \quad \widehat{DOE}, \quad \widehat{EOA}$$

sont égaux. Ensemble, ils font un tour complet, soit $360°$. Chacun vaut donc

$$\widehat{AOB} = \frac{360°}{5} = 72°.$$

**Le triangle $OAB$.** Les longueurs $OA$ et $OB$ sont deux rayons du cercle, donc $OA = OB$ : le triangle $OAB$ est isocèle en $O$. Ses deux angles à la base, $\widehat{OAB}$ et $\widehat{OBA}$, sont donc égaux, et leur somme vaut

$$180° - 72° = 108°.$$

Chacun vaut la moitié :

$$\widehat{OAB} = \frac{108°}{2} = 54°.$$

**Réponse : $\widehat{OAB} = 54°$.**

*Vérification.* L'angle du pentagone au sommet $A$ est $\widehat{EAB} = \widehat{EAO} + \widehat{OAB} = 54° + 54° = 108°$. C'est bien la mesure d'un angle d'un pentagone régulier, puisque la somme des angles d'un pentagone vaut $(5-2) \times 180° = 540°$ et que $540° : 5 = 108°$.

## Going further

1. Même question pour un hexagone régulier, puis pour un carré.
2. Pour un polygone régulier à $n$ côtés inscrit dans un cercle de centre $O$, montrer que l'angle entre un rayon et un côté vaut $90° - \dfrac{180°}{n}$.
