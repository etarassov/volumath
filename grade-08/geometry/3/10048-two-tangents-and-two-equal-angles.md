---
id: "10048"
title: "Deux tangentes et deux angles égaux"
grade: 8
theme: geometry
difficulty: 3
duration_min: 20
tags: [tangente, cercle, angles, mediatrice, triangle-rectangle, pythagore]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 2 (géométrie)"
  reference: "2017-10_ofm-2015-2016-envoi-2.pdf, Exercices du groupe B, exercice 3 ; corrigé 2017-10_ofm-2015-2016-envoi-2-solutions.pdf (le corrigé utilise l'angle inscrit et l'angle entre une tangente et une corde ; ici on n'utilise que des angles de triangles rectangles)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-2.pdf"
---

## Statement

Soit $\mathcal{C}$ un cercle de centre $O$ et $A$ un point de $\mathcal{C}$. On trace la tangente au cercle en $A$, et on place sur cette tangente deux points $B$ et $C$, avec $C$ entre $A$ et $B$.

Depuis $B$, on trace l'autre tangente au cercle, qui le touche en $D$. Depuis $C$, on trace l'autre tangente au cercle, qui le touche en $E$.

![Le cercle de centre O, la tangente en A qui porte les points C et B, les tangentes issues de B et de C qui touchent le cercle en D et en E, et les angles BOC et DAE marqués](10048-figure-1.svg)

Montrer que $\widehat{BOC} = \widehat{DAE}$.

## Hints

1. Pose $\alpha = \widehat{AOB}$ et $\beta = \widehat{AOC}$. Écris $\widehat{BOC}$ avec $\alpha$ et $\beta$.
2. Montre que $BA = BD$, puis que la droite $(OB)$ est la médiatrice du segment $[AD]$.
3. Dans le triangle $OAB$, rectangle en $A$, la droite $(AD)$ est perpendiculaire à $(OB)$. Déduis-en que $\widehat{BAD} = \alpha$. Fais de même avec $C$ et $E$.

## Solution

On note $r$ le rayon du cercle, $\alpha = \widehat{AOB}$ et $\beta = \widehat{AOC}$.

**Rappel.** La tangente à un cercle en un point est perpendiculaire au rayon qui aboutit en ce point. Le cercle est tout entier d'un même côté de chacune de ses tangentes.

### Étape 1 : l'angle $\widehat{BOC}$

Le point $C$ est sur le segment $[AB]$, donc la demi-droite $[OC)$ est à l'intérieur de l'angle $\widehat{AOB}$, et
$$\widehat{BOC} = \widehat{AOB} - \widehat{AOC} = \alpha - \beta .$$

### Étape 2 : la droite $(OB)$ est la médiatrice de $[AD]$

Les triangles $OAB$ et $ODB$ sont rectangles en $A$ et en $D$, car $(BA)$ et $(BD)$ sont des tangentes. D'après le théorème de Pythagore,
$$BA^2 = OB^2 - OA^2 = OB^2 - r^2 = OB^2 - OD^2 = BD^2 ,$$
donc $BA = BD$. Le point $B$ est à la même distance de $A$ et de $D$, et le point $O$ aussi, car $OA = OD = r$. Donc la droite $(OB)$ est la médiatrice du segment $[AD]$. En particulier, $(AD)$ est perpendiculaire à $(OB)$, et elle coupe $(OB)$ au milieu $T$ de $[AD]$.

### Étape 3 : l'angle $\widehat{BAD}$

Le point $T$ est le pied de la hauteur issue de $A$ dans le triangle $OAB$, rectangle en $A$. Il est donc sur le segment $[OB]$.

- Dans le triangle $OAB$, rectangle en $A$, on a $\widehat{ABO} = 90° - \alpha$.
- Dans le triangle $ATB$, rectangle en $T$, on a donc $\widehat{BAT} = 90° - \widehat{ABT} = 90° - (90° - \alpha) = \alpha$.

Comme $T$ est sur la demi-droite $[AD)$, on obtient $\widehat{BAD} = \alpha$.

Exactement de la même façon, avec le point $C$ et la tangente $(CE)$, on obtient $\widehat{CAE} = \beta$.

### Étape 4 : l'angle $\widehat{DAE}$

Les points $B$ et $C$ sont sur la même demi-droite issue de $A$, donc $\widehat{CAD} = \widehat{BAD} = \alpha$ et $\widehat{CAE} = \beta$.

Les points $D$ et $E$ sont sur le cercle, donc du même côté de la tangente $(AC)$. D'après l'étape 1, $\beta < \alpha$, donc la demi-droite $[AE)$ est à l'intérieur de l'angle $\widehat{CAD}$, et
$$\widehat{DAE} = \widehat{CAD} - \widehat{CAE} = \alpha - \beta .$$

### Conclusion

Les deux angles valent $\alpha - \beta$, donc **$\widehat{BOC} = \widehat{DAE}$.**

## Going further

- L'étape 3 montre que l'angle entre la tangente $(AB)$ et la corde $[AD]$ vaut la moitié de l'angle au centre $\widehat{AOD} = 2\alpha$. C'est un cas limite du théorème de l'angle inscrit, que tu verras plus tard.
- Que se passe-t-il si $C$ n'est plus entre $A$ et $B$, mais de l'autre côté de $A$ ? Montre qu'alors $\widehat{BOC} = 180° - \widehat{DAE}$.
