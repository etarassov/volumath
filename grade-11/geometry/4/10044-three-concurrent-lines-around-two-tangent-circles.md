---
id: "10044"
title: "Trois droites concourantes autour de deux cercles tangents"
grade: 11
theme: geometry
difficulty: 4
duration_min: 45
tags: [cercles-tangents, tangente, droites-concourantes, repere, equation-de-cercle, produit-scalaire]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 2 (géométrie)"
  reference: "2017-10_ofm-2014-2015-envoi-2.pdf, Exercices du groupe A, exercice 9 ; corrigé 2017-10_ofm-2014-2015-envoi-2-solutions.pdf (le corrigé utilise une homothétie de centre S et la forme trigonométrique du théorème de Ceva ; la solution est refaite ici dans un repère)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-2.pdf"
---

## Statement

Deux cercles $\omega_1$ et $\omega_2$ sont tangents en un point $S$, et $\omega_1$ est à l'intérieur de $\omega_2$. On note $O$ le centre de $\omega_1$. Une corde $[AB]$ de $\omega_2$ est tangente à $\omega_1$ en un point $T$.

![Le grand cercle ω₂, le petit cercle ω₁ de centre O à l'intérieur, tangent à ω₂ en S, et la corde [AB] de ω₂ qui touche ω₁ en T](10044-figure-1.svg)

Montrer que les trois droites suivantes sont concourantes : la droite $(AO)$, la perpendiculaire à $(AB)$ passant par $B$, et la perpendiculaire à $(ST)$ passant par $S$.

## Hints

1. Appelle $Z$ le point où $(AO)$ coupe la perpendiculaire à $(AB)$ en $B$. Il reste à montrer que $(SZ)$ est perpendiculaire à $(ST)$.
2. Prends un repère d'origine $T$, avec $A(-a\,;\,0)$, $B(b\,;\,0)$ et $O(0\,;\,r)$. Le centre $O'$ de $\omega_2$ est sur la médiatrice de $[AB]$.
3. Deux cercles tangents intérieurement ont des centres à distance $R - r$. Traduis cela pour trouver une relation simple entre $R$, l'ordonnée $k$ de $O'$, et $a$, $b$, $r$.
4. Le point $S$ est sur la demi-droite $[O'O)$. Calcule ses coordonnées, puis le produit scalaire $\overrightarrow{SZ} \cdot \overrightarrow{ST}$.

## Solution

**Rappel : deux cercles tangents intérieurement.** Si un cercle de centre $O$ et de rayon $r$ est à l'intérieur d'un cercle de centre $O'$ et de rayon $R > r$, et s'ils se touchent en un point $S$, alors $OO' = R - r$, et $O$ est entre $O'$ et $S$ sur la droite $(O'S)$.

On note $O'$ le centre de $\omega_2$, $R$ son rayon, et $r$ le rayon de $\omega_1$, avec $R > r$.

### Étape 1 : le repère

La droite $(AB)$ est tangente à $\omega_1$ en $T$, et $T$ est à l'intérieur de $\omega_2$, donc $T$ est strictement entre $A$ et $B$. On prend un repère orthonormé d'origine $T$, d'axe des abscisses $(AB)$, dans lequel
$$A(-a\,;\,0), \qquad B(b\,;\,0), \qquad O(0\,;\,r), \qquad \text{avec } a > 0,\ b > 0 .$$
En effet, le rayon $[OT]$ est perpendiculaire à la tangente $(AB)$, donc $O$ est sur l'axe des ordonnées, et on choisit son sens pour que $O$ soit au-dessus. Le cercle $\omega_1$ a pour équation $x^2 + (y - r)^2 = r^2$, soit
$$x^2 + y^2 = 2ry . \qquad (1)$$

Le centre $O'$ est sur la médiatrice de la corde $[AB]$, donc $O'\left(\frac{b - a}{2}\,;\,k\right)$ pour un certain nombre $k$. Comme $O'B = R$,
$$R^2 = \left(\frac{a + b}{2}\right)^2 + k^2 . \qquad (2)$$
En particulier $R > |k|$, donc $R - k > 0$.

### Étape 2 : la condition de tangence

D'après le rappel, $OO'^2 = (R - r)^2$, c'est-à-dire
$$\left(\frac{b - a}{2}\right)^2 + (k - r)^2 = R^2 - 2Rr + r^2 .$$
On remplace $R^2$ grâce à (2), puis on simplifie $k^2$ et $r^2$ :
$$\left(\frac{b - a}{2}\right)^2 - 2kr = \left(\frac{a + b}{2}\right)^2 - 2Rr .$$
Comme $\left(\frac{a + b}{2}\right)^2 - \left(\frac{b - a}{2}\right)^2 = ab$, on obtient
$$R - k = \frac{ab}{2r} . \qquad (3)$$

### Étape 3 : les coordonnées de $S$

D'après le rappel, $S$ est sur la demi-droite issue de $O'$ qui passe par $O$, au-delà de $O$, à la distance $r$ de $O$. Comme $OO' = R - r$,
$$\overrightarrow{OS} = \frac{r}{R - r}\,\overrightarrow{O'O}, \qquad \text{avec} \qquad \overrightarrow{O'O}\left(\frac{a - b}{2}\,;\,r - k\right) .$$
On pose $D = 2(R - r) > 0$. L'abscisse de $S$ vaut $x_S = \dfrac{r(a - b)}{D}$, et son ordonnée vaut, d'après (3),
$$y_S = r + \frac{r(r - k)}{R - r} = \frac{r(R - k)}{R - r} = \frac{ab}{D} .$$

### Étape 4 : le point de concours

La droite $(AO)$ passe par $A(-a\,;\,0)$ et $O(0\,;\,r)$, elle a pour équation $y = \dfrac{r}{a}(x + a)$. La perpendiculaire à $(AB)$ en $B$ est la droite d'équation $x = b$. Ces deux droites se coupent au point
$$Z\left(b\,;\,\frac{r(a + b)}{a}\right) .$$

Montrons que $(SZ)$ est perpendiculaire à $(ST)$. Comme $T$ est l'origine, $\overrightarrow{ST} = -\overrightarrow{TS}$ et
$$\overrightarrow{SZ} \cdot \overrightarrow{ST} = (\overrightarrow{TZ} - \overrightarrow{TS}) \cdot (-\overrightarrow{TS}) = TS^2 - \overrightarrow{TS} \cdot \overrightarrow{TZ} .$$
- Le point $S$ est sur $\omega_1$, donc d'après (1), $TS^2 = x_S^2 + y_S^2 = 2r\,y_S = \dfrac{2abr}{D}$.
- En coordonnées, $\overrightarrow{TS} \cdot \overrightarrow{TZ} = b\,x_S + \dfrac{r(a + b)}{a}\,y_S = \dfrac{br(a - b) + rb(a + b)}{D} = \dfrac{2abr}{D}$.

Donc $\overrightarrow{SZ} \cdot \overrightarrow{ST} = 0$. Le point $S$ est différent de $T$, car $T$ est strictement à l'intérieur de $\omega_2$. Ainsi $Z$ est sur la perpendiculaire à $(ST)$ passant par $S$ (si $Z = S$, c'est évident).

**Conclusion.** Le point $Z$ est sur les trois droites : $(AO)$, la perpendiculaire à $(AB)$ en $B$, et la perpendiculaire à $(ST)$ en $S$. **Ces trois droites sont concourantes.**

## Going further

- Un résultat classique : la droite $(ST)$ est la bissectrice de l'angle $\widehat{ASB}$, et elle recoupe $\omega_2$ au milieu de l'arc $AB$ qui ne contient pas $S$. La perpendiculaire à $(ST)$ en $S$ est donc la bissectrice extérieure de cet angle. Tu peux essayer de le vérifier avec les coordonnées ci-dessus.
- Le corrigé utilise ce résultat, obtenu avec l'homothétie de centre $S$ qui envoie $\omega_1$ sur $\omega_2$, puis conclut avec la forme trigonométrique du théorème de Ceva dans le triangle $ABS$.
