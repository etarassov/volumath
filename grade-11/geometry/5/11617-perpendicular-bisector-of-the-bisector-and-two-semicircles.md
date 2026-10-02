---
id: "11617"
title: "La médiatrice de la bissectrice et les deux demi-cercles"
grade: 11
theme: geometry
difficulty: 5
duration_min: 75
tags: [geometrie-reperee, bissectrice, cercle, puissance-d-un-point, cocyclicite, produit-scalaire]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 6 (pot-pourri)"
  reference: "2017-10_ofm-2013-2014-envoi-6.pdf, Exercices du groupe A, exercice 8 ; corrigé 2017-10_ofm-2013-2014-envoi-6-solutions.pdf (le corrigé utilise la loi des sinus et une chasse aux angles ; la preuve ici est en coordonnées)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-6.pdf"
---

## Statement

Soit $ABC$ un triangle. On note $D$ le pied de la bissectrice issue de $A$, c'est-à-dire le point où la bissectrice de l'angle $\widehat{BAC}$ coupe $[BC]$, et $E$ le pied de la hauteur issue de $A$.

On construit, à l'extérieur du triangle, le demi-cercle de diamètre $[AB]$ et le demi-cercle de diamètre $[AC]$. La médiatrice de $[AD]$ coupe le premier demi-cercle en $X$ et le second en $Y$.

Prouver que les points $X$, $Y$, $D$ et $E$ sont sur un même cercle.

![Le triangle ABC, la bissectrice AD, la hauteur AE, les deux demi-cercles extérieurs et la médiatrice de [AD] qui les coupe en X et Y](11617-figure-1.svg)

## Hints

1. Prends un repère d'origine $A$ dont l'axe des abscisses porte la bissectrice $(AD)$. Avec $b = AC$, $c = AB$ et $\alpha$ la moitié de l'angle en $A$, on a $B(c\cos\alpha, -c\sin\alpha)$ et $C(b\cos\alpha, b\sin\alpha)$.
2. La médiatrice de $[AD]$ est la droite d'équation $x = q$, où $q = AD/2$. Coupe par cette droite les cercles de diamètres $[AB]$ et $[AC]$ : tu obtiens deux équations du second degré en $y$.
3. Montre que les ordonnées de $X$ et $Y$ sont liées très simplement : $y_Y = -\frac{b}{c}\, y_X$.
4. Note $T$ le point où la médiatrice coupe $(BC)$. Le point $E$ est sur le cercle de diamètre $[AD]$. Compare le produit des distances $TX \cdot TY$ avec $TD \cdot TE$.

## Solution

On note $b = AC$, $c = AB$, et $2\alpha$ l'angle $\widehat{BAC}$, de sorte que $0 < \alpha < 90°$ et que $\cos\alpha > 0$, $\sin\alpha > 0$.

**Le cas $b = c$.** Le triangle est alors isocèle en $A$, sa bissectrice est aussi sa hauteur, et $D = E$. Il s'agit seulement de voir que $X$, $Y$ et $D$ sont sur un cercle, c'est-à-dire qu'ils ne sont pas alignés. C'est le cas, puisque $X$ et $Y$ sont deux points distincts de la médiatrice de $[AD]$ et que $D$ n'est pas sur cette médiatrice.

On suppose désormais $b \neq c$.

**Le repère.** On prend un repère orthonormé d'origine $A$, dont l'axe des abscisses porte la bissectrice $(AD)$, orienté vers $D$, et tel que $C$ soit au-dessus de cet axe. Comme $(AB)$ et $(AC)$ font chacune l'angle $\alpha$ avec cet axe,

$$B(c\cos\alpha, -c\sin\alpha), \qquad C(b\cos\alpha, b\sin\alpha).$$

On pose $\lambda = \dfrac{\cos\alpha}{b + c}$, de sorte que $\cos\alpha = (b + c)\lambda$.

**Étape 1 : la médiatrice de $[AD]$.** Le point de $[BC]$ qui est sur l'axe des abscisses est $D$. Les points de $(BC)$ s'écrivent $B + \mu\,\overrightarrow{BC}$, d'ordonnée $-c\sin\alpha + \mu(b + c)\sin\alpha$. Cette ordonnée est nulle pour $\mu = \frac{c}{b+c}$, ce qui donne l'abscisse

$$x_D = c\cos\alpha + \frac{c}{b+c}(b - c)\cos\alpha = \frac{2bc\cos\alpha}{b+c} = 2bc\lambda.$$

