---
id: "10028"
title: "Quatre quarts de cercle dans un carré"
grade: 9
theme: geometry
difficulty: 4
duration_min: 40
tags: [aire, disque, secteur angulaire, triangle equilateral, carre, systeme]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 5 (géométrie)"
  reference: "2017-10_ofm-2013-2014-envoi-5.pdf, Exercices du groupe B, exercice 1 ; corrigé 2017-10_ofm-2013-2014-envoi-5-solutions.pdf (le corrigé écrit trois équations ; ici l'aire des petites portions est calculée directement, puis on en déduit les deux autres)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-5.pdf"
---

## Statement

Soit $ABCD$ un carré de côté $1$. À l'intérieur du carré, on trace les quatre arcs de cercle de centres $A$, $B$, $C$, $D$ et de rayon $1$.

![Le carré ABCD et les quatre arcs de cercle de rayon 1 centrés en ses sommets](10028-figure-1.svg)

Les arcs découpent le carré en plusieurs portions. Déterminer l'aire de chacune d'elles.

## Hints

1. Combien y a-t-il de portions ? Lesquelles ont la même aire, par symétrie ?
2. Les arcs de centres $A$ et $D$ se coupent en un point $E$ à l'intérieur du carré. Que dire du triangle $ADE$ ?
3. Calcule l'aire de la partie du carré située à moins de $1$ de $A$ et à moins de $1$ de $D$. Elle est formée du triangle $ADE$ et de deux morceaux de disque.
4. Combien vaut l'aire d'un quart de disque de rayon $1$ ? De quelles portions est-il formé ?

## Solution

Les quatre arcs découpent le carré en neuf portions : une portion au centre, d'aire $a$, quatre portions dans les coins, et quatre portions minces le long des côtés.

![Les neuf portions du carré : a au centre, b dans les coins, c le long des côtés, et le triangle ADE en pointillés](10028-figure-2.svg)

Le quart de tour de centre le milieu du carré envoie le carré sur lui-même et chaque arc sur un autre arc. Il envoie donc chaque portion d'un coin sur une autre portion d'un coin, et chaque portion d'un côté sur une autre portion d'un côté. Les quatre portions des coins ont donc la même aire $b$, et les quatre portions des côtés la même aire $c$.

On utilise deux faits sur un disque de rayon $1$. Son aire est $\pi$, donc un quart de disque a pour aire $\dfrac{\pi}{4}$. Et un secteur d'angle $60°$, qui est un sixième de disque, a pour aire $\dfrac{\pi}{6}$.

### Étape 1 : l'aire $c$

Les arcs de centres $A$ et $D$ se coupent au point $E$ du carré tel que $AE = DE = 1$. Le triangle $ADE$ a ses trois côtés égaux à $1$ : il est équilatéral, et ses angles mesurent $60°$. Sa hauteur vaut $\sqrt{1 - \dfrac{1}{4}} = \dfrac{\sqrt{3}}{2}$ d'après le théorème de Pythagore, donc son aire est $\dfrac{\sqrt{3}}{4}$.

Soit $L$ la partie du carré formée des points situés à une distance au plus $1$ de $A$ **et** de $D$. Elle est délimitée par le côté $[AD]$, l'arc de centre $A$ qui va de $D$ à $E$ et l'arc de centre $D$ qui va de $A$ à $E$. Elle est formée de trois morceaux :

- le triangle $ADE$ ;
- le morceau compris entre la corde $[DE]$ et l'arc de centre $A$. C'est le secteur de centre $A$ et d'angle $\widehat{DAE} = 60°$, auquel on enlève le triangle $ADE$. Son aire est $\dfrac{\pi}{6} - \dfrac{\sqrt{3}}{4}$ ;
- de même, le morceau compris entre la corde $[AE]$ et l'arc de centre $D$, de même aire.

Donc
$$\text{aire}(L) = \frac{\sqrt{3}}{4} + 2\left(\frac{\pi}{6} - \frac{\sqrt{3}}{4}\right) = \frac{\pi}{3} - \frac{\sqrt{3}}{4} .$$

Les deux quarts de disque de centres $A$ et $D$ ont chacun pour aire $\dfrac{\pi}{4}$, et leur partie commune est $L$. Ensemble, ils recouvrent donc une aire
$$\frac{\pi}{4} + \frac{\pi}{4} - \text{aire}(L) = \frac{\pi}{2} - \frac{\pi}{3} + \frac{\sqrt{3}}{4} = \frac{\pi}{6} + \frac{\sqrt{3}}{4} .$$
On voit sur la figure que ce qui reste du carré est exactement la portion mince qui longe le côté $[BC]$. Ainsi
$$c = 1 - \frac{\pi}{6} - \frac{\sqrt{3}}{4} .$$

### Étape 2 : l'aire $b$

Le carré est formé des neuf portions :
$$a + 4b + 4c = 1 . \qquad (1)$$
Le quart de disque de centre $D$ contient la portion du centre, les trois portions des coins $A$, $C$, $D$, et les deux portions qui longent les côtés $[AD]$ et $[DC]$ :
$$a + 3b + 2c = \frac{\pi}{4} . \qquad (2)$$
En soustrayant (2) de (1), on obtient $b + 2c = 1 - \dfrac{\pi}{4}$, donc
$$b = 1 - \frac{\pi}{4} - 2c = 1 - \frac{\pi}{4} - 2 + \frac{\pi}{3} + \frac{\sqrt{3}}{2} = \frac{\pi}{12} + \frac{\sqrt{3}}{2} - 1 .$$

### Étape 3 : l'aire $a$

D'après (1),
$$a = 1 - 4b - 4c = 1 - \left(\frac{\pi}{3} + 2\sqrt{3} - 4\right) - \left(4 - \frac{2\pi}{3} - \sqrt{3}\right) = 1 + \frac{\pi}{3} - \sqrt{3} .$$

**Vérification.** La partie $L$ est formée de la portion du centre, des deux portions des coins $A$ et $D$ et de la portion qui longe $[AD]$. On retrouve bien $a + 2b + c = \dfrac{\pi}{3} - \dfrac{\sqrt{3}}{4}$.

**Conclusion.** La portion du centre a pour aire $1 + \dfrac{\pi}{3} - \sqrt{3} \approx \text{0,315}$. Chacune des quatre portions des coins a pour aire $\dfrac{\pi}{12} + \dfrac{\sqrt{3}}{2} - 1 \approx \text{0,128}$. Chacune des quatre portions le long des côtés a pour aire $1 - \dfrac{\pi}{6} - \dfrac{\sqrt{3}}{4} \approx \text{0,043}$.

## Going further

- Le corrigé n'utilise pas l'étape 1 telle quelle. Il écrit trois équations, (1), (2) et $a + 2b + c = \dfrac{\pi}{3} - \dfrac{\sqrt{3}}{4}$, puis résout ce système de trois équations à trois inconnues.
- Pour un carré de côté $r$ et des arcs de rayon $r$, toutes les aires sont multipliées par $r^2$.
