---
id: "4020"
title: "Le triangle rectangle inscrit dans le carré"
grade: 10
theme: geometry
difficulty: 4
duration_min: 30
tags: [triangles-semblables, pythagore, carre, aire]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 2A, Week 1 Competition"
  reference: "Handout-3131-2694.pdf, problème 12 (réponse 256/17 dans le barème en fin de fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3131-2694.pdf"
---

## Statement

$ABCD$ est un carré. Le point $E$ appartient au côté $[BC]$ et le point $F$ au côté $[CD]$.

Le triangle $AEF$ est rectangle en $E$, avec

$$AE = 4 \text{ cm} \qquad \text{et} \qquad EF = 3 \text{ cm}.$$

Quelle est l'aire du carré $ABCD$ ?

![Le carré ABCD, avec E sur [BC], F sur [CD] et le triangle AEF rectangle en E](4020-figure-1.svg)

## Hints

1. Les triangles $ABE$ et $ECF$ sont tous les deux rectangles. Montre qu'ils ont les mêmes angles.
2. Pour cela, regarde les trois angles de sommet $E$ situés du même côté de la droite $(BC)$ : leur somme vaut $180°$, et l'un d'eux est droit.
3. Deux triangles de mêmes angles sont semblables : leurs côtés sont proportionnels. Quel est le rapport de similitude entre $ABE$ et $ECF$ ?
4. Note $c$ le côté du carré. Exprime $EC$ en fonction de $c$, puis $BE$, puis applique le théorème de Pythagore dans le triangle $ABE$.

## Solution

**Étape 1. Deux triangles semblables.**

Notons $c$ la longueur du côté du carré.

Les points $B$, $E$, $C$ sont alignés dans cet ordre. Les trois angles $\widehat{AEB}$,
$\widehat{AEF}$ et $\widehat{FEC}$ sont adjacents et forment ensemble un angle plat :

$$\widehat{AEB} + \widehat{AEF} + \widehat{FEC} = 180°.$$

Comme $\widehat{AEF} = 90°$, il reste

$$\widehat{AEB} + \widehat{FEC} = 90°.$$

Par ailleurs, dans le triangle $ABE$ rectangle en $B$, on a aussi
$\widehat{BAE} + \widehat{AEB} = 90°$.

En comparant les deux égalités, $\widehat{FEC} = \widehat{BAE}$.

Les triangles $ABE$ (rectangle en $B$) et $ECF$ (rectangle en $C$) ont donc deux angles
égaux deux à deux : ils sont **semblables**. Plus précisément, dans cette correspondance,
le sommet $A$ correspond à $E$, le sommet $B$ à $C$, et le sommet $E$ à $F$.

**Étape 2. Le rapport de similitude.**

Les hypoténuses se correspondent : $[AE]$ pour le premier triangle, $[EF]$ pour le second.
Le rapport de similitude vaut donc

$$\frac{AE}{EF} = \frac{4}{3}.$$

Tous les côtés du triangle $ABE$ valent $\dfrac43$ fois les côtés correspondants de $ECF$ :

$$\frac{AB}{EC} = \frac{BE}{CF} = \frac43 .$$

**Étape 3. Calculer $EC$ et $BE$.**

De $\dfrac{AB}{EC} = \dfrac43$ et $AB = c$, on tire

$$EC = \frac{3c}{4}.$$

Comme $E$ est sur $[BC]$ avec $BC = c$ :

$$BE = BC - EC = c - \frac{3c}{4} = \frac{c}{4}.$$

**Étape 4. Pythagore dans le triangle $ABE$.**

Ce triangle est rectangle en $B$, d'hypoténuse $[AE]$ de longueur $4$ :

$$AB^2 + BE^2 = AE^2,$$
$$c^2 + \left(\frac{c}{4}\right)^2 = 16,$$
$$c^2 + \frac{c^2}{16} = 16,$$
$$\frac{17c^2}{16} = 16.$$

D'où

$$c^2 = \frac{256}{17}.$$

Or $c^2$ est exactement l'aire du carré.

**Réponse : l'aire du carré vaut $\dfrac{256}{17}$ cm², soit environ $\text{15,06}$ cm².**

## Going further

On peut vérifier la cohérence : $c = \sqrt{256/17} \approx \text{3,88}$ cm, donc
$EC \approx \text{2,91}$ cm et $CF = \dfrac{3}{4}BE = \dfrac{3c}{16} \approx \text{0,73}$ cm.
Le théorème de Pythagore dans $ECF$ donne alors
$EF^2 \approx \text{2,91}^2 + \text{0,73}^2 \approx \text{9,0}$, soit bien $EF = 3$ cm.
Remarque que $AE = 4$ cm est plus grand que le côté du carré : c'est possible parce que
$[AE]$ est une diagonale intérieure, et la diagonale complète $[AC]$ mesure
$c\sqrt2 \approx \text{5,49}$ cm.