La médiatrice $\ell$ de $[AD]$ est donc la droite d'équation $x = q$, avec $q = bc\lambda$.

**Étape 2 : les deux équations.** Un point $P(x, y)$ est sur le cercle $\omega_B$ de diamètre $[AB]$ exactement quand $\overrightarrow{PA} \cdot \overrightarrow{PB} = 0$, c'est-à-dire

$$x(x - c\cos\alpha) + y(y + c\sin\alpha) = 0.$$

Sur $\ell$, on remplace $x$ par $q$. Comme $q - c\cos\alpha = bc\lambda - c(b + c)\lambda = -c^2\lambda$, on a $q(q - c\cos\alpha) = -bc^3\lambda^2$, et l'ordonnée $y$ d'un point de $\omega_B \cap \ell$ vérifie

$$y^2 + c\sin\alpha\; y - bc^3\lambda^2 = 0. \qquad (E_B)$$

De même, $\omega_C$ a pour équation $x(x - b\cos\alpha) + y(y - b\sin\alpha) = 0$. Comme $q - b\cos\alpha = -b^2\lambda$, l'ordonnée d'un point de $\omega_C \cap \ell$ vérifie

$$y^2 - b\sin\alpha\; y - b^3 c\lambda^2 = 0. \qquad (E_C)$$

**Étape 3 : quelles racines donnent $X$ et $Y$.** La droite $(AB)$ a pour équation $x\sin\alpha + y\cos\alpha = 0$ (on vérifie en $A$ et en $B$), et en $C$ on trouve $2b\sin\alpha\cos\alpha > 0$. Le demi-cercle extérieur de diamètre $[AB]$ est donc du côté où $x\sin\alpha + y\cos\alpha < 0$. Sur $\ell$, cela s'écrit $y < -q\tan\alpha$.

La droite $\ell$ coupe $(AB)$ au point $U(q, -q\tan\alpha)$, et $AU = \dfrac{q}{\cos\alpha} = \dfrac{bc}{b+c} < c$. Donc $U$ est sur le diamètre $[AB]$, strictement entre $A$ et $B$, donc à l'intérieur du cercle $\omega_B$. La droite $\ell$ coupe donc $\omega_B$ en deux points, un de chaque côté de $(AB)$, et $X$ est celui qui est sous $U$ :

$$y_X < -q\tan\alpha < 0.$$

De même, $Y$ est le point de $\omega_C \cap \ell$ situé de l'autre côté de $(AC)$ par rapport à $B$, et $y_Y > q\tan\alpha > 0$.

**Étape 4 : $y_Y = -\dfrac{b}{c}\, y_X$.** Si $y$ est une solution de $(E_B)$, posons $y' = -\frac{b}{c}\, y$. Alors

$$y'^2 - b\sin\alpha\; y' - b^3c\lambda^2 = \frac{b^2}{c^2}y^2 + \frac{b^2}{c}\sin\alpha\; y - b^3c\lambda^2 = \frac{b^2}{c^2}\left(y^2 + c\sin\alpha\; y - bc^3\lambda^2\right) = 0,$$

donc $y'$ est une solution de $(E_C)$. Avec $y = y_X < 0$, on obtient une solution $y' > 0$ de $(E_C)$. Or le produit des deux solutions de $(E_C)$ vaut $-b^3c\lambda^2 < 0$ : une seule est positive, et c'est $y_Y$. Donc $y_Y = -\frac{b}{c}\, y_X$.

**Étape 5 : le point $T$.** Comme $b \neq c$, la droite $(BC)$ n'est pas perpendiculaire à la bissectrice, donc elle coupe $\ell$ en un point $T(q, \tau)$. Sur $(BC)$, l'abscisse $c\cos\alpha + \mu(b - c)\cos\alpha$ vaut $q$ quand $c + \mu(b - c) = \frac{bc}{b+c}$, c'est-à-dire $\mu = -\frac{c^2}{(b+c)(b-c)}$. L'ordonnée correspondante est

$$\tau = -c\sin\alpha - \frac{c^2}{b - c}\sin\alpha = \frac{bc\sin\alpha}{c - b}.$$

**Étape 6 : un outil, la puissance d'un point.** Soit $\Sigma$ un cercle de centre $\Omega$ et de rayon $r$, soit $T$ un point et $\vec u$ un vecteur de norme $1$. Le point $T + t\vec u$ est sur $\Sigma$ quand $\lVert \overrightarrow{\Omega T} + t\vec u \rVert^2 = r^2$, c'est-à-dire

