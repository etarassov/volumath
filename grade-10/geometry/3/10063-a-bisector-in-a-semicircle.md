---
id: "10063"
title: "Une bissectrice dans un demi-cercle"
grade: 10
theme: geometry
difficulty: 3
duration_min: 35
tags: [demi-cercle, bissectrice, repere, coefficient directeur, symetrie axiale, theoreme de pythagore]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 2 (géométrie)"
  reference: "2017-11_pofm-2017-2018-envoi2.pdf, Exercices du groupe B, exercice 3 ; corrigé 2018-01_pofm-2017-2018-envoi2-corrige.pdf (le corrigé fait une chasse aux angles avec les cercles de diamètres [AS] et [BS], puis donne une preuve par la division harmonique ; ici on calcule dans un repère d'origine T, ce qui traite d'un coup les deux cas, S à l'intérieur ou à l'extérieur du demi-cercle. On a ajouté l'hypothèse C ≠ D)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/11/pofm-2017-2018-envoi2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-11_pofm-2017-2018-envoi2.pdf"
---

## Statement

Soit $[AB]$ le diamètre d'un demi-cercle, et $C$, $D$ deux points distincts de ce demi-cercle, différents de $A$ et de $B$. Soit $S$ le point d'intersection des droites $(AC)$ et $(BD)$, et $T$ le pied de la perpendiculaire à $(AB)$ passant par $S$.

![Le demi-cercle de diamètre [AB], les points C et D, les droites (AC) et (BD) qui se coupent en S, le pied T de la perpendiculaire, et les segments [TC] et [TD] en pointillés](10063-figure-1.svg)

Montrer que la droite $(ST)$ est la bissectrice de l'angle $\widehat{CTD}$.

## Hints

1. Explique pourquoi les droites $(AC)$ et $(BD)$ se coupent bien, au-dessus de $(AB)$, et pourquoi $T$ est entre $A$ et $B$.
2. Prends un repère orthonormé d'origine $T$, avec $A(-a\,;\,0)$, $B(b\,;\,0)$ et $S(0\,;\,h)$. Un point $M$ autre que $A$ et $B$ est sur le cercle de diamètre $[AB]$ exactement quand $MA^2 + MB^2 = AB^2$.
3. Écris les points de la droite $(AS)$ sous la forme $(-a + ta\,;\,th)$, et trouve la valeur de $t$ qui donne $C$.
4. Compare les coefficients directeurs des droites $(TC)$ et $(TD)$.

## Solution

### Étape 1 : la place des points

On place le demi-cercle au-dessus de la droite $(AB)$. Le point $C$ est sur le cercle de diamètre $[AB]$, donc le triangle $ACB$ est rectangle en $C$, et l'angle $\widehat{CAB}$ est aigu. De même, l'angle $\widehat{DBA}$ est aigu.

La somme $\widehat{CAB} + \widehat{DBA}$ est donc plus petite que $180°$ : les demi-droites $[AC)$ et $[BD)$ se rapprochent l'une de l'autre et se coupent au-dessus de $(AB)$. Le point $S$ est ce point d'intersection, et $SAB$ est un triangle dont les angles en $A$ et en $B$ sont aigus. Le pied $T$ de sa hauteur issue de $S$ est donc **strictement entre $A$ et $B$**.

### Étape 2 : un repère

On prend un repère orthonormé d'origine $T$, d'axe des abscisses $(AB)$ et d'axe des ordonnées $(TS)$ :
$$A(-a\,;\,0), \qquad B(b\,;\,0), \qquad S(0\,;\,h), \qquad \text{avec } a > 0,\ b > 0,\ h > 0 .$$

Par le théorème de Pythagore et sa réciproque, un point $M$ est sur le cercle de diamètre $[AB]$ exactement quand $MA^2 + MB^2 = AB^2$.

### Étape 3 : le point $C$

