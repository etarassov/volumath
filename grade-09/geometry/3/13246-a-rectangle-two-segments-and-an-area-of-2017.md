---
id: "13246"
title: "Un rectangle, deux segments et une aire de 2017"
grade: 9
theme: geometry
difficulty: 3
duration_min: 20
tags: [thales, aire, rectangle, racines-carrees]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017, premier tour"
  reference: "2017-10_coupe_automne_2017_elim.pdf, exercices lycéens, exercice 20 ; réponse (8068) dans 2017-10_coupe_automne_2017_elim_lycee.pdf, pas de corrigé rédigé. L'original demande l'entier m tel que √m − EF soit un entier ; on demande ici directement EF, qui vaut √8068 − 2."
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017_elim.pdf"
---

## Statement

Soit $ABCD$ un rectangle. Soient $E$ et $F$ des points tels que $A$, $E$, $F$, $B$ soient alignés dans cet ordre, avec $AE = FB = BC = 1$.

Soit $G$ le point d'intersection des droites $(DE)$ et $(CF)$. On suppose que l'aire du triangle $GCD$ est égale à $2017$.

Calculer la longueur $EF$.

## Hints

1. Fais une figure. Où se trouve $G$ par rapport à la droite $(AB)$ ?
2. Note $L = AB$. Que vaut $EF$ ? Les droites $(EF)$ et $(DC)$ sont parallèles : applique le théorème de Thalès dans le triangle $GDC$.
3. Note $J$ et $K$ les pieds des perpendiculaires à $(DC)$ et à $(AB)$ issues de $G$. Compare $\frac{GK}{GJ}$ et $\frac{EF}{DC}$.

## Solution

Notons $L = AB = DC$. Comme $AE = FB = 1$, on a $EF = L - 2$, et $L > 2$.

**Où est $G$.** Les droites $(DE)$ et $(CF)$ partent des extrémités de $[DC]$ et traversent $(AB)$ en $E$ et $F$, plus proches l'un de l'autre que $D$ et $C$. Elles se rapprochent donc, et se coupent de l'autre côté de $(AB)$ par rapport à $(DC)$.

**Thalès.** Notons $J$ et $K$ les pieds des perpendiculaires à $(DC)$ et à $(AB)$ issues de $G$ : $G$, $K$, $J$ sont alignés et $GJ = GK + KJ = GK + 1$, puisque les droites $(AB)$ et $(DC)$ sont à distance $BC = 1$.

Les droites $(EF)$ et $(DC)$ sont parallèles. Dans le triangle $GDC$, le théorème de Thalès donne $\frac{GE}{GD} = \frac{EF}{DC}$. Dans le triangle $GDJ$, où $(EK)$ est parallèle à $(DJ)$, il donne $\frac{GE}{GD} = \frac{GK}{GJ}$. Donc, en notant $g = GJ$,

$$\frac{g - 1}{g} = \frac{L - 2}{L}.$$

**La hauteur.** En faisant le produit en croix, $L(g - 1) = g(L - 2)$, soit $Lg - L = Lg - 2g$, donc $g = \frac{L}{2}$.

**L'aire.** Le triangle $GCD$ a pour base $DC = L$ et pour hauteur $GJ = \frac{L}{2}$, donc son aire vaut $\frac{1}{2} \times L \times \frac{L}{2} = \frac{L^2}{4}$. Ainsi $L^2 = 4 \times 2017 = 8068$, et $L = \sqrt{8068} = 2\sqrt{2017}$.

**Conclusion.** $EF = L - 2 = 2\sqrt{2017} - 2 = \sqrt{8068} - 2$, environ 87,8.

## Going further

L'énoncé original demandait l'entier $m$ tel que $\sqrt{m} - EF$ soit un entier. On a $\sqrt{8068} - EF = 2$, donc $m = 8068$ convient.
