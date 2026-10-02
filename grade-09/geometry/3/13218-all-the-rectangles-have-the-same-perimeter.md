---
id: "13218"
title: "Tous les rectangles ont le même périmètre"
grade: 9
theme: geometry
difficulty: 3
duration_min: 20
tags: [thales, pythagore, triangle-isocele, perimetre, rectangle]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM), éliminatoires"
  reference: "2017-09_coupe_automne_2016_elim.pdf, exercices lycéens, exercice 19 ; corrigé 2017-09_coupe_automne_2016_elim_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016_elim.pdf"
---

## Statement

Soit $ABC$ un triangle isocèle en $A$. On considère les rectangles $MNPQ$ dont deux sommets $M$ et $N$ sont sur le segment $[BC]$, le sommet $Q$ sur $[AB]$ et le sommet $P$ sur $[AC]$.

On sait que **tous** ces rectangles ont un périmètre égal à $84$. Que vaut $AB^2$ ?

## Hints

1. Note $D$ le milieu de $[BC]$, $b = BD$ et $h = AD$. Le rectangle est placé symétriquement : pourquoi $BM = CN$ ?
2. Pose $x = BM$. Exprime $MN$, puis $MQ$ à l'aide du théorème de Thalès dans le triangle $ABD$.
3. Le demi-périmètre $MQ + MN$ vaut $42$ quel que soit $x$. Que dois-tu en conclure sur le coefficient de $x$ ?

## Solution

Notons $D$ le milieu de $[BC]$. Comme $ABC$ est isocèle en $A$, la droite $(AD)$ est perpendiculaire à $(BC)$. Posons $b = BD = DC$ et $h = AD$.

**Le rectangle est symétrique.** Les côtés $[MQ]$ et $[NP]$ du rectangle sont perpendiculaires à $(BC)$ et de même longueur. Les triangles $BMQ$ et $CNP$ sont rectangles en $M$ et en $N$, ils ont un côté de l'angle droit de même longueur ($MQ = NP$) et des angles égaux en $B$ et en $C$ : ils sont égaux, donc $BM = CN$. Notons $x$ cette longueur, avec $0 < x < b$.

**Les deux côtés du rectangle.**

- $MN = BC - BM - CN = 2b - 2x$.
- Les droites $(MQ)$ et $(DA)$ sont toutes deux perpendiculaires à $(BC)$, donc parallèles. Dans le triangle $BDA$, le théorème de Thalès donne $\frac{MQ}{DA} = \frac{BM}{BD}$, d'où $MQ = \frac{h}{b}\,x$.

**Un demi-périmètre constant.** Le demi-périmètre vaut $42$ pour tous les rectangles :

$$\frac{h}{b}\,x + 2b - 2x = 42, \qquad \text{c'est-à-dire} \qquad \left(\frac{h}{b} - 2\right) x + 2b = 42$$

pour tout $x$ entre $0$ et $b$. Si le nombre $\frac{h}{b} - 2$ n'était pas nul, deux valeurs différentes de $x$ donneraient deux valeurs différentes du membre de gauche, qui ne pourraient pas valoir $42$ toutes les deux. Donc $\frac{h}{b} = 2$, puis $2b = 42$. Ainsi $b = 21$ et $h = 42$.

**Le théorème de Pythagore.** Dans le triangle $ABD$ rectangle en $D$,

$$AB^2 = BD^2 + AD^2 = 21^2 + 42^2 = 441 + 1764 = 2205.$$

**Conclusion.** $AB^2 = 2205$.