Les points de la droite $(AS)$ sont les points $M(-a + ta\,;\,th)$, où $t$ est un réel : $t = 0$ donne $A$ et $t = 1$ donne $S$. Pour un tel point,
$$MA^2 = (ta)^2 + (th)^2 = t^2\,(a^2 + h^2), \qquad MB^2 = (ta - a - b)^2 + t^2 h^2 .$$
On développe $(ta - (a + b))^2 = t^2 a^2 - 2ta\,(a + b) + (a + b)^2$. La condition $MA^2 + MB^2 = (a + b)^2$ devient
$$2t^2\,(a^2 + h^2) - 2ta\,(a + b) = 0, \qquad \text{c'est-à-dire} \qquad t\,\left[t\,(a^2 + h^2) - a\,(a + b)\right] = 0 .$$
La solution $t = 0$ donne le point $A$. Le point $C$ correspond donc à
$$t = \frac{a\,(a + b)}{a^2 + h^2} .$$
On pose $N = a^2 + h^2$. Alors
$$t - 1 = \frac{a^2 + ab - a^2 - h^2}{N} = \frac{ab - h^2}{N} ,$$
et on obtient
$$C\left(\frac{a\,(ab - h^2)}{N}\,;\,\frac{ah\,(a + b)}{N}\right) .$$

### Étape 4 : le point $D$

On refait le même calcul avec la droite $(BS)$, dont les points sont $M(b - ub\,;\,uh)$. Cela revient à échanger $a$ et $b$ et à changer le signe des abscisses. Avec $N' = b^2 + h^2$ :
$$D\left(-\frac{b\,(ab - h^2)}{N'}\,;\,\frac{bh\,(a + b)}{N'}\right) .$$

Si $ab = h^2$, les deux abscisses sont nulles, et $C$ et $D$ sont tous les deux le point du cercle situé sur l'axe des ordonnées, au-dessus de $(AB)$. C'est impossible, car $C \neq D$. Donc $ab \neq h^2$.

### Étape 5 : conclusion

Les abscisses de $C$ et de $D$ ne sont pas nulles, et on peut calculer les coefficients directeurs des droites $(TC)$ et $(TD)$, qui passent par l'origine $T$ :
$$k = \frac{y_C}{x_C} = \frac{h\,(a + b)}{ab - h^2}, \qquad \frac{y_D}{x_D} = -\frac{h\,(a + b)}{ab - h^2} = -k .$$
La droite $(TC)$ a pour équation $y = kx$ et la droite $(TD)$ a pour équation $y = -kx$.

Soit $C'$ le symétrique de $C$ par rapport à l'axe des ordonnées, c'est-à-dire par rapport à la droite $(ST)$. Ses coordonnées sont $(-x_C\,;\,y_C)$, et $y_C = k\,x_C = -k\,(-x_C)$ : le point $C'$ est sur la droite $(TD)$. Les points $C'$ et $D$ ont tous les deux une ordonnée positive, donc ils sont sur la même demi-droite d'origine $T$ : $[TC') = [TD)$.

La symétrie par rapport à $(ST)$ conserve les angles et laisse $S$ et $T$ en place, donc
$$\widehat{STC} = \widehat{STC'} = \widehat{STD} .$$
Enfin $x_C$ et $x_D$ sont de signes contraires, donc $C$ et $D$ sont de part et d'autre de $(ST)$, et la demi-droite $[TS)$ est à l'intérieur de l'angle $\widehat{CTD}$.

**La droite $(ST)$ est la bissectrice de l'angle $\widehat{CTD}$.**

## Going further

- Une preuve sans repère : montre que les triangles rectangles $ATS$ et $ACB$ sont semblables, et déduis-en $AT \times AB = AC \times AS$. Montre ensuite que les triangles $ATC$ et $ASB$ sont semblables, et donc que $\widehat{ATC} = \widehat{ASB}$. De même, $\widehat{BTD} = \widehat{ASB}$. Conclus.
- Si $C$ et $D$ sont échangés, le point $S$ passe de l'intérieur à l'extérieur du demi-cercle. Le calcul ci-dessus a-t-il dû séparer ces deux cas ?
- Soit $K$ le point d'intersection des droites $(AD)$ et $(BC)$. Montre que $S$ est l'orthocentre du triangle $ABK$, et que $K$ est l'orthocentre du triangle $ABS$.
