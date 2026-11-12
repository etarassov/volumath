---
id: "22022"
title: "La bissectrice issue de A et deux segments égaux"
grade: 8
theme: geometry
difficulty: 3
duration_min: 30
tags: [bissectrice, angle-inscrit, quadrilatere-inscrit, triangles-isometriques, triangle-isocele]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « TD de géométrie » (Martin & Maryam), exercice 9 (dans le corrigé imprimé, les lettres E et F sont échangées : il écrit la puissance de B par rapport au « cercle passant par A, F, D et C », qui est en réalité le cercle A, E, D, C, et conclut CE = BF au lieu de EB = CF)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $ABC$ un triangle et $D$ le point où la bissectrice de l'angle $\widehat{BAC}$ coupe le côté $[BC]$.

- Le cercle qui passe par $A$, $C$ et $D$ recoupe le segment $[AB]$ en un point $E$.
- Le cercle qui passe par $A$, $B$ et $D$ recoupe le segment $[AC]$ en un point $F$.

Démontrer que $EB = CF$.

## Hints

1. Dans le cercle qui passe par $A$, $E$, $D$, $C$, les cordes $[DE]$ et $[DC]$ sont vues depuis $A$ sous le même angle. Montrez que $DE = DC$ en regardant le triangle $DEC$.
2. Calculez l'angle $\widehat{BED}$ à l'aide d'un angle du triangle $ABC$. Faites de même pour $\widehat{CFD}$.
3. Comparez les triangles $DEB$ et $DCF$.

## Solution

On note $\alpha = \widehat{BAC}$, $\beta = \widehat{ABC}$ et $\gamma = \widehat{ACB}$. Comme $(AD)$ est la bissectrice, $\widehat{BAD} = \widehat{DAC} = \frac{\alpha}{2}$.

**Deux outils sur les cercles.** Soient $U$, $V$, $X$, $Y$ quatre points d'un cercle.

- Si $X$ et $Y$ sont du même côté de la droite $(UV)$, alors $\widehat{UXV} = \widehat{UYV}$.
- Si $X$ et $Y$ sont de part et d'autre de la droite $(UV)$, alors $\widehat{UXV} + \widehat{UYV} = 180^\circ$.

Ces deux règles viennent du théorème de l'angle inscrit : un angle inscrit vaut la moitié de l'angle au centre qui intercepte le même arc, et les deux arcs d'extrémités $U$ et $V$ correspondent à deux angles au centre dont la somme fait $360^\circ$.

**Étape 1 : $DE = DC$.** Le point $E$ est sur le côté $[AB]$ et $D$ sur le côté $[BC]$, donc le quadrilatère $AEDC$ est convexe, et sur le cercle les points se suivent dans l'ordre $A$, $E$, $D$, $C$.

- Les points $E$ et $A$ sont du même côté de la droite $(DC)$, donc $\widehat{DEC} = \widehat{DAC} = \frac{\alpha}{2}$.
- Les points $C$ et $A$ sont du même côté de la droite $(DE)$, donc $\widehat{DCE} = \widehat{DAE} = \widehat{DAB} = \frac{\alpha}{2}$.

Le triangle $DEC$ a deux angles égaux : il est isocèle en $D$, et $DE = DC$.

**Étape 2 : deux angles.** Dans le cercle $AEDC$, les points $E$ et $C$ sont de part et d'autre de la droite $(AD)$, donc $\widehat{AED} + \widehat{ACD} = 180^\circ$. Comme $E$ est entre $A$ et $B$,

$$\widehat{BED} = 180^\circ - \widehat{AED} = \widehat{ACD} = \gamma.$$

De la même façon, dans le cercle $ABDF$, on obtient $\widehat{CFD} = \widehat{ABD} = \beta$.

**Étape 3 : deux triangles égaux.** Comparons les triangles $DEB$ et $DCF$.

- Angles en $E$ et en $C$ : $\widehat{DEB} = \gamma$ (étape 2) et $\widehat{DCF} = \widehat{DCA} = \gamma$.
- Angles en $B$ et en $F$ : $\widehat{DBE} = \widehat{CBA} = \beta$ et $\widehat{DFC} = \beta$ (étape 2).
- Angles en $D$ : par la somme des angles d'un triangle, ils valent tous les deux $180^\circ - \beta - \gamma$.

De plus $DE = DC$ (étape 1). Les deux triangles ont un côté égal, $[DE]$ et $[DC]$, compris entre deux angles égaux deux à deux (en $D$, et en $E$ ou en $C$). Ils sont donc égaux : leurs autres côtés sont égaux deux à deux. Le côté $[EB]$, opposé à l'angle en $D$ dans le premier triangle, est égal au côté $[CF]$, opposé à l'angle en $D$ dans le second.

**Conclusion.** $EB = CF$.

## Going further

1. Montrez de même que $DF = DB$.
2. Montrez que les droites $(EF)$ et $(BC)$ sont parallèles quand $AB = AC$. Que se passe-t-il dans ce cas pour les points $E$ et $F$ ?
