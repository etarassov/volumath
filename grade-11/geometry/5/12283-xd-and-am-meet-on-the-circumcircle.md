---
id: "12283"
title: "Les droites (XD) et (AM) se coupent sur le cercle"
grade: 11
theme: geometry
difficulty: 5
duration_min: 60
tags: [cercle inscrit, cercle circonscrit, angle inscrit, triangles semblables, aires, rapport de longueurs, mediane, points alignes]
adapted_from: null
see_also: []
created: 2026-10-02
source:
  name: "POFM, test de mai 2017"
  reference: "2017-10_ofm-2016-2017-test-mai.pdf, test du 3 mai 2017, exercice 5 (groupe A, élèves nés en 2001 ou avant) ; pas de corrigé publié, solution rédigée pour cette base, dont chaque étape a été vérifiée numériquement sur 18 000 triangles tirés au hasard. Il s'agit du problème G2 de la liste courte des Olympiades internationales 2016"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-test-mai.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2016-2017-test-mai.pdf"
---

## Statement

Soit $ABC$ un triangle, $\Gamma$ son cercle circonscrit et $I$ le centre de son cercle inscrit. Soit $M$ le milieu de $[BC]$, et $D$ le point de $[BC]$ tel que $(ID)$ soit perpendiculaire à $(BC)$.

La droite qui passe par $I$ et qui est perpendiculaire à $(AI)$ coupe les droites $(AB)$ et $(AC)$ en $F$ et en $E$ respectivement.

On suppose que le cercle circonscrit au triangle $AEF$ coupe $\Gamma$ en un point $X$ différent de $A$.

![Le triangle ABC, son cercle circonscrit Γ, son cercle inscrit de centre I, les points D et M sur [BC], la perpendiculaire à (AI) en I qui donne F et E, et le cercle passant par A, E, F qui recoupe Γ en X](12283-figure-1.svg)

Montrer que les droites $(XD)$ et $(AM)$ se coupent en un point de $\Gamma$.

## Hints

1. Appelle $Z$ le second point d'intersection de la droite $(AM)$ avec $\Gamma$. Il suffit de montrer que la droite $(XZ)$ passe par $D$. Pour cela, on va comparer des rapports de longueurs sur le segment $[BC]$.
2. Soient $U$ et $V$ deux points de $\Gamma$ situés de part et d'autre de $(BC)$, et $P$ le point où $(UV)$ coupe $[BC]$. Montre avec deux paires de triangles semblables que $\frac{PB}{PC} = \frac{UB \times VB}{UC \times VC}$. Applique cela à $A$ et à $Z$.
3. Les cercles $\Gamma$ et $(AEF)$ se coupent en $A$ et en $X$. Montre que les triangles $XFB$ et $XEC$ ont les mêmes angles.
4. Il reste à calculer $BF$ et $CE$. On note $a = BC$, $b = CA$, $c = AB$ et $s$ le demi-périmètre. En comparant les aires des triangles $AFE$ et $ABC$, montre que $AF = AE = \frac{bc}{s}$, et souviens-toi que $BD = s - b$.

## Solution

On note $a = BC$, $b = CA$, $c = AB$, $s = \frac{a + b + c}{2}$ le demi-périmètre et $r$ le rayon du cercle inscrit. Si $b = c$, les cercles $\Gamma$ et $(AEF)$ sont tangents en $A$ (voir « Pour aller plus loin »), donc l'hypothèse impose $b \neq c$.

On utilise le **théorème de l'angle inscrit** sous la forme suivante : si quatre points $R$, $S$, $T$, $W$ sont sur un même cercle, avec $R$ et $S$ du même côté de la droite $(TW)$, alors $\widehat{TRW} = \widehat{TSW}$. Cela vient de ce qu'un angle inscrit vaut la moitié de l'angle au centre qui intercepte le même arc.

On note $Z$ le second point d'intersection de la droite $(AM)$ avec $\Gamma$. On va montrer que **la droite $(XZ)$ passe par $D$**, ce qui répondra à la question.

### Étape 1. Les longueurs $BD$ et $CD$

Le cercle inscrit est tangent à $(BC)$ en $D$, puisque $(ID)$ est perpendiculaire à $(BC)$. Notons $D_b$ et $D_c$ ses points de contact avec $[CA]$ et $[AB]$. Les deux tangentes menées d'un point à un cercle ont la même longueur, donc il existe des nombres $x$, $y$, $z$ tels que
$$AD_b = AD_c = x, \qquad BD = BD_c = y, \qquad CD = CD_b = z.$$
Alors $x + y = c$, $y + z = a$ et $z + x = b$. En additionnant, $x + y + z = s$, donc
$$BD = y = s - b \qquad \text{et} \qquad CD = z = s - c.$$

