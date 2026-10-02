---
id: "12224"
title: "Un cercle de diamètre [BM] et une parallèle à (AC)"
grade: 11
theme: geometry
difficulty: 5
duration_min: 75
tags: [geometrie-analytique, repere, equation-de-cercle, bissectrice, cercle-circonscrit, angle-inscrit, trigonometrie, parallelisme]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mars 2015"
  reference: "2017-10_ofm-2014-2015-test-mars.pdf, exercices pour les candidats OIM, BxMO et MYMC, exercice 6 (pas de corrigé publié)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-mars.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-mars.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus, avec $AB > BC$. On note $\Omega$ son cercle circonscrit et $O$ le centre de $\Omega$.

La bissectrice de l'angle $\widehat{ABC}$ recoupe $\Omega$ en un point $M$ différent de $B$. Soit $\Gamma$ le cercle de diamètre $[BM]$.

La bissectrice de l'angle $\widehat{AOB}$, issue de $O$, coupe $\Gamma$ en un point $P$, et la bissectrice de l'angle $\widehat{BOC}$, issue de $O$, coupe $\Gamma$ en un point $Q$. Ici, les bissectrices sont des **demi-droites** d'origine $O$.

Soit $R$ le point de la droite $(PQ)$ tel que $BR = MR$.

![Le triangle ABC, le cercle circonscrit, le cercle de diamètre [BM] et les points P et Q](12224-figure-1.svg)

Montrer que les droites $(BR)$ et $(AC)$ sont parallèles.

## Hints

1. Le triangle $AOB$ est isocèle en $O$. Que représente la bissectrice de $\widehat{AOB}$ pour le segment $[AB]$ ?
2. Le point $R$ est sur la médiatrice de $[BM]$. Prends un repère orthonormé d'origine $B$ dont l'axe des abscisses est la demi-droite $[BM)$, et note $\varphi$ la moitié de l'angle $\widehat{ABC}$. Écris les coordonnées de $A$, $C$, $M$, puis l'équation de $\Omega$ et celle de $\Gamma$.
3. Repère un point de la médiatrice de $[AB]$ par sa distance algébrique $t$ à la droite $(AB)$. Écris la condition pour qu'il soit sur $\Gamma$. Fais de même pour la médiatrice de $[BC]$ : que remarques-tu ?
4. Pour savoir quelle solution de l'équation donne $P$, montre que $O$ est à l'intérieur de $\Gamma$. Il suffit de montrer que l'angle $\widehat{OBM}$ est plus petit que $45°$.
5. Calcule le point de la médiatrice de $[BM]$ qui donne une droite passant par $B$ parallèle à $(AC)$, puis vérifie par un calcul de déterminant qu'il est sur $(PQ)$.

## Solution

On note $a = BC$ et $c = AB$, de sorte que $c > a$, et $\widehat{A}$, $\widehat{B}$, $\widehat{C}$ les angles du triangle. On pose $\varphi = \dfrac{\widehat{B}}{2}$, qui est compris entre $0°$ et $45°$, et $D = BM$.

**Étape 1. Ce que sont les deux bissectrices et le point $R$.**

Le triangle $AOB$ est isocèle en $O$, car $OA = OB$. Sa bissectrice issue de $O$ est donc aussi sa médiane et sa hauteur : c'est la demi-droite d'origine $O$ qui passe par le milieu $K$ de $[AB]$, et elle est portée par la médiatrice de $[AB]$. De même, la bissectrice de $\widehat{BOC}$ est la demi-droite $[OL)$, où $L$ est le milieu de $[BC]$, portée par la médiatrice de $[BC]$.

Le point $R$ vérifie $BR = MR$, donc il est sur la médiatrice de $[BM]$.

**Étape 2. Un repère.**

On prend le repère orthonormé d'origine $B$ dont l'axe des abscisses est la demi-droite $[BM)$, orienté de sorte que $C$ soit au-dessus de cet axe. La demi-droite $[BA)$ fait l'angle $\varphi$ sous l'axe et $[BC)$ l'angle $\varphi$ au-dessus. Posons

