---
id: "11633"
title: "Deux orthocentres et les milieux de deux côtés"
grade: 11
theme: geometry
difficulty: 5
duration_min: 60
tags: [orthocentre, produit scalaire, milieux, parallelogramme, quadrilatere, vecteurs]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2015-2016-envoi-5.pdf, exercices du groupe B, exercice 3 ; corrigé 2017-10_ofm-2015-2016-envoi-5-solutions.pdf (le corrigé passe par l'axe radical de deux cercles, ou par les coordonnées ; la preuve ci-dessous utilise le produit scalaire)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-5.pdf"
---

## Statement

Soit $ABCD$ un quadrilatère convexe dont les diagonales ne sont pas perpendiculaires, et tel que les droites $(AB)$ et $(CD)$ ne sont pas parallèles. On note $O$ le point d'intersection de $[AC]$ et $[BD]$.

Soient $H_1$ et $H_2$ les orthocentres respectifs des triangles $AOB$ et $COD$, et soient $M$ et $N$ les milieux respectifs de $[AB]$ et $[CD]$.

![Le quadrilatère ABCD, ses diagonales qui se coupent en O, les hauteurs en pointillés des triangles AOB et COD, leurs orthocentres H₁ et H₂, et les milieux M et N des côtés [AB] et [CD].](11633-figure-1.svg)

Prouver que les droites $(H_1H_2)$ et $(MN)$ sont parallèles si et seulement si $AC = BD$.

## Hints

1. Note $P$ et $Q$ les milieux de $[AD]$ et $[BC]$. Montre que $MQNP$ est un parallélogramme, et exprime ses côtés à l'aide de $AC$ et $BD$.
2. Les diagonales d'un parallélogramme sont perpendiculaires exactement quand c'est un losange. Il suffit donc de montrer que $(H_1H_2)$ est perpendiculaire à $(PQ)$.
3. Pour tout point $X$, pose $f(X) = \overrightarrow{XA} \cdot \overrightarrow{XD} - \overrightarrow{XB} \cdot \overrightarrow{XC}$. En utilisant les deux hauteurs du triangle $AOB$ qui passent par $A$ et par $B$, montre que $f(H_1) = 0$. Fais de même pour $H_2$.
4. Avec la relation de Chasles, montre que $f(X) - f(Y) = 2\,\overrightarrow{XY} \cdot \overrightarrow{QP}$ pour tous points $X$ et $Y$.

## Solution

On note $P$ et $Q$ les milieux respectifs de $[AD]$ et $[BC]$. Pour tout point $X$ du plan, on pose

$$f(X) = \overrightarrow{XA} \cdot \overrightarrow{XD} - \overrightarrow{XB} \cdot \overrightarrow{XC}.$$

![Le parallélogramme MQNP formé par les milieux des côtés, sa diagonale [PQ] en vert, sa diagonale [MN] en pointillés, et la droite rouge qui passe par H₁ et H₂, perpendiculaire à (PQ).](11633-figure-2.svg)

**Étape 1 : comment $f$ varie.** Soient $X$ et $Y$ deux points. Par la relation de Chasles, $\overrightarrow{XA} = \overrightarrow{XY} + \overrightarrow{YA}$ et $\overrightarrow{XD} = \overrightarrow{XY} + \overrightarrow{YD}$, donc

$$\overrightarrow{XA} \cdot \overrightarrow{XD} = XY^2 + \overrightarrow{XY} \cdot \left(\overrightarrow{YA} + \overrightarrow{YD}\right) + \overrightarrow{YA} \cdot \overrightarrow{YD}.$$

De la même façon,

$$\overrightarrow{XB} \cdot \overrightarrow{XC} = XY^2 + \overrightarrow{XY} \cdot \left(\overrightarrow{YB} + \overrightarrow{YC}\right) + \overrightarrow{YB} \cdot \overrightarrow{YC}.$$

Comme $P$ est le milieu de $[AD]$, on a $\overrightarrow{YA} + \overrightarrow{YD} = 2\overrightarrow{YP}$, et de même $\overrightarrow{YB} + \overrightarrow{YC} = 2\overrightarrow{YQ}$. En soustrayant les deux égalités, les termes $XY^2$ disparaissent :

$$f(X) = 2\,\overrightarrow{XY} \cdot \left(\overrightarrow{YP} - \overrightarrow{YQ}\right) + f(Y) = 2\,\overrightarrow{XY} \cdot \overrightarrow{QP} + f(Y).$$

**Étape 2 : $f(H_1) = 0$ et $f(H_2) = 0$.** Dans le triangle $AOB$, la hauteur issue de $A$ est perpendiculaire à $(OB)$, c'est-à-dire à $(BD)$, et la hauteur issue de $B$ est perpendiculaire à $(OA)$, c'est-à-dire à $(AC)$. Comme $H_1$ est sur ces deux hauteurs :

$$\overrightarrow{H_1A} \cdot \overrightarrow{BD} = 0 \qquad \text{et} \qquad \overrightarrow{H_1B} \cdot \overrightarrow{AC} = 0.$$

On écrit $\overrightarrow{H_1D} = \overrightarrow{H_1B} + \overrightarrow{BD}$ et $\overrightarrow{H_1C} = \overrightarrow{H_1A} + \overrightarrow{AC}$. Alors

$$\overrightarrow{H_1A} \cdot \overrightarrow{H_1D} = \overrightarrow{H_1A} \cdot \overrightarrow{H_1B} + \overrightarrow{H_1A} \cdot \overrightarrow{BD} = \overrightarrow{H_1A} \cdot \overrightarrow{H_1B},$$

$$\overrightarrow{H_1B} \cdot \overrightarrow{H_1C} = \overrightarrow{H_1B} \cdot \overrightarrow{H_1A} + \overrightarrow{H_1B} \cdot \overrightarrow{AC} = \overrightarrow{H_1A} \cdot \overrightarrow{H_1B}.$$

Les deux produits sont égaux, donc $f(H_1) = 0$.

Pour $H_2$, c'est pareil dans le triangle $COD$ : $(CH_2)$ est perpendiculaire à $(BD)$ et $(DH_2)$ est perpendiculaire à $(AC)$. En écrivant $\overrightarrow{H_2A} = \overrightarrow{H_2C} + \overrightarrow{CA}$ et $\overrightarrow{H_2B} = \overrightarrow{H_2D} + \overrightarrow{DB}$, on trouve que $\overrightarrow{H_2A} \cdot \overrightarrow{H_2D}$ et $\overrightarrow{H_2B} \cdot \overrightarrow{H_2C}$ valent tous les deux $\overrightarrow{H_2C} \cdot \overrightarrow{H_2D}$. Donc $f(H_2) = 0$.

**Étape 3 : $(H_1H_2)$ est perpendiculaire à $(PQ)$.** L'étape 1 avec $X = H_1$ et $Y = H_2$ donne

$$0 = f(H_1) - f(H_2) = 2\,\overrightarrow{H_2H_1} \cdot \overrightarrow{QP}.$$

Pour en déduire que les droites sont perpendiculaires, il faut vérifier qu'elles existent.

- **$H_1 \neq H_2$.** Le point $H_1$ est sur la hauteur issue de $O$ du triangle $AOB$, qui est la droite passant par $O$ perpendiculaire à $(AB)$. De même, $H_2$ est sur la droite passant par $O$ perpendiculaire à $(CD)$. Comme $(AB)$ et $(CD)$ ne sont pas parallèles, ces deux droites sont différentes et ne se coupent qu'en $O$. Si l'on avait $H_1 = H_2$, ce point serait donc $O$. Mais alors $O$ serait l'orthocentre de $AOB$, la hauteur issue de $A$ serait la droite $(AO)$, et $(AO)$ serait perpendiculaire à $(OB)$ : les diagonales seraient perpendiculaires, ce qui est exclu.
- **$P \neq Q$.** Si $[AD]$ et $[BC]$ avaient le même milieu, le quadrilatère $ABDC$ aurait des diagonales qui se coupent en leur milieu : ce serait un parallélogramme, et $(AB)$ serait parallèle à $(CD)$, ce qui est exclu.

Donc **la droite $(H_1H_2)$ est perpendiculaire à la droite $(PQ)$.**

**Étape 4 : le parallélogramme des milieux.** On a $\overrightarrow{MQ} = \frac{1}{2}\overrightarrow{AC}$, puisque $M$ et $Q$ sont les milieux de $[AB]$ et $[BC]$ (théorème des milieux dans le triangle $ABC$). De même $\overrightarrow{PN} = \frac{1}{2}\overrightarrow{AC}$ dans le triangle $ADC$, et $\overrightarrow{MP} = \frac{1}{2}\overrightarrow{BD}$ dans le triangle $ABD$. Comme $\overrightarrow{MQ} = \overrightarrow{PN}$, le quadrilatère $MQNP$ est un parallélogramme. Ses diagonales sont $[MN]$ et $[PQ]$, et

$$\overrightarrow{MN} = \overrightarrow{MQ} + \overrightarrow{MP}, \qquad \overrightarrow{PQ} = \overrightarrow{MQ} - \overrightarrow{MP}.$$

On en déduit

$$\overrightarrow{MN} \cdot \overrightarrow{PQ} = MQ^2 - MP^2 = \frac{AC^2 - BD^2}{4}.$$

**Étape 5 : conclusion.** Comme $(H_1H_2)$ est perpendiculaire à $(PQ)$, la droite $(MN)$ est parallèle à $(H_1H_2)$ si et seulement si elle est elle aussi perpendiculaire à $(PQ)$, c'est-à-dire si et seulement si $\overrightarrow{MN} \cdot \overrightarrow{PQ} = 0$. D'après l'étape 4, cela revient à $AC^2 = BD^2$, donc à $AC = BD$ puisque ce sont des longueurs.

**Conclusion : les droites $(H_1H_2)$ et $(MN)$ sont parallèles si et seulement si $AC = BD$.**

## Going further

La fonction $f$ a une interprétation simple. Pour tout point $X$, on a $\overrightarrow{XA} \cdot \overrightarrow{XD} = XP^2 - PA^2$, car $\overrightarrow{XA} = \overrightarrow{XP} + \overrightarrow{PA}$ et $\overrightarrow{XD} = \overrightarrow{XP} - \overrightarrow{PA}$. Donc

$$f(X) = XP^2 - XQ^2 - \frac{AD^2 - BC^2}{4},$$

et l'ensemble des points $X$ tels que $f(X) = 0$ est une droite perpendiculaire à $(PQ)$. Le corrigé original l'appelle **l'axe radical** des cercles de diamètres $[AD]$ et $[BC]$ : c'est l'ensemble des points qui ont la même « puissance » par rapport aux deux cercles. Il propose aussi une solution en coordonnées, longue mais sans idée cachée.
