---
id: "11841"
title: "La droite (XY) passe par un point fixe"
grade: 12
theme: geometry
difficulty: 5
duration_min: 60
tags: [hors-programme, angles orientes, cercle, puissance d un point, point fixe, symetrie axiale, tangente]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 5 (pot-pourri)"
  reference: "2022-03_sujet-envoi-5.pdf, Exercices Seniors, exercice 16 ; corrigé 2022-05_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/03/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-03_sujet-envoi-5.pdf"
---

## Statement

Soit $ABC$ un triangle tel que $AB < AC$. Soit $\omega$ un cercle passant par $B$ et $C$, et tel que le point $A$ soit à l'intérieur de $\omega$.

Soient $X$ et $Y$ deux points distincts de $\omega$ tels que $\widehat{BXA} = \widehat{AYC}$. On suppose que $X$ et $C$ sont de part et d'autre de la droite $(AB)$, et que $Y$ et $B$ sont de part et d'autre de la droite $(AC)$.

Montrer que, lorsque $X$ et $Y$ varient sur le cercle $\omega$ en respectant ces conditions, la droite $(XY)$ passe toujours par un même point.

## Hints

1. Faire plusieurs figures pour deviner le point fixe. Puis introduire les points $X'$ et $Y'$ où les droites $(XA)$ et $(YA)$ recoupent le cercle $\omega$.
2. Montrer que $X'$ et $Y'$ sont symétriques par rapport à la médiatrice de $[BC]$, donc que la droite $(X'Y')$ est parallèle à $(BC)$.
3. Soit $\ell$ la parallèle à $(BC)$ passant par $A$. Montrer que le cercle circonscrit au triangle $AXY$ est tangent à $\ell$ en $A$.
4. Soit $Q$ le point d'intersection de $(XY)$ et de $\ell$. Comparer $QA^2$ et le produit $QX \times QY$, puis exprimer ce produit à l'aide du centre et du rayon de $\omega$.

## Solution

**Rappel : angles orientés de droites.** Pour deux droites $d_1$ et $d_2$, on note $\measuredangle(d_1, d_2)$ l'angle dont il faut faire tourner $d_1$, dans le sens direct, pour obtenir une droite parallèle à $d_2$. Il est défini à un multiple de $180°$ près, et toutes les égalités ci-dessous entre de tels angles s'entendent à un multiple de $180°$ près. On écrit $\measuredangle(MN, PR)$ pour l'angle entre les droites $(MN)$ et $(PR)$. On admet les propriétés suivantes.

- *Relation de Chasles.* $\measuredangle(d_1, d_2) + \measuredangle(d_2, d_3) = \measuredangle(d_1, d_3)$, et $\measuredangle(d_2, d_1) = -\measuredangle(d_1, d_2)$.
- *Parallèles.* Deux droites $d$ et $d'$ sont parallèles (ou confondues) exactement quand $\measuredangle(d, e) = \measuredangle(d', e)$ pour une droite $e$. En particulier, deux droites passant par un même point et faisant le même angle orienté avec une droite $e$ sont confondues.
- *Angle inscrit.* Si $M$, $N$, $U$, $V$ sont quatre points distincts d'un même cercle, alors $\measuredangle(UM, UN) = \measuredangle(VM, VN)$. Si de plus $t$ est la tangente au cercle en $M$, alors $\measuredangle(t, MN) = \measuredangle(VM, VN)$. L'intérêt de cette forme est qu'elle ne dépend pas de la position des points : il n'y a plus à distinguer « même côté » et « de part et d'autre ».
- *Lien avec les angles ordinaires.* Si le triangle $UMN$ est parcouru dans le sens direct quand on va de $U$ à $M$ puis à $N$, alors $\measuredangle(UM, UN) = \widehat{MUN}$. S'il est parcouru dans le sens indirect, $\measuredangle(UM, UN) = -\widehat{MUN}$.
- *Symétrie.* Une symétrie axiale $s$ change le signe des angles orientés : $\measuredangle(s(d_1), s(d_2)) = -\measuredangle(d_1, d_2)$.

On note $O$ et $R$ le centre et le rayon de $\omega$, $\Delta$ la médiatrice de $[BC]$ et $s$ la symétrie d'axe $\Delta$. Le centre $O$ est sur $\Delta$, donc $s$ envoie $\omega$ sur lui-même et échange $B$ et $C$. Comme $AB < AC$, le point $A$ n'est pas sur $\Delta$. Quitte à remplacer la figure par sa symétrique, on suppose que le triangle $ABC$ est parcouru dans le sens direct.

