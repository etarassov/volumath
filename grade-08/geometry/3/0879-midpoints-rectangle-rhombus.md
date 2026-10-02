---
id: "0879"
title: "Les milieux d'un rectangle, les milieux d'un losange"
grade: 8
theme: geometry
difficulty: 3
duration_min: 30
tags: [milieu, droite-des-milieux, rectangle, losange, diagonales]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes issus des envois POFM (problèmes 1-3) », niveau collège - débutants, 12 mai 2023"
  reference: "Preparation.POFM.pdf, exercice 23, d'après les envois POFM 2019-2022"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Preparation.POFM.pdf"
---

## Statement

$ABCD$ est un quadrilatère. On note $M$, $N$, $P$ et $Q$ les milieux respectifs des segments $[AB]$, $[BC]$, $[CD]$ et $[DA]$.

1. Montrer que si $ABCD$ est un rectangle, alors le quadrilatère $MNPQ$ est un losange.
2. Montrer que si $ABCD$ est un losange, alors le quadrilatère $MNPQ$ est un rectangle.

*Rappel (théorème de la droite des milieux) : dans un triangle, le segment qui joint les milieux de deux côtés est parallèle au troisième côté et mesure la moitié de sa longueur.*

## Hints

1. Trace les deux diagonales $[AC]$ et $[BD]$ de $ABCD$. Chacune coupe le quadrilatère en deux triangles.
2. Dans le triangle $ABC$, les points $M$ et $N$ sont les milieux de deux côtés. Que dit le théorème de la droite des milieux sur $[MN]$ ?
3. Recommence pour les trois autres côtés de $MNPQ$ : chacun est une droite des milieux dans un triangle découpé par une diagonale. Les quatre côtés de $MNPQ$ ne dépendent donc que des deux diagonales de $ABCD$.
4. Que sais-tu des diagonales d'un rectangle ? Et de celles d'un losange ? Enfin : un quadrilatère dont les quatre côtés sont de même longueur est un losange, et un parallélogramme qui possède un angle droit est un rectangle.

## Solution

**L'idée commune aux deux questions : les côtés de $MNPQ$ sont des droites des milieux, donc ils ne parlent que des diagonales de $ABCD$.**

Traçons les deux diagonales $[AC]$ et $[BD]$ et appliquons quatre fois le théorème de la droite des milieux.

- Dans le triangle $ABC$ : $M$ est le milieu de $[AB]$ et $N$ celui de $[BC]$, donc
$$MN \parallel AC \qquad \text{et} \qquad MN = \frac{AC}{2}.$$
- Dans le triangle $BCD$ : $N$ est le milieu de $[BC]$ et $P$ celui de $[CD]$, donc
$$NP \parallel BD \qquad \text{et} \qquad NP = \frac{BD}{2}.$$
- Dans le triangle $CDA$ : $P$ est le milieu de $[CD]$ et $Q$ celui de $[DA]$, donc
$$PQ \parallel AC \qquad \text{et} \qquad PQ = \frac{AC}{2}.$$
- Dans le triangle $DAB$ : $Q$ est le milieu de $[DA]$ et $M$ celui de $[AB]$, donc
$$QM \parallel BD \qquad \text{et} \qquad QM = \frac{BD}{2}.$$

Retenons les deux faits utiles :

> **(a)** Deux côtés opposés de $MNPQ$ mesurent $\dfrac{AC}{2}$ et les deux autres $\dfrac{BD}{2}$.
>
> **(b)** Les côtés $[MN]$ et $[PQ]$ sont parallèles à $(AC)$, les côtés $[NP]$ et $[QM]$ sont parallèles à $(BD)$.

D'après **(b)**, $MNPQ$ a ses côtés opposés parallèles deux à deux : **c'est un parallélogramme**, et cela quel que soit le quadrilatère $ABCD$ de départ.

### 1. Si $ABCD$ est un rectangle, $MNPQ$ est un losange

Les diagonales d'un rectangle ont la même longueur : $AC = BD$.

D'après **(a)**, les quatre côtés de $MNPQ$ valent alors

$$MN = PQ = \frac{AC}{2} \qquad \text{et} \qquad NP = QM = \frac{BD}{2} = \frac{AC}{2}.$$

Les quatre côtés de $MNPQ$ ont donc la même longueur : **$MNPQ$ est un losange.**

### 2. Si $ABCD$ est un losange, $MNPQ$ est un rectangle

Les diagonales d'un losange sont perpendiculaires : $(AC) \perp (BD)$.

D'après **(b)**, $(MN)$ est parallèle à $(AC)$ et $(NP)$ est parallèle à $(BD)$. Deux droites parallèles à deux droites perpendiculaires sont perpendiculaires entre elles, donc

$$(MN) \perp (NP),$$

c'est-à-dire que $MNPQ$ possède un angle droit, en $N$.

Or on a déjà vu que $MNPQ$ est un parallélogramme. Un parallélogramme qui a un angle droit est un rectangle : **$MNPQ$ est un rectangle.**

## Going further

Les deux résultats se lisent d'un seul coup d'œil si l'on retient la règle générale : **la forme de $MNPQ$ ne dépend que des diagonales de $ABCD$.** Diagonales de même longueur donnent un losange, diagonales perpendiculaires donnent un rectangle. Et si les diagonales sont à la fois de même longueur et perpendiculaires — c'est le cas du carré — alors $MNPQ$ est à la fois un losange et un rectangle, donc un carré.
