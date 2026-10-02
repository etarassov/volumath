---
id: "12246"
title: "Une tangente au cercle KEF"
grade: 11
theme: geometry
difficulty: 4
duration_min: 50
tags: [produit-scalaire, projete-orthogonal, puissance-d-un-point, tangente, cocyclicite, triangle-rectangle]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de février 2016, senior"
  reference: "2017-10_ofm-2015-2016-test-fevrier.pdf, test du 23 février 2016, exercice 2 ; corrigé 2017-10_ofm-2015-2016-test-fevrier-corrige.pdf (le corrigé utilise les angles orientés et la puissance d'un point ; la solution ci-dessous refait tout avec le produit scalaire, ce qui évite de discuter la position des points)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-test-fevrier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2015-2016-test-fevrier.pdf"
---

## Statement

Soit $ABC$ un triangle sans angle droit, tel que $AB < AC$. On note $H$ le projeté orthogonal de $A$ sur la droite $(BC)$, puis $E$ et $F$ les projetés orthogonaux de $H$ sur les droites $(AB)$ et $(AC)$. La droite $(EF)$ coupe la droite $(BC)$ en un point $D$.

On trace le demi-cercle de diamètre $[CD]$ situé du même côté de $(CD)$ que $A$. Soit $K$ le point de ce demi-cercle dont le projeté orthogonal sur $(CD)$ est $B$.

Montrer que la droite $(DK)$ est tangente au cercle qui passe par $K$, $E$ et $F$.

![Le triangle ABC, les points H, E, F, D, le demi-cercle de diamètre [CD], le point K et le cercle passant par K, E et F](12246-figure-1.svg)

## Hints

1. Calcule les produits scalaires $\overrightarrow{AE} \cdot \overrightarrow{AB}$ et $\overrightarrow{AF} \cdot \overrightarrow{AC}$ en fonction de $AH$.
2. Si une droite passant par un point $X$ coupe un cercle de centre $O$ et de rayon $r$ en $P$ et $Q$, montre que $\overrightarrow{XP} \cdot \overrightarrow{XQ} = XO^2 - r^2$. Pense au milieu de $[PQ]$.
3. Déduis-en que $B$, $C$, $E$, $F$ sont sur un même cercle, puis que $\overrightarrow{DE} \cdot \overrightarrow{DF} = \overrightarrow{DB} \cdot \overrightarrow{DC}$.
4. Montre que $DK^2 = \overrightarrow{DB} \cdot \overrightarrow{DC}$, à l'aide du triangle rectangle $DKC$.

## Solution

**Un lemme : la puissance d'un point.**

*Soit $\Gamma$ un cercle de centre $O$ et de rayon $r$, et $X$ un point. Si une droite passant par $X$ coupe $\Gamma$ en deux points $P$ et $Q$, ou bien est tangente à $\Gamma$ en $P$, auquel cas on pose $Q = P$, alors*
$$\overrightarrow{XP} \cdot \overrightarrow{XQ} = XO^2 - r^2.$$

Ce nombre ne dépend donc que de $X$ et de $\Gamma$, et pas de la droite choisie. On l'appelle la **puissance** de $X$ par rapport à $\Gamma$.

En effet, soit $I$ le milieu de $[PQ]$. La droite $(OI)$ est perpendiculaire à la droite $(PQ)$ : si $P \neq Q$, parce que $O$ et $I$ sont sur la médiatrice de $[PQ]$, et si $P = Q$, parce que la tangente est perpendiculaire au rayon $[OP]$. Comme $\overrightarrow{IQ} = -\overrightarrow{IP}$,
$$\overrightarrow{XP} \cdot \overrightarrow{XQ} = \left(\overrightarrow{XI} + \overrightarrow{IP}\right) \cdot \left(\overrightarrow{XI} - \overrightarrow{IP}\right) = XI^2 - IP^2.$$
Le théorème de Pythagore donne $XO^2 = XI^2 + IO^2$ et $r^2 = OP^2 = IP^2 + IO^2$. En soustrayant, $XI^2 - IP^2 = XO^2 - r^2$.

