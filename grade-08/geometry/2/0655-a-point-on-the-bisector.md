---
id: "0655"
title: "Un point sur la bissectrice"
grade: 8
theme: geometry
difficulty: 2
duration_min: 15
tags: [bissectrice, distance, triangles-egaux, angles]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Angles et droites du triangle »"
  reference: "Angles.2.pdf, 6 octobre 2023, problème 3"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Angles.2.pdf"
---

## Statement

Soit l'angle $\widehat{xOy}$ et soit $P$ un point de sa bissectrice intérieure. Démontrez que $P$ se situe à la même distance des deux côtés de l'angle.

*(Rappel : la distance d'un point à une droite est la longueur du segment perpendiculaire qui joint le point à la droite.)*

![L'angle xOy, sa bissectrice, le point P et ses deux distances aux côtés](0655-figure-1.svg)

## Hints

1. Appelle $M$ le pied de la perpendiculaire menée de $P$ à $[Ox)$, et $N$ le pied de la perpendiculaire menée de $P$ à $[Oy)$. Ce qu'il faut démontrer, c'est $PM = PN$.
2. Regarde les deux triangles $OMP$ et $ONP$. Que sais-tu de leurs angles ? Quel côté ont-ils en commun ?
3. Les deux triangles ont un côté égal, $[OP)$, placé entre deux angles égaux deux à deux : c'est le cas d'égalité $ACA$.

## Solution

Notons $M$ le pied de la perpendiculaire menée de $P$ à la demi-droite $[Ox)$, et $N$ le pied de la perpendiculaire menée de $P$ à la demi-droite $[Oy)$. Les distances de $P$ aux deux côtés de l'angle sont exactement $PM$ et $PN$, et il s'agit de démontrer que $PM = PN$.

Comparons les triangles $OMP$ et $ONP$ :

- $\widehat{MOP} = \widehat{NOP}$, car $[OP)$ est la bissectrice de $\widehat{xOy}$ : elle partage cet angle en deux angles égaux ;
- $\widehat{OMP} = \widehat{ONP} = 90°$, par construction des deux perpendiculaires ;
- le côté $[OP]$ est commun aux deux triangles.

Dans chaque triangle, le côté $[OP]$ est le côté situé entre les deux angles que nous venons de comparer. Les deux triangles ont donc un côté de même longueur compris entre deux angles égaux deux à deux : d'après le troisième cas d'égalité des triangles ($ACA$), les triangles $OMP$ et $ONP$ sont égaux.

Les éléments qui se correspondent ont donc la même longueur, en particulier

$$PM = PN.$$

**Un point de la bissectrice d'un angle est donc bien à la même distance des deux côtés de cet angle.**

## Going further

La réciproque est vraie aussi : un point intérieur à l'angle qui est à la même distance des deux côtés se trouve forcément sur la bissectrice. La bissectrice est donc exactement l'ensemble des points intérieurs à l'angle qui sont à égale distance de ses deux côtés.