$$t^2 + 2t\, \vec u \cdot \overrightarrow{\Omega T} + \left(T\Omega^2 - r^2\right) = 0.$$

On en tire deux conséquences, à l'aide du produit des racines d'un trinôme :

- (i) si $T + t_1\vec u$ et $T + t_2\vec u$ sont deux points distincts de $\Sigma$, alors $t_1 t_2 = T\Omega^2 - r^2$ ;
- (ii) si $T + t_1\vec u$ est sur $\Sigma$ avec $t_1 \neq 0$, alors le point $T + t_2\vec u$, où $t_2 = \dfrac{T\Omega^2 - r^2}{t_1}$, est aussi sur $\Sigma$ (c'est l'autre racine).

Le nombre $T\Omega^2 - r^2$ s'appelle la **puissance** du point $T$ par rapport à $\Sigma$.

**Étape 7 : le produit sur $\ell$.** On prend $\vec u = (0, 1)$ sur $\ell$ : $X = T + (y_X - \tau)\vec u$ et $Y = T + (y_Y - \tau)\vec u$. Calculons

$$(y_X - \tau)(y_Y - \tau) = y_X y_Y - \tau(y_X + y_Y) + \tau^2.$$

D'une part, d'après $(E_B)$, $y_X^2 = -c\sin\alpha\; y_X + bc^3\lambda^2$, donc

$$y_X y_Y = -\frac{b}{c}\, y_X^2 = b\sin\alpha\; y_X - b^2c^2\lambda^2 = b\sin\alpha\; y_X - q^2.$$

D'autre part, $y_X + y_Y = \frac{c - b}{c}\, y_X$, donc $\tau(y_X + y_Y) = \frac{bc\sin\alpha}{c - b} \times \frac{c - b}{c}\, y_X = b\sin\alpha\; y_X$. Finalement

$$(y_X - \tau)(y_Y - \tau) = \tau^2 - q^2.$$

**Étape 8 : le produit sur $(BC)$.** Notons $\kappa$ le cercle de diamètre $[AD]$ : son centre est $(q, 0)$ et son rayon $q$. Le point $D$ est sur $\kappa$. Le point $E$ aussi, car $\widehat{AED}$ est un angle droit. Et $D \neq E$, car $b \neq c$. Prenons un vecteur $\vec v$ de norme $1$ qui dirige $(BC)$, et écrivons $D = T + t_D\vec v$ et $E = T + t_E\vec v$. La distance de $T(q, \tau)$ au centre $(q, 0)$ de $\kappa$ vaut $|\tau|$, donc d'après (i) :

$$t_D\, t_E = \tau^2 - q^2.$$

**Étape 9 : conclusion.** Les points $X$, $Y$ et $D$ ne sont pas alignés, car $X \neq Y$ sont sur $\ell$ et $D$ n'y est pas. Notons $\Sigma$ le cercle qui passe par ces trois points. D'après (i) appliqué à $X$ et $Y$ sur $\ell$, et l'étape 7, la puissance de $T$ par rapport à $\Sigma$ vaut $\tau^2 - q^2$.

Le point $D = T + t_D\vec v$ est sur $\Sigma$, avec $t_D \neq 0$ puisque $T \neq D$. D'après (ii), le point $T + t_2\vec v$ est aussi sur $\Sigma$, où

$$t_2 = \frac{\tau^2 - q^2}{t_D} = t_E,$$

d'après l'étape 8. Ce point est donc $E$, et $E$ est sur $\Sigma$.

**Conclusion : les points $X$, $Y$, $D$ et $E$ sont sur un même cercle.**

## Going further

Le calcul de l'étape 7 n'a utilisé que deux faits : $y_X$ est une solution de $(E_B)$, et $y_Y = -\frac{b}{c}\, y_X$. Il marche donc aussi pour les deux autres points d'intersection, ceux où $\ell$ coupe les demi-cercles construits **à l'intérieur** du triangle : eux aussi sont sur un même cercle avec $D$ et $E$. Ce n'est pas le même cercle que celui de $X$ et $Y$ : un cercle ne coupe la droite $\ell$ qu'en deux points au plus.

Le corrigé original évite les coordonnées. Il introduit les milieux $M$, $N$, $P$ de $[AB]$, $[AC]$, $[AD]$, qui sont alignés, montre avec la loi des sinus que les triangles $PXM$ et $PYN$ sont semblables, puis conclut par une chasse aux angles.
