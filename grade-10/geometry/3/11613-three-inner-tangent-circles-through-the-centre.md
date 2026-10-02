---
id: "11613"
title: "Trois cercles tangents intérieurement qui passent par le centre"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [cercles tangents, triangle isocele, thales, rayons]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 6 (pot-pourri)"
  reference: "2017-10_ofm-2013-2014-envoi-6.pdf, Exercices communs, exercice 4 ; corrigé 2017-10_ofm-2013-2014-envoi-6-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-6.pdf"
---

## Statement

À l'intérieur d'un cercle $\Gamma$ se trouvent trois cercles $\gamma_1$, $\gamma_2$ et $\gamma_3$, tangents à $\Gamma$ respectivement en trois points distincts $A$, $B$ et $C$.

- Les cercles $\gamma_2$ et $\gamma_3$ ont un point commun $K$ qui appartient au segment $[BC]$.
- Les cercles $\gamma_3$ et $\gamma_1$ ont un point commun $L$ qui appartient au segment $[CA]$.
- Les cercles $\gamma_1$ et $\gamma_2$ ont un point commun $M$ qui appartient au segment $[AB]$.

Prouver que le centre de $\Gamma$ appartient aux trois cercles $\gamma_1$, $\gamma_2$ et $\gamma_3$.

## Hints

1. Note $O$ le centre et $R$ le rayon de $\Gamma$, et $O_1$, $r_1$ le centre et le rayon de $\gamma_1$. Comme $\gamma_1$ est tangent intérieurement à $\Gamma$ en $A$, où se trouve $O_1$ par rapport à $O$ et $A$ ?
2. Les triangles $AO_1M$ et $AOB$ sont tous les deux isocèles. Compare leurs angles, puis calcule $AM/AB$.
3. En faisant le même raisonnement depuis $B$, montre que $r_1 + r_2 = R$. Il y a deux autres égalités du même genre.

## Solution

Notons $O$ le centre et $R$ le rayon de $\Gamma$, et, pour $i = 1, 2, 3$, notons $O_i$ le centre et $r_i$ le rayon de $\gamma_i$.

**Où sont les centres.** Le cercle $\gamma_1$ est à l'intérieur de $\Gamma$ et lui est tangent en $A$. Les deux cercles ont alors la même tangente en $A$, et leurs rayons $[OA]$ et $[O_1A]$ sont tous les deux perpendiculaires à cette tangente. Donc $O$, $O_1$ et $A$ sont alignés, et $O_1$ est sur le segment $[OA]$, avec $O_1 A = r_1 < R$. De même pour $O_2$ sur $[OB]$ et $O_3$ sur $[OC]$.

**Le point $M$ n'est ni $A$ ni $B$.** Deux cercles tangents intérieurement n'ont qu'un seul point commun. Le cercle $\gamma_2$ ne rencontre donc $\Gamma$ qu'en $B$. Comme $A$ est sur $\Gamma$ et que $A \neq B$, le point $A$ n'est pas sur $\gamma_2$, donc $M \neq A$. De même, $B$ n'est pas sur $\gamma_1$, donc $M \neq B$.

**Étape 1 : $AM/AB = r_1/R$.** Le triangle $AO_1M$ est isocèle en $O_1$, puisque $O_1A = O_1M = r_1$. Le triangle $AOB$ est isocèle en $O$, puisque $OA = OB = R$. Ces deux triangles ont le même angle en $A$, car $O_1$ est sur $[AO]$ et $M$ sur $[AB]$. Leurs angles à la base sont donc égaux :

$$\widehat{AMO_1} = \widehat{MAO_1} = \widehat{BAO} = \widehat{ABO}.$$

Les droites $(O_1M)$ et $(OB)$ font le même angle avec la droite $(AB)$, du même côté : elles sont parallèles. Dans le triangle $AOB$, le théorème de Thalès donne alors

$$\frac{AM}{AB} = \frac{AO_1}{AO} = \frac{r_1}{R}.$$

**Étape 2 : $r_1 + r_2 = R$.** Le même raisonnement, fait depuis $B$ avec le cercle $\gamma_2$, donne $BM/BA = r_2/R$. Comme $M$ est sur le segment $[AB]$, on a $AM + MB = AB$. En divisant par $AB$ :

$$\frac{r_1}{R} + \frac{r_2}{R} = 1, \qquad \text{donc} \qquad r_1 + r_2 = R.$$

**Étape 3 : les trois rayons valent $R/2$.** Avec le point $K$ sur $[BC]$ et le point $L$ sur $[CA]$, on obtient de la même façon

$$r_2 + r_3 = R \qquad \text{et} \qquad r_3 + r_1 = R.$$

En comparant $r_1 + r_2 = R$ et $r_2 + r_3 = R$, on trouve $r_1 = r_3$. Alors $r_3 + r_1 = R$ donne $2r_1 = R$. Donc $r_1 = r_3 = R/2$, puis $r_2 = R - r_1 = R/2$.

**Étape 4 : conclusion.** Le centre $O_1$ est sur $[OA]$ avec $O_1A = R/2$ : c'est le milieu de $[OA]$. Donc $O_1O = R/2 = r_1$, ce qui veut dire que $O$ est sur $\gamma_1$. De même, $O_2$ est le milieu de $[OB]$ et $O_3$ celui de $[OC]$, donc $O$ est sur $\gamma_2$ et sur $\gamma_3$.

**Conclusion : le centre de $\Gamma$ appartient aux trois cercles $\gamma_1$, $\gamma_2$ et $\gamma_3$.**

## Going further

L'étape 1 dit que le cercle $\gamma_1$ est l'image de $\Gamma$ par l'homothétie de centre $A$ et de rapport $r_1/R$ : cette homothétie envoie $O$ sur $O_1$ et $B$ sur $M$. C'est la façon la plus rapide de voir que deux cercles tangents en un point « se ressemblent » vus depuis ce point.
