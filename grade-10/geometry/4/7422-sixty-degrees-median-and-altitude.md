---
id: "7422"
title: "Un angle de 60°, une médiane et une hauteur"
grade: 10
theme: geometry
difficulty: 4
duration_min: 35
tags: [triangle, mediane, hauteur, pythagore, equation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2010, exercices supplémentaires du premier jour"
  reference: "stage_ete_2010.pdf, « Premier jour », exercices supplémentaires, exercice 2 (le corrigé imprimé écrit AH = AC·sin(60°) là où il faut AH = AC·cos(60°), et laisse de côté un cas de figure ; la solution ci-dessous est refaite)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2010.pdf"
---

## Statement

Dans un triangle $ABC$, l'angle $\widehat{BAC}$ mesure $60°$. On suppose de plus que la médiane
issue de $B$ et la hauteur issue de $C$ ont la même longueur.

Montrer que le triangle $ABC$ est équilatéral.

*Rappel : la médiane issue de $B$ est le segment qui joint $B$ au milieu de $[AC]$ ; la hauteur
issue de $C$ est le segment qui joint $C$ à son projeté orthogonal sur la droite $(AB)$.*

## Hints

1. Fais une figure propre. Note $M$ le milieu de $[AC]$ et $H$ le pied de la hauteur issue de $C$.
   L'hypothèse s'écrit $BM = CH$.
2. Pose $b = AC$ et $c = AB$, et exprime tout en fonction de $b$ et $c$. Dans le triangle $AHC$,
   rectangle en $H$, l'angle en $A$ vaut $60°$ : que valent $AH$ et $CH$ ?
3. Pour calculer $BM$, projette aussi $M$ sur la droite $(AB)$, en un point $M'$, et applique le
   théorème de Pythagore dans le triangle $BM'M$. Tu obtiendras une équation du second degré en
   $c$ qui se factorise.

## Solution

Posons $b = AC$ et $c = AB$, deux longueurs strictement positives. Notons $M$ le milieu de $[AC]$
et $H$ le pied de la hauteur issue de $C$ sur la droite $(AB)$.

**La hauteur issue de $C$.**

Le triangle $AHC$ est rectangle en $H$, et son angle en $A$ vaut $60°$. Donc
$$AH = AC \cos 60° = \frac{b}{2}, \qquad CH = AC \sin 60° = \frac{b\sqrt{3}}{2}.$$

**La médiane issue de $B$.**

Notons $M'$ le projeté orthogonal de $M$ sur la droite $(AB)$. Le triangle $AM'M$ est rectangle en
$M'$, avec un angle de $60°$ en $A$ et $AM = \dfrac{b}{2}$. Donc
$$AM' = AM \cos 60° = \frac{b}{4}, \qquad MM' = AM \sin 60° = \frac{b\sqrt{3}}{4}.$$

Les points $H$ et $M'$ sont du même côté de $A$ sur la droite $(AB)$, du côté de $B$, puisque
l'angle en $A$ est aigu.

Le triangle $BM'M$ est rectangle en $M'$, donc le théorème de Pythagore donne
$$BM^2 = BM'^2 + MM'^2 = \left(c - \frac{b}{4}\right)^2 + \frac{3b^2}{16}.$$

Cette formule est correcte même si $M'$ se trouve au-delà de $B$, car seule intervient le carré de
la distance $BM' = \left|c - \dfrac{b}{4}\right|$.

**On traduit l'hypothèse.**

L'hypothèse $BM = CH$ donne $BM^2 = CH^2$, c'est-à-dire
$$\left(c - \frac{b}{4}\right)^2 + \frac{3b^2}{16} = \frac{3b^2}{4}.$$

Développons le carré :
$$c^2 - \frac{bc}{2} + \frac{b^2}{16} + \frac{3b^2}{16} = \frac{3b^2}{4},$$
$$c^2 - \frac{bc}{2} + \frac{b^2}{4} = \frac{3b^2}{4},$$
$$c^2 - \frac{bc}{2} - \frac{b^2}{2} = 0.$$

Multiplions par $2$ :
$$2c^2 - bc - b^2 = 0.$$

**On factorise.**

$$2c^2 - bc - b^2 = (c - b)(2c + b).$$

Vérifions ce développement : $(c-b)(2c+b) = 2c^2 + bc - 2bc - b^2 = 2c^2 - bc - b^2$. C'est bien
cela.

L'équation devient
$$(c - b)(2c + b) = 0.$$

Comme $b > 0$ et $c > 0$, le facteur $2c + b$ est strictement positif. Il reste donc
$$c = b, \qquad \text{c'est-à-dire} \qquad AB = AC.$$

**Conclusion.**

Le triangle $ABC$ est isocèle en $A$, donc ses angles en $B$ et en $C$ sont égaux. Leur somme vaut
$180° - 60° = 120°$, donc chacun mesure $60°$.

Les trois angles valent $60°$ : **le triangle $ABC$ est équilatéral.**

## Going further

L'hypothèse « l'angle en $A$ vaut $60°$ » est-elle vraiment nécessaire ? Existe-t-il un triangle
non équilatéral dans lequel la médiane issue de $B$ et la hauteur issue de $C$ ont la même
longueur ?
