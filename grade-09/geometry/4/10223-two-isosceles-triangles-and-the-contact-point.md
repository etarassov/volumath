---
id: "10223"
title: "Deux triangles isocèles et le point de contact"
grade: 9
theme: geometry
difficulty: 4
duration_min: 35
tags: [cercle-inscrit, tangente, triangle-isocele, paralleles, thales, trigonometrie, alignement, chasse-aux-angles]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 1 (géométrie)"
  reference: "2020-10_Sujet-envoi-1.pdf, Exercices Seniors, exercice 13 ; corrigé 2020-11_corrige-envoi-1.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/10/Sujet-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-10_Sujet-envoi-1.pdf"
---

## Statement

Soit $ABC$ un triangle. Son cercle inscrit touche les côtés $[BC]$, $[CA]$ et $[AB]$ aux points $D$, $E$ et $F$.

- Soit $P$ le point situé du même côté de la droite $(AB)$ que $C$ tel que $PF = BF$ et $\widehat{BFP} = \widehat{BAC}$.
- Soit $Q$ le point situé du même côté de la droite $(AC)$ que $B$ tel que $QE = CE$ et $\widehat{QEC} = \widehat{BAC}$.

Montrer que les points $P$, $D$ et $Q$ sont alignés.

![Le triangle ABC, son cercle inscrit qui touche les côtés en D, E, F, et les deux triangles isocèles FBP et ECQ](10223-figure-1.svg)

## Hints

1. Le triangle $FBP$ est isocèle en $F$. Calculez ses angles à la base en fonction des angles du triangle $ABC$. Faites de même pour le triangle $ECQ$.
2. Comparez les angles $\widehat{PBC}$ et $\widehat{QCB}$. Que peut-on dire des droites $(BP)$ et $(CQ)$ ?
3. Les deux tangentes menées d'un point à un cercle ont la même longueur, donc $BF = BD$ et $CE = CD$. Comparez $\frac{BP}{CQ}$ et $\frac{BD}{CD}$, puis pensez au théorème de Thalès.

## Solution

*Rappels.*

- *Tangentes issues d'un point.* Si deux droites issues d'un point $X$ touchent un cercle de centre $I$ en $U$ et en $V$, alors $XU = XV$. En effet, les triangles $XUI$ et $XVI$ sont rectangles en $U$ et en $V$ (une tangente est perpendiculaire au rayon), et $IU = IV$, donc le théorème de Pythagore donne $XU^2 = XI^2 - IU^2 = XI^2 - IV^2 = XV^2$.
- *Triangle isocèle.* Dans un triangle isocèle, les deux angles à la base sont égaux, et la droite qui joint le sommet principal au milieu de la base est aussi la hauteur et la bissectrice issues de ce sommet.
- *Thalès, configuration « papillon ».* Si les droites $(UV)$ et $(XY)$ se coupent en $Z$ et si $(UX) \parallel (VY)$, alors $\frac{ZU}{ZV} = \frac{ZX}{ZY} = \frac{UX}{VY}$.

On note $\alpha$, $\beta$ et $\gamma$ les angles du triangle $ABC$ en $A$, $B$ et $C$. On a $\alpha + \beta + \gamma = 180°$, donc

$$90° - \frac{\alpha}{2} = \frac{\beta + \gamma}{2}.$$

**Étape 1 : les angles des deux triangles isocèles.** Le triangle $FBP$ est isocèle en $F$ et son angle au sommet vaut $\alpha$. Ses deux angles à la base valent donc

$$\widehat{FBP} = \widehat{FPB} = \frac{180° - \alpha}{2} = \frac{\beta + \gamma}{2}.$$

De même, le triangle $ECQ$ est isocèle en $E$ avec un angle au sommet égal à $\alpha$, donc $\widehat{ECQ} = \frac{\beta + \gamma}{2}$.

Si $\beta = \gamma$, ces angles valent $\beta = \widehat{ABC}$ et $\gamma = \widehat{ACB}$. Le point $P$ est alors sur la demi-droite $[BC)$ et le point $Q$ sur la demi-droite $[CB)$ : les trois points $P$, $D$, $Q$ sont sur la droite $(BC)$, donc alignés. On suppose désormais $\beta > \gamma$. Le cas $\beta < \gamma$ est le même en échangeant les rôles de $B$ et $C$, de $F$ et $E$, de $P$ et $Q$.

**Étape 2 : les droites $(BP)$ et $(CQ)$ sont parallèles.**

