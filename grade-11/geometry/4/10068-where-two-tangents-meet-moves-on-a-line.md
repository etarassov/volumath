---
id: "10068"
title: "Le point de rencontre de deux tangentes décrit une droite"
grade: 11
theme: geometry
difficulty: 4
duration_min: 60
tags: [lieu-geometrique, tangente, cercle, produit-scalaire, repere, bissectrice, systeme-lineaire]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 2 (géométrie)"
  reference: "2017-11_pofm-2017-2018-envoi2.pdf, Exercices du groupe A, exercice 8 ; corrigé 2018-01_pofm-2017-2018-envoi2-corrige.pdf (le corrigé utilise des similitudes directes de centre le pied de la hauteur issue de A ; ici on calcule avec le produit scalaire dans un repère d'origine A dont l'axe des abscisses est la bissectrice de l'angle en A. Oubli de l'énoncé : si l'angle en A est droit, les deux tangentes sont parallèles pour tout P et T(P) n'existe pas ; on a ajouté l'hypothèse « angle en A non droit »)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/11/pofm-2017-2018-envoi2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-11_pofm-2017-2018-envoi2.pdf"
---

## Statement

Soit $ABC$ un triangle dont l'angle en $A$ n'est pas droit. Pour un point $P$ de la droite $(BC)$, on note $E(P)$ et $F(P)$ les seconds points d'intersection des droites $(AB)$ et $(AC)$ avec le cercle de diamètre $[AP]$. Si l'une de ces droites est tangente au cercle en $A$, on prend $A$ comme second point. Soit $T(P)$ le point d'intersection des tangentes à ce cercle en $E(P)$ et en $F(P)$.

![Le triangle ABC, un point P de (BC), le cercle de diamètre [AP] qui recoupe (AB) en E(P) et (AC) en F(P), et les tangentes en E(P) et F(P) qui se coupent en T(P)](10068-figure-1.svg)

Montrer que, quand $P$ parcourt la droite $(BC)$, l'ensemble des points $T(P)$ est une droite.

## Hints

1. Prends un repère orthonormé d'origine $A$ dont l'axe des abscisses est la bissectrice de l'angle $\widehat{BAC}$. Les vecteurs de longueur $1$ qui dirigent $[AB)$ et $[AC)$ s'écrivent $\vec{u}\,(c\,;\,s)$ et $\vec{v}\,(c\,;\,-s)$. Que vaut $\cos \widehat{BAC}$ ?
2. Un point $K$ est sur le cercle de diamètre $[AP]$ exactement quand $\overrightarrow{KA} \cdot \overrightarrow{KP} = 0$. Déduis-en que $\overrightarrow{AE(P)} = \lambda\,\vec{u}$, avec $\lambda = \vec{u} \cdot \overrightarrow{AP}$.
3. Montre qu'un point $Z$ est sur la tangente en $E(P)$ exactement quand $\overrightarrow{AZ} \cdot \left(2\lambda\,\vec{u} - \overrightarrow{AP}\right) = \lambda^2$.
4. Écris les deux équations de tangentes en coordonnées, puis ajoute-les et soustrais-les.

## Solution

On note $E$, $F$, $T$ au lieu de $E(P)$, $F(P)$, $T(P)$ quand $P$ est fixé.

### Étape 1 : un repère adapté

On prend un repère orthonormé d'origine $A$, dont l'axe des abscisses est la bissectrice de l'angle $\widehat{BAC}$. La symétrie par rapport à cet axe échange les demi-droites $[AB)$ et $[AC)$. Les vecteurs de longueur $1$ qui les dirigent s'écrivent donc
$$\vec{u}\,(c\,;\,s) \quad \text{pour } [AB), \qquad \vec{v}\,(c\,;\,-s) \quad \text{pour } [AC),$$
avec $c^2 + s^2 = 1$, et, quitte à orienter les axes, $c > 0$ et $s > 0$. Alors
$$\cos \widehat{BAC} = \vec{u} \cdot \vec{v} = c^2 - s^2 .$$
On pose $d = c^2 - s^2$. L'angle en $A$ n'est pas droit, donc **$d \neq 0$**. On utilisera aussi $2c^2 - 1 = d$ et $2s^2 - 1 = -d$, qui viennent de $c^2 + s^2 = 1$.

