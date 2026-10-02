---
id: "8179"
title: "La grenouille, la clôture et la rivière"
grade: 12
theme: probability-statistics
difficulty: 5
duration_min: 50
tags: [marche-aleatoire, esperance, suite-recurrente, telescopage]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 3, exercice 110 (deux étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Raphaël la grenouille cherche une rivière. La rivière est la droite horizontale d'équation $y = 24$, et une clôture infranchissable est la droite horizontale d'équation $y = 0$.

Raphaël saute de point à coordonnées entières en point à coordonnées entières : à chaque saut, il choisit au hasard, de façon équiprobable, l'une des quatre directions (haut, bas, gauche, droite) et avance d'une unité. Mais s'il se trouve sur la clôture, il ne peut pas la franchir : il choisit alors au hasard, de façon équiprobable, l'une des **trois** autres directions.

Il part du point $(0\,;\,21)$ et s'arrête dès qu'il atteint la rivière.

En moyenne, combien de sauts lui faut-il pour atteindre la rivière ?

## Hints

1. La coordonnée horizontale ne sert à rien : seule l'ordonnée compte. Que devient le problème ?
2. Note $E(y)$ le nombre moyen de sauts nécessaires en partant de l'ordonnée $y$. Que vaut $E(24)$ ?
3. Pour $1 \leqslant y \leqslant 23$, écris $E(y)$ en fonction de $E(y-1)$, $E(y)$ et $E(y+1)$ : avec quelles probabilités l'ordonnée monte-t-elle, descend-elle, ou reste-t-elle la même ?
4. Sur la clôture, il n'y a que trois directions possibles, dont une seule fait monter. Écris la relation correspondante en $y = 0$ et simplifie.
5. Pose $d_y = E(y) - E(y+1)$ et récris la relation du point 3 : tu obtiens une suite arithmétique.

## Solution

On admettra que la grenouille atteint la rivière avec probabilité $1$ et que les nombres moyens de sauts considérés ci-dessous sont bien finis.

**Étape 1 : se ramener à une seule coordonnée.**

Les déplacements horizontaux ne rapprochent ni n'éloignent de la rivière. Seule l'ordonnée $y$ compte. À chaque saut :

- si $1 \leqslant y \leqslant 23$ : la grenouille monte avec probabilité $\dfrac14$, descend avec probabilité $\dfrac14$, et garde la même ordonnée avec probabilité $\dfrac12$ (les deux sauts horizontaux) ;
- si $y = 0$ : seules trois directions sont possibles, donc elle monte avec probabilité $\dfrac13$ et garde la même ordonnée avec probabilité $\dfrac23$.

Notons $E(y)$ le nombre moyen de sauts nécessaires pour atteindre la rivière en partant de l'ordonnée $y$. On a bien sûr

$$E(24) = 0 .$$

**Étape 2 : les relations.**

En distinguant selon le premier saut, pour $1 \leqslant y \leqslant 23$ :

$$E(y) = 1 + \frac14 E(y+1) + \frac14 E(y-1) + \frac12 E(y) .$$

En multipliant par $4$ et en regroupant :

$$4E(y) - 2E(y) = 4 + E(y+1) + E(y-1), \qquad \text{c'est-à-dire} \qquad E(y+1) - 2E(y) + E(y-1) = -4 .$$

Pour $y = 0$ :

$$E(0) = 1 + \frac13 E(1) + \frac23 E(0), \qquad \text{donc} \qquad \frac13 E(0) = 1 + \frac13 E(1), \qquad \text{donc} \qquad E(0) = 3 + E(1) .$$

**Étape 3 : une suite arithmétique.**

Posons, pour $0 \leqslant y \leqslant 23$,

$$d_y = E(y) - E(y+1) .$$

La relation du milieu se récrit : comme $E(y+1) - E(y) = -d_y$ et $E(y) - E(y-1) = -d_{y-1}$,

$$\big(E(y+1) - E(y)\big) - \big(E(y) - E(y-1)\big) = -d_y + d_{y-1} = -4 ,$$

donc

$$d_y = d_{y-1} + 4 \qquad \text{pour } 1 \leqslant y \leqslant 23 .$$

La suite $(d_y)$ est arithmétique de raison $4$. Son premier terme est donné par la relation sur la clôture :

$$d_0 = E(0) - E(1) = 3 .$$

Donc

$$d_y = 3 + 4y \qquad \text{pour } 0 \leqslant y \leqslant 23 .$$

**Étape 4 : le résultat.**

Comme $E(24) = 0$, la somme télescopique donne

$$E(21) = \big(E(21)-E(22)\big) + \big(E(22)-E(23)\big) + \big(E(23)-E(24)\big) = d_{21} + d_{22} + d_{23} .$$

Or $d_{21} = 3 + 84 = 87$, $d_{22} = 3 + 88 = 91$ et $d_{23} = 3 + 92 = 95$, d'où

$$E(21) = 87 + 91 + 95 = 273 .$$

$$\boxed{\ \text{Il faut en moyenne } 273 \text{ sauts.}\ }$$

## Going further

Le même calcul donne le nombre moyen de sauts depuis n'importe quelle ordonnée $y$ :

$$E(y) = \sum_{u=y}^{23}(3+4u) = 3(24-y) + 4\sum_{u=y}^{23} u = 1176 - y - 2y^2 .$$

On retrouve $E(21) = 1176 - 21 - 882 = 273$, et l'on obtient depuis la clôture elle-même

$$E(0) = 1176 .$$

Le rapport est instructif : la grenouille part huit fois plus loin de la rivière, et n'attend qu'environ quatre fois plus longtemps. Rien n'est proportionnel à la distance dans une marche aléatoire.

Notons enfin le rôle de la clôture. Sans elle, la grenouille pourrait s'éloigner indéfiniment vers le bas, et c'est justement la clôture qui la renvoie vers le haut et fixe le premier terme $d_0 = 3$ de la suite arithmétique.
