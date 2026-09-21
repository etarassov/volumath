---
id: "8405"
title: "Deux périmètres dans un trapèze"
grade: 10
theme: geometry
difficulty: 4
duration_min: 35
tags: [trapeze-isocele, symetrie, inegalite-triangulaire, perimetre, milieu]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, Coupe Animath de printemps 2021"
  reference: "Poly-2021-Valbonne.pdf, « Coupe Animath de printemps 2021 », énoncés destinés aux élèves de collège, exercice 6"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

$ABCD$ est un quadrilatère convexe tel que les droites $(AD)$ et $(BC)$ sont parallèles, que $AB = CD$, et que $AD < BC$. C'est donc un trapèze dont les deux côtés non parallèles ont la même longueur.

Soit $M$ le milieu du segment $[BC]$, et soit $E$ le point d'intersection des segments $[MD]$ et $[AC]$.

Montrer que le périmètre du triangle $AMC$ est supérieur ou égal au périmètre du quadrilatère $ABME$.

![Le trapèze ABCD, le milieu M de [BC] et le point E](8405-figure-1.svg)

## Hints

1. Écris les deux périmètres, chacun comme une somme de quatre ou trois longueurs, puis calcule leur **différence**. Il s'agit de montrer que cette différence est positive.
2. Deux longueurs se remplacent tout de suite : $MB = MC$ puisque $M$ est le milieu de $[BC]$, et $AB = CD$ par hypothèse.
3. Le point $E$ est sur le segment $[AC]$, donc $AC = AE + EC$. Il est aussi sur $[MD]$, donc $MD = ME + ED$. Utilise ces deux découpages.
4. Il reste une longueur gênante, $AM$. Le trapèze possède un axe de symétrie : lequel, et que devient le point $A$ par cette symétrie ?
5. Une fois $AM$ remplacé par $MD$, tout se simplifie et il ne reste qu'une inégalité triangulaire dans un petit triangle.

## Solution

### Étape 1. Le trapèze est symétrique, et $MA = MD$

Notons $(\Delta)$ la médiatrice du segment $[BC]$. Comme $M$ est le milieu de $[BC]$, la droite $(\Delta)$ passe par $M$.

Montrons que $(\Delta)$ est un axe de symétrie du trapèze. Appelons $X$ et $Y$ les pieds des perpendiculaires abaissées de $A$ et de $D$ sur la droite $(BC)$.

Puisque $(AD)$ et $(BC)$ sont parallèles, le quadrilatère $ADYX$ a ses côtés parallèles deux à deux et possède un angle droit : c'est un rectangle. En particulier $AX = DY$.

Les triangles $AXB$ et $DYC$ sont rectangles en $X$ et en $Y$. Ils ont la même hypoténuse, $AB = CD$, et un côté de l'angle droit égal, $AX = DY$. Le théorème de Pythagore donne alors

$$XB = \sqrt{AB^2 - AX^2} = \sqrt{CD^2 - DY^2} = YC.$$

Comme $AD < BC$, les points $X$ et $Y$ sont situés entre $B$ et $C$. De $XB = YC$ on tire

$$MX = MB - XB = MC - YC = MY,$$

donc $M$ est aussi le milieu de $[XY]$. La droite $(\Delta)$ est ainsi la médiatrice commune de $[BC]$ et de $[XY]$ : c'est l'axe de symétrie du rectangle $ADYX$, qui échange $X$ et $Y$, donc aussi $A$ et $D$.

La symétrie d'axe $(\Delta)$ fixe $M$ et échange $A$ et $D$, donc elle conserve les longueurs :

$$MA = MD.$$

### Étape 2. La différence des deux périmètres

Le périmètre du triangle $AMC$ vaut $AM + MC + CA$.

Le périmètre du quadrilatère $ABME$ vaut $AB + BM + ME + EA$.

Notons $\delta$ leur différence :

$$\delta = AM + MC + CA - (AB + BM + ME + EA).$$

Simplifions pas à pas.

**On remplace $MC$ par $BM$ et $AB$ par $CD$** (car $M$ est le milieu de $[BC]$, et $AB = CD$) :

$$\delta = AM + CA - (CD + ME + EA).$$

**On découpe $CA$** : le point $E$ est sur le segment $[AC]$, donc $CA = CE + EA$ :

$$\delta = AM + CE + EA - CD - ME - EA = AM + CE - CD - ME.$$

**On remplace $AM$ par $MD$** (étape 1) :

$$\delta = MD + CE - CD - ME.$$

**On découpe $MD$** : le point $E$ est sur le segment $[MD]$, donc $MD = ME + ED$ :

$$\delta = ME + ED + CE - CD - ME = ED + CE - CD.$$

### Étape 3. Conclure

Il reste à voir que $ED + CE - CD \geqslant 0$, c'est-à-dire

$$CE + ED \geqslant CD.$$

C'est exactement l'inégalité triangulaire appliquée aux trois points $C$, $E$ et $D$.

Donc $\delta \geqslant 0$, ce qui signifie

$$\text{périmètre}(AMC) \geqslant \text{périmètre}(ABME).$$

C'est ce qu'il fallait démontrer.

## Going further

Quand y a-t-il égalité ? L'inégalité triangulaire $CE + ED \geqslant CD$ est une égalité exactement lorsque $E$ appartient au segment $[CD]$. Comme $E$ est à l'intérieur du trapèze, cela n'arrive jamais : l'inégalité de l'exercice est en fait toujours **stricte**.
