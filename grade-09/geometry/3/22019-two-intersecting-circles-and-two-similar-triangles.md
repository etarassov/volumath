---
id: "22019"
title: "Deux cercles sécants et deux triangles semblables"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [triangles-semblables, angle-inscrit, mediatrice, cercle]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « TD de géométrie » (Martin & Maryam), exercice 1 (on a précisé la position des points : centres de part et d'autre de (AB), C du côté de O₁ et D du côté de O₂ ; dans cette disposition, la solution n'a besoin que d'angles ordinaires)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Deux cercles $\Omega_1$ et $\Omega_2$, de centres $O_1$ et $O_2$, se coupent en deux points $A$ et $B$. Les centres $O_1$ et $O_2$ sont de part et d'autre de la droite $(AB)$.

Une droite passant par $B$ recoupe le cercle $\Omega_1$ en un point $C$, situé du même côté de $(AB)$ que $O_1$, et le cercle $\Omega_2$ en un point $D$, situé du même côté de $(AB)$ que $O_2$.

Démontrer que les triangles $AO_1O_2$ et $ACD$ sont semblables.

## Hints

1. Dans le cercle $\Omega_1$, comparez l'angle inscrit $\widehat{ACB}$ et l'angle au centre $\widehat{AO_1B}$.
2. Quelle est la droite $(O_1O_2)$ pour le segment $[AB]$ ?
3. Montrez que $\widehat{AO_1O_2}$ est la moitié de $\widehat{AO_1B}$.

## Solution

**Un outil : l'angle inscrit.** Dans un cercle de centre $O$, si $A$, $B$, $C$ sont trois points du cercle et si $C$ est du même côté de la droite $(AB)$ que le centre $O$, alors

$$\widehat{ACB} = \frac{1}{2}\,\widehat{AOB}.$$

*Pourquoi, dans le cas où $O$ est à l'intérieur du triangle $ABC$.* Les triangles $OAC$ et $OBC$ sont isocèles en $O$. Notons $x = \widehat{OCA} = \widehat{OAC}$ et $y = \widehat{OCB} = \widehat{OBC}$. L'angle $\widehat{AOC}$ vaut $180^\circ - 2x$ et l'angle $\widehat{BOC}$ vaut $180^\circ - 2y$. Les trois angles autour de $O$ font un tour complet, donc $\widehat{AOB} = 360^\circ - (180^\circ - 2x) - (180^\circ - 2y) = 2(x + y) = 2\,\widehat{ACB}$. Les autres positions de $C$ se traitent de la même façon, avec une soustraction au lieu d'une addition.

**Étape 1 : la droite des centres.** On a $O_1A = O_1B$ (deux rayons de $\Omega_1$) et $O_2A = O_2B$. Les deux centres sont donc sur la médiatrice du segment $[AB]$ : la droite $(O_1O_2)$ est cette médiatrice.

Comme $O_1$ et $O_2$ sont de part et d'autre de $(AB)$, la médiatrice coupe $[AB]$ en son milieu $I$, qui est entre $O_1$ et $O_2$. Dans le triangle $AO_1B$, isocèle en $O_1$, la médiatrice de la base est aussi la bissectrice de l'angle au sommet. Donc

$$\widehat{AO_1O_2} = \widehat{AO_1I} = \frac{1}{2}\,\widehat{AO_1B}.$$

De même, $\widehat{AO_2O_1} = \frac{1}{2}\,\widehat{AO_2B}$.

**Étape 2 : les angles du triangle $ACD$.** Les points $C$ et $D$ sont de part et d'autre de la droite $(AB)$, et la droite $(CD)$ passe par $B$ : le point $B$ est donc entre $C$ et $D$. Ainsi l'angle du triangle $ACD$ en $C$ est $\widehat{ACD} = \widehat{ACB}$, et son angle en $D$ est $\widehat{ADC} = \widehat{ADB}$.

Le point $C$ est sur $\Omega_1$, du même côté de $(AB)$ que $O_1$. D'après l'outil,

$$\widehat{ACD} = \widehat{ACB} = \frac{1}{2}\,\widehat{AO_1B} = \widehat{AO_1O_2}.$$

De même, $D$ est sur $\Omega_2$, du même côté de $(AB)$ que $O_2$, donc

$$\widehat{ADC} = \widehat{ADB} = \frac{1}{2}\,\widehat{AO_2B} = \widehat{AO_2O_1}.$$

**Conclusion.** Les triangles $ACD$ et $AO_1O_2$ ont deux angles égaux deux à deux : l'angle en $C$ est égal à l'angle en $O_1$, et l'angle en $D$ à l'angle en $O_2$. Ils sont donc semblables, avec $C$ qui correspond à $O_1$ et $D$ qui correspond à $O_2$.

## Going further

1. Déduisez-en que $\frac{CD}{O_1O_2} = \frac{AC}{AO_1}$. Pour quelle droite passant par $B$ la longueur $CD$ est-elle la plus grande ?
2. Montrez que l'angle $\widehat{CAD}$ ne dépend pas de la droite choisie.
