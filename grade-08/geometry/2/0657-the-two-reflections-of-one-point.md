---
id: "0657"
title: "Les deux symétriques d'un même point"
grade: 8
theme: geometry
difficulty: 2
duration_min: 20
tags: [symetrie-axiale, triangle-isocele, angles]
adapted_from: null
see_also: ["1221"]
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Angles et droites du triangle »"
  reference: "Angles.2.pdf, 6 octobre 2023, problème 15"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Angles.2.pdf"
---

## Statement

L'angle $\widehat{xOy}$ a l'amplitude de $50°$. Soit $P$ un point à l'intérieur de cet angle, et $A$, $B$ les symétriques de $P$ par rapport à $(Ox)$ et $(Oy)$. Démontrez que :

- $OAB$ est un triangle isocèle, et
- calculez l'amplitude de $\widehat{AOB}$.

![L'angle xOy, le point P et ses deux symétriques A et B](0657-figure-1.svg)

## Hints

1. La symétrie axiale conserve les longueurs. Que devient la longueur $OP$ quand on replie la figure le long de $(Ox)$ ?
2. Compare $OA$, $OP$ et $OB$. Cela règle la première question.
3. Pour l'angle : pose $a = \widehat{xOP}$ et $b = \widehat{POy}$, avec $a + b = 50°$. Que vaut $\widehat{AOx}$ ? Et $\widehat{yOB}$ ?

## Solution

**Le triangle $OAB$ est isocèle.**

Le point $O$ appartient à la droite $(Ox)$, donc il est son propre symétrique par rapport à $(Ox)$. La symétrie axiale conserve les longueurs, et elle envoie $P$ sur $A$ : donc

$$OA = OP.$$

De la même façon, $O$ appartient à $(Oy)$ et la symétrie par rapport à $(Oy)$ envoie $P$ sur $B$, donc $OB = OP$.

On en déduit $OA = OB$ : le triangle $OAB$ est isocèle de sommet principal $O$.

**L'angle $\widehat{AOB}$.**

Posons $a = \widehat{xOP}$ et $b = \widehat{POy}$. Comme $P$ est à l'intérieur de l'angle, ces deux angles se recollent en $\widehat{xOy}$ :

$$a + b = 50°.$$

La symétrie par rapport à $(Ox)$ conserve les angles, et elle envoie la demi-droite $[OP)$ sur $[OA)$ en laissant $[Ox)$ en place. Donc $\widehat{xOA} = \widehat{xOP} = a$, et $A$ se trouve de l'autre côté de $(Ox)$ que $P$. Par conséquent

$$\widehat{AOP} = \widehat{AOx} + \widehat{xOP} = 2a.$$

De la même façon, $\widehat{POB} = 2b$.

Enfin, $A$ et $B$ sont de part et d'autre de la demi-droite $[OP)$, donc les deux angles précédents se recollent :

$$\widehat{AOB} = \widehat{AOP} + \widehat{POB} = 2a + 2b = 2(a+b) = 2 \times 50° = 100°.$$

**Le triangle $OAB$ est isocèle en $O$ et $\widehat{AOB} = 100°$.**

Remarquons que la réponse ne dépend pas de la position de $P$ à l'intérieur de l'angle : l'angle $\widehat{AOB}$ vaut toujours le double de $\widehat{xOy}$.
