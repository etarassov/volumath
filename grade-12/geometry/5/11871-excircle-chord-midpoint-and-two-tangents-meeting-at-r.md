---
id: "11871"
title: "Cercle exinscrit, milieu d'une corde et deux tangentes qui se coupent en R"
grade: 12
theme: geometry
difficulty: 5
duration_min: 75
tags: [cercle exinscrit, cercle circonscrit, puissance d un point, tangente, angle inscrit, triangles semblables, inversion]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 5 (pot-pourri)"
  reference: "2024-03_sujet-envoi-5-2023-2024.pdf, Exercices Seniors, exercice 18 ; corrigé 2024-04_Corrige-envoi-5-2023-2024.pdf. L'hypothèse AB ≠ AC a été ajoutée : sans elle, les deux tangentes sont parallèles et R n'existe pas. La solution suit l'idée du corrigé (introduire le centre du cercle APX) mais obtient la tangence au cercle exinscrit par la puissance du point J et précise de quel côté de (AJ) se trouve chaque point."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/03/sujet-envoi-5-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-03_sujet-envoi-5-2023-2024.pdf"
---

## Statement

Soit $ABC$ un triangle avec $AB \neq AC$, $\Omega$ son cercle circonscrit, et $\omega$ son cercle exinscrit dans l'angle $A$, de centre $J$. Le cercle $\omega$ touche le côté $[BC]$ en $A_1$, la demi-droite $[AC)$ en $B_1$ et la demi-droite $[AB)$ en $C_1$.

Soit $P$ le milieu du segment $[B_1C_1]$. La droite $(A_1P)$ recoupe $\omega$ en $X$. La tangente à $\Omega$ en $A$ et la tangente à $\omega$ en $X$ se coupent en $R$.

Montrer que $RX = RP$.

## Hints

1. Montrer que $A$, $P$ et $J$ sont alignés, puis que $JP \times JA = JB_1^2$.
2. Soit $\Gamma$ le cercle passant par $A$, $P$ et $X$, et $R'$ son centre. Il suffit de montrer que $(R'A)$ est tangente à $\Omega$ et que $(R'X)$ est tangente à $\omega$. Pourquoi ?
3. Pour la tangence à $\omega$ : calculer la puissance du point $J$ par rapport à $\Gamma$.
4. Pour la tangence à $\Omega$ : comparer $PA \times PJ$ et $PA_1 \times PX$, et en déduire deux triangles semblables. On trouvera que l'angle $\widehat{AXP}$ vaut $\dfrac{\widehat{B} - \widehat{C}}{2}$ si $AC > AB$. Comparer avec l'angle entre $(AO)$ et $(AJ)$, où $O$ est le centre de $\Omega$.

## Solution

Quitte à échanger les noms de $B$ et $C$, on suppose $AC > AB$, c'est-à-dire $\widehat{B} > \widehat{C}$. On note $\widehat{A} = 2\alpha$, $\widehat{B} = 2\beta$, $\widehat{C} = 2\gamma$, avec $\alpha + \beta + \gamma = 90°$, et $\theta = \beta - \gamma > 0$. On note $r$ le rayon de $\omega$, $O$ le centre de $\Omega$, et $\Gamma$ le cercle passant par $A$, $P$ et $X$, de centre $R'$ et de rayon $\rho$.

**Rappels.**

- *Puissance d'un point.* Soit un cercle de centre $Q$ et de rayon $\rho$, et $M$ un point. Si une droite passant par $M$ coupe le cercle en $U$ et $V$, alors $MU \times MV = |MQ^2 - \rho^2|$. En effet, si $H$ est le milieu de $[UV]$, alors $(QH) \perp (UV)$ et $MU \times MV = |MH - HU| \times (MH + HU) = |MH^2 - HU^2| = |(MQ^2 - QH^2) - (\rho^2 - QH^2)|$ par Pythagore. Si $M$ est extérieur au cercle, cela vaut $MQ^2 - \rho^2$. En particulier, si deux cordes $[UV]$ et $[U'V']$ se coupent en $M$, alors $MU \times MV = MU' \times MV'$.
- *Triangle rectangle.* Si $H$ est le pied de la hauteur issue de l'angle droit $K$ dans un triangle $MKN$ rectangle en $K$, alors $H$ est sur le segment $[MN]$, $NK^2 = NH \times NM$ et $HK^2 = HM \times HN$ (par les triangles semblables $NHK$, $NKM$ et $KHM$).
- *Angle inscrit.* Si $X$ est sur un cercle de centre $R'$ et si l'angle $\widehat{AXP}$ est aigu, alors $R'$ et $X$ sont du même côté de $(AP)$ et $\widehat{AR'P} = 2\,\widehat{AXP}$.
- Une tangente est perpendiculaire au rayon au point de contact. Les deux segments de tangente issus d'un point ont la même longueur.

