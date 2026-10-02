---
id: "10201"
title: "Un segment aussi long que l'hypoténuse"
grade: 8
theme: geometry
difficulty: 3
duration_min: 25
tags: [triangle-rectangle, droite-des-milieux, parallelogramme, milieu]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 1 (géométrie)"
  reference: "2019-10_sujet-envoi-1.pdf, Exercices Juniors, exercice 2 ; corrigé 2019-12_corrige-commentaire-envoi-1.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/10/sujet-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-10_sujet-envoi-1.pdf"
---

## Statement

$ABC$ est un triangle rectangle en $B$. On note :

- $M$ le milieu de l'hypoténuse $[AC]$ ;
- $(d)$ la droite perpendiculaire à $(BC)$ qui passe par $M$ ;
- $U$ le milieu de $[AB]$ et $V$ le milieu de $[AM]$.

La droite $(UV)$ coupe la droite $(d)$ en un point $I$ et la droite $(BC)$ en un point $J$.

![Le triangle ABC rectangle en B, la droite (d) et la droite (UV) qui coupe (d) en I et (BC) en J](10201-figure-1.svg)

Montrer que $AC = IJ$.

## Hints

1. Dans le triangle $ABM$, les points $U$ et $V$ sont les milieux de deux côtés. Que peut-on dire de la droite $(UV)$ ?
2. La droite $(IJ)$ est donc parallèle à $(BM)$. Cherchez deux parallélogrammes qui ont un côté $[BM]$ : regardez $UBMI$, puis $JBMU$.
3. Il reste à comparer $BM$ et $AC$. Complétez le triangle rectangle $ABC$ en un rectangle et regardez ses diagonales.

## Solution

**Étape 1 : la droite $(UV)$ est parallèle à $(BM)$.**

Dans le triangle $ABM$, le point $U$ est le milieu de $[AB]$ et le point $V$ est le milieu de $[AM]$. D'après le théorème des milieux, la droite $(UV)$ est parallèle à $(BM)$. Les points $I$ et $J$ sont sur cette droite, donc $(UI)$ et $(UJ)$ sont parallèles à $(BM)$.

**Étape 2 : $UBMI$ est un parallélogramme.**

Les droites $(AB)$ et $(d)$ sont toutes les deux perpendiculaires à $(BC)$, donc elles sont parallèles. Ainsi $(UB)$ est parallèle à $(MI)$.

D'après l'étape 1, $(UI)$ est parallèle à $(BM)$.

Le quadrilatère $UBMI$ a ses côtés opposés parallèles deux à deux : c'est un parallélogramme. Donc

$$UI = BM.$$

**Étape 3 : $JBMU$ est un parallélogramme.**

Dans le triangle $ABC$, les points $U$ et $M$ sont les milieux de $[AB]$ et de $[AC]$. D'après le théorème des milieux, $(UM)$ est parallèle à $(BC)$, donc à $(JB)$.

D'après l'étape 1, $(UJ)$ est parallèle à $(BM)$.

Le quadrilatère $JBMU$ a donc lui aussi ses côtés opposés parallèles : c'est un parallélogramme, et

$$UJ = BM.$$

**Étape 4 : $IJ = 2\,BM$.**

Le point $I$ est sur $(d)$, donc du même côté de la droite $(AB)$ que $C$. Le point $J$ est de l'autre côté : dans le parallélogramme $JBMU$, on passe de $B$ à $J$ comme on passe de $M$ à $U$, c'est-à-dire en s'éloignant de $C$. Les points $I$ et $J$ sont donc de part et d'autre de la droite $(AB)$ : le segment $[IJ]$ traverse cette droite. Or la droite $(IJ)$ ne coupe $(AB)$ qu'en un seul point, $U$. Le point $U$ est donc entre $I$ et $J$, et

$$IJ = IU + UJ = BM + BM = 2\,BM.$$

**Étape 5 : $BM$ vaut la moitié de $AC$.**

Plaçons le point $D$ tel que $ABCD$ soit un rectangle. Les diagonales $[AC]$ et $[BD]$ d'un rectangle ont la même longueur et se coupent en leur milieu, qui est $M$. Donc $BM$ est la moitié de $BD$, c'est-à-dire la moitié de $AC$ :

$$BM = \frac{AC}{2}.$$

(C'est la propriété bien connue : le milieu de l'hypoténuse d'un triangle rectangle est à la même distance des trois sommets.)

**Conclusion.**

$$IJ = 2\,BM = 2 \times \frac{AC}{2} = AC.$$

Le segment $[IJ]$ a bien la même longueur que l'hypoténuse $[AC]$.

## Going further

1. Montrer que le point $U$ est le milieu de $[IJ]$.
2. Montrer que $AIMU$ est un rectangle.