### Étape 2. Les longueurs $BF$ et $CE$

*Les triangles $AIF$ et $AIE$.* La droite $(FE)$ est perpendiculaire en $I$ à la bissectrice $(AI)$. Comme l'angle entre $[AI)$ et $[AB)$ est aigu, $F$ est sur la demi-droite $[AB)$, et de même $E$ est sur $[AC)$. Les triangles $AIF$ et $AIE$ sont rectangles en $I$, ont le côté $[AI]$ en commun, et ont des angles égaux en $A$. Ils sont donc égaux, d'où $AF = AE$, et $I$ est le milieu de $[FE]$.

*L'aire du triangle $AFE$, de deux façons.* La distance de $I$ aux droites $(AB)$ et $(AC)$ vaut $r$, car le cercle inscrit est tangent à ces droites. Comme $I$ est sur $[FE]$,
$$\mathcal{A}(AFE) = \mathcal{A}(AFI) + \mathcal{A}(AIE) = \frac{1}{2}\,AF \times r + \frac{1}{2}\,AE \times r = r \times AF.$$
D'autre part, en découpant $ABC$ en trois triangles de sommet $I$, on obtient $\mathcal{A}(ABC) = \frac{1}{2}\,r\,(a + b + c) = rs$. Enfin, les triangles $AFE$ et $ABE$ ont la même hauteur issue de $E$, et les triangles $ABE$ et $ABC$ la même hauteur issue de $B$, donc
$$\mathcal{A}(AFE) = \frac{AF}{AB} \times \mathcal{A}(ABE) = \frac{AF}{AB} \times \frac{AE}{AC} \times \mathcal{A}(ABC) = \frac{AF^2}{bc} \times rs.$$
En égalant les deux expressions, $r \times AF = \frac{AF^2}{bc}\,rs$, donc
$$AF = AE = \frac{bc}{s}.$$

*Les longueurs cherchées.* On a $\frac{bc}{s} < c$, car $b < s$ d'après l'inégalité triangulaire $b < a + c$. Donc $F$ est strictement entre $A$ et $B$, et de même $E$ est strictement entre $A$ et $C$. Alors
$$BF = c - \frac{bc}{s} = \frac{c\,(s - b)}{s} \qquad \text{et} \qquad CE = b - \frac{bc}{s} = \frac{b\,(s - c)}{s}.$$
Avec l'étape 1, on obtient
$$\frac{BF}{CE} = \frac{c}{b} \times \frac{s - b}{s - c} = \frac{c}{b} \times \frac{BD}{CD}. \qquad (1)$$

### Étape 3. La position du point $X$

Le point $B$ est à l'extérieur du cercle $(AEF)$ : la droite $(AB)$ coupe ce cercle en $A$ et en $F$, ses points intérieurs au disque sont ceux du segment $[AF]$, et $B$ n'est pas sur ce segment. De même, $C$ est à l'extérieur du cercle $(AEF)$.

Les cercles $\Gamma$ et $(AEF)$ se coupent en $A$ et en $X$. Des deux arcs de $\Gamma$ d'extrémités $A$ et $X$, l'un est à l'intérieur du cercle $(AEF)$ et l'autre à l'extérieur. Les points $B$ et $C$ sont tous les deux sur l'arc extérieur. Par conséquent :

- $X$ et $A$ sont sur le même arc d'extrémités $B$ et $C$, donc **$X$ est du même côté de $(BC)$ que $A$** ;
- $B$ et $C$ sont sur le même arc d'extrémités $A$ et $X$, donc **$B$ et $C$ sont du même côté de la droite $(AX)$**.

Le point $F$ est sur $[AB]$ et n'est pas sur la droite $(AX)$, car cette droite ne coupe le cercle $(AEF)$ qu'en $A$ et $X$, et $F$, strictement à l'intérieur de la corde $[AB]$, n'est pas sur $\Gamma$. Donc $F$ est du côté de $B$ par rapport à $(AX)$. De même, $E$ est du côté de $C$. Ainsi **$E$ et $F$ sont du même côté de $(AX)$.**

### Étape 4. Les triangles $XFB$ et $XEC$ sont semblables

- Sur $\Gamma$, les points $B$ et $C$ sont du même côté de $(AX)$, donc $\widehat{XBA} = \widehat{XCA}$. Comme $F$ est sur $[BA]$ et $E$ sur $[CA]$, cela s'écrit $\widehat{XBF} = \widehat{XCE}$.
- Sur le cercle $(AEF)$, les points $F$ et $E$ sont du même côté de $(AX)$, donc $\widehat{XFA} = \widehat{XEA}$. Comme $F$ est entre $A$ et $B$, et $E$ entre $A$ et $C$, on en déduit $\widehat{XFB} = 180° - \widehat{XFA} = 180° - \widehat{XEA} = \widehat{XEC}$.

