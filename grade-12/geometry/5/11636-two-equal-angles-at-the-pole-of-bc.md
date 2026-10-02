---
id: "11636"
title: "Deux angles égaux autour du pôle de [BC]"
grade: 12
theme: geometry
difficulty: 5
duration_min: 75
tags: [maths-expertes, nombres complexes, angles orientes, cercle circonscrit, tangentes, geometrie analytique]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2015-2016-envoi-5.pdf, exercices du groupe A, exercice 6 ; corrigé 2017-10_ofm-2015-2016-envoi-5-solutions.pdf (le corrigé donne une preuve synthétique par deux orthocentres ; la preuve ci-dessous passe par les coordonnées et les nombres complexes)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-5.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus. On note $H$ le pied de la hauteur issue de $A$, et $H'$ le symétrique de $H$ par rapport au milieu de $[BC]$.

Les tangentes en $B$ et en $C$ au cercle circonscrit à $ABC$ se coupent en $X$. La perpendiculaire à $(XH')$ passant par $H'$ coupe la droite $(AB)$ en $Y$ et la droite $(AC)$ en $Z$.

![Le triangle ABC, son cercle circonscrit, les tangentes en B et en C qui se coupent en X, le pied H de la hauteur, son symétrique H′, la droite rouge perpendiculaire à (XH′) en H′ qui coupe (AB) en Y et (AC) en Z, et les deux angles YXB et ZXC marqués en orange.](11636-figure-1.svg)

Prouver que $\widehat{YXB} = \widehat{ZXC}$.

## Hints

1. Prends un repère orthonormé d'origine le milieu $M$ de $[BC]$, avec $B(-1\,;\,0)$ et $C(1\,;\,0)$. Sur quelle droite se trouvent le centre $O$ du cercle et le point $X$ ?
2. Écris $O(0\,;\,k)$, $X(0\,;\,-m)$ et $A(u\,;\,h)$. Traduis « $(XB)$ est tangente au cercle » et « $A$ est sur le cercle » par deux relations.
3. En nombres complexes, multiplier par $-i$ fait tourner d'un quart de tour. Un point $W$ de la perpendiculaire en $H'$ s'écrit alors avec un réel $t$, et $z_W - z_X$ est un multiple simple de $z_{H'} - z_X$.
4. Calcule les valeurs $t_Y$ et $t_Z$ du paramètre pour $Y$ et $Z$, puis compare les quotients $(z_Z - z_X)/(z_Y - z_X)$ et $(z_C - z_X)/(z_B - z_X)$.

## Solution

**Rappel.** Si $P$, $Q$, $X$ sont trois points d'affixes $z_P$, $z_Q$, $z_X$ avec $P \neq X$ et $Q \neq X$, un argument du quotient

$$\frac{z_Q - z_X}{z_P - z_X}$$

est une mesure de l'angle orienté $(\overrightarrow{XP}, \overrightarrow{XQ})$. L'angle géométrique $\widehat{PXQ}$ est la valeur absolue de la mesure prise dans $]-\pi\,;\,\pi]$. En particulier, si deux quotients de ce type sont égaux à un réel strictement positif près, ils ont le même argument et les angles géométriques correspondants sont égaux.

**Étape 1 : le repère.** Soit $M$ le milieu de $[BC]$. On prend un repère orthonormé d'origine $M$, dans lequel $B$ et $C$ ont pour affixes $-1$ et $1$, et où $A$ est au-dessus de l'axe des abscisses.

- Le centre $O$ du cercle circonscrit est sur la médiatrice de $[BC]$, l'axe des ordonnées : $z_O = ik$. Le triangle est acutangle, donc $O$ est à l'intérieur du triangle, du même côté de $(BC)$ que $A$ : $k > 0$.
- Les deux tangentes issues de $X$ ont la même longueur, $XB = XC$, donc $X$ est aussi sur l'axe des ordonnées : $z_X = -im$. La tangente en $B$ est perpendiculaire au rayon $[OB]$. Avec $\overrightarrow{OB}(-1\,;\,-k)$ et $\overrightarrow{BX}(1\,;\,-m)$, cela donne $-1 + km = 0$, donc $m = 1/k > 0$.
- On écrit $z_A = u + ih$ avec $h > 0$. Comme $OA = OB$, on a $u^2 + (h - k)^2 = 1 + k^2$, c'est-à-dire

