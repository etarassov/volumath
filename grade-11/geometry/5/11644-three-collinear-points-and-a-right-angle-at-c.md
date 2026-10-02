---
id: "11644"
title: "Trois points alignés et un angle droit en C"
grade: 11
theme: geometry
difficulty: 5
duration_min: 60
tags: [puissance d'un point, cercles, tangente, produit scalaire, geometrie analytique, diagonales perpendiculaires]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2016-2017-envoi-5.pdf, exercices communs, exercice 6 ; corrigé 2017-10_ofm-2016-2017-envoi-5-solutions.pdf (le corrigé fait une chasse aux angles avec un point auxiliaire F ; la preuve ci-dessous passe par la puissance d'un point et les coordonnées)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-5.pdf"
---

## Statement

On considère un quadrilatère convexe $ABCD$ dont les diagonales sont perpendiculaires et se coupent en $E$.

- Soit $P$ un point du segment $[AD]$, différent de $A$, tel que $PE = EC$.
- Le cercle circonscrit au triangle $BCD$ recoupe le segment $[AD]$ en un point $Q$, différent de $A$.
- Le cercle qui passe par $A$ et qui est tangent à la droite $(EP)$ au point $P$ recoupe le segment $[AC]$ en un point $R$.

On suppose que les points $B$, $R$ et $Q$ sont alignés.

![Le quadrilatère ABCD et ses diagonales perpendiculaires en E, le cercle vert passant par B, C et D qui recoupe [AD] en Q, le cercle bleu passant par A et tangent en P à la droite (EP) en pointillés, qui recoupe [AC] en R, et la droite rouge qui passe par B, R et Q.](11644-figure-1.svg)

Montrer que $\widehat{BCD} = 90^\circ$.

## Hints

1. Prends un repère orthonormé d'origine $E$ dont les axes sont les diagonales : $A(-a\,;\,0)$, $C(c\,;\,0)$, $B(0\,;\,b)$, $D(0\,;\,-d)$ avec $a, b, c, d > 0$. Montre que le but revient à $c^2 = bd$.
2. Démontre ce résultat : si un cercle a pour centre $\Omega$ et pour rayon $r$, et si une droite passant par un point $X$ coupe ce cercle en $M$ et $N$, alors $\overrightarrow{XM} \cdot \overrightarrow{XN} = X\Omega^2 - r^2$. Que devient-il si la droite est tangente au cercle en $T$ ?
3. Utilise ce résultat au point $E$ pour le cercle bleu : tu dois trouver les coordonnées de $R$ sans connaître le cercle.
4. Pour le cercle passant par $B$, $C$ et $D$, utilise ce résultat en $E$, puis en $A$. Écris $\overrightarrow{AQ} = t\,\overrightarrow{AD}$, puis traduis l'alignement de $B$, $R$ et $Q$.

## Solution

**Étape 1 : un outil, la puissance d'un point.** Soit $\Gamma$ un cercle de centre $\Omega$ et de rayon $r$. Pour un point $X$, on pose $p(X) = X\Omega^2 - r^2$.

- *Si une droite passant par $X$ coupe $\Gamma$ en $M$ et $N$* (avec $M = N$ si elle est tangente), alors $\overrightarrow{XM} \cdot \overrightarrow{XN} = p(X)$.
- *Si la droite $(XT)$ est tangente à $\Gamma$ en $T$*, alors $XT^2 = p(X)$.

*Preuve.* Soit $H$ le projeté orthogonal de $\Omega$ sur la droite. Comme $\Omega M = \Omega N$, le point $H$ est le milieu de $[MN]$, donc $\overrightarrow{HN} = -\overrightarrow{HM}$. Alors
$$\overrightarrow{XM} \cdot \overrightarrow{XN} = \left(\overrightarrow{XH} + \overrightarrow{HM}\right) \cdot \left(\overrightarrow{XH} - \overrightarrow{HM}\right) = XH^2 - HM^2.$$
Par le théorème de Pythagore dans les triangles rectangles en $H$, on a $XH^2 = X\Omega^2 - \Omega H^2$ et $HM^2 = r^2 - \Omega H^2$. Donc $\overrightarrow{XM} \cdot \overrightarrow{XN} = X\Omega^2 - r^2$. Pour une tangente en $T$, le rayon $[\Omega T]$ est perpendiculaire à $(XT)$, et Pythagore donne directement $XT^2 = X\Omega^2 - r^2$.

**Étape 2 : le repère.** On prend un repère orthonormé d'origine $E$, d'axes $(AC)$ et $(BD)$. Comme le quadrilatère est convexe, $E$ est à l'intérieur des deux diagonales, et l'on peut écrire
$$A(-a\,;\,0), \qquad C(c\,;\,0), \qquad B(0\,;\,b), \qquad D(0\,;\,-d), \qquad \text{avec } a, b, c, d > 0.$$
On a $\overrightarrow{CB} \cdot \overrightarrow{CD} = (-c)(-c) + b \times (-d) = c^2 - bd$. On note $m = c^2 - bd$. **L'angle $\widehat{BCD}$ est droit si et seulement si $m = 0$**, et c'est ce que l'on va montrer.

