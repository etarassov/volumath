---
id: "10023"
title: "Deux triangles isocèles et un angle droit"
grade: 11
theme: geometry
difficulty: 4
duration_min: 45
tags: [triangle isocele, produit scalaire, coordonnees, vecteur normal, perpendicularite, trigonometrie]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 1 (géométrie)"
  reference: "2017-10_ofm-2013-2014-envoi-1.pdf, Exercices communs, exercice 5 ; corrigé 2017-10_ofm-2013-2014-envoi-1-solutions.pdf (le corrigé utilise deux triangles semblables ; la solution est refaite ici avec des coordonnées et le produit scalaire, la méthode du corrigé est donnée en prolongement)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-1.pdf"
---

## Statement

Soit $ABC$ un triangle. On construit deux points $X$ et $Y$ à l'extérieur du triangle : $X$ est de l'autre côté de la droite $(AB)$ par rapport à $C$, et $Y$ de l'autre côté de la droite $(BC)$ par rapport à $A$. On suppose que :

- le triangle $AXB$ est isocèle de base $[AB]$ ;
- le triangle $BYC$ est isocèle de base $[BC]$ ;
- $\widehat{AXB} + \widehat{BYC} = 180°$.

![Le triangle ABC, le triangle isocèle AXB construit sur [AB] et le triangle isocèle BYC construit sur [BC], à l'extérieur, et les segments [XZ] et [YZ] issus du milieu Z de [AC]](10023-figure-1.svg)

Soit $Z$ le milieu de $[AC]$. Montrer que les droites $(XZ)$ et $(YZ)$ sont perpendiculaires.

## Hints

1. Note $E$ et $D$ les milieux de $[AB]$ et de $[BC]$, et $\alpha$ la moitié de l'angle $\widehat{AXB}$. Que vaut l'angle $\widehat{DBY}$ ?
2. Compare les triangles rectangles $AEX$ et $BDY$ avec la tangente. Tu dois obtenir $EX \times DY = EA \times DB$.
3. Place-toi dans un repère orthonormé où $A(-1\,;\,0)$, $C(1\,;\,0)$ et $B(p\,;\,q)$ avec $q > 0$. Trouve un vecteur perpendiculaire à $\overrightarrow{AB}$, de même longueur que $AB$, qui pointe vers l'extérieur du triangle.
4. Écris les coordonnées de $X$ et de $Y$, puis calcule le produit scalaire $\overrightarrow{ZX} \cdot \overrightarrow{ZY}$.

## Solution

On note $E$ et $D$ les milieux de $[AB]$ et de $[BC]$, et on pose $\alpha = \dfrac{1}{2}\widehat{AXB}$ et $\beta = \dfrac{1}{2}\widehat{BYC}$. L'hypothèse s'écrit $\alpha + \beta = 90°$.

### Étape 1 : $EX \times DY = EA \times DB$

Dans le triangle $AXB$, isocèle en $X$, la médiane $[XE]$ est aussi la hauteur et la bissectrice issues de $X$. Donc $(XE) \perp (AB)$ et $\widehat{AXE} = \alpha$. De même, $(YD) \perp (BC)$ et $\widehat{BYD} = \beta$.

Dans le triangle $BDY$, rectangle en $D$, on a $\widehat{DBY} = 90° - \beta = \alpha$. Dans les deux triangles rectangles $AEX$ et $BDY$ :
$$\tan\widehat{AXE} = \frac{EA}{EX} \qquad \text{et} \qquad \tan\widehat{DBY} = \frac{DY}{DB} .$$
Les deux angles valent $\alpha$, donc $\dfrac{EA}{EX} = \dfrac{DY}{DB}$, c'est-à-dire
$$EX \times DY = EA \times DB = \frac{AB}{2} \times \frac{BC}{2} . \qquad (\star)$$

### Étape 2 : un repère, et les coordonnées de $X$ et de $Y$

On prend $AZ$ comme unité de longueur et un repère orthonormé d'origine $Z$ dans lequel $A(-1\,;\,0)$, $C(1\,;\,0)$ et $B(p\,;\,q)$ avec $q > 0$. Alors
$$E\left(\frac{p - 1}{2}\,;\,\frac{q}{2}\right), \qquad D\left(\frac{p + 1}{2}\,;\,\frac{q}{2}\right), \qquad \overrightarrow{AB}\,(p + 1\,;\,q), \qquad \overrightarrow{BC}\,(1 - p\,;\,-q).$$

Soit $\vec{n}\,(-q\,;\,p + 1)$. On a $\vec{n} \cdot \overrightarrow{AB} = -q(p + 1) + (p + 1)q = 0$, donc $\vec{n}$ est un vecteur normal à la droite $(AB)$, et sa norme est $\sqrt{q^2 + (p + 1)^2} = AB$. Un point $M$ est du même côté de $(AB)$ que $C$ exactement quand $\overrightarrow{AM} \cdot \vec{n}$ a le même signe que $\overrightarrow{AC} \cdot \vec{n} = -2q < 0$. Le vecteur $\vec{n}$ pointe donc vers le côté de $(AB)$ qui ne contient pas $C$, c'est-à-dire vers l'extérieur du triangle.

Le vecteur $\overrightarrow{EX}$ est perpendiculaire à $(AB)$, pointe vers l'extérieur et a pour longueur $EX$. Donc $\overrightarrow{EX} = s\,\vec{n}$ avec $s = \dfrac{EX}{AB} > 0$.

De même, soit $\vec{m}\,(q\,;\,1 - p)$. On a $\vec{m} \cdot \overrightarrow{BC} = q(1 - p) - (1 - p)q = 0$, la norme de $\vec{m}$ est $BC$, et $\overrightarrow{CA} \cdot \vec{m} = -2q < 0$, donc $\vec{m}$ pointe vers le côté de $(BC)$ qui ne contient pas $A$. Ainsi $\overrightarrow{DY} = t\,\vec{m}$ avec $t = \dfrac{DY}{BC} > 0$.

D'après $(\star)$,
$$s\,t = \frac{EX \times DY}{AB \times BC} = \frac{1}{4} .$$

### Étape 3 : le produit scalaire

Comme $Z$ est l'origine,
$$\overrightarrow{ZX}\left(\frac{p - 1}{2} - sq\,;\,\frac{q}{2} + s(p + 1)\right) \qquad \text{et} \qquad \overrightarrow{ZY}\left(\frac{p + 1}{2} + tq\,;\,\frac{q}{2} + t(1 - p)\right).$$
On développe $\overrightarrow{ZX} \cdot \overrightarrow{ZY}$ et on regroupe les termes :

- les termes sans $s$ ni $t$ : $\dfrac{(p - 1)(p + 1)}{4} + \dfrac{q^2}{4} = \dfrac{p^2 + q^2 - 1}{4}$ ;
- les termes en $t$ seul : $\dfrac{(p - 1)\,tq}{2} + \dfrac{q\,t(1 - p)}{2} = 0$ ;
- les termes en $s$ seul : $-\dfrac{sq(p + 1)}{2} + \dfrac{q\,s(p + 1)}{2} = 0$ ;
- les termes en $st$ : $-st\,q^2 + st\,(p + 1)(1 - p) = -st\,(p^2 + q^2 - 1)$.

Au total,
$$\overrightarrow{ZX} \cdot \overrightarrow{ZY} = \left(p^2 + q^2 - 1\right)\left(\frac{1}{4} - st\right) = 0 ,$$
puisque $st = \dfrac{1}{4}$.

Enfin, $X \neq Z$ : le point $Z$ est sur le segment $[AC]$ et différent de $A$, donc du même côté de $(AB)$ que $C$, alors que $X$ est de l'autre côté. De même, $Y \neq Z$.

**Conclusion.** Les vecteurs $\overrightarrow{ZX}$ et $\overrightarrow{ZY}$ sont non nuls et orthogonaux : les droites $(XZ)$ et $(YZ)$ sont perpendiculaires.

## Going further

- Le facteur $p^2 + q^2 - 1$ est nul quand $ZB = 1 = ZA$, c'est-à-dire quand le triangle $ABC$ est rectangle en $B$. Dans ce cas, les droites $(XZ)$ et $(YZ)$ sont perpendiculaires même sans la condition sur les angles. On le voit aussi sans calcul : $Z$ est alors le centre du cercle circonscrit, donc $(XZ)$ est la médiatrice de $[AB]$, $(YZ)$ est la médiatrice de $[BC]$, et ces deux médiatrices sont perpendiculaires car $(AB) \perp (BC)$.
- Voici la méthode du corrigé, sur la figure. La droite des milieux $(EZ)$ est parallèle à $(BC)$, avec $EZ = \dfrac{BC}{2}$, et $(DZ)$ est parallèle à $(AB)$, avec $DZ = \dfrac{AB}{2}$. Les angles $\widehat{XEZ}$ et $\widehat{ZDY}$ sont égaux tous les deux à $90° + \widehat{ABC}$, et $(\star)$ donne $\dfrac{XE}{EZ} = \dfrac{ZD}{DY}$. Les triangles $XEZ$ et $ZDY$ sont donc semblables. Or $(XE) \perp (ZD)$ et $(EZ) \perp (DY)$ : on passe d'un triangle à l'autre en tournant d'un quart de tour, puis en agrandissant ou en réduisant. Le troisième côté tourne lui aussi d'un quart de tour, donc $(XZ) \perp (ZY)$.
