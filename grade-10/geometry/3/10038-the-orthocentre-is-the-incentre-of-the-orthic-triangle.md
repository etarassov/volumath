---
id: "10038"
title: "L'orthocentre est le centre du cercle inscrit au triangle des pieds des hauteurs"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [orthocentre, hauteurs, triangle orthique, bissectrice, cercle inscrit, triangles semblables, cosinus]
adapted_from: null
see_also: ["8132"]
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 2 (géométrie)"
  reference: "2017-10_ofm-2014-2015-envoi-2.pdf, Exercices du groupe B, exercice 2 (précision ajoutée à l'énoncé : le triangle est acutangle ; sans elle l'énoncé est faux, car si l'angle en A est obtus, le centre du cercle inscrit à PQR est A et H est le centre d'un cercle exinscrit, et si l'angle en A est droit, le triangle PQR est aplati) ; corrigé 2017-10_ofm-2014-2015-envoi-2-solutions.pdf (le corrigé utilise les angles inscrits dans les cercles de diamètres [AB] et [AC] ; ici on utilise le cosinus et des triangles semblables)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-2.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus. On note $H$ son orthocentre, et $P$, $Q$, $R$ les pieds des hauteurs issues de $A$, $B$ et $C$.

![Le triangle ABC, ses trois hauteurs [AP], [BQ] et [CR] qui se coupent en H, et le triangle PQR en tirets](10038-figure-1.svg)

Montrer que $H$ est le centre du cercle inscrit au triangle $PQR$.

## Hints

1. Le centre du cercle inscrit est le point où se coupent les bissectrices. Il suffit de montrer que $(QH)$, c'est-à-dire $(QB)$, est la bissectrice de l'angle $\widehat{RQP}$, puis de faire de même aux deux autres sommets.
2. Dans le triangle $ABQ$, rectangle en $Q$, exprime $AQ$ à l'aide de $AB$ et de l'angle $\widehat{A}$. Fais de même pour $AR$ dans le triangle $ACR$.
3. Compare les triangles $AQR$ et $ABC$. Que vaut l'angle $\widehat{AQR}$ ? Et, de la même façon, l'angle $\widehat{CQP}$ ?

## Solution

On note $\widehat{A}$, $\widehat{B}$, $\widehat{C}$ les angles du triangle $ABC$. Comme ils sont tous aigus, les pieds des hauteurs sont à l'intérieur des côtés : $P$ est sur $[BC]$, $Q$ sur $[CA]$, $R$ sur $[AB]$, et l'orthocentre $H$ est à l'intérieur du triangle.

### Étape 1 : deux triangles semblables

Le triangle $ABQ$ est rectangle en $Q$, et son angle en $A$ est $\widehat{A}$, car $Q$ est sur $[AC]$. Donc $AQ = AB \cos \widehat{A}$. De même, dans le triangle $ACR$, rectangle en $R$, on a $AR = AC \cos \widehat{A}$. Ainsi
$$\frac{AQ}{AB} = \frac{AR}{AC} = \cos \widehat{A} .$$
Les triangles $AQR$ et $ABC$ ont le même angle en $A$, compris entre des côtés proportionnels : $AQ$ correspond à $AB$ et $AR$ à $AC$. Ils sont donc semblables, et l'angle en $Q$ du premier est égal à l'angle en $B$ du second :
$$\widehat{AQR} = \widehat{B} .$$

De la même façon, au sommet $C$ : $CQ = CB \cos \widehat{C}$ et $CP = CA \cos \widehat{C}$, donc les triangles $CQP$ et $CBA$ sont semblables, et
$$\widehat{CQP} = \widehat{B} .$$

### Étape 2 : la bissectrice en $Q$

La droite $(BQ)$ est perpendiculaire à $(AC)$, donc $\widehat{AQB} = \widehat{BQC} = 90°$.

- Le point $R$ est sur le segment $[AB]$, donc la demi-droite $[QR)$ est à l'intérieur de l'angle $\widehat{AQB}$. Ainsi $\widehat{RQB} = 90° - \widehat{AQR} = 90° - \widehat{B}$.
- Le point $P$ est sur le segment $[BC]$, donc la demi-droite $[QP)$ est à l'intérieur de l'angle $\widehat{BQC}$. Ainsi $\widehat{BQP} = 90° - \widehat{CQP} = 90° - \widehat{B}$.

La demi-droite $[QB)$ est entre $[QR)$ et $[QP)$, et fait le même angle avec les deux. C'est donc la bissectrice de l'angle $\widehat{RQP}$. Le point $H$ est sur $[QB]$, donc $H$ est sur cette bissectrice.

### Étape 3 : les deux autres sommets

Le même raisonnement, en partant des sommets $B$ et $C$ au lieu de $A$ et $C$, montre que $(PA)$ est la bissectrice de l'angle $\widehat{QPR}$, avec $\widehat{QPA} = \widehat{APR} = 90° - \widehat{A}$. Le point $H$, qui est sur $[PA]$, est donc aussi sur la bissectrice de l'angle en $P$ du triangle $PQR$.

**Conclusion.** Le point $H$ est sur les bissectrices de deux angles du triangle $PQR$. C'est le point où se coupent les bissectrices, c'est-à-dire **le centre du cercle inscrit au triangle $PQR$**.

## Going further

- On a trouvé au passage les angles du triangle $PQR$ : $\widehat{RQP} = 180° - 2\widehat{B}$, et de même $180° - 2\widehat{A}$ en $P$ et $180° - 2\widehat{C}$ en $R$.
- L'hypothèse « angles aigus » est indispensable. Si l'angle en $A$ est obtus, le centre du cercle inscrit à $PQR$ est le point $A$, et $H$ est le centre d'un cercle tangent aux trois droites $(PQ)$, $(QR)$, $(RP)$ mais situé à l'extérieur du triangle. Si l'angle en $A$ est droit, $Q$ et $R$ sont tous les deux en $A$, et il n'y a plus de triangle.
- Une variante de cette preuve utilise des angles inscrits : les points $Q$ et $R$ sont sur le cercle de diamètre $[BC]$, car $\widehat{BQC} = \widehat{BRC} = 90°$.
