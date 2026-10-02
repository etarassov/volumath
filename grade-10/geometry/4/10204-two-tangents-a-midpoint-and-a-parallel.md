---
id: "10204"
title: "Deux tangentes, un milieu et une parallèle"
grade: 10
theme: geometry
difficulty: 4
duration_min: 35
tags: [tangente, angle-tangentiel, triangles-semblables, puissance-d-un-point, paralleles]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 1 (géométrie)"
  reference: "2019-10_sujet-envoi-1.pdf, Exercices Juniors, exercice 5 ; corrigé 2019-12_corrige-commentaire-envoi-1.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/10/sujet-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2019-10_sujet-envoi-1.pdf"
---

## Statement

Soit $\Gamma$ un cercle et $P$ un point à l'extérieur de ce cercle. Les deux tangentes à $\Gamma$ issues de $P$ touchent le cercle en $A$ et en $B$.

Soit $M$ le milieu du segment $[BP]$. La droite $(AM)$ recoupe le cercle $\Gamma$ en un point $C$, puis la droite $(PC)$ recoupe le cercle $\Gamma$ en un point $D$.

Montrer que les droites $(AD)$ et $(BP)$ sont parallèles.

## Hints

1. Il suffit de trouver deux angles alternes-internes égaux, par exemple $\widehat{ADP}$ et $\widehat{DPB}$.
2. L'angle entre la tangente $(PA)$ et la corde $[AC]$ est égal à un angle inscrit du cercle. Lequel ?
3. Montrez que $MB^2 = MC \times MA$ en trouvant deux triangles semblables qui ont le sommet $M$ en commun.
4. Comme $MP = MB$, on a aussi $MP^2 = MC \times MA$. Quels nouveaux triangles semblables en déduit-on ?

## Solution

*Rappel (angle entre une tangente et une corde).* Si une droite est tangente en $A$ à un cercle et si $[AC]$ est une corde de ce cercle, l'angle entre la tangente et la corde est égal à tout angle inscrit $\widehat{ADC}$, où $D$ est un point du cercle situé de l'autre côté de la corde. C'est le cas limite du théorème de l'angle inscrit, quand l'un des côtés de l'angle devient tangent.

![Le cercle Γ, les tangentes issues de P, le point M milieu de [BP], et les droites (AD) et (BP)](10204-figure-1.svg)

Le point $M$ est sur la tangente $(PB)$, à l'extérieur du cercle. La droite $(MA)$ coupe donc le cercle en deux points, $C$ et $A$, avec $C$ entre $M$ et $A$. De même, $C$ est entre $P$ et $D$.

**Étape 1 : $MB^2 = MC \times MA$.**

Comparons les triangles $MBC$ et $MAB$.

- Ils ont l'angle en $M$ en commun.
- L'angle $\widehat{MBC}$ est l'angle entre la tangente $(BM)$ et la corde $[BC]$. D'après le rappel, il est égal à l'angle inscrit $\widehat{BAC}$, c'est-à-dire à $\widehat{MAB}$.

Deux angles égaux : les triangles $MBC$ et $MAB$ sont semblables. Leurs côtés sont proportionnels :

$$\frac{MB}{MA} = \frac{MC}{MB}, \qquad \text{donc} \qquad MB^2 = MC \times MA.$$

**Étape 2 : les triangles $MPC$ et $MAP$ sont semblables.**

Comme $M$ est le milieu de $[BP]$, on a $MP = MB$, donc

$$MP^2 = MC \times MA, \qquad \text{c'est-à-dire} \qquad \frac{MP}{MA} = \frac{MC}{MP}.$$

Les triangles $MPC$ et $MAP$ ont l'angle en $M$ en commun, et les côtés qui encadrent cet angle sont proportionnels. Ils sont donc semblables, et leurs angles correspondants sont égaux :

$$\widehat{MPC} = \widehat{MAP}.$$

C'est ici, et seulement ici, que l'on utilise le fait que $M$ est le milieu de $[BP]$.

**Étape 3 : on fait apparaître le point $D$.**

Le point $C$ est sur le segment $[AM]$, donc $\widehat{MAP} = \widehat{CAP}$. C'est l'angle entre la tangente $(AP)$ et la corde $[AC]$. D'après le rappel, il est égal à l'angle inscrit $\widehat{ADC}$ (le point $D$ est bien de l'autre côté de la corde $[AC]$ que le point $P$). Ainsi

$$\widehat{MPC} = \widehat{ADC}.$$

**Étape 4 : conclusion.**

Le point $M$ est sur $[PB]$ et le point $C$ est sur $[PD]$, donc $\widehat{MPC} = \widehat{BPD}$. Le point $C$ est sur $[DP]$, donc $\widehat{ADC} = \widehat{ADP}$. On a donc obtenu

$$\widehat{BPD} = \widehat{ADP}.$$

Ces deux angles sont alternes-internes pour les droites $(AD)$ et $(BP)$ coupées par la sécante $(PD)$ : les points $A$ et $B$ sont de part et d'autre de cette sécante. Des angles alternes-internes égaux donnent des droites parallèles :

$$(AD) \parallel (BP).$$

## Going further

1. La relation $MB^2 = MC \times MA$ de l'étape 1 s'appelle la *puissance du point $M$* par rapport au cercle. Montrer de la même façon que si deux droites issues d'un point $M$ coupent un cercle en $C, A$ et en $C', A'$, alors $MC \times MA = MC' \times MA'$.