**Étape 3 : le point $R$.** Appelons $\omega$ le cercle qui passe par $A$ et qui est tangent à $(EP)$ en $P$. D'après l'étape 1 au point $E$ pour le cercle $\omega$ :

- la droite $(EP)$ est tangente à $\omega$ en $P$, donc la puissance de $E$ vaut $EP^2 = EC^2 = c^2$ ;
- la droite $(AC)$ passe par $E$ et coupe $\omega$ en $A$ et en $R$, donc la puissance de $E$ vaut aussi $\overrightarrow{EA} \cdot \overrightarrow{ER}$.

Si $R$ a pour coordonnées $(x_R\,;\,0)$, on obtient $(-a)\,x_R = c^2$, donc
$$R\left(-\frac{c^2}{a}\,;\,0\right).$$

**Étape 4 : la puissance de $A$ pour le cercle $BCD$.** Soit $\Gamma$ le cercle qui passe par $B$, $C$ et $D$, de centre $\Omega(x_0\,;\,y_0)$ et de rayon $\rho$, et soit $p$ la puissance pour ce cercle. Pour un point $X(x\,;\,y)$,
$$p(X) = (x - x_0)^2 + (y - y_0)^2 - \rho^2 = x^2 + y^2 - 2x_0\,x - 2y_0\,y + p(E).$$
La droite $(BD)$ passe par $E$ et coupe $\Gamma$ en $B$ et $D$, donc $p(E) = \overrightarrow{EB} \cdot \overrightarrow{ED} = b \times (-d) = -bd$. Comme $C$ est sur $\Gamma$, $p(C) = 0$, c'est-à-dire $c^2 - 2x_0\,c - bd = 0$, d'où $2x_0 = m/c$. Alors
$$p(A) = a^2 + 2x_0\,a - bd = a^2 - bd + \frac{am}{c} = (a^2 - c^2) + m + \frac{am}{c} = (a^2 - c^2) + \frac{m\,(a + c)}{c}.$$

**Étape 5 : le point $Q$.** Le point $Q$ est sur $[AD]$, donc $\overrightarrow{AQ} = t\,\overrightarrow{AD}$ avec $0 \leqslant t \leqslant 1$, et $\overrightarrow{AD}(a\,;\,-d)$. La droite $(AD)$ coupe $\Gamma$ en $D$ et $Q$, donc d'après l'étape 1,
$$\overrightarrow{AD} \cdot \overrightarrow{AQ} = t\,(a^2 + d^2) = p(A). \qquad (1)$$
Les coordonnées de $Q$ sont $(-a + ta\,;\,-td)$.

**Étape 6 : l'alignement.** On a $\overrightarrow{RB}\left(c^2/a\,;\,b\right)$ et $\overrightarrow{RQ}\left(-a + ta + c^2/a\,;\,-td\right)$. Les points $B$, $R$, $Q$ sont alignés si et seulement si ces vecteurs sont colinéaires :
$$\frac{c^2}{a} \times (-td) - b\left(-a + ta + \frac{c^2}{a}\right) = 0.$$
En multipliant par $-a$, on obtient $c^2\,td + a^2 b\,t - a^2 b + bc^2 = 0$, soit
$$t\,(a^2 b + c^2 d) = b\,(a^2 - c^2). \qquad (2)$$

**Étape 7 : conclusion.** Comme $c^2 = bd + m$, on a $a^2 b + c^2 d = b\,(a^2 + d^2) + dm$. L'égalité $(2)$ s'écrit donc
$$t\,b\,(a^2 + d^2) + t\,dm = b\,(a^2 - c^2).$$
D'après $(1)$ et l'étape 4,
$$t\,b\,(a^2 + d^2) = b\,p(A) = b\,(a^2 - c^2) + \frac{b\,m\,(a + c)}{c}.$$
En remplaçant et en simplifiant :
$$m\left(\frac{b\,(a + c)}{c} + t\,d\right) = 0.$$
La parenthèse est strictement positive, puisque $a$, $b$, $c$, $d$ sont strictement positifs et $t \geqslant 0$. Donc $m = 0$, c'est-à-dire $\overrightarrow{CB} \cdot \overrightarrow{CD} = 0$.

**Conclusion : les droites $(CB)$ et $(CD)$ sont perpendiculaires, donc $\widehat{BCD} = 90^\circ$.**

## Going further

Réciproquement, si $\widehat{BCD} = 90^\circ$, le calcul se refait à l'envers : avec $m = 0$, les égalités $(1)$ et $(2)$ donnent la même valeur de $t$, et les points $B$, $R$, $Q$ sont alignés. Le cercle $\Gamma$ a alors pour diamètre $[BD]$.

Le point $P$ ne sert qu'à une chose : grâce à la tangente $(EP)$ et à $EP = EC$, il permet de calculer $R$. La preuve montre d'ailleurs que $R$ ne dépend que de $A$, $E$ et $C$.
