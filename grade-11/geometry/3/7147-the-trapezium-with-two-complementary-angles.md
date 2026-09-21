---
id: "7147"
title: "Le trapèze aux deux angles complémentaires"
grade: 11
theme: geometry
difficulty: 3
duration_min: 30
tags: [trapeze, triangle rectangle, mediane, milieux]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2014"
  reference: "stage_junior_2014.pdf, « Avancés : géométrie », mardi et mercredi matin (Vincent Jugé), exercice 5 (JBMO 2006, liste courte, problème G1)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soit $ABCD$ un trapèze convexe, avec $(AB)$ parallèle à $(CD)$, et tel que

$$\widehat{DAB} + \widehat{ABC} = 90^\circ .$$

Soient $I$ le milieu de $[AB]$ et $J$ le milieu de $[CD]$.

Montrer que

$$2\,IJ = |AB - CD| .$$

## Hints

1. Les droites $(AD)$ et $(BC)$ peuvent-elles être parallèles ? Calcule ce que vaudrait alors
   $\widehat{DAB} + \widehat{ABC}$.
2. Appelle donc $O$ le point d'intersection de $(AD)$ et $(BC)$, et calcule l'angle
   $\widehat{AOB}$.
3. Que sais-tu de la médiane issue de l'angle droit dans un triangle rectangle ?
4. Montre que $O$, $I$ et $J$ sont alignés, puis exprime $IJ$ à l'aide de $OI$ et $OJ$.

## Solution

**Les côtés obliques se coupent.** Si $(AD)$ et $(BC)$ étaient parallèles, alors $ABCD$
serait un parallélogramme et les angles $\widehat{DAB}$ et $\widehat{ABC}$, consécutifs,
seraient supplémentaires : leur somme vaudrait $180^\circ$, pas $90^\circ$.

Les droites $(AD)$ et $(BC)$ se coupent donc en un point $O$.

**L'angle en $O$.** Dans le triangle $AOB$, la somme des angles vaut $180^\circ$ :

$$\widehat{AOB} = 180^\circ - \widehat{OAB} - \widehat{ABO} = 180^\circ - \widehat{DAB} - \widehat{ABC} = 180^\circ - 90^\circ = 90^\circ .$$

Le triangle $AOB$ est donc **rectangle en $O$**. Comme $(CD)$ est parallèle à $(AB)$, le
triangle $DOC$ est lui aussi rectangle en $O$ (ses angles en $D$ et en $C$ sont égaux à ceux
en $A$ et en $B$).

**Deux médianes.** Dans un triangle rectangle, la médiane issue de l'angle droit vaut la
moitié de l'hypoténuse : le milieu de l'hypoténuse est le centre du cercle circonscrit, donc
à égale distance des trois sommets.

Appliquons-le deux fois :

$$OI = AI = BI = \frac{AB}{2} \qquad \text{et} \qquad OJ = DJ = CJ = \frac{CD}{2} .$$

**Trois points alignés.** Les droites $(OI)$ et $(OJ)$ sont toutes les deux des médianes
issues de $O$, dans deux triangles $AOB$ et $DOC$ qui se déduisent l'un de l'autre par une
homothétie de centre $O$ (puisque $(CD)$ est parallèle à $(AB)$, avec $D$ sur $(OA)$ et $C$
sur $(OB)$). Cette homothétie envoie $I$ sur $J$, donc $O$, $I$ et $J$ sont alignés.

De plus, le trapèze étant convexe, $O$ n'est pas entre $I$ et $J$ : les points $I$ et $J$
sont du même côté de $O$.

**On conclut.** Comme $I$ et $J$ sont sur une même demi-droite d'origine $O$,

$$IJ = |OI - OJ| = \left|\frac{AB}{2} - \frac{CD}{2}\right| = \frac{|AB - CD|}{2} ,$$

c'est-à-dire

$$2\,IJ = |AB - CD| .$$

## Going further

Le ressort de la démonstration est la condition $\widehat{DAB} + \widehat{ABC} = 90^\circ$,
qui a l'air arbitraire mais ne l'est pas : elle dit exactement que les deux côtés obliques du
trapèze se coupent **à angle droit**. Tout le reste en découle.

Retiens surtout le lemme utilisé deux fois : *dans un triangle rectangle, le milieu de
l'hypoténuse est à égale distance des trois sommets.* C'est l'un des outils les plus utiles
de la géométrie du triangle, et il sert dès qu'on voit un angle droit et un milieu dans la
même figure.