**Étape 0 : ce qu'il suffit de montrer.** Il suffit de prouver que la droite $(R'A)$ est tangente à $\Omega$ en $A$ et que la droite $(R'X)$ est tangente à $\omega$ en $X$. En effet, $R'$ est alors sur les deux tangentes de l'énoncé, donc $R' = R$, et $RX = R'X = R'P = \rho$.

**Étape 1 : la droite $(AJ)$.** On a $AB_1 = AC_1$ (tangentes issues de $A$) et $JB_1 = JC_1 = r$, donc $A$ et $J$ sont sur la médiatrice de $[B_1C_1]$, qui passe par le milieu $P$ : les points $A$, $P$, $J$ sont alignés et $(B_1P) \perp (AJ)$. Le triangle $AB_1J$ est rectangle en $B_1$, et $P$ est le pied de la hauteur issue de $B_1$. Par le rappel sur le triangle rectangle, $P$ est entre $A$ et $J$, et
$$JP \times JA = JB_1^2 = r^2, \qquad PA \times PJ = PB_1^2.$$
La droite $(AJ)$ est la bissectrice de l'angle $\widehat{BAC}$.

**Étape 2 : une égalité de produits.** Le point $P$ est le milieu de la corde $[B_1C_1]$ de $\omega$, il est donc à l'intérieur de $\omega$, et la corde $[A_1X]$ passe par $P$ : $P$ est entre $A_1$ et $X$. Par la puissance du point $P$ par rapport à $\omega$, $PA_1 \times PX = PB_1 \times PC_1 = PB_1^2$. Avec l'étape 1 :
$$PA \times PJ = PA_1 \times PX.$$

**Étape 3 : $(R'X)$ est tangente à $\omega$.** La droite $(AJ)$ coupe $\Gamma$ en $A$ et $P$. Comme $A$ et $P$ sont du même côté de $J$, le point $J$ est extérieur à $\Gamma$, et la puissance de $J$ donne
$$JR'^2 - \rho^2 = JP \times JA = r^2 = JX^2.$$
Ainsi $JR'^2 = JX^2 + XR'^2$ : par la réciproque du théorème de Pythagore, le triangle $JXR'$ est rectangle en $X$. La droite $(R'X)$ est perpendiculaire au rayon $[JX]$ : elle est tangente à $\omega$ en $X$.

**Étape 4 : $\widehat{AXP} = \widehat{AJA_1}$.** L'étape 2 s'écrit $\dfrac{PA}{PA_1} = \dfrac{PX}{PJ}$. De plus $P$ est entre $A$ et $J$ et entre $A_1$ et $X$, donc les angles $\widehat{APX}$ et $\widehat{A_1PJ}$ sont opposés par le sommet, donc égaux. Les triangles $APX$ et $A_1PJ$ ont un angle égal compris entre des côtés proportionnels : ils sont semblables, $A$ correspondant à $A_1$ et $X$ à $J$. Donc $\widehat{AXP} = \widehat{A_1JP} = \widehat{A_1JA}$.

**Étape 5 : $\widehat{AJA_1} = \theta$, et de quel côté est $X$.**

- Le quadrilatère $BC_1JA_1$ a deux angles droits, en $C_1$ et en $A_1$, et son angle en $B$ est l'angle extérieur $180° - 2\beta$ (car $C_1$ est sur le prolongement de $[AB]$ au-delà de $B$). Donc $\widehat{C_1JA_1} = 360° - 90° - 90° - (180° - 2\beta) = 2\beta$.
- Dans le triangle $AC_1J$ rectangle en $C_1$, l'angle en $A$ vaut $\alpha$, donc $\widehat{C_1JA} = 90° - \alpha = \beta + \gamma$.

Les points $C_1$, $A_1$, $B_1$ se suivent dans cet ordre sur $\omega$, et la demi-droite $[JA)$ est la bissectrice de l'angle $\widehat{C_1JB_1}$. Comme $\beta + \gamma < 2\beta$, elle passe strictement entre $[JC_1)$ et $[JA_1)$. Donc
$$\widehat{AJA_1} = 2\beta - (\beta + \gamma) = \beta - \gamma = \theta,$$
et $A_1$ et $C_1$ sont de part et d'autre de la droite $(AJ)$. Or $C_1$, sur la demi-droite $[AB)$, est du même côté de $(AJ)$ que $B$. Donc $A_1$ est du côté de $C$, et $X$, qui est de l'autre côté de $P \in (AJ)$ sur la droite $(A_1X)$, est **du côté de $B$**.

Avec l'étape 4 : $\widehat{AXP} = \theta$.

**Étape 6 : l'angle entre $(AO)$ et $(AJ)$.** L'angle $\widehat{C} = 2\gamma$ est aigu car il est plus petit que $\widehat{B}$. Dans le cercle $\Omega$, l'angle au centre $\widehat{AOB}$ vaut donc $4\gamma$, avec $O$ du même côté de $(AB)$ que $C$, et le triangle isocèle $AOB$ donne $\widehat{BAO} = 90° - 2\gamma$. Or $\widehat{BAJ} = \alpha$, et $\alpha < 90° - 2\gamma$ revient à $\gamma < \beta$. La demi-droite $[AJ)$ passe donc entre $[AB)$ et $[AO)$ : $O$ est **du côté de $C$** par rapport à $(AJ)$, et
$$\widehat{JAO} = (90° - 2\gamma) - \alpha = \beta - \gamma = \theta.$$

**Étape 7 : l'angle entre $(AR')$ et $(AJ)$.** L'angle $\widehat{AXP} = \theta$ est aigu. Par le rappel sur l'angle inscrit, $R'$ est du même côté de $(AP)$ que $X$, c'est-à-dire **du côté de $B$**, et $\widehat{AR'P} = 2\theta$. Le triangle $AR'P$ est isocèle en $R'$, donc $\widehat{PAR'} = 90° - \theta$.

