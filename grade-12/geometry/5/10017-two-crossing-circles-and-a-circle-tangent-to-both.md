---
id: "10017"
title: "Deux cercles sécants et un cercle tangent aux deux"
grade: 12
theme: geometry
difficulty: 5
duration_min: 60
tags: [cercles-tangents, tangente, tangente-commune, angle-tangentiel, puissance-d-un-point, triangles-semblables, parallelisme]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 6 (géométrie)"
  reference: "2017-10_ofm-2012-2013-envoi6.pdf, Exercices olympiques, exercice 8 ; corrigé 2017-10_ofm-2012-2013-envoi6-corrige.pdf (le corrigé utilise une homothétie et l'axe radical ; la solution est refaite ici avec des triangles isocèles et la puissance d'un point démontrée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi6.pdf"
---

## Statement

Deux cercles $\omega_1$ et $\omega_2$ se coupent en deux points $X$ et $Y$. Un cercle $\omega$ est tangent intérieurement à $\omega_1$ en $P$ et à $\omega_2$ en $Q$. Le segment $[XY]$ coupe $\omega$ en deux points $M$ et $N$.

Les demi-droites $[PM)$ et $[PN)$ recoupent $\omega_1$ en $A$ et en $D$. Les demi-droites $[QM)$ et $[QN)$ recoupent $\omega_2$ en $B$ et en $C$.

![Les cercles ω1 et ω2 sécants en X et Y, le cercle ω en pointillés tangent intérieurement aux deux en P et Q, et les points A, B, C, D](10017-figure-1.svg)

Montrer que $AB = CD$.

## Hints

1. Trace la tangente $\ell$ à $\omega$ en $M$ et la tangente à $\omega_1$ en $A$. Les points $O$ (centre de $\omega$), $O_1$ (centre de $\omega_1$) et $P$ sont alignés. Compare les triangles isocèles $OPM$ et $O_1PA$ : que peut-on dire des deux tangentes ?
2. Les cordes $[XY]$ et $[AP]$ de $\omega_1$ se coupent en $M$. Que vaut $MA \times MP$ ? Et $MB \times MQ$ ?
3. Déduis-en deux triangles semblables, puis que la droite $(AB)$ est parallèle à $\ell$.
4. La droite $(AB)$ est donc tangente à $\omega_1$ et à $\omega_2$. Calcule la longueur d'un segment de tangente commune à deux cercles en fonction de leurs rayons et de la distance de leurs centres.

## Solution

On note $O$, $O_1$, $O_2$ les centres des cercles $\omega$, $\omega_1$, $\omega_2$ et $r_1$, $r_2$ les rayons de $\omega_1$ et $\omega_2$.

**Trois rappels.**

- **Cercles tangents.** Quand $\omega$ est tangent intérieurement à $\omega_1$ en $P$, les deux cercles ont la même tangente en $P$. Les rayons $[OP]$ et $[O_1P]$ sont perpendiculaires à cette tangente, donc $O$, $O_1$, $P$ sont alignés, et $O$ est sur le segment $[O_1P]$.
- **Puissance d'un point.** Si deux cordes $[UV]$ et $[ST]$ d'un cercle se coupent en un point $M$, alors $MU \times MV = MS \times MT$. En effet, les triangles $MUS$ et $MTV$ ont des angles opposés par le sommet égaux en $M$, et $\widehat{MUS} = \widehat{VUS} = \widehat{VTS} = \widehat{MTV}$, car ce sont des angles inscrits qui interceptent le même arc $VS$. Ils sont donc semblables, d'où $\dfrac{MU}{MT} = \dfrac{MS}{MV}$.
- **Angle entre une tangente et une corde.** Si $M$, $P$, $Q$ sont sur un cercle et si $\ell$ est la tangente en $M$, l'angle entre $\ell$ et la corde $[MP]$, mesuré du côté de $(MP)$ qui ne contient pas $Q$, est égal à l'angle inscrit $\widehat{MQP}$. On le démontre avec l'angle au centre : si $\widehat{MQP}$ est aigu, $\widehat{MOP} = 2\widehat{MQP}$, le triangle $OMP$ est isocèle, donc $\widehat{OMP} = 90° - \widehat{MQP}$. Comme $\ell$ est perpendiculaire à $(OM)$, l'angle entre $\ell$ et $[MP]$ vaut $90° - \widehat{OMP} = \widehat{MQP}$. Le cas obtus se traite de la même façon.

### Étape 1 : la tangente à $\omega$ en $M$ est parallèle à la tangente à $\omega_1$ en $A$

Les points $O$ et $O_1$ sont sur la même demi-droite issue de $P$, et $M$ et $A$ aussi, car $A$ est sur $[PM)$. Les triangles $OPM$ et $O_1PA$ sont isocèles, de sommets principaux $O$ et $O_1$, et ils ont le même angle en $P$. Leurs angles à la base sont donc égaux :
$$\widehat{OMP} = \widehat{O_1AP} .$$
Ce sont des angles correspondants pour les droites $(OM)$ et $(O_1A)$ coupées par $(PA)$ : donc $(OM) \parallel (O_1A)$.