Les triangles $XFB$ et $XEC$ ont deux angles égaux, donc ils ont les mêmes angles et sont semblables, $F$ correspondant à $E$ et $B$ à $C$. Les côtés opposés aux angles égaux en $F$ et en $E$ sont dans le même rapport que les côtés opposés aux angles en $X$ :
$$\frac{XB}{XC} = \frac{BF}{CE}. \qquad (2)$$

### Étape 5. Un lemme sur les rapports

*Soient $U$ et $V$ deux points de $\Gamma$ situés de part et d'autre de la droite $(BC)$. Le segment $[U V]$ coupe le segment $[BC]$ en un point $P$, et*
$$\frac{PB}{PC} = \frac{U B \times V B}{U C \times V C}.$$

Le segment $[U V]$ coupe la droite $(BC)$ en un point $P$, qui est à l'intérieur du disque, donc sur la corde $[BC]$. En faisant le tour du cercle, on rencontre $B$, $U$, $C$, $V$ dans cet ordre : le quadrilatère $B U C V$ est convexe, et ses diagonales sont $[BC]$ et $[U V]$.

- Les triangles $P U B$ et $P C V$ ont des angles égaux en $P$, opposés par le sommet. De plus $U$ et $C$ sont du même côté de $(B V)$, donc $\widehat{V U B} = \widehat{V C B}$, c'est-à-dire $\widehat{P U B} = \widehat{V C P}$. Ces triangles sont donc semblables, et $\frac{U B}{C V} = \frac{PB}{P V}$.
- De même, les triangles $P U C$ et $P B V$ ont des angles égaux en $P$, et $\widehat{P U C} = \widehat{V U C} = \widehat{V B C} = \widehat{V B P}$, car $U$ et $B$ sont du même côté de $(C V)$. Ils sont semblables, et $\frac{U C}{B V} = \frac{PC}{P V}$.

En divisant la première égalité par la seconde, on obtient $\frac{U B \times B V}{C V \times U C} = \frac{PB}{PC}$, ce qui démontre le lemme.

### Étape 6. Le rapport $\frac{ZB}{ZC}$

Le point $M$ est à l'intérieur de la corde $[BC]$, donc à l'intérieur du disque : il est entre $A$ et $Z$, et $A$ et $Z$ sont de part et d'autre de $(BC)$. Le lemme, appliqué à $U = A$ et $V = Z$, montre que la droite $(AZ)$ coupe $[BC]$ en un point $P$ vérifiant $\frac{PB}{PC} = \frac{AB \times ZB}{AC \times ZC}$. Ce point est $M$, et $MB = MC$, donc $c \times ZB = b \times ZC$ :
$$\frac{ZB}{ZC} = \frac{b}{c}. \qquad (3)$$

### Étape 7. Conclusion

D'après l'étape 3, $X$ est du côté de $A$ par rapport à $(BC)$, donc de l'autre côté que $Z$. Le lemme, appliqué à $U = X$ et $V = Z$, montre que la droite $(XZ)$ coupe $[BC]$ en un point $P$ tel que, d'après $(2)$, $(3)$ et $(1)$,
$$\frac{PB}{PC} = \frac{XB}{XC} \times \frac{ZB}{ZC} = \frac{BF}{CE} \times \frac{b}{c} = \frac{c}{b} \times \frac{BD}{CD} \times \frac{b}{c} = \frac{BD}{CD}.$$

Or un point $Q$ du segment $[BC]$ est déterminé par le rapport $k = \frac{QB}{QC}$ : de $QB = k \times QC$ et $QB + QC = BC$, on tire $QC = \frac{BC}{1 + k}$. Comme $P$ et $D$ sont sur $[BC]$ avec le même rapport, $P = D$.

Ainsi la droite $(XZ)$ passe par $D$ : c'est la droite $(XD)$. Elle est différente de $(AM)$, car $X$ n'est pas sur $(AM)$ : cette droite ne coupe $\Gamma$ qu'en $A$ et en $Z$, et $X$ est différent de $A$ par hypothèse, et de $Z$ puisqu'il est de l'autre côté de $(BC)$. **Les droites $(XD)$ et $(AM)$ se coupent donc en $Z$, qui est sur $\Gamma$.**

## Going further

1. Montre que si $AB = AC$, les centres des cercles $\Gamma$ et $(AEF)$ sont sur la droite $(AI)$, et que ces deux cercles sont tangents en $A$. Le point $X$ n'existe alors pas.
2. Montre que les triangles $BFI$ et $BIC$ sont semblables, et déduis-en que $BF \times BC = BI^2$.
