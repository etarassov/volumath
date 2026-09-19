---
id: "0836"
title: "Pythagore quand l'angle n'est pas droit"
grade: 9
theme: geometry
difficulty: 3
duration_min: 20
tags: [pythagore, hauteur, longueurs]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Triangles semblables », 11 avril 2024"
  reference: "Geometrie.pdf, problème 19"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Geometrie.pdf"
---

## Statement

$ABC$ est un triangle dont l'angle en $B$ est aigu. On note $D$ le pied de la hauteur issue de $A$, et on suppose que $D$ appartient au segment $[BC]$.

![Le triangle ABC et la hauteur [AD], avec D sur le segment [BC]](0836-figure-1.svg)

Montrer que

$$AC^2 = AB^2 + BC^2 - 2 \times BD \times BC.$$

## Hints

1. La hauteur partage la figure en deux triangles rectangles, $ABD$ et $ADC$. Écris le théorème de Pythagore dans chacun d'eux.
2. La longueur $AD$ n'apparaît pas dans le résultat à démontrer : elle doit donc disparaître. Comment éliminer $AD^2$ entre les deux égalités ?
3. Le point $D$ est entre $B$ et $C$, donc $DC = BC - BD$. Développe $(BC - BD)^2$ et regarde ce qui se simplifie.

## Solution

Le point $D$ est le pied de la hauteur issue de $A$, donc les triangles $ABD$ et $ADC$ sont rectangles en $D$.

**Pythagore dans le triangle $ABD$.**

$$AB^2 = AD^2 + BD^2, \qquad \text{donc} \qquad AD^2 = AB^2 - BD^2.$$

**Pythagore dans le triangle $ADC$.**

$$AC^2 = AD^2 + DC^2.$$

**On remplace $AD^2$.**

$$AC^2 = AB^2 - BD^2 + DC^2.$$

**On exprime $DC$.** Le point $D$ est sur le segment $[BC]$, donc $DC = BC - BD$ et

$$DC^2 = (BC - BD)^2 = BC^2 - 2 \times BD \times BC + BD^2.$$

**On conclut.**

$$AC^2 = AB^2 - BD^2 + BC^2 - 2 \times BD \times BC + BD^2 = AB^2 + BC^2 - 2 \times BD \times BC.$$

C'est bien l'égalité demandée.

**Un cas particulier.** Si l'angle en $B$ est droit, alors $D = B$, donc $BD = 0$ et la formule devient $AC^2 = AB^2 + BC^2$ : on retrouve le théorème de Pythagore. La formule démontrée ici est donc une version de Pythagore pour un angle qui n'est pas droit, et le terme $2 \times BD \times BC$ mesure exactement la correction à apporter.

## Going further

1. Si l'angle en $B$ est obtus, le pied $D$ de la hauteur n'est plus entre $B$ et $C$ : il est de l'autre côté de $B$. Montrer qu'alors
   $$AC^2 = AB^2 + BC^2 + 2 \times BD \times BC.$$
   Indication : cette fois $DC = DB + BC$.
2. *Théorème de la médiane.* Soit $I$ le milieu de $[BC]$. Montrer que
   $$AB^2 + AC^2 = 2 \times AI^2 + \frac{BC^2}{2}.$$
   Indication : appelle $H$ le pied de la hauteur issue de $A$, pose $x = IH$ et $m = \dfrac{BC}{2}$, puis écris le théorème de Pythagore trois fois, dans les triangles $AHB$, $AHC$ et $AHI$. Les deux longueurs $BH$ et $CH$ valent $m + x$ et $m - x$, dans un ordre ou dans l'autre.