Soit $P$ un point de $(BC)$ et $\vec{p} = \overrightarrow{AP}$, de coordonnées $(x\,;\,y)$. Comme $A$ n'est pas sur $(BC)$, on a $P \neq A$, donc $x^2 + y^2 \neq 0$.

### Étape 2 : les points $E$ et $F$

Le cercle $\omega$ de diamètre $[AP]$ est l'ensemble des points $K$ tels que $\overrightarrow{KA} \cdot \overrightarrow{KP} = 0$. Un point $K$ de la droite $(AB)$ s'écrit $\overrightarrow{AK} = k\,\vec{u}$, avec $k$ réel. Alors
$$\overrightarrow{KA} \cdot \overrightarrow{KP} = (-k\,\vec{u}) \cdot (\vec{p} - k\,\vec{u}) = -k\,(\vec{u} \cdot \vec{p}) + k^2 = k\,(k - \vec{u} \cdot \vec{p}) .$$
Ce produit est nul pour $k = 0$, qui donne $A$, et pour $k = \vec{u} \cdot \vec{p}$. Donc, en posant
$$\lambda = \vec{u} \cdot \vec{p} = cx + sy, \qquad \mu = \vec{v} \cdot \vec{p} = cx - sy ,$$
on obtient $\overrightarrow{AE} = \lambda\,\vec{u}$ et, de même, $\overrightarrow{AF} = \mu\,\vec{v}$. Cela reste vrai quand $\lambda = 0$ : la droite $(AB)$ ne coupe alors $\omega$ qu'en $A$, et $E = A$ comme le veut l'énoncé.

### Étape 3 : l'équation des tangentes

Le centre $M$ de $\omega$ est le milieu de $[AP]$, donc $\overrightarrow{AM} = \tfrac{1}{2}\,\vec{p}$. La tangente à $\omega$ en $E$ est la droite qui passe par $E$ et qui est perpendiculaire au rayon $(ME)$. Un point $Z$ est sur cette tangente exactement quand $\overrightarrow{EZ} \cdot \overrightarrow{EM} = 0$. On écrit $\vec{z} = \overrightarrow{AZ}$ :
$$\overrightarrow{EZ} \cdot \overrightarrow{EM} = (\vec{z} - \lambda\,\vec{u}) \cdot \left(\tfrac{1}{2}\,\vec{p} - \lambda\,\vec{u}\right) .$$
On calcule $\lambda\,\vec{u} \cdot \left(\tfrac{1}{2}\,\vec{p} - \lambda\,\vec{u}\right) = \tfrac{1}{2}\lambda^2 - \lambda^2 = -\tfrac{1}{2}\lambda^2$, en utilisant $\vec{u} \cdot \vec{p} = \lambda$ et $\vec{u} \cdot \vec{u} = 1$. La condition devient $\vec{z} \cdot \left(\tfrac{1}{2}\,\vec{p} - \lambda\,\vec{u}\right) = -\tfrac{1}{2}\lambda^2$, soit, en multipliant par $-2$ :
$$\text{tangente en } E : \quad \vec{z} \cdot (2\lambda\,\vec{u} - \vec{p}) = \lambda^2 .$$
De la même façon :
$$\text{tangente en } F : \quad \vec{z} \cdot (2\mu\,\vec{v} - \vec{p}) = \mu^2 .$$

### Étape 4 : le point $T$