$$\vec u = (\cos\varphi,\ -\sin\varphi), \qquad \vec v = (\cos\varphi,\ \sin\varphi).$$

Alors $A = c\,\vec u = (c\cos\varphi,\ -c\sin\varphi)$, $C = a\,\vec v = (a\cos\varphi,\ a\sin\varphi)$ et $M = (D, 0)$.

**Étape 3. Le cercle $\Omega$ et son centre $O$.**

Un cercle qui passe par l'origine, de centre $(p, q)$, a pour équation $(x - p)^2 + (y - q)^2 = p^2 + q^2$, c'est-à-dire $x^2 + y^2 - 2px - 2qy = 0$. Écrivons que $M$, $A$ et $C$ sont sur $\Omega$, de centre $O = (p, q)$ :

- pour $M$ : $D^2 - 2pD = 0$, donc $p = \dfrac{D}{2}$ ;
- pour $A$ : $c^2 - 2pc\cos\varphi + 2qc\sin\varphi = 0$, donc $c = D\cos\varphi - 2q\sin\varphi$ ;
- pour $C$ : $a^2 - 2pa\cos\varphi - 2qa\sin\varphi = 0$, donc $a = D\cos\varphi + 2q\sin\varphi$.

En additionnant puis en soustrayant les deux dernières égalités :

$$a + c = 2D\cos\varphi, \qquad a - c = 4q\sin\varphi. \qquad (1)$$

Posons $s = \dfrac{a + c}{2} = D\cos\varphi$ et $h = D\sin\varphi$. Comme $a \neq c$, on a $q \neq 0$.

**Étape 4. Le cercle $\Gamma$, et $O$ est à l'intérieur.**

Le cercle $\Gamma$ a pour centre le milieu $N = \left(\frac{D}{2}, 0\right)$ de $[BM]$ et passe par l'origine. Son équation est donc $x^2 + y^2 - Dx = 0$ : un point $(x, y)$ est sur $\Gamma$ si et seulement si $x^2 + y^2 = Dx$.

Montrons que $O$ est strictement à l'intérieur de $\Gamma$. Le triangle est acutangle, donc $O$ est à l'intérieur du triangle. D'après le théorème de l'angle inscrit, l'angle au centre $\widehat{AOB}$ vaut $2\widehat{C}$, et comme le triangle $AOB$ est isocèle en $O$,

$$\widehat{OBA} = \frac{180° - 2\widehat{C}}{2} = 90° - \widehat{C}.$$

Les demi-droites $[BO)$ et $[BM)$ sont toutes les deux à l'intérieur de l'angle $\widehat{ABC}$, et $\widehat{MBA} = \dfrac{\widehat{B}}{2}$. Donc, avec $\widehat{A} + \widehat{B} + \widehat{C} = 180°$,

$$\widehat{OBM} = \left|\,90° - \widehat{C} - \frac{\widehat{B}}{2}\,\right| = \left|\,\frac{\widehat{A} + \widehat{B} + \widehat{C}}{2} - \widehat{C} - \frac{\widehat{B}}{2}\,\right| = \frac{|\widehat{A} - \widehat{C}|}{2} < 45°,$$

car $\widehat{A}$ et $\widehat{C}$ sont entre $0°$ et $90°$. Or $O = \left(\frac{D}{2}, q\right)$ et $N = \left(\frac{D}{2}, 0\right)$, donc le triangle $OBN$ est rectangle en $N$, et $\dfrac{ON}{BN} = \tan \widehat{OBN} < \tan 45° = 1$. Ainsi $ON < BN = \dfrac{D}{2}$ : le point $O$ est plus proche de $N$ que le rayon de $\Gamma$.

**Étape 5. Le point $P$.**

Posons $\vec n = (\sin\varphi,\ \cos\varphi)$. C'est un vecteur unitaire perpendiculaire à $\vec u$, dirigé du côté de $C$ par rapport à $(AB)$. Les points de la médiatrice de $[AB]$ sont les points

