---
id: "0809"
title: "Un angle de 60 degrés et le tiers du périmètre"
grade: 9
theme: geometry
difficulty: 4
duration_min: 35
tags: [triangle, equilateral, pythagore, identite-remarquable]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers. Démonstrations par coloriage »"
  reference: "Moscou.Coloriage.pdf, exercice 11, d'après Mathematical Olympiads for Middle School (Moscou), 2016"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Moscou.Coloriage.pdf"
---

## Statement

Un angle d'un triangle mesure $60°$, et le côté opposé à cet angle mesure le tiers du périmètre du triangle.

Démontrer que ce triangle est équilatéral.

## Hints

1. Appelle $A$ le sommet où l'angle mesure $60°$, et note $a = BC$, $b = AC$, $c = AB$. Traduis en une égalité la phrase « $a$ est le tiers du périmètre ».
2. De $3a = a + b + c$ on tire $b + c = 2a$. Il faut maintenant une deuxième relation, celle qui fait intervenir l'angle de $60°$.
3. Trace la perpendiculaire à $(AB)$ passant par $C$, et appelle $H$ son pied.
4. Dans le triangle $AHC$, rectangle en $H$, l'angle en $A$ vaut $60°$, donc l'angle en $C$ vaut $30°$ : c'est la moitié d'un triangle équilatéral. Que vaut alors $AH$ par rapport à $AC$ ?
5. Applique le théorème de Pythagore dans $AHC$, puis dans $CHB$, pour exprimer $a^2$ en fonction de $b$ et de $c$.
6. Remplace $a$ par $\dfrac{b+c}{2}$ dans la relation obtenue, développe, et regarde apparaître une identité remarquable.

## Solution

**Étape 1. Mettre l'énoncé en formules.**

Appelons $A$ le sommet où l'angle mesure $60°$, et notons, comme d'habitude,
$$a = BC, \qquad b = AC, \qquad c = AB.$$

Le côté opposé à l'angle $\widehat{A}$ est $[BC]$, de longueur $a$. L'hypothèse dit
$$a = \frac{a + b + c}{3}, \qquad \text{c'est-à-dire} \qquad 3a = a + b + c,$$
donc
$$b + c = 2a. \tag{1}$$

**Étape 2. Faire entrer l'angle de $60°$ dans le calcul.**

Traçons la perpendiculaire à la droite $(AB)$ passant par $C$, et appelons $H$ son pied.

![Le triangle ABC avec l'angle de 60 degrés en A et la hauteur issue de C](0809-figure-1.svg)

Le triangle $AHC$ est rectangle en $H$ ; son angle en $A$ mesure $60°$, donc son angle en $C$ mesure $30°$. C'est donc la moitié d'un triangle équilatéral, et le côté opposé à l'angle de $30°$ vaut la moitié de l'hypoténuse :
$$AH = \frac{AC}{2} = \frac{b}{2}.$$

Le théorème de Pythagore dans $AHC$ donne alors
$$CH^2 = AC^2 - AH^2 = b^2 - \frac{b^2}{4} = \frac{3b^2}{4}.$$

**Étape 3. Calculer $a^2$.**

Le triangle $CHB$ est rectangle en $H$, donc
$$a^2 = BC^2 = CH^2 + HB^2.$$

Le point $H$ est sur la droite $(AB)$ à la distance $\dfrac{b}{2}$ de $A$, donc $HB = \left| c - \dfrac{b}{2} \right|$, et dans tous les cas
$$HB^2 = \left( c - \frac{b}{2} \right)^2 = c^2 - bc + \frac{b^2}{4}.$$

D'où
$$a^2 = \frac{3b^2}{4} + c^2 - bc + \frac{b^2}{4} = b^2 + c^2 - bc. \tag{2}$$

**Étape 4. Réunir les deux relations.**

D'après $(1)$, $a = \dfrac{b+c}{2}$. Reportons dans $(2)$ :
$$\frac{(b+c)^2}{4} = b^2 + c^2 - bc.$$

Multiplions par $4$ :
$$b^2 + 2bc + c^2 = 4b^2 + 4c^2 - 4bc,$$
$$0 = 3b^2 - 6bc + 3c^2 = 3\,(b - c)^2.$$

Un carré est nul seulement si ce qu'on élève au carré est nul, donc
$$b = c.$$

**Étape 5. Conclure.**

Le triangle est isocèle en $A$ avec $AB = AC$, et l'angle entre ces deux côtés mesure $60°$. Les deux angles de la base sont donc égaux et valent chacun
$$\frac{180° - 60°}{2} = 60°.$$

Les trois angles mesurent $60°$ : **le triangle est équilatéral.**

*(On peut aussi le voir avec les longueurs : $b = c$ et $b + c = 2a$ donnent $2b = 2a$, donc $a = b = c$.)*

## Going further

1. La relation $a^2 = b^2 + c^2 - bc$ obtenue à l'étape 3 est un cas particulier d'un théorème général sur les triangles (le théorème d'Al-Kashi). Refais le calcul de l'étape 3 pour un angle de $120°$ en $A$ : que devient la relation ?
2. Un triangle a un angle de $60°$ et le côté opposé mesure le **quart** du périmètre. Est-ce possible ?