$$u^2 + h^2 - 1 = 2hk = \frac{2h}{m}. \qquad (1)$$

- L'angle en $B$ est aigu, donc $\overrightarrow{BA} \cdot \overrightarrow{BC} = 2(u + 1) > 0$. L'angle en $C$ est aigu, donc $\overrightarrow{CA} \cdot \overrightarrow{CB} = -2(u - 1) > 0$. Ainsi $-1 < u < 1$.
- Le pied de la hauteur est $H(u\,;\,0)$, et son symétrique par rapport à $M$ est $H'(-u\,;\,0)$.

**Étape 2 : la perpendiculaire en $H'$.** Posons $e = z_{H'} - z_X = -u + im$. Le nombre $d = -ie = m + iu$ représente le vecteur $\overrightarrow{XH'}$ tourné d'un quart de tour : il lui est perpendiculaire. Les points $W$ de la perpendiculaire à $(XH')$ en $H'$ sont donc ceux d'affixe

$$z_W = z_{H'} + t\,d = (-u + mt) + i\,ut, \qquad t \in \mathbb{R},$$

et pour un tel point,

$$z_W - z_X = e + t\,d = e - it\,e = e\,(1 - it). \qquad (2)$$

**Étape 3 : les points $Y$ et $Z$.** Posons $D_1 = hm - u^2 - u$ et $D_2 = hm - u^2 + u$.

*Ces deux nombres sont strictement positifs.* D'après $(1)$, $u^2 + h^2 - 1 = 2h/m > 0$ et $hm = 2h^2/(u^2 + h^2 - 1)$. Comme $|u| < 1$, on a $u^2 + |u| < 2$ et $u^2 + h^2 - 1 < h^2$, donc $(u^2 + |u|)(u^2 + h^2 - 1) < 2h^2$, ce qui donne $u^2 + |u| < hm$. Donc $D_1$ et $D_2$, qui sont au moins égaux à $hm - u^2 - |u|$, sont strictement positifs.

*Le point $Y$.* Le point $W$ de paramètre $t$ est sur $(AB)$ quand $\overrightarrow{BW}(1 - u + mt\,;\,ut)$ et $\overrightarrow{BA}(u + 1\,;\,h)$ sont colinéaires :

$$(1 - u + mt)\,h - ut\,(u + 1) = 0, \qquad \text{soit} \qquad t\,D_1 = -h(1 - u).$$

Comme $D_1 \neq 0$, il y a un seul point d'intersection, de paramètre $t_Y = -h(1-u)/D_1$, et $t_Y < 0$.

*Le point $Z$.* De même, avec $\overrightarrow{CW}(-u - 1 + mt\,;\,ut)$ et $\overrightarrow{CA}(u - 1\,;\,h)$ :

$$(-u - 1 + mt)\,h - ut\,(u - 1) = 0, \qquad \text{soit} \qquad t\,D_2 = h(1 + u),$$

donc $t_Z = h(1+u)/D_2$, et $t_Z > 0$.

**Étape 4 : une relation entre $t_Y$ et $t_Z$.** Montrons que

$$1 + t_Y t_Z = \frac{m^2 - 1}{2m}\,(t_Z - t_Y). \qquad (3)$$

D'une part, $(1 + u)D_1 + (1 - u)D_2 = 2hm - 2u^2 - u(1 + u) + u(1 - u) = 2hm - 4u^2$, donc

$$t_Z - t_Y = \frac{h\left((1+u)D_1 + (1-u)D_2\right)}{D_1 D_2} = \frac{2h\,(hm - 2u^2)}{D_1 D_2}.$$

D'autre part,

$$1 + t_Y t_Z = \frac{D_1 D_2 - h^2(1 - u^2)}{D_1 D_2} \qquad \text{avec} \qquad D_1 D_2 = (hm - u^2)^2 - u^2.$$

Le numérateur vaut

$$h^2m^2 - 2hmu^2 + u^4 - u^2 - h^2 + h^2u^2 = h^2(m^2 - 1) - 2hmu^2 + u^2\,(u^2 + h^2 - 1).$$

D'après $(1)$, le dernier terme vaut $u^2 \times 2h/m$. Le numérateur devient

$$h^2(m^2 - 1) - \frac{2hu^2}{m}\,(m^2 - 1) = \frac{h}{m}\,(m^2 - 1)(hm - 2u^2).$$

Donc

$$1 + t_Y t_Z = \frac{(m^2 - 1)\,h\,(hm - 2u^2)}{m\,D_1 D_2} = \frac{m^2 - 1}{2m} \times \frac{2h\,(hm - 2u^2)}{D_1 D_2} = \frac{m^2 - 1}{2m}\,(t_Z - t_Y),$$

ce qui est bien $(3)$.

**Étape 5 : les deux angles.** D'après $(2)$, appliqué à $Y$ et à $Z$,

$$\frac{z_Z - z_X}{z_Y - z_X} = \frac{1 - i t_Z}{1 - i t_Y} = \frac{(1 - i t_Z)(1 + i t_Y)}{1 + t_Y^2} = \frac{1 + t_Y t_Z - i\,(t_Z - t_Y)}{1 + t_Y^2}.$$

Avec $(3)$, le numérateur vaut

$$(t_Z - t_Y)\left(\frac{m^2 - 1}{2m} - i\right) = \frac{t_Z - t_Y}{2m}\,(m^2 - 1 - 2im).$$

Par ailleurs,

$$\frac{z_C - z_X}{z_B - z_X} = \frac{1 + im}{-1 + im} = \frac{(1 + im)(-1 - im)}{1 + m^2} = \frac{m^2 - 1 - 2im}{1 + m^2}.$$

On en déduit

$$\frac{z_Z - z_X}{z_Y - z_X} = \lambda\,\frac{z_C - z_X}{z_B - z_X} \qquad \text{avec} \qquad \lambda = \frac{(t_Z - t_Y)(1 + m^2)}{2m\,(1 + t_Y^2)}.$$

Comme $t_Z > 0 > t_Y$ et $m > 0$, le réel $\lambda$ est strictement positif. En réarrangeant,

$$\frac{z_Y - z_X}{z_B - z_X} = \frac{1}{\lambda} \times \frac{z_Z - z_X}{z_C - z_X}.$$

Les deux quotients ont donc le même argument : les angles orientés $(\overrightarrow{XB}, \overrightarrow{XY})$ et $(\overrightarrow{XC}, \overrightarrow{XZ})$ sont égaux. D'après le rappel, leurs valeurs absolues aussi.

**Conclusion : $\widehat{YXB} = \widehat{ZXC}$.**

## Going further

Le calcul donne même un peu plus : la rotation de centre $X$ qui envoie $B$ sur $C$ envoie la demi-droite $[XY)$ sur la demi-droite $[XZ)$. En particulier $\widehat{YXZ} = \widehat{BXC} = 180^\circ - 2\widehat{BAC}$.

Le corrigé original donne une preuve sans calcul. On note $P$ et $Q$ les projetés de $X$ sur $(AB)$ et $(AC)$. Les points $X$, $H'$, $Y$, $P$ sont sur le cercle de diamètre $[XY]$, et $X$, $H'$, $Z$, $Q$ sur celui de diamètre $[XZ]$, ce qui ramène le problème à montrer que $\widehat{PH'Q} = 180^\circ - \widehat{BAC}$. Le corrigé l'obtient en montrant que le milieu $M$ de $[BC]$ est l'orthocentre du triangle $APQ$, puis que $H'$ est l'orthocentre d'un autre triangle inscrit dans le cercle de diamètre $[AX]$.
