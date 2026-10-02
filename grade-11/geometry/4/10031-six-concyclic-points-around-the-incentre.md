---
id: "10031"
title: "Six points cocycliques autour du centre du cercle inscrit"
grade: 11
theme: geometry
difficulty: 4
duration_min: 45
tags: [bissectrice, cercle-inscrit, cercle-circonscrit, points-cocycliques, pythagore, theoreme-de-la-mediane, pole-sud]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 5 (géométrie)"
  reference: "2017-10_ofm-2013-2014-envoi-5.pdf, Exercices communs, exercice 4 (l'énoncé écrit « B2 et B2 » au lieu de « B1 et B2 », corrigé ici) ; corrigé 2017-10_ofm-2013-2014-envoi-5-solutions.pdf (le corrigé utilise la puissance d'un point et les axes radicaux ; la solution est refaite ici avec le théorème de Pythagore et le théorème de la médiane)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-5.pdf"
---

## Statement

Soit $ABC$ un triangle, et $I$ le centre de son cercle inscrit. Les bissectrices des angles $\widehat{A}$, $\widehat{B}$ et $\widehat{C}$ recoupent le cercle circonscrit au triangle en $A'$, $B'$ et $C'$. Le cercle de diamètre $[IA']$ coupe la droite $(BC)$ en $A_1$ et $A_2$. De même, le cercle de diamètre $[IB']$ coupe $(CA)$ en $B_1$ et $B_2$, et le cercle de diamètre $[IC']$ coupe $(AB)$ en $C_1$ et $C_2$.