**Étape 1 : traduire l'hypothèse.** Le triangle $ABC$ est direct, donc $C$ est à gauche quand on va de $A$ vers $B$. Le point $X$ est de l'autre côté de $(AB)$, donc à droite, ce qui veut dire que le triangle $XBA$ est direct. De même, $B$ est à droite quand on va de $A$ vers $C$, donc $Y$ est à gauche, et le triangle $YAC$ est direct. Par le lien avec les angles ordinaires,

$$\measuredangle(XB, XA) = \widehat{BXA} = \widehat{AYC} = \measuredangle(YA, YC).$$

**Étape 2 : deux points symétriques.** Le point $A$ est à l'intérieur de $\omega$, donc la droite $(XA)$ recoupe $\omega$ en un second point $X'$, et la droite $(YA)$ en un second point $Y'$. Les droites $(XX')$ et $(XA)$ sont les mêmes, ainsi que $(YY')$ et $(YA)$.

Par l'angle inscrit dans $\omega$, d'abord avec la corde $[BX']$ vue de $C$ et de $X$, puis avec la corde $[CY']$ vue de $B$ et de $Y$ :

$$\measuredangle(CB, CX') = \measuredangle(XB, XX') = \measuredangle(XB, XA),$$

$$\measuredangle(BY', BC) = \measuredangle(YY', YC) = \measuredangle(YA, YC).$$

D'après l'étape 1, $\measuredangle(CB, CX') = \measuredangle(BY', BC)$.

Appliquons la symétrie $s$. Elle envoie la droite $(CB)$ sur elle-même et la droite $(CX')$ sur la droite qui passe par $B$ et $s(X')$. Elle change le signe des angles, donc

$$\measuredangle\left(BC, B\,s(X')\right) = -\measuredangle(CB, CX') = -\measuredangle(BY', BC) = \measuredangle(BC, BY').$$

Les droites $\left(B\,s(X')\right)$ et $(BY')$ passent par $B$ et font le même angle avec $(BC)$ : elles sont confondues. Cette droite recoupe $\omega$ en un seul point autre que $B$, donc $s(X') = Y'$.

*Cas limites.* Si $X' = C$, on remplace la droite $(CX')$ par la tangente à $\omega$ en $C$, et si $Y' = B$, la droite $(BY')$ par la tangente en $B$ (cas de la tangente dans le rappel). Le même calcul donne encore $s(X') = Y'$.

Enfin $X' \neq Y'$. Sinon, les droites $(AX)$ et $(AY)$ passeraient toutes deux par $A$ et par ce point, donc seraient confondues, et $X$ et $Y$ seraient tous deux le second point d'intersection de cette droite avec $\omega$, ce qui contredit $X \neq Y$. Comme $Y' = s(X')$ et $X' \neq Y'$, la droite $(X'Y')$ est perpendiculaire à $\Delta$, donc **parallèle à $(BC)$**.

On note $\ell$ la parallèle à $(BC)$ passant par $A$.

**Étape 3 : le cercle $AXY$ est tangent à $\ell$.**

*Si $A$ est sur la droite $(XY)$*, alors $(XA) = (XY)$ recoupe $\omega$ en $Y$, donc $X' = Y$, et de même $Y' = X$. La droite $(XY) = (X'Y')$ est alors parallèle à $(BC)$ et passe par $A$ : c'est $\ell$.

*Sinon*, les points $A$, $X$, $Y$ forment un triangle. Soit $t$ la tangente en $A$ à son cercle circonscrit. Par l'angle inscrit, d'abord dans ce cercle (tangente $t$, corde $[AX]$ vue de $Y$), puis dans $\omega$ (corde $[XY']$ vue de $Y$ et de $X'$) :

$$\measuredangle(t, AX) = \measuredangle(YA, YX) = \measuredangle(YY', YX) = \measuredangle(X'Y', X'X) = \measuredangle(X'Y', AX).$$

Donc $t$ est parallèle à $(X'Y')$, donc à $(BC)$. Comme $t$ passe par $A$, on a $t = \ell$ : **le cercle circonscrit à $AXY$ est tangent à $\ell$ en $A$**.

**Étape 4 : la droite $(XY)$ coupe $\ell$.** Plaçons-nous dans le second cas de l'étape 3, où $(XY) \neq \ell$. Si $(XY)$ était parallèle à $\ell$, elle serait perpendiculaire à $\Delta$. La symétrie $s$ conserverait alors la droite $(XY)$ et le cercle $\omega$, donc l'ensemble $\{X, Y\}$ de leurs points communs. Elle ne peut pas fixer $X$ : un point de $\Delta$ serait le milieu de la corde $[XY]$, et non une de ses extrémités. Elle échangerait donc $X$ et $Y$. Comme elle échange aussi $X'$ et $Y'$, elle enverrait la droite $(XX')$ sur la droite $(YY')$. Ces deux droites sont distinctes (sinon $A$ serait sur $(XY)$) et se coupent en $A$, donc $s(A) = A$, c'est-à-dire $A \in \Delta$ et $AB = AC$. C'est exclu. La droite $(XY)$ coupe donc $\ell$ en un point $Q$.

**Étape 5 : un calcul de puissance.** Pour un cercle de centre $I$ et de rayon $r$, et une droite passant par un point $Q$ et coupant le cercle en $U$ et $V$, on a

$$\overrightarrow{QU} \cdot \overrightarrow{QV} = QI^2 - r^2.$$

En effet, soit $H$ le milieu de $[UV]$. Alors $(IH)$ est perpendiculaire à $(UV)$, et $\overrightarrow{HV} = -\overrightarrow{HU}$, donc, avec le théorème de Pythagore dans les triangles $IHQ$ et $IHU$,

$$\overrightarrow{QU} \cdot \overrightarrow{QV} = \left(\overrightarrow{QH} + \overrightarrow{HU}\right) \cdot \left(\overrightarrow{QH} - \overrightarrow{HU}\right) = QH^2 - HU^2 = (QI^2 - IH^2) - (IU^2 - IH^2) = QI^2 - r^2.$$

Appliquons ce calcul deux fois au point $Q$ et à la droite $(XY)$.

- Avec le cercle circonscrit à $AXY$, de centre $I$ et de rayon $r$ : ce cercle est tangent en $A$ à $\ell$, qui passe par $Q$, donc $(IA) \perp (QA)$ et $QI^2 - r^2 = QI^2 - IA^2 = QA^2$. Donc $\overrightarrow{QX} \cdot \overrightarrow{QY} = QA^2$.
- Avec le cercle $\omega$ : $\overrightarrow{QX} \cdot \overrightarrow{QY} = QO^2 - R^2$.

Ainsi

$$QA^2 = QO^2 - R^2. \qquad (\star)$$

**Étape 6 : un seul point de $\ell$ vérifie $(\star)$.** Soit $\vec{u}$ un vecteur de longueur $1$ dirigeant $\ell$. Un point de $\ell$ s'écrit $M = A + \lambda\vec{u}$ avec $\lambda$ réel, et alors $MA^2 = \lambda^2$ et

$$MO^2 = \overrightarrow{OM} \cdot \overrightarrow{OM} = \left(\overrightarrow{OA} + \lambda\vec{u}\right) \cdot \left(\overrightarrow{OA} + \lambda\vec{u}\right) = OA^2 + 2\lambda\, \overrightarrow{OA} \cdot \vec{u} + \lambda^2.$$

La condition $(\star)$ pour $M$ devient $2\lambda\, \overrightarrow{OA} \cdot \vec{u} = R^2 - OA^2$. Or $\overrightarrow{OA} \cdot \vec{u} \neq 0$ : sinon $(OA)$ serait perpendiculaire à $\ell$, donc à $(BC)$, et serait la perpendiculaire à $(BC)$ passant par $O$, c'est-à-dire $\Delta$. On aurait $A \in \Delta$, ce qui est exclu. Il y a donc une seule valeur de $\lambda$ qui convient,

$$\lambda_0 = \frac{R^2 - OA^2}{2\, \overrightarrow{OA} \cdot \vec{u}},$$

et elle ne dépend que de $A$, $B$, $C$ et $\omega$, pas de $X$ ni de $Y$.

**Conclusion.** Soit $Q_0 = A + \lambda_0\vec{u}$, un point fixe de $\ell$. Pour tout choix de $X$ et $Y$, ou bien $(XY) = \ell$, qui contient $Q_0$, ou bien $(XY)$ coupe $\ell$ en un point $Q$ qui vérifie $(\star)$, donc $Q = Q_0$. Dans tous les cas, la droite $(XY)$ passe par le point fixe $Q_0$ : c'est le point de la parallèle à $(BC)$ passant par $A$ tel que $Q_0A^2 = Q_0O^2 - R^2$.

## Going further

Montrer que le cercle de centre $Q_0$ passant par $A$ coupe $\omega$ à angle droit : en chacun de leurs deux points communs, les rayons des deux cercles sont perpendiculaires.
