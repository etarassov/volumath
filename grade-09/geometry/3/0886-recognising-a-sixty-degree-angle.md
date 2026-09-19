---
id: "0886"
title: "Reconnaître un angle de 60 degrés"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [triangle rectangle, mediane, hypotenuse, triangle equilateral, equivalence]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes issus des envois POFM (problèmes 1-3) », niveau collège - débutants, 12 mai 2023"
  reference: "Preparation.POFM.pdf, exercice 25, d'après les envois POFM 2019-2022"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Preparation.POFM.pdf"
---

## Statement

$ABC$ est un triangle dont les trois angles sont aigus. On note $F$ le pied de la hauteur issue du sommet $C$, c'est-à-dire le point du segment $[AB]$ tel que $(CF)$ soit perpendiculaire à $(AB)$. On note $M$ le milieu du segment $[AC]$.

Montrer que $AM = AF$ si et seulement si $\widehat{BAC} = 60°$.

## Hints

1. Fais une figure. Où se trouvent les trois points $A$, $F$ et $M$ les uns par rapport aux autres ?
2. Isole le triangle $AFC$ : quel est son angle droit ? quelle est son hypoténuse ? et quel rôle y joue le point $M$ ?
3. Dans un triangle rectangle, la médiane issue de l'angle droit mesure la moitié de l'hypoténuse. Que vaut donc $MF$ ?
4. Tu sais maintenant que $MA = MF$. Le triangle $AMF$ est isocèle. Que faut-il de plus pour qu'il soit équilatéral, et qu'est-ce que cela donne pour l'angle en $A$ ?

## Solution

**L'idée : le triangle $AMF$ est isocèle sans qu'on ait rien supposé ; tout revient à savoir quand il est équilatéral.**

**Le point de départ.** Comme $(CF) \perp (AB)$, le triangle $AFC$ est rectangle en $F$, et son hypoténuse est $[AC]$. Le point $M$ est le milieu de cette hypoténuse, donc $[FM]$ est la médiane issue de l'angle droit du triangle $AFC$. Or :

> Dans un triangle rectangle, la médiane issue de l'angle droit mesure la moitié de l'hypoténuse.

(C'est une autre façon de dire que le milieu de l'hypoténuse est le centre du cercle circonscrit au triangle rectangle.) Donc

$$MF = \frac{AC}{2} = MA.$$

**Le triangle $AMF$ est donc isocèle en $M$**, et cela sans aucune hypothèse supplémentaire.

Remarquons aussi que, comme le triangle $ABC$ a tous ses angles aigus, le pied $F$ est strictement à l'intérieur du segment $[AB]$ : l'angle $\widehat{MAF}$ est donc exactement l'angle $\widehat{BAC}$ du triangle, puisque $M$ est sur $[AC]$ et $F$ sur $[AB]$.

**Sens 1 : si $\widehat{BAC} = 60°$, alors $AM = AF$.**

Le triangle $AMF$ est isocèle en $M$, donc ses angles à la base sont égaux :
$$\widehat{MAF} = \widehat{MFA} = 60°.$$
Le troisième angle vaut alors $180° - 60° - 60° = 60°$. Les trois angles du triangle $AMF$ valent $60°$ : il est équilatéral. En particulier
$$AF = AM.$$

**Sens 2 : si $AM = AF$, alors $\widehat{BAC} = 60°$.**

On sait déjà que $MA = MF$. Si de plus $AM = AF$, alors les trois longueurs
$$AM, \qquad AF, \qquad MF$$
sont égales : le triangle $AMF$ est équilatéral. Ses trois angles valent donc $60°$, et en particulier
$$\widehat{BAC} = \widehat{MAF} = 60°.$$

**Conclusion : $AM = AF$ si et seulement si $\widehat{BAC} = 60°$.**

## Going further

Avec la trigonométrie du triangle rectangle, la démonstration tient en une ligne. Dans le triangle $AFC$ rectangle en $F$,
$$\cos(\widehat{BAC}) = \frac{AF}{AC}, \qquad \text{donc} \qquad AF = AC \cos(\widehat{BAC}),$$
tandis que $AM = \dfrac{AC}{2}$. L'égalité $AF = AM$ équivaut donc à $\cos(\widehat{BAC}) = \dfrac{1}{2}$, c'est-à-dire à $\widehat{BAC} = 60°$ puisque cet angle est aigu.
