---
id: "0661"
title: "Le pied de la hauteur et le milieu du côté"
grade: 8
theme: geometry
difficulty: 3
duration_min: 30
tags: [triangle-isocele, hauteur, mediatrice, symetrie-centrale, chasse-aux-angles]
adapted_from: null
see_also: []
same_as: ["8501"]
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Angles et droites du triangle »"
  reference: "Angles.2.pdf, 6 octobre 2023, problème 9, d'après la Coupe Animath de printemps 2022, problème 2"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Angles.2.pdf"
---

## Statement

Soit $AMC$ un triangle isocèle en $M$ et tel que l'angle $\widehat{AMC}$ est aigu. Soit $B$ le symétrique du point $A$ par rapport au point $M$, et soit $H$ le pied de la hauteur issue du sommet $C$ dans le triangle $ABC$. On suppose que $AH = HM$.

Calculer les valeurs des trois angles du triangle $ABC$.

![Le triangle ABC avec M milieu de [AB], la hauteur [CH] et H milieu de [AM]](0661-figure-1.svg)

## Hints

1. $B$ est le symétrique de $A$ par rapport à $M$ : cela veut dire que $M$ est le milieu de $[AB]$. En particulier $A$, $M$, $B$ sont alignés, et la hauteur issue de $C$ tombe sur la droite $(AM)$.
2. $H$ est sur le segment $[AM]$ et $AH = HM$ : que représente alors la droite $(CH)$ pour le segment $[AM]$ ?
3. Tu obtiens $CA = CM$. Mais l'énoncé donne déjà $MA = MC$. Quelle sorte de triangle est $AMC$ ?
4. Une fois $\widehat{AMC}$ connu, occupe-toi du triangle $MBC$ : il est lui aussi isocèle, puisque $MB = MA = MC$.

## Solution

**La droite $(CH)$ est la médiatrice de $[AM]$.** Comme $B$ est le symétrique de $A$ par rapport à $M$, le point $M$ est le milieu de $[AB]$ ; en particulier $A$, $M$ et $B$ sont alignés, et la droite $(AB)$ est aussi la droite $(AM)$. La hauteur issue de $C$ est perpendiculaire à $(AB)$, donc $(CH) \perp (AM)$. Comme de plus $AH = HM$, le point $H$ est le milieu de $[AM]$ : la droite $(CH)$ est donc la médiatrice du segment $[AM]$.

Un point de la médiatrice d'un segment est à égale distance de ses extrémités, donc

$$CA = CM.$$

**Le triangle $AMC$ est équilatéral.** Le triangle $AMC$ est isocèle en $M$, donc $MA = MC$. Avec $CA = CM$, les trois côtés sont égaux :

$$MA = MC = CA.$$

Le triangle $AMC$ est équilatéral, donc tous ses angles valent $60°$. On a bien $\widehat{AMC} = 60°$, qui est aigu comme l'annonçait l'énoncé.

**Les angles du triangle $ABC$.** Comme $M$ est entre $A$ et $B$, l'angle en $A$ du triangle $ABC$ est le même que l'angle $\widehat{MAC}$ :

$$\widehat{BAC} = \widehat{MAC} = 60°.$$

Les points $A$, $M$, $B$ étant alignés, les angles $\widehat{AMC}$ et $\widehat{BMC}$ sont supplémentaires :

$$\widehat{BMC} = 180° - 60° = 120°.$$

Enfin $MB = MA = MC$, donc le triangle $MBC$ est isocèle de sommet principal $M$, et ses angles à la base valent

$$\widehat{MBC} = \widehat{MCB} = \frac{180° - 120°}{2} = 30°.$$

Donc $\widehat{ABC} = 30°$, et le troisième angle vaut

$$\widehat{ACB} = 180° - 60° - 30° = 90°.$$

**Le triangle $ABC$ a pour angles $\widehat{BAC} = 60°$, $\widehat{ABC} = 30°$ et $\widehat{ACB} = 90°$.**

## Going further

L'égalité $MA = MB = MC$ dit que $C$ est sur le cercle de centre $M$ et de rayon $\frac{AB}{2}$, c'est-à-dire sur le cercle de diamètre $[AB]$. L'angle droit en $C$ était donc inévitable, quelle que soit la valeur de $\widehat{AMC}$ : c'est la donnée $AH = HM$ qui a fixé les deux autres angles.
