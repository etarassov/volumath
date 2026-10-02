---
id: "10046"
title: "Le lieu d'un point sur une bissectrice"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [bissectrice, lieu-geometrique, cercle, thales, aire, rapport]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 2 (géométrie)"
  reference: "2017-10_ofm-2015-2016-envoi-2.pdf, Exercices du groupe B, exercice 1 ; corrigé 2017-10_ofm-2015-2016-envoi-2-solutions.pdf (même méthode que le corrigé, théorème de la bissectrice puis Thalès ; le théorème de la bissectrice est démontré ici avec des aires)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-2.pdf"
---

## Statement

Soit $\mathcal{C}$ un cercle de centre $O$ et de rayon $R$, et $A$ un point à l'extérieur de $\mathcal{C}$. Un point $P$ se déplace sur le cercle $\mathcal{C}$, sans passer sur la droite $(OA)$. On note $M$ le point d'intersection de la droite $(AP)$ et de la bissectrice de l'angle $\widehat{POA}$.

![Le cercle de centre O, le point A à l'extérieur, un point P du cercle, et en tirets la bissectrice de l'angle POA, qui coupe le segment [AP] en M](10046-figure-1.svg)

Montrer que le point $M$ se déplace sur un cercle, et donner le centre et le rayon de ce cercle.

## Hints

1. Compare les aires des triangles $OMP$ et $OMA$ de deux façons : d'abord avec les distances de $M$ aux droites $(OP)$ et $(OA)$, puis avec la distance de $O$ à la droite $(AP)$.
2. Tu dois trouver $\dfrac{MP}{MA} = \dfrac{OP}{OA}$. Déduis-en le rapport $\dfrac{AM}{AP}$ : il ne dépend pas de $P$.
3. Place le point $O'$ du segment $[AO]$ tel que $\dfrac{AO'}{AO} = \dfrac{AM}{AP}$, et utilise la réciproque du théorème de Thalès.

## Solution

On note $d = OA$, avec $d > R$ car $A$ est à l'extérieur du cercle. Comme $P$ n'est pas sur la droite $(OA)$, le triangle $OAP$ n'est pas aplati, et la bissectrice de l'angle $\widehat{POA}$ coupe le côté $[AP]$ en $M$.

### Étape 1 : le rapport $\frac{MP}{MA}$

Soient $U$ et $V$ les projetés orthogonaux de $M$ sur les droites $(OP)$ et $(OA)$. Les angles $\widehat{MOU}$ et $\widehat{MOV}$ sont égaux, car $(OM)$ est la bissectrice. Dans les triangles rectangles $OUM$ et $OVM$,
$$MU = OM \times \sin \widehat{MOU} = OM \times \sin \widehat{MOV} = MV .$$
Le point $M$ est donc à la même distance des droites $(OP)$ et $(OA)$. On calcule les aires des triangles $OMP$ et $OMA$ avec les bases $[OP]$ et $[OA]$ :
$$\frac{\mathcal{A}(OMP)}{\mathcal{A}(OMA)} = \frac{\frac{1}{2} \times OP \times MU}{\frac{1}{2} \times OA \times MV} = \frac{OP}{OA} = \frac{R}{d} .$$
On calcule maintenant ces mêmes aires avec les bases $[MP]$ et $[MA]$, qui sont sur la même droite $(AP)$. Les deux triangles ont la même hauteur $h$ issue de $O$, donc
$$\frac{\mathcal{A}(OMP)}{\mathcal{A}(OMA)} = \frac{\frac{1}{2} \times MP \times h}{\frac{1}{2} \times MA \times h} = \frac{MP}{MA} .$$
Ainsi $\dfrac{MP}{MA} = \dfrac{R}{d}$.

### Étape 2 : le rapport $\frac{AM}{AP}$

Le point $M$ est sur le segment $[AP]$, donc $AP = AM + MP$. D'après l'étape 1, $MP = \dfrac{R}{d}\,AM$, donc
$$AP = AM \times \left(1 + \frac{R}{d}\right) = AM \times \frac{d + R}{d}, \qquad \text{c'est-à-dire} \qquad \frac{AM}{AP} = \frac{d}{d + R} .$$
On note $k = \dfrac{d}{d + R}$. Ce nombre ne dépend que du cercle et du point $A$, pas de $P$.

### Étape 3 : le théorème de Thalès

Soit $O'$ le point du segment $[AO]$ tel que $AO' = k \times AO = \dfrac{d^2}{d + R}$. Les points $A$, $O'$, $O$ sont alignés dans cet ordre, les points $A$, $M$, $P$ aussi, et
$$\frac{AO'}{AO} = \frac{AM}{AP} = k .$$
D'après la réciproque du théorème de Thalès, les droites $(O'M)$ et $(OP)$ sont parallèles. Le théorème de Thalès dans le triangle $AOP$ donne alors
$$\frac{O'M}{OP} = \frac{AO'}{AO} = k, \qquad \text{donc} \qquad O'M = k \times R = \frac{dR}{d + R} .$$

### Conclusion

Le point $O'$ et la longueur $O'M$ ne dépendent pas de $P$. Donc **le point $M$ se déplace sur le cercle de centre $O'$ et de rayon $\dfrac{OA \times R}{OA + R}$**, où $O'$ est le point du segment $[AO]$ tel que $AO' = \dfrac{OA^2}{OA + R}$.

Ce cercle passe par $O$. En effet,
$$OO' = d - \frac{d^2}{d + R} = \frac{d(d + R) - d^2}{d + R} = \frac{dR}{d + R},$$
ce qui est bien le rayon.

Par exemple, si $OA = 3$ cm et $R = 1$ cm, le point $M$ reste sur le cercle de rayon $\text{0,75}$ cm dont le centre est sur $[AO]$, à $\text{2,25}$ cm de $A$.

## Going further

- L'égalité $\dfrac{MP}{MA} = \dfrac{OP}{OA}$ de l'étape 1 s'appelle le théorème de la bissectrice. Elle est vraie dans tout triangle.
- Est-ce que $M$ passe par tous les points du cercle trouvé ? Regarde ce qui se passe quand $P$ s'approche du point de $\mathcal{C}$ le plus proche de $A$, puis du point de $\mathcal{C}$ le plus éloigné de $A$.