Soit $\ell$ la tangente à $\omega$ en $M$ et $\ell_1$ la tangente à $\omega_1$ en $A$. Elles sont perpendiculaires à deux droites parallèles, donc **$\ell \parallel \ell_1$**.

Le même raisonnement avec le point $Q$, où $\omega$ touche $\omega_2$, montre que la tangente $\ell_2$ à $\omega_2$ en $B$ est elle aussi parallèle à $\ell$.

### Étape 2 : $MA \times MP = MB \times MQ$

Le point $M$ est sur le segment $[XY]$, qui est une corde de $\omega_1$ et aussi de $\omega_2$. Il est donc à l'intérieur des deux cercles. La droite $(PM)$ coupe $\omega_1$ en $P$ et $A$, avec $M$ entre les deux. De même, $M$ est entre $Q$ et $B$.

D'après la puissance d'un point, appliquée dans $\omega_1$ aux cordes $[XY]$ et $[AP]$, puis dans $\omega_2$ aux cordes $[XY]$ et $[BQ]$ :
$$MA \times MP = MX \times MY = MB \times MQ .$$

### Étape 3 : la droite $(AB)$ est parallèle à $\ell$

De l'étape 2 on tire $\dfrac{MA}{MQ} = \dfrac{MB}{MP}$. De plus $\widehat{AMB} = \widehat{QMP}$, car ce sont des angles opposés par le sommet. Les triangles $MAB$ et $MQP$ sont donc semblables, $A$ correspondant à $Q$ et $B$ à $P$. En particulier
$$\widehat{MAB} = \widehat{MQP} .$$

Dans le cercle $\omega$, qui passe par $M$, $P$, $Q$, le rappel sur la tangente donne : la demi-droite de $\ell$ issue de $M$, située du côté de $(MP)$ qui ne contient pas $Q$, fait avec $[MP)$ un angle égal à $\widehat{MQP}$. Or $M$ est entre $Q$ et $B$, donc $B$ et $Q$ sont de part et d'autre de $(MP)$ : cette demi-droite de $\ell$ est du même côté de la droite $(AP)$ que $B$.

Regardons les deux angles le long de la droite $(AP)$, sur laquelle $A$, $M$, $P$ sont dans cet ordre. En $A$, l'angle entre $[AM)$ et $[AB)$ vaut $\widehat{MQP}$. En $M$, l'angle entre $[MP)$, qui va dans le même sens que $[AM)$, et la demi-droite de $\ell$ vaut aussi $\widehat{MQP}$, et cette demi-droite est du même côté que $B$. Ce sont des angles correspondants égaux, donc **$(AB) \parallel \ell$**.

### Étape 4 : $(AB)$ est une tangente commune à $\omega_1$ et à $\omega_2$

Les droites $(AB)$ et $\ell_1$ sont toutes les deux parallèles à $\ell$ et passent toutes les deux par $A$ : elles sont confondues. Donc $(AB)$ est tangente à $\omega_1$ en $A$. De même, $(AB)$ et $\ell_2$ sont parallèles à $\ell$ et passent par $B$, donc $(AB)$ est tangente à $\omega_2$ en $B$.

Le même raisonnement avec $N$ à la place de $M$ montre que $(DC)$ est tangente à $\omega_1$ en $D$ et à $\omega_2$ en $C$.

### Étape 5 : la longueur d'un segment de tangente commune

Les deux disques limités par $\omega_1$ et $\omega_2$ sont du même côté de la droite $(AB)$. Sinon, leur partie commune serait contenue dans la droite $(AB)$. Or elle contient les deux points distincts $X$ et $Y$, alors que $(AB)$ ne touche $\omega_1$ qu'au seul point $A$. En particulier, $O_1$ et $O_2$ sont du même côté de $(AB)$.

Les rayons $[O_1A]$ et $[O_2B]$ sont perpendiculaires à $(AB)$. Soit $H$ le pied de la perpendiculaire à $(O_1A)$ passant par $O_2$. Le quadrilatère $AHO_2B$ a trois angles droits, c'est un rectangle : $HO_2 = AB$ et $AH = BO_2 = r_2$. Les points $H$ et $O_1$ sont sur la droite $(O_1A)$, du même côté de $(AB)$ que $O_2$, donc sur la même demi-droite issue de $A$, et $O_1H = |r_1 - r_2|$. Le théorème de Pythagore dans le triangle $O_1HO_2$, rectangle en $H$, donne
$$AB^2 = O_1O_2^2 - (r_1 - r_2)^2 .$$
(Si $r_1 = r_2$, alors $H = O_1$ et la formule reste vraie.)

Le même calcul pour la tangente commune $(DC)$ donne $CD^2 = O_1O_2^2 - (r_1 - r_2)^2$.

**Conclusion.** $AB^2 = CD^2$, donc $AB = CD$.

## Going further

On peut dire plus : $(AB)$ et $(CD)$ sont les deux tangentes communes aux cercles $\omega_1$ et $\omega_2$, et elles sont symétriques l'une de l'autre par rapport à la droite $(O_1O_2)$. Elles sont bien distinctes : $M \neq N$, donc les demi-droites $[PM)$ et $[PN)$ sont différentes et $A \neq D$, alors qu'une tangente à $\omega_1$ ne le touche qu'en un point.