On calcule les coordonnées des deux vecteurs. Avec $\lambda = cx + sy$ et $2c^2 - 1 = d$, $2s^2 - 1 = -d$ :
$$2\lambda\,\vec{u} - \vec{p} = (2\lambda c - x\,;\,2\lambda s - y) = (dx + 2csy\,;\,2csx - dy) .$$
De même, avec $\mu = cx - sy$ :
$$2\mu\,\vec{v} - \vec{p} = (2\mu c - x\,;\,-2\mu s - y) = (dx - 2csy\,;\,-2csx - dy) .$$
Un point $Z(X\,;\,Y)$ est sur les deux tangentes exactement quand
$$(1) \qquad (dx + 2csy)\,X + (2csx - dy)\,Y = \lambda^2 ,$$
$$(2) \qquad (dx - 2csy)\,X - (2csx + dy)\,Y = \mu^2 .$$
On ajoute, puis on soustrait les deux équations. Comme $\lambda^2 + \mu^2 = 2\,(c^2 x^2 + s^2 y^2)$ et $\lambda^2 - \mu^2 = 4csxy$ :
$$2d\,(xX - yY) = 2\,(c^2 x^2 + s^2 y^2), \qquad 4cs\,(yX + xY) = 4csxy .$$
Les nombres $d$ et $cs$ ne sont pas nuls, donc le système est équivalent à
$$(3) \qquad xX - yY = \frac{c^2 x^2 + s^2 y^2}{d} ,$$
$$(4) \qquad yX + xY = xy .$$
On fait $x \times (3) + y \times (4)$, puis $x \times (4) - y \times (3)$, en remplaçant $1$ par $\tfrac{c^2 - s^2}{d}$ :
$$(x^2 + y^2)\,X = \frac{c^2 x^3 + s^2 x y^2 + (c^2 - s^2)\,x y^2}{d} = \frac{c^2 x\,(x^2 + y^2)}{d} ,$$
$$(x^2 + y^2)\,Y = \frac{(c^2 - s^2)\,x^2 y - c^2 x^2 y - s^2 y^3}{d} = -\frac{s^2 y\,(x^2 + y^2)}{d} .$$
Comme $x^2 + y^2 \neq 0$, le système a **une solution et une seule**. Les deux tangentes se coupent donc bien en un seul point, et
$$T\left(\frac{c^2}{d}\,x\,;\,-\frac{s^2}{d}\,y\right) .$$

### Étape 5 : le lieu

Les points de $(BC)$ sont les points $P$ tels que $\overrightarrow{AP} = \overrightarrow{AB} + t\,\overrightarrow{BC}$, où $t$ est un réel. Si $B(x_B\,;\,y_B)$ et $\overrightarrow{BC}\,(a\,;\,b)$, le point $P$ a pour coordonnées $(x_B + ta\,;\,y_B + tb)$, et l'étape 4 donne
$$T(P)\left(\frac{c^2}{d}\,x_B + t\,\frac{c^2}{d}\,a\,;\,-\frac{s^2}{d}\,y_B - t\,\frac{s^2}{d}\,b\right) .$$
Autrement dit, $\overrightarrow{AT(P)} = \overrightarrow{AT(B)} + t\,\vec{w}$, avec
$$\vec{w}\left(\frac{c^2}{d}\,a\,;\,-\frac{s^2}{d}\,b\right) .$$
Le vecteur $\vec{w}$ n'est pas nul, car $(a\,;\,b) \neq (0\,;\,0)$, $c \neq 0$ et $s \neq 0$.

Quand $t$ parcourt tous les réels, $P$ parcourt toute la droite $(BC)$, et $T(P)$ parcourt toute la droite qui passe par $T(B)$ et qui a pour vecteur directeur $\vec{w}$. **L'ensemble des points $T(P)$ est une droite**, la droite $(T(B)\,T(C))$.

## Going further

- Si l'angle en $A$ est droit, on a $d = 0$. Montre qu'alors les équations $(1)$ et $(2)$ n'ont aucune solution commune, c'est-à-dire que les deux tangentes sont parallèles, pour tout point $P$.
- Soit $P'$ le symétrique de $P$ par rapport à la bissectrice de l'angle $\widehat{BAC}$, et $Q$ le point tel que $\overrightarrow{AQ} = \tfrac{1}{d}\,\overrightarrow{AP'}$. Montre que $T(P)$ est le milieu de $[PQ]$.
- Le corrigé officiel utilise le pied $H$ de la hauteur issue de $A$. Montre que tous les cercles de diamètre $[AP]$, pour $P$ sur $(BC)$, passent par $H$.
