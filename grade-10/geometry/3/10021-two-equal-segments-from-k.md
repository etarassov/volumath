---
id: "10021"
title: "Deux segments égaux issus du point K"
grade: 10
theme: geometry
difficulty: 3
duration_min: 25
tags: [angle-inscrit, chasse-aux-angles, quadrilatere-inscrit, triangle-isocele, cocyclicite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 1 (géométrie)"
  reference: "2017-10_ofm-2013-2014-envoi-1.pdf, Exercices du groupe B, exercice 3 ; corrigé 2017-10_ofm-2013-2014-envoi-1-solutions.pdf (le corrigé utilise des angles orientés ; la solution raisonne ici sur la figure, et une preuve valable dans tous les cas est donnée en prolongement)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-1.pdf"
---

## Statement

Un quadrilatère convexe $ABCD$ est inscrit dans un cercle. Ses diagonales se coupent au point $K$. Le cercle qui passe par $A$, $B$ et $K$ recoupe la droite $(BC)$ en un point $M$ et la droite $(AD)$ en un point $N$.

![Le quadrilatère ABCD inscrit dans un cercle, ses diagonales qui se coupent en K, et le cercle en pointillés passant par A, B, K, qui recoupe [BC] en M et [AD] en N](10021-figure-1.svg)

Montrer que $KM = KN$.

## Hints

1. Il suffit de montrer que le triangle $KMN$ est isocèle en $K$, c'est-à-dire que $\widehat{KMN} = \widehat{KNM}$.
2. Les points $A$, $B$, $K$, $M$, $N$ sont sur un même cercle. Quel angle de sommet $A$ est égal à $\widehat{KMN}$ ? Quel angle de sommet $B$ est égal à $\widehat{KNM}$ ?
3. Utilise ensuite le cercle circonscrit à $ABCD$.

## Solution

**Rappel : les angles inscrits.** Si $X$, $Y$, $Z$, $T$ sont quatre points d'un cercle, et si $Z$ et $T$ sont du même côté de la droite $(XY)$, alors $\widehat{XZY} = \widehat{XTY}$ : ces deux angles inscrits interceptent le même arc $XY$.

On raisonne sur la figure, où $M$ est sur le segment $[BC]$ et $N$ sur le segment $[AD]$. On note $\omega$ le cercle qui passe par $A$, $B$, $K$, $M$, $N$.

### Étape 1 : $\widehat{KMN} = \widehat{CAD}$

Dans le cercle $\omega$, les points $M$ et $A$ sont du même côté de la droite $(KN)$. Les angles inscrits $\widehat{KMN}$ et $\widehat{KAN}$ interceptent le même arc $KN$, donc ils sont égaux.

Le point $K$ est sur $[AC]$ et le point $N$ est sur $[AD]$, donc $\widehat{KAN} = \widehat{CAD}$. Ainsi $\widehat{KMN} = \widehat{CAD}$.

### Étape 2 : $\widehat{KNM} = \widehat{DBC}$

De même, dans le cercle $\omega$, les points $N$ et $B$ sont du même côté de la droite $(KM)$, donc $\widehat{KNM} = \widehat{KBM}$. Comme $K$ est sur $[BD]$ et $M$ sur $[BC]$, on a $\widehat{KBM} = \widehat{DBC}$. Ainsi $\widehat{KNM} = \widehat{DBC}$.

### Étape 3 : on utilise le grand cercle

Les points $A$, $B$, $C$, $D$ sont sur un même cercle, et comme $ABCD$ est convexe, $A$ et $B$ sont du même côté de la droite $(CD)$. Les angles inscrits $\widehat{CAD}$ et $\widehat{CBD}$ interceptent le même arc $CD$, donc
$$\widehat{CAD} = \widehat{DBC} .$$

**Conclusion.** D'après les étapes 1, 2 et 3, $\widehat{KMN} = \widehat{KNM}$. Le triangle $KMN$ a deux angles égaux, il est isocèle en $K$, et $KM = KN$.

## Going further

Selon la forme du quadrilatère, le point $M$ peut tomber sur le prolongement de $[BC]$, ou $N$ sur celui de $[AD]$. Certains des angles ci-dessus sont alors remplacés par leurs suppléments. Voici une preuve qui marche dans tous les cas.

Dans un cercle de rayon $r$, une corde $[XY]$ vue depuis un autre point $Z$ du cercle mesure $XY = 2r\sin\widehat{XZY}$. Pour le voir, on trace le diamètre $[XZ']$ : le triangle $XYZ'$ est rectangle en $Y$, donc $XY = 2r\sin\widehat{XZ'Y}$, et l'angle $\widehat{XZ'Y}$ est égal à $\widehat{XZY}$ ou à son supplément, qui a le même sinus. (Si $Y = Z'$, la corde est un diamètre, l'angle $\widehat{XZY}$ est droit et la formule reste vraie.)

Dans le cercle $\omega$ de rayon $r$, on obtient $KM = 2r\sin\widehat{KBM}$ et $KN = 2r\sin\widehat{KAN}$. L'angle $\widehat{KBM}$ est égal à $\widehat{DBC}$ ou à son supplément, et $\widehat{KAN}$ est égal à $\widehat{CAD}$ ou à son supplément. Comme $\widehat{DBC} = \widehat{CAD}$, les deux sinus sont égaux, et $KM = KN$.
