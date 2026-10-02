---
id: "13036"
title: "Les milieux des milieux dans un carré"
grade: 8
theme: geometry
difficulty: 2
duration_min: 15
tags: [carre, milieux, droite des milieux, aire]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, éliminatoires du test de rentrée 2015 (Coupe Animath d'automne), questionnaire collégiens"
  reference: "2017-09_coupe_automne_2015_elim_college.pdf, exercice 10 ; corrigé 2017-09_coupe_automne_2015_elim_college_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015_elim_college.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015_elim_college.pdf"
---

## Statement

Soit $ABCD$ un carré de côté $AB = 16$ cm.

On note $E$, $F$, $G$ et $H$ les milieux des côtés $[AB]$, $[BC]$, $[CD]$ et $[DA]$. Puis on note $I$, $J$, $K$ et $L$ les milieux des segments $[EF]$, $[FG]$, $[GH]$ et $[HE]$.

Déterminer l'aire du quadrilatère $IJKL$.

## Hints

1. Fais une figure soignée.
2. Dans le triangle $EFG$, les points $I$ et $J$ sont les milieux de deux côtés. Que peux-tu dire du segment $[IJ]$ ?
3. Que vaut la longueur $EG$ ? Et quelle est la nature du quadrilatère $IJKL$ ?

## Solution

**Les segments $[EG]$ et $[FH]$.** Les points $E$ et $G$ sont les milieux de deux côtés opposés du carré, donc $AEGD$ est un rectangle : le segment $[EG]$ est parallèle à $(AD)$ et $EG = AD = 16$ cm. De même, $[FH]$ est parallèle à $(AB)$ et $FH = 16$ cm.

**Les côtés de $IJKL$.** Dans le triangle $EFG$, le point $I$ est le milieu de $[EF]$ et $J$ celui de $[FG]$. D'après le théorème des milieux, la droite $(IJ)$ est parallèle à $(EG)$, et
$$IJ = \frac{EG}{2} = 8 \text{ cm} .$$
De la même façon :

- dans le triangle $FGH$, $(JK)$ est parallèle à $(FH)$ et $JK = \dfrac{FH}{2} = 8$ cm ;
- dans le triangle $GHE$, $(KL)$ est parallèle à $(EG)$ et $KL = 8$ cm ;
- dans le triangle $HEF$, $(LI)$ est parallèle à $(FH)$ et $LI = 8$ cm.

**La nature de $IJKL$.** Ses quatre côtés mesurent $8$ cm. De plus, $(IJ)$ est parallèle à $(AD)$ et $(JK)$ est parallèle à $(AB)$, qui sont perpendiculaires : l'angle en $J$ est droit. Un quadrilatère dont les quatre côtés sont égaux et qui a un angle droit est un carré.

**Conclusion.** $IJKL$ est un carré de côté $8$ cm, donc son aire vaut
$$8 \times 8 = 64 \text{ cm}^2 .$$

**Une autre façon de voir.** Le carré $EFGH$ s'obtient en coupant les quatre coins de $ABCD$, quatre triangles rectangles isocèles de côtés $8$ cm : son aire vaut $256 - 4 \times 32 = 128$ cm², la moitié de celle de $ABCD$. De la même façon, l'aire de $IJKL$ est la moitié de celle de $EFGH$, soit $64$ cm².

## Going further

1. On recommence la construction à partir du carré $IJKL$, et ainsi de suite. Quelle est l'aire du carré obtenu après dix constructions en partant de $ABCD$ ?
2. On part maintenant d'un quadrilatère convexe $ABCD$ quelconque, d'aire $256$ cm². On construit $E$, $F$, $G$, $H$ puis $I$, $J$, $K$, $L$ de la même façon. Montrer que l'aire de $EFGH$ vaut encore $128$ cm².