**Une conséquence : reconnaître une tangente.**

*Soit $K$ un point de $\Gamma$, et $X \neq K$ un point tel que $XK^2 = XO^2 - r^2$. Alors la droite $(XK)$ est tangente à $\Gamma$ en $K$.*

Supposons que la droite $(XK)$ recoupe $\Gamma$ en un point $K' \neq K$. D'après le lemme, $\overrightarrow{XK} \cdot \overrightarrow{XK'} = XO^2 - r^2 = \overrightarrow{XK} \cdot \overrightarrow{XK}$, donc
$$\overrightarrow{XK} \cdot \left(\overrightarrow{XK'} - \overrightarrow{XK}\right) = \overrightarrow{XK} \cdot \overrightarrow{KK'} = 0.$$
Or les vecteurs $\overrightarrow{XK}$ et $\overrightarrow{KK'}$ sont non nuls et dirigés selon la même droite, donc leur produit scalaire vaut $XK \times KK'$ ou $-XK \times KK'$, qui n'est pas nul. C'est une contradiction. La droite $(XK)$ n'a donc que le point $K$ en commun avec $\Gamma$ : elle est tangente à $\Gamma$ en $K$.

**Étape 1. $\overrightarrow{AE} \cdot \overrightarrow{AB} = \overrightarrow{AF} \cdot \overrightarrow{AC} = AH^2$.**

Comme le triangle n'a pas d'angle droit en $B$, le point $H$ n'est pas $B$, et de même il n'est pas $C$.

Comme $E$ est le projeté orthogonal de $H$ sur $(AB)$, le vecteur $\overrightarrow{EH}$ est orthogonal à $\overrightarrow{AB}$, donc
$$\overrightarrow{AH} \cdot \overrightarrow{AB} = \left(\overrightarrow{AE} + \overrightarrow{EH}\right) \cdot \overrightarrow{AB} = \overrightarrow{AE} \cdot \overrightarrow{AB}.$$
D'autre part, $\overrightarrow{AH}$ est orthogonal à $\overrightarrow{HB}$, puisque $H$ et $B$ sont sur $(BC)$, donc
$$\overrightarrow{AH} \cdot \overrightarrow{AB} = \overrightarrow{AH} \cdot \left(\overrightarrow{AH} + \overrightarrow{HB}\right) = AH^2.$$
Ainsi $\overrightarrow{AE} \cdot \overrightarrow{AB} = AH^2$, et de même $\overrightarrow{AF} \cdot \overrightarrow{AC} = AH^2$.

**Étape 2. Les points $B$, $C$, $E$, $F$ sont sur un même cercle.**

Le point $E$ n'est pas sur la droite $(BC)$. Sinon, étant aussi sur $(AB)$, ce serait le point $B$. Alors $B$ serait le projeté de $H$ sur $(AB)$, et la droite $(HB)$, c'est-à-dire $(BC)$, serait perpendiculaire à $(AB)$ : l'angle en $B$ serait droit, ce qui est exclu. Les points $B$, $C$, $E$ ne sont donc pas alignés, et l'on note $\Gamma$ le cercle qui passe par ces trois points.

La droite $(AB)$ coupe $\Gamma$ en $B$ et en $E$. D'après le lemme, la puissance de $A$ par rapport à $\Gamma$ vaut $\overrightarrow{AE} \cdot \overrightarrow{AB} = AH^2$.

La droite $(AC)$ passe par le point $C$ de $\Gamma$. Elle recoupe $\Gamma$ en un second point $F'$, ou bien elle lui est tangente en $C$, et l'on pose alors $F' = C$. Le lemme donne $\overrightarrow{AF'} \cdot \overrightarrow{AC} = AH^2 = \overrightarrow{AF} \cdot \overrightarrow{AC}$, donc
$$\left(\overrightarrow{AF'} - \overrightarrow{AF}\right) \cdot \overrightarrow{AC} = \overrightarrow{FF'} \cdot \overrightarrow{AC} = 0.$$
Les points $F$ et $F'$ sont sur la droite $(AC)$, donc le vecteur $\overrightarrow{FF'}$ est colinéaire à $\overrightarrow{AC}$ tout en lui étant orthogonal. Il est donc nul, et $F' = F$. Ainsi $F$ est sur $\Gamma$.

**Étape 3. $\overrightarrow{DE} \cdot \overrightarrow{DF} = \overrightarrow{DB} \cdot \overrightarrow{DC}$.**

Les points $E$ et $F$ sont différents, puisqu'ils sont sur les droites $(AB)$ et $(AC)$, qui n'ont que $A$ en commun, et qu'aucun des deux n'est égal à $A$ (par exemple, $E = A$ voudrait dire que $(AH)$ est perpendiculaire à $(AB)$ ; comme elle est aussi perpendiculaire à $(BC)$, les droites $(AB)$ et $(BC)$ seraient parallèles, ce qui est faux). La droite $(EF)$ coupe donc $\Gamma$ en $E$ et en $F$, et la droite $(BC)$ la coupe en $B$ et en $C$. Ces deux droites passent par $D$, et le lemme appliqué deux fois au point $D$ donne
$$\overrightarrow{DE} \cdot \overrightarrow{DF} = DO^2 - r^2 = \overrightarrow{DB} \cdot \overrightarrow{DC},$$
où $O$ et $r$ sont le centre et le rayon de $\Gamma$.

**Étape 4. $DK^2 = \overrightarrow{DB} \cdot \overrightarrow{DC}$.**

Le point $B$ n'est pas $D$. Sinon $B$ serait sur $(EF)$, et la droite $(EF)$ serait la droite $(EB)$, c'est-à-dire $(AB)$ ; elle ne contiendrait donc pas $F$, qui est sur $(AC)$ et différent de $A$. Le point $B$ n'est pas non plus $C$. Il n'est donc pas sur le demi-cercle, qui ne rencontre $(CD)$ qu'en $C$ et en $D$. Par conséquent $K \neq B$, et comme $B$ est le projeté de $K$ sur $(CD)$, le point $K$ n'est pas sur $(CD)$.

Le point $K$ est sur le cercle de diamètre $[CD]$ et n'est ni $C$ ni $D$, donc le triangle $DKC$ est rectangle en $K$, et $\overrightarrow{DK} \cdot \overrightarrow{KC} = 0$. Comme $B$ est le projeté orthogonal de $K$ sur $(DC)$, on a, comme à l'étape 1,
$$\overrightarrow{DB} \cdot \overrightarrow{DC} = \overrightarrow{DK} \cdot \overrightarrow{DC} = \overrightarrow{DK} \cdot \left(\overrightarrow{DK} + \overrightarrow{KC}\right) = DK^2.$$

**Étape 5. Conclusion.**

Soit $\Gamma'$ le cercle qui passe par $K$, $E$ et $F$, de centre $O'$ et de rayon $r'$. La droite $(EF)$ passe par $D$ et coupe $\Gamma'$ en $E$ et en $F$. D'après le lemme, puis les étapes 3 et 4,
$$D{O'}^2 - {r'}^2 = \overrightarrow{DE} \cdot \overrightarrow{DF} = \overrightarrow{DB} \cdot \overrightarrow{DC} = DK^2.$$

Enfin $D \neq K$, puisque $D$ est sur la droite $(CD)$ et que $K$ n'y est pas. D'après la conséquence du lemme, la droite $(DK)$ est tangente à $\Gamma'$ en $K$.

## Going further

1. Le cercle de diamètre $[AH]$ passe par $E$ et par $F$, et il est tangent à $(BC)$ en $H$. Déduis-en que $DK = DH$.
2. L'énoncé admet que le point $K$ existe, c'est-à-dire que $B$ est strictement entre $D$ et $C$. Démontre-le, par exemple dans un repère orthonormé d'origine $H$ dont l'axe des abscisses est $(BC)$ : si $B$ et $C$ ont pour abscisses $b$ et $c$, montre que $D$ a pour abscisse $\frac{bc}{b + c}$.
3. Pourquoi l'énoncé suppose-t-il $AB \neq AC$ ?