**Étape 8 : $(R'A)$ est tangente à $\Omega$.** Les points $O$ et $R'$ sont de part et d'autre de la droite $(AJ)$ (étapes 6 et 7), donc
$$\widehat{OAR'} = \widehat{OAJ} + \widehat{JAR'} = \theta + (90° - \theta) = 90°.$$
La droite $(R'A)$ est perpendiculaire au rayon $[OA]$ : elle est tangente à $\Omega$ en $A$.

**Conclusion.** Par l'étape 0, $R' = R$, donc **$RX = RP$** : ces deux longueurs sont égales au rayon du cercle passant par $A$, $P$ et $X$.

**Pourquoi l'hypothèse $AB \neq AC$.** Si $AB = AC$, la figure est symétrique par rapport à $(AJ)$, le point $A_1$ est sur $(AJ)$ et $X$ aussi. Les deux tangentes de l'énoncé sont alors perpendiculaires à $(AJ)$, donc parallèles, et le point $R$ n'existe pas.

## Going further

L'étape 3 n'utilise pas la définition de $X$ : tout cercle passant par $A$ et $P$ coupe $\omega$ à angle droit. C'est parce que $P$ est l'*inverse* de $A$ par rapport au cercle $\omega$ ($JP \times JA = r^2$). La définition de $X$ ne sert que pour la tangence à $\Omega$.