![Le triangle ABC, son cercle circonscrit, les trois bissectrices en pointillés, et les trois cercles de diamètres [IA'], [IB'] et [IC'] avec leurs points d'intersection avec les côtés](10031-figure-1.svg)

Montrer que les six points $A_1$, $A_2$, $B_1$, $B_2$, $C_1$, $C_2$ sont sur un même cercle.

## Hints

1. Montre d'abord que $A'B = A'C = A'I$, en calculant les angles du triangle $A'BI$.
2. Note $O$ le centre et $R$ le rayon du cercle circonscrit. Pour un point $X$ de la droite $(BC)$, compare $XO^2 - R^2$ et $XA'^2 - A'I^2$. Le milieu de $[BC]$ et le théorème de Pythagore aident.
3. Si de plus $X$ est sur le cercle de diamètre $[IA']$, montre que $XO^2 + XI^2 = R^2$.
4. Quel est l'ensemble des points $X$ du plan tels que $XO^2 + XI^2 = R^2$ ? Pense au milieu de $[OI]$.

## Solution

**Rappel : l'angle inscrit.** Deux points situés du même côté d'une droite $(KL)$ voient le segment $[KL]$ sous le même angle si et seulement s'ils sont sur un même cercle passant par $K$ et $L$.

On note $\Omega$ le cercle circonscrit, $O$ son centre et $R$ son rayon. On note $\alpha$, $\beta$, $\gamma$ les angles du triangle en $A$, $B$, $C$.

### Étape 1 : $A'B = A'C = A'I$

La bissectrice issue de $A$ traverse le côté $[BC]$, donc $A'$ est sur l'arc $BC$ de $\Omega$ qui ne contient pas $A$. Les points $A$ et $B$ sont du même côté de la droite $(A'C)$, donc $\widehat{A'BC} = \widehat{A'AC} = \dfrac{\alpha}{2}$. De même, $\widehat{A'CB} = \widehat{A'AB} = \dfrac{\alpha}{2}$. Le triangle $A'BC$ a deux angles égaux, il est isocèle en $A'$ : $A'B = A'C$.

Le point $I$ est à l'intérieur du triangle et $A'$ est de l'autre côté de $(BC)$, donc
$$\widehat{A'BI} = \widehat{A'BC} + \widehat{CBI} = \frac{\alpha}{2} + \frac{\beta}{2} .$$
D'autre part, $A'$ est sur la demi-droite $[AI)$, au-delà de $I$. L'angle $\widehat{A'IB}$ est donc l'angle extérieur en $I$ du triangle $ABI$, et il est égal à la somme des deux autres angles de ce triangle :
$$\widehat{A'IB} = \widehat{IAB} + \widehat{IBA} = \frac{\alpha}{2} + \frac{\beta}{2} .$$
Le triangle $A'BI$ a deux angles égaux, il est isocèle en $A'$ : $A'I = A'B$.

### Étape 2 : une égalité pour les points de la droite $(BC)$

Soit $H$ le milieu de $[BC]$. Les points $O$ et $A'$ sont à la même distance de $B$ et de $C$, donc ils sont sur la médiatrice de $[BC]$, qui est perpendiculaire à $(BC)$ en $H$.

Soit $X$ un point de la droite $(BC)$. Le théorème de Pythagore dans les triangles rectangles en $H$ donne
$$XO^2 = OH^2 + HX^2 \qquad \text{et} \qquad R^2 = OB^2 = OH^2 + HB^2 ,$$
donc $XO^2 - R^2 = HX^2 - HB^2$. De même,
$$XA'^2 = A'H^2 + HX^2 \qquad \text{et} \qquad A'B^2 = A'H^2 + HB^2 ,$$
donc $XA'^2 - A'B^2 = HX^2 - HB^2$. Avec l'étape 1, on obtient
$$XO^2 - R^2 = XA'^2 - A'I^2 . \qquad (1)$$
(Si $X = H$, les égalités restent vraies avec $HX = 0$.)

### Étape 3 : les points $A_1$ et $A_2$

Soit $X$ l'un des points $A_1$, $A_2$. Il est sur le cercle de diamètre $[IA']$ et il est différent de $I$ et de $A'$, car ces deux points ne sont pas sur $(BC)$. Le triangle $IXA'$ est donc rectangle en $X$, et le théorème de Pythagore donne $XI^2 + XA'^2 = IA'^2$, c'est-à-dire $XA'^2 - A'I^2 = -XI^2$. Avec (1),
$$XO^2 - R^2 = -XI^2, \qquad \text{donc} \qquad XO^2 + XI^2 = R^2 .$$

### Étape 4 : les six points

Le même raisonnement, avec les bissectrices issues de $B$ et de $C$, montre que les six points $X = A_1, A_2, B_1, B_2, C_1, C_2$ vérifient tous
$$XO^2 + XI^2 = R^2 . \qquad (2)$$

Soit $Z$ le milieu de $[OI]$. On a $\overrightarrow{ZI} = -\overrightarrow{ZO}$ et $ZO = \dfrac{OI}{2}$. En développant les carrés scalaires,
$$XO^2 + XI^2 = \left(\overrightarrow{XZ} + \overrightarrow{ZO}\right)^2 + \left(\overrightarrow{XZ} - \overrightarrow{ZO}\right)^2 = 2\,XZ^2 + 2\,ZO^2 = 2\,XZ^2 + \frac{OI^2}{2} .$$
C'est le théorème de la médiane. L'égalité (2) devient donc
$$XZ^2 = \frac{R^2}{2} - \frac{OI^2}{4} .$$
Le membre de droite ne dépend pas du point $X$. Les six points sont donc à la même distance de $Z$.

**Conclusion.** Les points $A_1$, $A_2$, $B_1$, $B_2$, $C_1$, $C_2$ sont sur le cercle de centre $Z$, le milieu de $[OI]$, et de rayon $\sqrt{\dfrac{R^2}{2} - \dfrac{OI^2}{4}}$.

## Going further

- Le cercle de diamètre $[IA']$ coupe toujours la droite $(BC)$ en deux points : $I$ et $A'$ sont de part et d'autre de $(BC)$, donc le cercle traverse la droite.
- Avec la relation d'Euler $OI^2 = R^2 - 2Rr$, où $r$ est le rayon du cercle inscrit, le rayon du cercle trouvé vaut $\sqrt{\dfrac{R^2}{4} + \dfrac{Rr}{2}}$.
- Le corrigé utilise la puissance d'un point par rapport à un cercle et les axes radicaux. Il montre d'abord que $I$ est l'orthocentre du triangle $A'B'C'$. Il en déduit que le point $B$ a la même puissance par rapport aux cercles de diamètres $[IA']$ et $[IC']$, donc que $BA_1 \times BA_2 = BC_1 \times BC_2$ et que $A_1$, $A_2$, $C_1$, $C_2$ sont cocycliques. Un argument sur les trois axes radicaux termine la preuve. La quantité $XO^2 - R^2$ de l'étape 2 est justement la puissance du point $X$ par rapport au cercle circonscrit.
