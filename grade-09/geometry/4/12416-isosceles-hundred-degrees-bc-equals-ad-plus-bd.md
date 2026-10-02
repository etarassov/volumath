---
id: "12416"
title: "Triangle isocèle à 100° : BC = AD + BD"
grade: 9
theme: geometry
difficulty: 4
duration_min: 35
tags: [triangle-isocele, angles, bissectrice, symetrie, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 28 mars 2018"
  reference: "juge_Enonce-03-2018.pdf, exercices du groupe B, exercice 2 ; corrigé juge_Corrige-03-2018.pdf (le corrigé utilise la loi des sinus et contient deux coquilles : il écrit 130° au lieu de 120° pour l'angle BDC, et BD ⩾ BC au lieu de BD ⩽ BC ; solution refaite ici avec des angles et une symétrie)"
  url: "http://igm.univ-mlv.fr/~juge/pofm/doc/%c3%89nonc%c3%a9-03-2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/juge_Enonce-03-2018.pdf"
---

## Statement

Soit $ABC$ un triangle isocèle en $A$ tel que $\widehat{BAC} = 100^\circ$. La bissectrice de
l'angle $\widehat{ABC}$ coupe le côté $[AC]$ au point $D$.

Montrer que
$$BC = AD + BD.$$

## Hints

1. Calcule tous les angles de la figure : $\widehat{ABC}$, $\widehat{ABD}$, $\widehat{ADB}$ et
   $\widehat{BDC}$.
2. Il faut couper $[BC]$ en deux morceaux. Place sur $[BC]$ le point $E$ tel que $BE = BD$.
   Quels sont les angles du triangle $BDE$ ? Et ceux du triangle $DEC$ ?
3. Il reste à montrer que $DE = AD$. Regarde la symétrie par rapport à la droite $(BD)$ : où
   le point $A$ est-il envoyé ?

## Solution

### Étape 1 : les angles de la figure

Le triangle est isocèle en $A$, donc
$\widehat{ABC} = \widehat{ACB} = \dfrac{180^\circ - 100^\circ}{2} = 40^\circ$. La bissectrice
coupe cet angle en deux : $\widehat{ABD} = \widehat{DBC} = 20^\circ$.

Dans le triangle $ABD$ : $\widehat{ADB} = 180^\circ - 100^\circ - 20^\circ = 60^\circ$. Comme
$A$, $D$, $C$ sont alignés dans cet ordre, $\widehat{BDC} = 180^\circ - 60^\circ = 120^\circ$.
On vérifie avec le triangle $BDC$ : $20^\circ + 40^\circ + 120^\circ = 180^\circ$.

### Étape 2 : un point $E$ tel que $BE = BD$ et $EC = ED$

Traçons, à partir de $D$, la demi-droite qui fait un angle de $80^\circ$ avec $[DB)$, à
l'intérieur de l'angle $\widehat{BDC}$. Comme $80^\circ < 120^\circ$, elle coupe le segment
$[BC]$ en un point $E$.

- Dans le triangle $BDE$ : $\widehat{DBE} = 20^\circ$ et $\widehat{BDE} = 80^\circ$, donc
  $\widehat{BED} = 80^\circ$. Les angles en $D$ et en $E$ sont égaux : le triangle est isocèle
  en $B$, et $BE = BD$.
- Comme $B$, $E$, $C$ sont alignés dans cet ordre, $\widehat{DEC} = 180^\circ - 80^\circ = 100^\circ$.
  Dans le triangle $DEC$ : $\widehat{ECD} = 40^\circ$, donc
  $\widehat{EDC} = 180^\circ - 100^\circ - 40^\circ = 40^\circ$. Le triangle est isocèle en $E$,
  et $EC = ED$.

On a donc
$$BC = BE + EC = BD + ED.$$
Il reste à montrer que $ED = AD$.

### Étape 3 : la symétrie par rapport à la bissectrice

Soit $F$ le point de $[BC]$ tel que $\widehat{BDF} = 60^\circ$. Comme $60^\circ < 80^\circ$, il
se trouve entre $B$ et $E$.

Considérons la symétrie d'axe $(BD)$.

- Comme $(BD)$ est la bissectrice de $\widehat{ABC}$, elle échange les demi-droites $[BA)$ et
  $[BC)$.
- Elle échange aussi les demi-droites $[DA)$ et $[DF)$, car $\widehat{BDA} = \widehat{BDF} = 60^\circ$
  et ces deux demi-droites sont de part et d'autre de $(BD)$.

Le point $A$, intersection de $[BA)$ et de $[DA)$, est donc envoyé sur l'intersection de $[BC)$ et
de $[DF)$, c'est-à-dire sur $F$. Une symétrie conserve les longueurs et les angles, donc
$$DF = DA \qquad\text{et}\qquad \widehat{BFD} = \widehat{BAD} = 100^\circ.$$

Dans le triangle $DFE$ :

- $\widehat{DFE} = 180^\circ - \widehat{BFD} = 80^\circ$, car $B$, $F$, $E$ sont alignés dans
  cet ordre ;
- $\widehat{DEF} = \widehat{DEB} = 80^\circ$.

Ce triangle est donc isocèle en $D$ : $DE = DF = DA$.

### Conclusion

En rassemblant les étapes,
$$BC = BD + ED = BD + AD.$$

## Going further

Réciproquement, soit $ABC$ un triangle isocèle en $A$, et $D$ le point où la bissectrice de
$\widehat{ABC}$ coupe $[AC]$. On suppose que $BC = AD + BD$. Peut-on en déduire que
$\widehat{BAC} = 100^\circ$ ?