$$Z_t = \frac{c}{2}\,\vec u + t\,\vec n, \qquad t \in \mathbb{R},$$

et $t$ est la distance de $Z_t$ à la droite $(AB)$, comptée positivement du côté de $C$. Comme $\vec u$ et $\vec n$ sont unitaires et perpendiculaires, $BZ_t^2 = \frac{c^2}{4} + t^2$, et l'abscisse de $Z_t$ est $\frac{c}{2}\cos\varphi + t\sin\varphi$. Avec $D\cos\varphi = s = \frac{a+c}{2}$ et $D\sin\varphi = h$, le point $Z_t$ est sur $\Gamma$ si et seulement si

$$\frac{c^2}{4} + t^2 = \frac{c}{2}\cdot\frac{a + c}{2} + ht, \qquad \text{c'est-à-dire} \qquad t^2 - ht - \frac{ac}{4} = 0. \qquad (2)$$

Cette équation a deux solutions $t_1 < t_2$, dont le produit $-\frac{ac}{4}$ est négatif.

Quelle solution donne $P$ ? La droite $(OK)$ passe par le point $O$, qui est à l'intérieur de $\Gamma$, donc elle coupe $\Gamma$ en deux points situés de part et d'autre de $O$. Le point $O$ est à l'intérieur du triangle, du côté de $C$ : il correspond à une valeur $t_O > 0$, et $K$ correspond à $t = 0$. La demi-droite $[OK)$ est donc formée des points $Z_t$ avec $t \leqslant t_O$. Elle contient exactement un des deux points d'intersection, celui qui a la plus petite valeur de $t$. **Donc $P = Z_{t_1}$.**

**Étape 6. Le point $Q$, avec la même valeur de $t$.**

On fait de même pour $[BC]$, avec $\vec n' = (\sin\varphi,\ -\cos\varphi)$, perpendiculaire à $\vec v$ et dirigé du côté de $A$. Le point $\frac{a}{2}\,\vec v + t\,\vec n'$ est sur $\Gamma$ si et seulement si

$$\frac{a^2}{4} + t^2 = D\left(\frac{a}{2}\cos\varphi + t\sin\varphi\right) = \frac{a}{2}\cdot\frac{a + c}{2} + ht, \qquad \text{c'est-à-dire} \qquad t^2 - ht - \frac{ac}{4} = 0.$$

C'est **la même équation** $(2)$. Le même raisonnement, avec $O$ du côté de $A$ par rapport à $(BC)$, montre que $Q$ correspond à la plus petite solution $t_1$. Notons désormais $t = t_1$. On a

$$P = \left(\frac{c}{2}\cos\varphi + t\sin\varphi,\ \ -\frac{c}{2}\sin\varphi + t\cos\varphi\right), \qquad Q = \left(\frac{a}{2}\cos\varphi + t\sin\varphi,\ \ \frac{a}{2}\sin\varphi - t\cos\varphi\right),$$

avec $t^2 = ht + \dfrac{ac}{4}$.

**Étape 7. Le bon point sur la médiatrice de $[BM]$.**

La médiatrice de $[BM]$ est la droite d'équation $x = \frac{D}{2}$. La droite $(PQ)$ n'est pas parallèle à elle, car $x_Q - x_P = \frac{a - c}{2}\cos\varphi \neq 0$. Elles se coupent donc en un seul point, qui est $R$.

Cherchons le point $R_0 = \left(\frac{D}{2}, r\right)$ tel que $(BR_0)$ soit parallèle à $(AC)$. On a $\overrightarrow{AC} = \left((a - c)\cos\varphi,\ (a + c)\sin\varphi\right)$, et les vecteurs $\overrightarrow{BR_0}$ et $\overrightarrow{AC}$ sont colinéaires si et seulement si

$$\frac{D}{2}(a + c)\sin\varphi - r\,(a - c)\cos\varphi = 0.$$

Avec $a + c = 2D\cos\varphi$, cela donne $r = \dfrac{D^2\sin\varphi}{a - c}$. Posons $\delta = \dfrac{a - c}{2}$, qui n'est pas nul, de sorte que $r = \dfrac{D^2\sin\varphi}{2\delta}$.

**Étape 8. Le point $R_0$ est sur $(PQ)$.**

On calcule le déterminant des vecteurs

$$\overrightarrow{PQ} = \left(\delta\cos\varphi,\ \ s\sin\varphi - 2t\cos\varphi\right), \qquad \overrightarrow{PR_0} = \left(\frac{D}{2} - \frac{c}{2}\cos\varphi - t\sin\varphi,\ \ \frac{D^2\sin\varphi}{2\delta} + \frac{c}{2}\sin\varphi - t\cos\varphi\right).$$

Il vaut $\Delta = X_1 - X_2$, avec les deux produits suivants.

- Le premier produit. Comme $\delta\cos\varphi \times \dfrac{D^2\sin\varphi}{2\delta} = \dfrac{(D\cos\varphi)(D\sin\varphi)}{2} = \dfrac{sh}{2}$,
$$X_1 = \delta\cos\varphi\left(\frac{D^2\sin\varphi}{2\delta} + \frac{c}{2}\sin\varphi - t\cos\varphi\right) = \frac{sh}{2} + \frac{c\delta}{2}\sin\varphi\cos\varphi - \delta t\cos^2\varphi.$$
- Le second produit. On sépare le terme $\frac{D}{2}$, qui donne $(s\sin\varphi - 2t\cos\varphi)\frac{D}{2} = \frac{sh}{2} - st$, du reste :
$$X_2 = \frac{sh}{2} - st - \frac{sc}{2}\sin\varphi\cos\varphi - st\sin^2\varphi + ct\cos^2\varphi + 2t^2\sin\varphi\cos\varphi.$$

Dans la différence, les termes $\frac{sh}{2}$ disparaissent. On utilise $\delta + s = a$ et $\delta + c = s$ :

$$\Delta = \frac{ac}{2}\sin\varphi\cos\varphi - st\cos^2\varphi + st + st\sin^2\varphi - 2t^2\sin\varphi\cos\varphi.$$

Comme $1 - \cos^2\varphi = \sin^2\varphi$, les trois termes en $st$ font $2st\sin^2\varphi$. Et $s\sin\varphi = D\cos\varphi\sin\varphi = h\cos\varphi$, donc $2st\sin^2\varphi = 2ht\sin\varphi\cos\varphi$. Finalement

$$\Delta = 2\sin\varphi\cos\varphi\left(\frac{ac}{4} + ht - t^2\right) = 0,$$

d'après $(2)$. Les vecteurs $\overrightarrow{PQ}$ et $\overrightarrow{PR_0}$ sont colinéaires : $R_0$ est sur la droite $(PQ)$.

**Conclusion.** Le point $R_0$ est à la fois sur $(PQ)$ et sur la médiatrice de $[BM]$. D'après l'étape 7, c'est le point $R$. **Donc $(BR) = (BR_0)$ est parallèle à $(AC)$.**

## Going further

La condition sur les demi-droites compte vraiment : la droite $(OK)$ coupe $\Gamma$ en deux points, et le calcul de l'étape 8 ne marche que si $P$ et $Q$ correspondent à la même solution de $(2)$.

Il existe une lecture sans calcul du résultat. Le point $M$ est le milieu de l'arc $AC$, donc $(OM)$ est la médiatrice de $[AC]$, et une droite parallèle à $(AC)$ est perpendiculaire à $(OM)$. Dans le triangle $OBM$, la droite $(ON)$ est la hauteur issue de $O$, et $(BR)$ est la hauteur issue de $B$. **Le point $R$ est donc l'orthocentre du triangle $OBM$**, et l'exercice revient à montrer que la droite $(PQ)$ passe par cet orthocentre. On peut aussi montrer que les quatre points $O$, $N$, $P$, $Q$ sont sur un même cercle, puis conclure avec une inversion de centre $N$, un outil qui n'est pas au programme du lycée.
