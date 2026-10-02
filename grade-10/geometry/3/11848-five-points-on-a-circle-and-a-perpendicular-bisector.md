---
id: "11848"
title: "Cinq points sur un cercle et une médiatrice"
grade: 10
theme: geometry
difficulty: 3
duration_min: 35
tags: [cercle, angle inscrit, triangles egaux, mediatrice, perpendicularite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 5 (pot-pourri)"
  reference: "2023-03_Sujet-envoi-5.pdf, Exercices Juniors, exercice 5 (repris en exercice 12 chez les Seniors) ; corrigé 2023-07_corrige-envoi-5.pdf. L'énoncé original ne précise pas que Q est au-delà de A et R au-delà de D ; sur la demi-droite, il y a parfois un second point qui convient, et la conclusion est alors fausse. L'énoncé ci-dessous le précise, comme la figure du corrigé."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/03/Sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-03_Sujet-envoi-5.pdf"
---

## Statement

Soient $A$, $B$, $C$, $D$ et $E$ cinq points placés dans cet ordre sur un cercle, tels que $AE = DE$. On note $P$ le point d'intersection des droites $(AC)$ et $(BD)$.

- Soit $Q$ le point de la droite $(AB)$, situé au-delà de $A$ (de sorte que $A$ soit entre $B$ et $Q$), tel que $AQ = DP$.
- Soit $R$ le point de la droite $(CD)$, situé au-delà de $D$ (de sorte que $D$ soit entre $C$ et $R$), tel que $DR = AP$.

Montrer que les droites $(PE)$ et $(QR)$ sont perpendiculaires.

## Hints

1. Faire une grande figure et colorier les longueurs égales. On cherche des triangles égaux (superposables).
2. Comparer les triangles $QAP$ et $PDR$. Que peut-on en déduire pour le point $P$ et le segment $[QR]$ ?
3. Comparer aussi les triangles $EAP$ et $EDR$, puis $EAQ$ et $EDP$. Que peut-on en déduire pour le point $E$ ?
4. Une droite qui contient deux points distincts à égale distance de $Q$ et de $R$ est la médiatrice de $[QR]$.

## Solution

**Rappels.**

- *Triangles égaux.* Si deux triangles ont deux côtés de mêmes longueurs et si l'angle compris entre ces deux côtés est le même, alors ils sont égaux (superposables) : en particulier, leurs troisièmes côtés ont la même longueur.
- *Angle inscrit.* Soient $X$ et $Y$ deux points d'un cercle. Si $U$ et $V$ sont deux autres points du cercle situés du même côté de la droite $(XY)$, alors $\widehat{XUY} = \widehat{XVY}$. S'ils sont de part et d'autre, alors $\widehat{XUY} + \widehat{XVY} = 180°$.
- *Médiatrice.* Les points à égale distance de deux points distincts $Q$ et $R$ forment la médiatrice de $[QR]$, qui est la droite perpendiculaire à $(QR)$ passant par le milieu de $[QR]$.

**La position des points.** Comme $A$, $B$, $C$, $D$ se suivent sur le cercle, les cordes $[AC]$ et $[BD]$ se coupent : $P$ est à l'intérieur des deux segments $[AC]$ et $[BD]$, donc à l'intérieur du cercle. Les points $B$, $A$, $Q$ sont alignés dans cet ordre, ainsi que $C$, $D$, $R$.

**Étape 1 : $PQ = PR$.** Comparons les triangles $QAP$ et $PDR$.

- $AQ = DP$ et $AP = DR$ par hypothèse.
- Comme $A$ est entre $B$ et $Q$, et $P$ sur $[AC]$, on a $\widehat{QAP} = 180° - \widehat{BAP} = 180° - \widehat{BAC}$. Comme $D$ est entre $C$ et $R$, et $P$ sur $[DB]$, on a $\widehat{PDR} = 180° - \widehat{PDC} = 180° - \widehat{BDC}$.
- Les points $A$ et $D$ sont du même côté de la corde $(BC)$ (ils sont sur l'arc qui va de $C$ à $B$ en passant par $D$, $E$, $A$). Par l'angle inscrit, $\widehat{BAC} = \widehat{BDC}$, donc $\widehat{QAP} = \widehat{PDR}$.

Les triangles $QAP$ et $PDR$ ont deux côtés égaux deux à deux ($AQ = DP$, $AP = DR$) et le même angle compris entre eux : ils sont égaux. Leurs troisièmes côtés sont égaux : $PQ = PR$.

**Étape 2 : $EP = ER$.** Comparons les triangles $EAP$ et $EDR$.

- $EA = ED$ et $AP = DR$ par hypothèse.
- Comme $P$ est sur $[AC]$, $\widehat{EAP} = \widehat{EAC}$. Comme $D$ est entre $C$ et $R$, $\widehat{EDR} = 180° - \widehat{EDC}$.
- Les points $A$, $C$, $D$, $E$ sont sur le cercle, et $A$, $D$ sont de part et d'autre de la corde $(CE)$. Par l'angle inscrit, $\widehat{EAC} + \widehat{EDC} = 180°$, donc $\widehat{EAP} = \widehat{EDR}$.

Les triangles $EAP$ et $EDR$ sont donc égaux, et $EP = ER$.

**Étape 3 : $EP = EQ$.** Comparons les triangles $EDP$ et $EAQ$.

- $ED = EA$ et $DP = AQ$ par hypothèse.
- Comme $P$ est sur $[DB]$, $\widehat{EDP} = \widehat{EDB}$. Comme $A$ est entre $B$ et $Q$, $\widehat{EAQ} = 180° - \widehat{EAB}$.
- Les points $A$, $B$, $D$, $E$ sont sur le cercle, et $A$, $D$ sont de part et d'autre de la corde $(BE)$. Par l'angle inscrit, $\widehat{EAB} + \widehat{EDB} = 180°$, donc $\widehat{EAQ} = \widehat{EDP}$.

Les triangles $EDP$ et $EAQ$ sont donc égaux, et $EP = EQ$.

**Conclusion.** D'après l'étape 1, $P$ est à égale distance de $Q$ et de $R$. D'après les étapes 2 et 3, $EQ = EP = ER$, donc $E$ aussi est à égale distance de $Q$ et de $R$. Les points $E$ et $P$ sont distincts, car $E$ est sur le cercle et $P$ à l'intérieur. La droite $(PE)$ est donc la médiatrice de $[QR]$, et elle est perpendiculaire à $(QR)$.

## Going further

On a même montré que $EP = EQ = ER$ : le point $E$ est le centre du cercle qui passe par $P$, $Q$ et $R$.

Pourquoi faut-il préciser que $Q$ est au-delà de $A$ ? Sur la demi-droite $[BA)$, il y a parfois deux points à la distance $DP$ de $A$, l'un au-delà de $A$ et l'autre entre $B$ et $A$. Avec le second, l'angle en $A$ de l'étape 1 devient $\widehat{BAC}$ au lieu de $180° - \widehat{BAC}$, les triangles ne sont plus égaux, et une figure montre que la conclusion est fausse en général.
