---
id: "12061"
title: "Deux tangentes, une sécante et une parallèle : (SA) coupe [QR] en son milieu"
grade: 11
theme: geometry
difficulty: 4
duration_min: 45
tags: [cercle, tangente, secante, milieu, geometrie-analytique, equation-de-cercle, produit-scalaire, alignement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-02
source:
  name: "POFM, test de sélection pour la JBMO 2014 (14 mai 2014)"
  reference: "2017-10_ofm-2013-2014-test-mai-2.pdf, exercice J2 ; corrigé 2017-10_ofm-2013-2014-test-mai-corrige.pdf, exercice J2 (puissance d'un point, triangles semblables et aires), redit ici avec un repère bien choisi ; résultat vérifié par ordinateur sur vingt mille figures"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-test-mai-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2013-2014-test-mai-2.pdf"
---

## Statement

Soit $\mathcal{C}$ un cercle de centre $O$ et $P$ un point extérieur à ce cercle. Les deux tangentes à $\mathcal{C}$ passant par $P$ touchent le cercle en $A$ et en $B$.

Une droite passant par $P$ coupe le cercle $\mathcal{C}$ en deux points distincts $Q$ et $R$. Soit $S$ le point de $\mathcal{C}$, distinct de $B$, tel que les droites $(BS)$ et $(QR)$ soient parallèles.

Montrer que la droite $(SA)$ passe par le milieu du segment $[QR]$.

![Le cercle de centre O, les tangentes (PA) et (PB), la sécante passant par P, Q et R, la corde [BS] et la droite (SA) en pointillés](12061-figure-1.svg)

## Hints

1. Notez $N$ le milieu de $[QR]$. Pourquoi la droite $(ON)$ est-elle perpendiculaire à $(QR)$ ? Prenez un repère orthonormé d'origine $N$ dont l'axe des abscisses est la droite $(QR)$.
2. Dans ce repère, écrivez $O(0\,;\,c)$, $Q(-q\,;\,0)$ et $R(q\,;\,0)$. Écrivez l'équation du cercle. Où se trouve $S$ si $B$ a pour coordonnées $(x_B\,;\,y_B)$ ?
3. Un point $X(x\,;\,y)$ du cercle est un point de contact d'une tangente issue de $P(p\,;\,0)$ lorsque $\overrightarrow{XP} \cdot \overrightarrow{OX} = 0$. Traduisez cette condition : vous devez trouver que $A$ et $B$ sont sur une même droite.
4. Cherchez sur la droite $(NS)$ un point de la forme $-k\,\overrightarrow{NS}$, avec $k > 0$, qui soit sur le cercle et sur la droite trouvée à l'indication 3.

## Solution

Notons $N$ le milieu de $[QR]$ et $r$ le rayon du cercle. Il s'agit de montrer que $N$ est sur la droite $(SA)$.

**Étape 1 : un repère.** Comme $OQ = OR$, le point $O$ est sur la médiatrice de $[QR]$, qui est la perpendiculaire à $(QR)$ passant par $N$. Prenons un repère orthonormé d'origine $N$, dont l'axe des abscisses est la droite $(QR)$. L'axe des ordonnées est alors cette médiatrice, et il contient $O$. On écrit

$$O(0\,;\,c), \qquad Q(-q\,;\,0), \qquad R(q\,;\,0), \qquad P(p\,;\,0),$$

avec $q > 0$ puisque $Q \neq R$. Comme $OR = r$, on a $q^2 + c^2 = r^2$. Un point $X(x\,;\,y)$ est sur le cercle exactement lorsque $x^2 + (y - c)^2 = r^2$, c'est-à-dire, en développant et en utilisant $r^2 - c^2 = q^2$,

$$x^2 + y^2 - 2cy = q^2 . \qquad (1)$$

**Étape 2 : le point $S$.** Notons $(x_B\,;\,y_B)$ les coordonnées de $B$. L'axe des ordonnées passe par le centre $O$, c'est donc un axe de symétrie du cercle : le point $(-x_B\,;\,y_B)$ est sur le cercle. Il est sur la parallèle à $(QR)$ passant par $B$, qui est la droite horizontale d'équation $y = y_B$. Une droite coupe un cercle en au plus deux points, donc les points du cercle sur cette droite sont $B$ et $(-x_B\,;\,y_B)$. Comme $S$ est distinct de $B$,

$$S(-x_B\,;\,y_B) \qquad \text{et} \qquad x_B \neq 0 .$$

**Étape 3 : les points de contact sont sur une droite.** Soit $X(x\,;\,y)$ un point du cercle. La droite $(PX)$ est tangente au cercle en $X$ exactement lorsqu'elle est perpendiculaire au rayon $[OX]$, c'est-à-dire lorsque $\overrightarrow{XP} \cdot \overrightarrow{OX} = 0$. Avec $\overrightarrow{XP}(p - x\,;\,-y)$ et $\overrightarrow{OX}(x\,;\,y - c)$, cette condition s'écrit

$$(p - x)x - y(y - c) = 0, \quad \text{c'est-à-dire} \quad px + cy = x^2 + y^2 .$$

D'après $(1)$, $x^2 + y^2 = q^2 + 2cy$. La condition devient donc

$$px - cy = q^2 . \qquad (2)$$

Les points $A$ et $B$ vérifient $(1)$ et $(2)$. L'équation $(2)$ est celle d'une droite $L$, car $p$ et $c$ ne sont pas nuls tous les deux (sinon $P = O$, alors que $P$ est hors du cercle). La droite $L$ coupe le cercle en au plus deux points. Ces points sont donc exactement $A$ et $B$, qui sont distincts.

**Étape 4 : un point de la droite $(NS)$.** Posons $s = x_B^2 + y_B^2$. Ce nombre est le carré de la distance $NB$, et $s = NS^2$ aussi. Il n'est pas nul, car $B \neq N$ : le point $N$ est le milieu d'une corde, il est à l'intérieur du disque, puisque $ON^2 = c^2 < c^2 + q^2 = r^2$. D'après $(1)$ appliquée à $B$,

$$s = q^2 + 2c\,y_B . \qquad (3)$$

Posons $k = q^2/s$, qui est strictement positif, et considérons le point $T$ tel que $\overrightarrow{NT} = -k\,\overrightarrow{NS}$, c'est-à-dire $T(k x_B\,;\,-k y_B)$. Il est sur la droite $(NS)$.

*$T$ est sur le cercle.* En utilisant $(3)$ puis $ks = q^2$,

$$x_T^2 + y_T^2 - 2c\,y_T = k^2 s + 2ck\,y_B = k\,(ks + 2c\,y_B) = k\,(q^2 + 2c\,y_B) = ks = q^2 .$$

*$T$ est sur la droite $L$.* Comme $B$ vérifie $(2)$,

$$p\,x_T - c\,y_T = k\,(p\,x_B + c\,y_B) = k\,(p\,x_B - c\,y_B + 2c\,y_B) = k\,(q^2 + 2c\,y_B) = ks = q^2 .$$

D'après l'étape 3, le point $T$ est donc $A$ ou $B$.

**Étape 5 : $T$ n'est pas $B$.** Si l'on avait $T = B$, on aurait $k x_B = x_B$, donc $k = 1$ puisque $x_B \neq 0$, puis $-y_B = y_B$, donc $y_B = 0$. Le point $B$ serait alors sur l'axe des abscisses, c'est-à-dire sur la droite $(PQ)$. La tangente $(PB)$ serait la droite $(PQ)$, qui coupe le cercle en deux points distincts $Q$ et $R$ : c'est impossible, puisqu'une tangente ne touche le cercle qu'en un point.

**Conclusion.** On a donc $T = A$, c'est-à-dire $\overrightarrow{NA} = -k\,\overrightarrow{NS}$. Les vecteurs $\overrightarrow{NA}$ et $\overrightarrow{NS}$ sont colinéaires, donc les points $N$, $A$, $S$ sont alignés. De plus $A \neq S$, car $-k \neq 1$. La droite $(SA)$ passe donc par $N$, le milieu de $[QR]$.

**Remarque.** Le calcul montre même que $NA \times NS = k\,NS^2 = q^2 = NQ \times NR$.

## Going further

1. Que devient la figure quand la droite passant par $P$ passe par le centre $O$ ? Vérifier directement le résultat dans ce cas.
2. Montrer que les points $O$, $A$, $B$, $N$ et $P$ sont sur un même cercle, celui de diamètre $[OP]$.