- *En $B$.* Comme $\beta > \gamma$, on a $\frac{\beta + \gamma}{2} < \beta$. Le point $P$ est du même côté de $(AB)$ que $C$, donc la demi-droite $[BP)$ est à l'intérieur de l'angle $\widehat{ABC}$. Ainsi $P$ est du même côté de $(BC)$ que $A$, et
$$\widehat{PBC} = \beta - \frac{\beta + \gamma}{2} = \frac{\beta - \gamma}{2}.$$
- *En $C$.* Cette fois $\frac{\beta + \gamma}{2} > \gamma$. Le point $Q$ est du même côté de $(AC)$ que $B$, donc en tournant depuis $[CA)$ vers $B$ d'un angle plus grand que $\gamma$, la demi-droite $[CQ)$ dépasse $[CB)$. Ainsi $Q$ est de l'autre côté de $(BC)$ que $A$, et
$$\widehat{QCB} = \frac{\beta + \gamma}{2} - \gamma = \frac{\beta - \gamma}{2}.$$

Les points $P$ et $Q$ sont de part et d'autre de la droite $(BC)$ et $\widehat{PBC} = \widehat{QCB}$. Ce sont des angles alternes-internes égaux, donc $(BP) \parallel (CQ)$.

**Étape 3 : le rapport des longueurs.** Soit $M$ le milieu de $[BP]$. D'après le deuxième rappel, $(FM)$ est perpendiculaire à $(BP)$ et coupe l'angle $\widehat{BFP}$ en deux, donc $\widehat{BFM} = \frac{\alpha}{2}$. Dans le triangle $FMB$ rectangle en $M$ :

$$BM = BF \sin\left(\frac{\alpha}{2}\right), \quad \text{donc} \quad BP = 2\,BF \sin\left(\frac{\alpha}{2}\right).$$

De la même façon, $CQ = 2\,CE \sin\left(\frac{\alpha}{2}\right)$. En divisant :

$$\frac{BP}{CQ} = \frac{BF}{CE}.$$

Les droites $(BA)$ et $(BC)$ sont tangentes au cercle inscrit en $F$ et en $D$, donc $BF = BD$ d'après le premier rappel. De même $CE = CD$. Finalement

$$\frac{BP}{CQ} = \frac{BD}{CD}.$$

**Étape 4 : conclusion.** Les points $P$ et $Q$ sont de part et d'autre de $(BC)$, donc le segment $[PQ]$ coupe la droite $(BC)$ en un point, que l'on note $D'$. Le segment $[PQ]$ reste dans la bande comprise entre les deux droites parallèles $(BP)$ et $(CQ)$, et la partie de la droite $(BC)$ qui est dans cette bande est le segment $[BC]$. Donc $D'$ est sur le segment $[BC]$.

Les droites $(BC)$ et $(PQ)$ se coupent en $D'$ et $(BP) \parallel (CQ)$. Le théorème de Thalès donne

$$\frac{D'B}{D'C} = \frac{BP}{CQ} = \frac{DB}{DC}.$$

Notons $k$ cette valeur commune. Comme $D'$ est sur $[BC]$, on a $D'B + D'C = BC$ et $D'B = k \times D'C$, d'où $D'C = \frac{BC}{1 + k}$. Le même calcul pour $D$, qui est aussi sur $[BC]$, donne $DC = \frac{BC}{1 + k}$. Donc $D'C = DC$, et comme $D$ et $D'$ sont tous deux sur le segment $[BC]$, ils sont confondus : $D' = D$.

Le point $D$ est donc sur le segment $[PQ]$ : **les points $P$, $D$ et $Q$ sont alignés.**

![Les droites (BP) et (CQ) sont parallèles, et la droite (PQ) coupe [BC] exactement en D](10223-figure-2.svg)

*Remarque.* Le corrigé officiel remarque en plus que le triangle $AEF$ est isocèle avec le même angle au sommet $\alpha$, donc semblable aux deux autres. La preuve ci-dessus montre qu'on n'en a pas besoin : seules les égalités $BF = BD$ et $CE = CD$ servent. Les correcteurs signalent aussi une erreur fréquente : supposer que le centre du cercle inscrit est sur la droite $(AD)$, ce qui est faux en général.

## Going further

1. Soit $D$ un point quelconque du segment $[BC]$. On place $F$ sur $[AB]$ tel que $BF = BD$ et $E$ sur $[AC]$ tel que $CE = CD$ (on suppose que ces points existent), puis $P$ et $Q$ comme dans l'énoncé. Montrer que $P$, $D$ et $Q$ sont encore alignés.
2. Calculer $\frac{DP}{DQ}$ en fonction des longueurs $BD$ et $CD$.
