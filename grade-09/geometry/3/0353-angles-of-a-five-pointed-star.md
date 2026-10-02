---
id: "0353"
title: "Les cinq pointes d'une étoile"
grade: 9
theme: geometry
difficulty: 3
duration_min: 30
tags: [somme-des-angles, angle-exterieur, etoile, chasse-aux-angles]
adapted_from: null
see_also: ["13009"]
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 8–9 класс, второе полугодие, часть II, пособие для преподавателей"
  reference: "AU2.pdf, листок 1, задача 6"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

On place cinq points $A$, $B$, $C$, $D$, $E$ dans le plan, de telle sorte que trois d'entre eux ne soient jamais alignés. On trace les cinq segments

$$[AC], \quad [CE], \quad [EB], \quad [BD], \quad [DA].$$

On obtient une étoile à cinq branches.

![L'étoile à cinq branches](0353-figure-1.svg)

Montrer que la somme des cinq angles situés aux pointes de l'étoile vaut $180^\circ$ :

$$\widehat{A} + \widehat{B} + \widehat{C} + \widehat{D} + \widehat{E} = 180^\circ.$$

Ici $\widehat{A}$ désigne l'angle $\widehat{CAD}$ de la pointe $A$, $\widehat{B}$ l'angle $\widehat{DBE}$ de la pointe $B$, et ainsi de suite.

## Hints

1. Rappelle-toi la propriété de l'angle extérieur d'un triangle : un angle extérieur est égal à la somme des deux angles du triangle qui ne lui sont pas adjacents. Elle se démontre en une ligne à partir de la somme des angles.
2. Cinq angles, c'est beaucoup. Cherche à les regrouper deux par deux, pour finalement les rassembler tous dans un seul petit triangle de la figure.
3. Note $P$ le point d'intersection des segments $[BD]$ et $[CE]$, et $Q$ celui des segments $[AD]$ et $[CE]$. Regarde le triangle $DPQ$.
4. Dans le triangle $DPQ$, l'angle en $D$ est déjà l'angle de la pointe $D$. Pour l'angle en $P$, regarde le triangle $PBE$ ; pour l'angle en $Q$, regarde le triangle $QAC$.

## Solution

**Un rappel : l'angle extérieur d'un triangle.**

Dans un triangle $UVW$, prolongeons le côté $[UV]$ au-delà de $V$. L'angle extérieur ainsi obtenu en $V$ vaut $180^\circ - \widehat{UVW}$. Or la somme des angles du triangle donne $\widehat{UVW} = 180^\circ - \widehat{U} - \widehat{W}$. Donc

$$\text{angle extérieur en } V = \widehat{U} + \widehat{W}.$$

Un angle extérieur d'un triangle est égal à la somme des deux angles qui ne lui sont pas adjacents. C'est le seul outil dont nous aurons besoin.

**L'idée : rassembler les cinq angles dans un seul triangle.**

Notons $P$ le point d'intersection des segments $[BD]$ et $[CE]$, et $Q$ celui des segments $[AD]$ et $[CE]$. Sur le segment $[CE]$, les points se suivent dans l'ordre $C$, $P$, $Q$, $E$.

![Le triangle DPQ à l'intérieur de l'étoile](0353-figure-2.svg)

Le triangle $DPQ$ a son sommet $D$ à une pointe de l'étoile, son côté $[PQ]$ porté par la droite $(CE)$, son côté $[DP]$ porté par la droite $(BD)$ et son côté $[DQ]$ porté par la droite $(AD)$. Calculons ses trois angles.

**L'angle en $D$.**

La demi-droite $[DP)$ est la demi-droite $[DB)$, et la demi-droite $[DQ)$ est la demi-droite $[DA)$. Donc

$$\widehat{PDQ} = \widehat{BDA} = \widehat{D}.$$

**L'angle en $P$.**

Regardons le triangle $PBE$. Le point $P$ est sur la droite $(BD)$ et sur la droite $(CE)$, donc :

- son angle en $B$ est $\widehat{PBE} = \widehat{DBE} = \widehat{B}$ ;
- son angle en $E$ est $\widehat{PEB} = \widehat{CEB} = \widehat{E}$.

L'angle $\widehat{DPQ}$ est un angle extérieur de ce triangle en $P$ : la demi-droite $[PD)$ est opposée à la demi-droite $[PB)$, et la demi-droite $[PQ)$ est la même que $[PE)$. Donc

$$\widehat{DPQ} = \widehat{B} + \widehat{E}.$$

**L'angle en $Q$.**

Regardons de même le triangle $QAC$. Le point $Q$ est sur la droite $(AD)$ et sur la droite $(CE)$, donc :

- son angle en $A$ est $\widehat{QAC} = \widehat{DAC} = \widehat{A}$ ;
- son angle en $C$ est $\widehat{QCA} = \widehat{ECA} = \widehat{C}$.

L'angle $\widehat{DQP}$ est un angle extérieur de ce triangle en $Q$ : la demi-droite $[QD)$ est opposée à $[QA)$, et la demi-droite $[QP)$ est la même que $[QC)$. Donc

$$\widehat{DQP} = \widehat{A} + \widehat{C}.$$

**On conclut.**

La somme des angles du triangle $DPQ$ vaut $180^\circ$ :

$$\widehat{PDQ} + \widehat{DPQ} + \widehat{DQP} = 180^\circ,$$

c'est-à-dire

$$\widehat{D} + \left(\widehat{B} + \widehat{E}\right) + \left(\widehat{A} + \widehat{C}\right) = 180^\circ.$$

**Conclusion.** La somme des cinq angles aux pointes de l'étoile vaut $180^\circ$, et ce quelle que soit la forme de l'étoile.

## Going further

1. Dans la démonstration, on a utilisé l'ordre des points $C$, $P$, $Q$, $E$ sur le segment $[CE]$. Dessiner plusieurs étoiles très différentes les unes des autres et vérifier que cet ordre ne change jamais.
2. On place maintenant sept points et on les joint en sautant un point à chaque fois : on obtient une étoile à sept branches. Que vaut la somme des sept angles aux pointes ?
