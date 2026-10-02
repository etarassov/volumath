---
id: "8310"
title: "Un carré et un triangle équilatéral côte à côte"
grade: 9
theme: geometry
difficulty: 3
duration_min: 35
tags: [theoreme-des-milieux, parallelogramme, triangle-equilateral, angles, carre]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, Coupe Animath de printemps 2020"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Coupe Animath de printemps 2020, exercice 15 (lycée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

$ABCD$ est un carré. À l'extérieur du carré, on construit le point $S$ tel que le triangle
$BCS$ soit équilatéral : le triangle est donc posé contre le côté $[BC]$, du côté opposé au carré.

On note ensuite :

- $N$ le milieu du segment $[AS]$ ;
- $P$ le milieu du segment $[BS]$ ;
- $H$ le milieu du segment $[CD]$.

1. Calculer l'angle $\widehat{BPN}$.
2. Calculer l'angle $\widehat{NHC}$.

## Hints

1. Fais d'abord une grande figure soignée, en traçant le carré, puis le triangle équilatéral à l'extérieur, puis les trois milieux. Une bonne figure est ici la moitié du travail.
2. Les points $N$ et $P$ sont les milieux de deux côtés du triangle $SAB$. Que dit le théorème des milieux ?
3. Pour la question 1, la droite $(NP)$ est parallèle à $(AB)$. Sers-toi de la sécante $(SB)$ et des angles correspondants. Il te faudra l'angle $\widehat{ABS}$, qui se décompose en deux morceaux que tu connais.
4. Pour la question 2, le théorème des milieux donne aussi une **longueur** : $NP = \tfrac{1}{2}AB$. Compare-la à $HC$.
5. Tu obtiens un quadrilatère $NPCH$ dont deux côtés opposés sont parallèles et de même longueur. Quelle sorte de quadrilatère est-ce, et que sais-tu de ses angles opposés ?
6. Il ne reste qu'à calculer $\widehat{NPC}$. Dans un triangle équilatéral, la médiane issue d'un sommet est aussi une hauteur.

## Solution

**Préliminaire : le théorème des milieux dans le triangle $SAB$.**

Dans le triangle $SAB$, le point $N$ est le milieu du côté $[SA]$ et le point $P$ est le milieu
du côté $[SB]$. Le théorème des milieux donne alors deux informations :

$$(NP) \parallel (AB) \qquad \text{et} \qquad NP = \frac{1}{2}\,AB .$$

**Question 1 : l'angle $\widehat{BPN}$.**

La droite $(SB)$ coupe les deux droites parallèles $(NP)$ et $(AB)$. Les angles $\widehat{NPS}$
et $\widehat{ABS}$ sont alors correspondants, donc égaux :

$$\widehat{NPS} = \widehat{ABS} .$$

Calculons $\widehat{ABS}$. Le point $S$ est à l'extérieur du carré, de l'autre côté de $(BC)$,
donc la demi-droite $[BC)$ est à l'intérieur de l'angle $\widehat{ABS}$, qui se coupe en deux :

$$\widehat{ABS} = \widehat{ABC} + \widehat{CBS} .$$

Or $\widehat{ABC} = 90°$ car $ABCD$ est un carré, et $\widehat{CBS} = 60°$ car le triangle $BCS$
est équilatéral. Donc

$$\widehat{ABS} = 90° + 60° = 150° , \qquad \text{et donc} \qquad \widehat{NPS} = 150° .$$

Enfin, $P$ est le milieu de $[SB]$, donc $P$ est **entre** $S$ et $B$ : les angles
$\widehat{NPS}$ et $\widehat{BPN}$ sont supplémentaires. Ainsi

$$\widehat{BPN} = 180° - 150° = \boxed{30°} .$$

**Question 2 : l'angle $\widehat{NHC}$.**

*$NPCH$ est un parallélogramme.* Les côtés $[AB]$ et $[CD]$ du carré sont parallèles, et
$(NP) \parallel (AB)$, donc

$$(NP) \parallel (HC) .$$

Pour les longueurs : $H$ est le milieu de $[CD]$, donc $HC = \tfrac{1}{2}CD$. Comme $ABCD$ est un
carré, $CD = AB$, d'où

$$HC = \frac{1}{2}AB = NP .$$

Le quadrilatère $NPCH$ a donc deux côtés opposés, $[NP]$ et $[HC]$, à la fois parallèles et de
même longueur : c'est un parallélogramme. Ses angles opposés sont égaux, donc

$$\widehat{NHC} = \widehat{NPC} .$$

*Calcul de $\widehat{NPC}$.* Dans le triangle équilatéral $BCS$, le point $P$ est le milieu du
côté $[BS]$. La droite $(CP)$ est donc la médiane issue de $C$ ; or dans un triangle équilatéral
une médiane est aussi une hauteur, donc

$$\widehat{CPS} = 90° .$$

On a vu à la question 1 que $\widehat{NPS} = 150°$. La demi-droite $[PC)$ est à l'intérieur de
l'angle $\widehat{NPS}$, donc

$$\widehat{NPC} = \widehat{NPS} - \widehat{CPS} = 150° - 90° = 60° .$$

**Conclusion.**

$$\widehat{NHC} = \boxed{60°} .$$

## Going further

Un piège de cet exercice est le placement du point $S$. Si on le place à l'intérieur du carré,
ou contre un autre côté, tout le reste du raisonnement peut être juste et les réponses fausses.
Avant de se lancer, il vaut toujours la peine de relire l'énoncé une fois la figure tracée, en
vérifiant chaque mot.

Une approche par les coordonnées est possible : on pose $A(0\,;0)$, $B(1\,;0)$, $C(1\,;1)$,
$D(0\,;1)$, et $S$ a alors pour coordonnées $\left(1 + \tfrac{\sqrt 3}{2}\,;\, \tfrac12\right)$.
Elle aboutit, mais elle mène à des cosinus et des tangentes qu'il faut ensuite simplifier, ce
qui est bien plus long que les deux lignes de géométrie élémentaire ci-dessus.
