---
id: "3825"
title: "Quatre points, six longueurs"
grade: 10
theme: geometry
difficulty: 4
duration_min: 35
tags: [distance, inegalite-triangulaire, disjonction-de-cas, triangle-equilateral]
adapted_from: null
see_also: []
same_as: ["4016"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Mid-Quarter Competition"
  reference: "Handout-4070-3775.pdf, problème 17, d'après AMC 10B 2012, problème 21 (corrigé dans Handout-4071-3775.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4070-3775.pdf"
---

## Statement

Quatre points deux à deux distincts sont placés dans le plan. Les six segments qui les relient deux à deux ont pour longueurs

$$a, \quad a, \quad a, \quad a, \quad 2a, \quad b,$$

où $a$ est un nombre strictement positif.

Montre qu'une telle configuration existe, et calcule le rapport $\dfrac{b}{a}$.

## Hints

1. Quatre points donnent bien six segments : vérifie-le avant de commencer.
2. Les deux segments qui ne mesurent pas $a$ sont le segment de longueur $2a$ et celui de longueur $b$. Deux segments pris parmi quatre points : ou bien ils ont une extrémité commune, ou bien ils n'en ont pas. Sépare ces deux cas.
3. Si un point est à distance $a$ des deux extrémités d'un segment de longueur $2a$, où se trouve-t-il ? Pense à l'inégalité triangulaire et à son cas d'égalité.
4. Dans le cas qui survit, tu obtiendras trois points alignés et un triangle équilatéral. Place alors des coordonnées.

## Solution

**L'idée : regarder où se placent les deux segments « spéciaux », celui de longueur $2a$ et celui de longueur $b$.**

Quatre points donnent $\dfrac{4 \times 3}{2} = 6$ segments, ce qui colle avec l'énoncé. Quatre de ces segments mesurent $a$ ; les deux autres mesurent $2a$ et $b$.

Deux segments choisis parmi quatre points ont soit une extrémité commune, soit aucune.

**Étape 1. Un outil : le cas d'égalité de l'inégalité triangulaire.**

Si un point $M$ vérifie $PM = a$ et $QM = a$ avec $PQ = 2a$, alors

$$PM + MQ = a + a = 2a = PQ.$$

L'inégalité triangulaire $PM + MQ \geqslant PQ$ est donc une égalité, ce qui n'arrive que si $M$ appartient au segment $[PQ]$. Comme $PM = a$, le point $M$ est **le milieu** de $[PQ]$. En particulier, **un seul point** peut être à distance $a$ des deux extrémités d'un segment de longueur $2a$.

**Étape 2. Les deux segments spéciaux ne peuvent pas être disjoints.**

Supposons qu'ils n'aient aucune extrémité commune. Ils utilisent alors les quatre points : disons que le segment de longueur $2a$ est $[PQ]$ et celui de longueur $b$ est $[RS]$.

Les quatre segments restants sont $[PR]$, $[PS]$, $[QR]$, $[QS]$, tous de longueur $a$. Donc $R$ et $S$ sont tous les deux à distance $a$ de $P$ et de $Q$, avec $PQ = 2a$.

D'après l'étape 1, $R$ et $S$ sont tous les deux le milieu de $[PQ]$, donc $R = S$. Les points ne seraient plus distincts : impossible.

**Étape 3. Les deux segments spéciaux ont donc une extrémité commune.**

Appelons $A$ cette extrémité commune, $B$ l'autre extrémité du segment de longueur $2a$, et $C$ l'autre extrémité du segment de longueur $b$. Notons $D$ le quatrième point. Ainsi

$$AB = 2a, \qquad AC = b,$$

et les quatre autres segments mesurent $a$ :

$$AD = a, \qquad BD = a, \qquad BC = a, \qquad CD = a.$$

**Étape 4. On place la figure.**

Comme $AD = BD = a$ et $AB = 2a$, l'étape 1 donne : $D$ est le milieu de $[AB]$. En particulier $A$, $D$, $B$ sont alignés.

Comme $BC = CD = BD = a$, le triangle $BCD$ est équilatéral de côté $a$.

![Les quatre points : A, D, B alignés avec D milieu de [AB], et BCD équilatéral](3825-figure-1.svg)

**Étape 5. On calcule $b$ avec des coordonnées.**

Plaçons un repère orthonormé d'origine $D$, l'axe des abscisses portant la droite $(AB)$ :

$$D = (0, 0), \qquad B = (a, 0), \qquad A = (-a, 0).$$

Le point $C$ est à distance $a$ de $D$ et de $B$ : il est donc sur la médiatrice de $[DB]$, d'abscisse $\dfrac{a}{2}$, et son ordonnée $y$ vérifie

$$\left( \frac{a}{2} \right)^2 + y^2 = a^2, \qquad \text{donc} \qquad y^2 = \frac{3a^2}{4}, \qquad y = \pm \frac{a\sqrt{3}}{2}.$$

Les deux signes donnent deux figures symétriques par rapport à la droite $(AB)$, donc les mêmes longueurs. Prenons

$$C = \left( \frac{a}{2}, \; \frac{a\sqrt{3}}{2} \right).$$

Alors

$$b^2 = AC^2 = \left( \frac{a}{2} + a \right)^2 + \left( \frac{a\sqrt{3}}{2} \right)^2 = \frac{9a^2}{4} + \frac{3a^2}{4} = 3a^2,$$

donc

$$b = a\sqrt{3}.$$

**Étape 6. La configuration existe bien.**

Les quatre points $A(-a, 0)$, $D(0,0)$, $B(a, 0)$ et $C\left( \frac{a}{2}, \frac{a\sqrt{3}}{2} \right)$ sont deux à deux distincts, et leurs six distances valent

$$AD = a, \quad DB = a, \quad DC = a, \quad BC = a, \quad AB = 2a, \quad AC = a\sqrt{3}.$$

C'est exactement la liste demandée.

**Conclusion.** Une telle configuration existe, et dans tous les cas

$$\frac{b}{a} = \sqrt{3} \approx \text{1,73}.$$

## Going further

1. Le point $C$ est sur le cercle de centre $D$ et de rayon $a$, dont $[AB]$ est un diamètre. Que dit alors le théorème de l'angle inscrit sur le triangle $ABC$ ? Retrouve $AC$ à partir de là.
2. Cherche toutes les configurations de quatre points distincts dont les six distances valent $a, a, a, a, a, b$ (cinq longueurs égales).
3. Existe-t-il quatre points distincts dont les six distances soient toutes égales, dans le plan ?
