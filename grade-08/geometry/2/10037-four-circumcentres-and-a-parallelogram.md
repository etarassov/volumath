---
id: "10037"
title: "Quatre centres de cercles circonscrits et un parallélogramme"
grade: 8
theme: geometry
difficulty: 2
duration_min: 15
tags: [cercle circonscrit, mediatrice, parallelogramme, droites paralleles, quadrilatere]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 2 (géométrie)"
  reference: "2017-10_ofm-2014-2015-envoi-2.pdf, Exercices du groupe B, exercice 1 ; corrigé 2017-10_ofm-2014-2015-envoi-2-solutions.pdf (coquille dans la dernière phrase du corrigé, qui écrit « ABCD a ses côtés opposés parallèles » au lieu de O₁O₂O₃O₄)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-2.pdf"
---

## Statement

Soit $ABCD$ un quadrilatère convexe, c'est-à-dire dont les diagonales $[AC]$ et $[BD]$ sont à l'intérieur. On note $P$ le point d'intersection de ses diagonales. Soient $O_1$, $O_2$, $O_3$ et $O_4$ les centres des cercles circonscrits aux triangles $ABP$, $BCP$, $CDP$ et $DAP$.

![Le quadrilatère ABCD, ses diagonales qui se coupent en P, et les quatre centres O₁, O₂, O₃, O₄ reliés en tirets](10037-figure-1.svg)

Montrer que $O_1O_2O_3O_4$ est un parallélogramme.

## Hints

1. Le segment $[PB]$ est un côté du triangle $ABP$ et aussi un côté du triangle $BCP$. Que peux-tu dire des points $O_1$ et $O_2$ par rapport à ce segment ?
2. La droite $(O_1O_2)$ est donc une droite bien connue. Quelle est sa direction par rapport à la diagonale $(BD)$ ?
3. Fais de même pour la droite $(O_3O_4)$. Que dire de deux droites perpendiculaires à une même troisième droite ?

## Solution

**Rappel.** Le centre du cercle circonscrit à un triangle est à égale distance des trois sommets. Il est donc sur la médiatrice de chacun des trois côtés.

### Étape 1 : les côtés $[O_1O_2]$ et $[O_3O_4]$

Le segment $[PB]$ est un côté du triangle $ABP$, donc $O_1$ est sur la médiatrice de $[PB]$. C'est aussi un côté du triangle $BCP$, donc $O_2$ est sur la même médiatrice.

Les points $O_1$ et $O_2$ sont distincts. En effet, s'ils étaient confondus, un même cercle passerait par $A$, $B$, $P$ et $C$, et il couperait la droite $(AC)$ en trois points distincts $A$, $P$, $C$, ce qui est impossible. La droite $(O_1O_2)$ est donc la médiatrice de $[PB]$. Elle est perpendiculaire à $(PB)$, c'est-à-dire à la diagonale $(BD)$.

De la même façon, $O_3$ et $O_4$ sont sur la médiatrice de $[PD]$, et la droite $(O_3O_4)$ est perpendiculaire à $(BD)$.

Deux droites perpendiculaires à une même droite sont parallèles. Donc $(O_1O_2)$ et $(O_3O_4)$ sont parallèles.

### Étape 2 : les côtés $[O_2O_3]$ et $[O_4O_1]$

Le même raisonnement avec le segment $[PC]$, côté commun aux triangles $BCP$ et $CDP$, montre que $(O_2O_3)$ est la médiatrice de $[PC]$. Avec le segment $[PA]$, côté commun aux triangles $DAP$ et $ABP$, la droite $(O_4O_1)$ est la médiatrice de $[PA]$. Ces deux droites sont perpendiculaires à la diagonale $(AC)$, donc elles sont parallèles.

### Étape 3 : ce n'est pas un quadrilatère aplati

Le point $P$ est strictement entre $B$ et $D$, donc les milieux de $[PB]$ et de $[PD]$ sont différents, et les deux médiatrices de l'étape 1 sont deux droites parallèles distinctes. De même pour les deux médiatrices de l'étape 2. Les quatre points $O_1$, $O_2$, $O_3$, $O_4$ sont les quatre points où ces deux paires de droites se croisent.

**Conclusion.** Le quadrilatère $O_1O_2O_3O_4$ a ses côtés opposés parallèles deux à deux : c'est un parallélogramme.

## Going further

- Les angles du parallélogramme $O_1O_2O_3O_4$ sont les mêmes que les angles entre les deux diagonales de $ABCD$. Quand les diagonales de $ABCD$ sont perpendiculaires, c'est un rectangle.
- La distance entre les droites $(O_1O_2)$ et $(O_3O_4)$ est la distance entre les milieux de $[PB]$ et de $[PD]$, c'est-à-dire $\frac{BD}{2}$. Peux-tu en déduire l'aire de $O_1O_2O_3O_4$ quand les diagonales de $ABCD$ sont perpendiculaires ?
