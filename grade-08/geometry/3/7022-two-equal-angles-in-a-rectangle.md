---
id: "7022"
title: "Deux angles égaux dans un rectangle"
grade: 8
theme: geometry
difficulty: 3
duration_min: 30
tags: [rectangle, chasse-aux-angles, triangle-isocele]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2010"
  reference: "stage_junior_2010.pdf, lundi 25 octobre (géométrie), exercices d'échauffement, exercice 3 ; repris en 2012 (stage_junior_2012.pdf, exercices d'échauffement, exercice 3)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2010.pdf"
---

## Statement

Soit $ABCD$ un rectangle. On note $E$ le milieu du côté $[AD]$ et $F$ le milieu du côté
$[DC]$. Les droites $(AF)$ et $(EC)$ se coupent en un point $G$.

![Le rectangle ABCD, les milieux E de [AD] et F de [DC], le point G intersection de (AF) et (EC), et les segments [BE] et [BF]](7022-figure-1.svg)

Montrer que les angles $\widehat{CGF}$ et $\widehat{FBE}$ sont égaux.

## Hints

1. Dans le triangle $GFC$, la somme des trois angles vaut $180°$. Cela exprime
   $\widehat{CGF}$ à l'aide de deux angles que l'on sait lire ailleurs sur la figure.
2. Les droites $(AB)$ et $(DC)$ sont parallèles : cherche des angles alternes-internes.
3. Où se trouve $F$ par rapport au segment $[AB]$ ? Que peux-tu dire du triangle $ABF$ ?
4. Cherche une symétrie de la figure qui échange $A$ et $D$. Que fait-elle des triangles $ABE$ et $DCE$ ?

## Solution

Toute la démonstration consiste à ramener les angles de la figure sur le sommet $B$.

**Étape 1 : écrire $\widehat{CGF}$ dans le triangle $GFC$.**

Les points $A$, $G$, $F$ sont alignés dans cet ordre, et les points $E$, $G$, $C$ aussi. Donc
l'angle du triangle $GFC$ en $F$ est $\widehat{AFC}$, et son angle en $C$ est $\widehat{ECD}$
(car $D$, $F$, $C$ sont alignés). La somme des angles donne
$$\widehat{CGF} = 180° - \widehat{AFC} - \widehat{ECD} . \qquad (1)$$

**Étape 2 : découper $\widehat{AFC}$.**

Vu de $F$, le point $B$ est entre les directions $FA$ et $FC$, donc
$$\widehat{AFC} = \widehat{AFB} + \widehat{BFC} . \qquad (2)$$

**Étape 3 : $\widehat{BFC} = \widehat{ABF}$.**

Les droites $(AB)$ et $(DC)$ sont parallèles, et $(BF)$ est une sécante. Les angles
$\widehat{BFC}$ et $\widehat{ABF}$ sont alternes-internes, donc égaux :
$$\widehat{BFC} = \widehat{ABF} . \qquad (3)$$

**Étape 4 : le triangle $ABF$ est isocèle en $F$.**

$F$ est le milieu de $[DC]$. Dans le rectangle, la médiatrice de $[AB]$ est aussi la
médiatrice de $[DC]$, donc elle passe par $F$. Ainsi $FA = FB$ : le triangle $ABF$ est isocèle
en $F$, ses angles à la base sont égaux, et
$$\widehat{AFB} = 180° - 2\,\widehat{ABF} . \qquad (4)$$

**Étape 5 : $\widehat{ECD} = \widehat{ABE}$.**

Notons $\Delta$ la droite qui passe par $E$ et qui est parallèle à $(AB)$. Comme $ABCD$ est un
rectangle, $\Delta$ est perpendiculaire à $(AD)$ et passe par le milieu $E$ de $[AD]$ : c'est la
médiatrice de $[AD]$. Pour la même raison, c'est aussi la médiatrice de $[BC]$.

La symétrie par rapport à $\Delta$ échange donc $A$ et $D$, échange $B$ et $C$, et laisse $E$
en place. Elle envoie le triangle $ABE$ sur le triangle $DCE$, et l'angle $\widehat{ABE}$ sur
l'angle $\widehat{DCE}$. Une symétrie conserve les angles, donc
$$\widehat{ABE} = \widehat{DCE} = \widehat{ECD} . \qquad (5)$$

**Étape 6 : le calcul final.**

Reportons $(2)$, $(3)$, $(4)$ et $(5)$ dans $(1)$ :
$$\begin{aligned}
\widehat{CGF} &= 180° - \widehat{AFB} - \widehat{BFC} - \widehat{ECD} \\
              &= 180° - \left(180° - 2\,\widehat{ABF}\right) - \widehat{ABF} - \widehat{ABE} \\
              &= 2\,\widehat{ABF} - \widehat{ABF} - \widehat{ABE} \\
              &= \widehat{ABF} - \widehat{ABE} .
\end{aligned}$$

Enfin, vu de $B$, le point $E$ est entre les directions $BA$ et $BF$, donc
$\widehat{ABF} = \widehat{ABE} + \widehat{EBF}$, c'est-à-dire
$$\widehat{ABF} - \widehat{ABE} = \widehat{EBF} .$$

**Conclusion.** $\widehat{CGF} = \widehat{FBE}$.

## Going further

Deux ingrédients portent toute la démonstration : $F$ est sur la médiatrice de $[AB]$, ce qui
rend le triangle $ABF$ isocèle (étape 4), et les triangles $ABE$ et $DCE$ sont symétriques
l'un de l'autre (étape 5). Les dimensions exactes du rectangle n'interviennent nulle part : le résultat vaut
pour un rectangle très plat comme pour un rectangle très haut.

Les angles droits, eux, ne servent qu'à l'étape 5. Si l'on remplace le rectangle par un
parallélogramme quelconque, la droite $\Delta$ est-elle encore un axe de symétrie de la
figure ? Les angles $\widehat{ABE}$ et $\widehat{DCE}$ restent-ils égaux ? Refais le
raisonnement pour le savoir.
