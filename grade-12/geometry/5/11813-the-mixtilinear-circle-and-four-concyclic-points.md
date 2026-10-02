---
id: "11813"
title: "Le cercle mixtilinéaire et quatre points cocycliques"
grade: 12
theme: geometry
difficulty: 5
duration_min: 90
tags: [cercle-mixtilineaire, cercles-tangents, cocyclicite, angles-orientes, similitude, pascal, hors-programme]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 5 (pot-pourri)"
  reference: "2020-02_sujet-envoi-5.pdf, Exercices Seniors, exercice 17 ; corrigé 2020-04_corrige-commente-envoi-5.pdf. L'énoncé ajoute AB ≠ AC : sans cette hypothèse le point T n'existe pas."
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-02_sujet-envoi-5.pdf"
---

## Statement

Soit $ABC$ un triangle avec $AB \neq AC$, $\Omega$ son cercle circonscrit et $O$ le centre de $\Omega$. Soit $\omega$ le cercle tangent aux côtés $[AB]$ et $[AC]$ et tangent intérieurement à $\Omega$ en un point $K$, et soit $S$ le centre de $\omega$. Le cercle de diamètre $[AS]$ recoupe $\Omega$ en un point $T$. Soit $M$ le milieu du segment $[BC]$.

Montrer que les points $K$, $T$, $M$ et $O$ sont cocycliques.

## Hints

1. Note $U$ et $V$ les points de contact de $\omega$ avec $[AB]$ et $[AC]$. Pourquoi le cercle de diamètre $[AS]$ passe-t-il par $U$ et $V$ ?
2. La droite $(KU)$ recoupe $\Omega$ en un point remarquable. Compare les triangles isocèles $SKU$ et $OK\ldots$
3. Montre que le centre $I$ du cercle inscrit de $ABC$ est le milieu de $[UV]$.
4. Le point $T$ est le centre d'une similitude directe qui envoie $U$ sur $B$ et $V$ sur $C$. Où envoie-t-elle $I$ ? Et la droite $(AS)$ ?
5. Montre successivement que $T$, $I$, $S$, $K$ sont cocycliques, puis que $T$, $D$, $I$, $M$ le sont, où $D$ est le milieu de l'arc $BC$ qui ne contient pas $A$.

## Solution

**Rappel.** Cette solution utilise trois outils qui ne sont pas au programme du lycée.

- *Angles orientés de droites.* On note $(d_1, d_2)$ l'angle dont il faut faire tourner la droite $d_1$, dans le sens direct, pour la rendre parallèle à $d_2$, compté à $180^\circ$ près. On a la relation de Chasles $(d_1, d_2) + (d_2, d_3) = (d_1, d_3)$. Quatre points $P$, $Q$, $X$, $Y$ (trois jamais alignés) sont cocycliques si et seulement si $(XP, XQ) = (YP, YQ)$, **quelle que soit la position des points sur la figure**.
- *Théorème de Pascal.* Si six points $A_1, A_2, A_3, A_4, A_5, A_6$ sont sur un même cercle, les trois points d'intersection $(A_1A_2) \cap (A_4A_5)$, $(A_2A_3) \cap (A_5A_6)$ et $(A_3A_4) \cap (A_6A_1)$ sont alignés.
- *Similitudes directes.* Dans le plan complexe, la similitude directe de centre $t$ et de rapport $\lambda$ (un complexe non nul) est l'application $s(z) = t + \lambda (z - t)$. Elle multiplie toutes les longueurs par $|\lambda|$ et fait tourner toutes les directions d'un même angle $\theta$, un argument de $\lambda$. Elle envoie donc une droite sur une droite, un cercle sur un cercle, un milieu sur un milieu, une médiatrice sur une médiatrice ; elle conserve les angles orientés, $(s(d_1), s(d_2)) = (d_1, d_2)$, et le sens de parcours des triangles. De plus $(d, s(d)) = \theta$ pour toute droite $d$, et $(tX, t\,s(X)) = \theta$ pour tout point $X \neq t$.

  **Lemme.** *Si les droites $(UB)$ et $(VC)$ se coupent en $A$ et si les cercles $(AUV)$ et $(ABC)$ se recoupent en $T$, alors la similitude directe de centre $T$ qui envoie $U$ sur $B$ envoie aussi $V$ sur $C$.* En effet, par cocyclicité de $T, U, V, A$ puis de $T, B, C, A$ :
  $$(UT, UB) = (UT, UA) = (VT, VA) = (VT, VC), \qquad (BT, BU) = (BT, BA) = (CT, CA) = (CT, CV).$$
  Les triangles $TUB$ et $TVC$ ont les mêmes angles orientés : ils sont directement semblables, ce qui s'écrit $\dfrac{b - t}{u - t} = \dfrac{c - t}{v - t}$. En notant $\lambda$ ce quotient, $s(z) = t + \lambda(z - t)$ vérifie $s(u) = b$ et $s(v) = c$.

**Notations.** Soient $U$ et $V$ les points de contact de $\omega$ avec $[AB]$ et $[AC]$, $r$ le rayon de $\omega$, $I$ le centre du cercle inscrit de $ABC$, et $\alpha$, $\beta$, $\gamma$ les angles du triangle en $A$, $B$, $C$. Soient $D$ et $N$ les milieux des deux arcs $BC$ de $\Omega$, $D$ sur l'arc qui ne contient pas $A$. Rappelons des faits classiques :

- la droite $(DN)$ est la médiatrice de $[BC]$ : elle contient $O$ et $M$ ;
- la bissectrice de l'angle $\widehat{BAC}$ passe par $I$ et par $D$ (les arcs $BD$ et $DC$ sont égaux) ;
- le centre $S$ de $\omega$ est à égale distance de $(AB)$ et $(AC)$, donc il est aussi sur cette bissectrice. Ainsi $A$, $I$, $S$, $D$ sont alignés ;
- comme $AB \neq AC$, le point $A$ n'est pas sur la médiatrice de $[BC]$, donc les droites $(AD)$ et $(DN)$ sont distinctes et se coupent seulement en $D$.

Enfin $\widehat{AUS} = \widehat{AVS} = 90^\circ$ (un rayon est perpendiculaire à la tangente), donc **le cercle de diamètre $[AS]$ passe par $U$ et $V$** : c'est le cercle $(AUV)$, et $T$ est dessus. Comme $AU = AV$ (deux tangentes issues de $A$) et $SU = SV$, la droite $(AS)$ est la médiatrice de $[UV]$.

**Étape 1 : trois alignements autour de $K$.**

- Quand deux cercles sont tangents, le point de contact est sur la droite des centres : $K$, $S$, $O$ sont alignés, avec $S$ sur $[OK]$.
- Soit $S_C$ le second point d'intersection de $(KU)$ avec $\Omega$. Les triangles $SKU$ et $OKS_C$ sont isocèles ($SK = SU$, $OK = OS_C$) et ont le même angle en $K$, car $S \in [KO]$ et $U \in [KS_C]$. Leurs angles au sommet sont donc égaux, $\widehat{KSU} = \widehat{KOS_C}$, et les droites $(SU)$ et $(OS_C)$ sont parallèles et de même sens. Comme $(SU) \perp (AB)$, on a $(OS_C) \perp (AB)$ : le point $S_C$ est sur la médiatrice de $[AB]$, et comme le vecteur $\overrightarrow{OS_C}$ a le sens de $\overrightarrow{SU}$, il est du côté de $(AB)$ opposé à $C$. Ainsi **$S_C$ est le milieu de l'arc $AB$ qui ne contient pas $C$** ; la droite $(CS_C)$ est la bissectrice de l'angle en $C$ et passe par $I$.
- De même, $(KV)$ recoupe $\Omega$ en $S_B$, milieu de l'arc $AC$ qui ne contient pas $B$, et $(BS_B)$ passe par $I$.

**Étape 2 : $I$ est le milieu de $[UV]$.** Appliquons le théorème de Pascal aux six points $A, C, S_C, K, S_B, B$ de $\Omega$ :
$$(AC) \cap (KS_B) = V, \qquad (CS_C) \cap (S_BB) = I, \qquad (S_CK) \cap (BA) = U .$$
Donc $U$, $I$, $V$ sont alignés. Le point $I$ est à la fois sur $(UV)$ et sur la médiatrice $(AS)$ de $[UV]$ : c'est le milieu de $[UV]$.

**Étape 3 : $K$, $I$, $N$ sont alignés.**

Montrons d'abord que $B$, $U$, $I$, $K$ sont cocycliques. Les angles inscrits $\widehat{S_CKB}$ et $\widehat{S_CCB}$ interceptent le même arc, donc $\widehat{UKB} = \widehat{S_CKB} = \widehat{S_CCB} = \dfrac{\gamma}{2}$. Dans le triangle $AUV$, isocèle en $A$, $\widehat{AUV} = 90^\circ - \dfrac{\alpha}{2}$, donc $\widehat{BUI} = 90^\circ + \dfrac{\alpha}{2}$ ; comme $\widehat{UBI} = \dfrac{\beta}{2}$, le triangle $BUI$ donne
$$\widehat{UIB} = 180^\circ - \left(90^\circ + \frac{\alpha}{2}\right) - \frac{\beta}{2} = \frac{\gamma}{2} .$$
Les points $I$ et $K$ sont du même côté de $(AB)$ et voient $[UB]$ sous le même angle, donc $B$, $U$, $I$, $K$ sont cocycliques. De même, $C$, $V$, $I$, $K$ sont cocycliques.

Passons aux angles orientés :
$$(KB, KI) = (UB, UI) = (AB, UV), \qquad (KI, KC) = (VI, VC) = (UV, AC) .$$
La symétrie par rapport à la bissectrice $(AS)$ échange les droites $(AB)$ et $(AC)$, garde la droite $(UV)$ (qui est perpendiculaire à l'axe) et change le signe des angles orientés. Donc $(AB, UV) = -(AC, UV) = (UV, AC)$, et
$$(KB, KI) = (KI, KC) .$$
Soit $X$ le second point d'intersection de $(KI)$ avec $\Omega$. Par les angles inscrits, $(CB, CX) = (KB, KX) = (KX, KC) = (BX, BC)$ : le triangle $XBC$ a deux angles égaux, il est isocèle en $X$, et $X$ est sur la médiatrice de $[BC]$. Donc $X = D$ ou $X = N$.

Si l'on avait $X = D$, la droite $(KI)$ serait la droite $(ID) = (AD)$, et $K$ serait sur $(AD)$. Comme $S$ est aussi sur $(AD)$, la droite $(KS)$, qui passe par $O$, serait $(AD)$ ; alors $O \in (AD)$ et $(AD) = (OD)$ serait la médiatrice de $[BC]$, ce qui est exclu puisque $AB \neq AC$. Donc $X = N$ : **$K$, $I$, $N$ sont alignés.**

**Étape 4 : la similitude de centre $T$.** Le point $T$ est le second point d'intersection des cercles $(AUV)$ et $(ABC)$, avec $U \in (AB)$ et $V \in (AC)$. D'après le lemme, il existe une similitude directe $s$ de centre $T$, d'angle $\theta$, telle que $s(U) = B$ et $s(V) = C$. Alors :

- $s(I) = M$, car $s$ envoie le milieu de $[UV]$ sur le milieu de $[BC]$ ;
- $s$ envoie la médiatrice $(AS)$ de $[UV]$ sur la médiatrice $(DN)$ de $[BC]$ ;
- $s$ envoie le cercle $(TUV)$, qui est le cercle de diamètre $[AS]$, sur le cercle $(TBC) = \Omega$. Donc $s(S)$ est sur $\Omega$ et sur $(DN)$ : $s(S) = D$ ou $s(S) = N$.

Pour trancher, regardons le sens des triangles. La corde $[UV]$ est perpendiculaire au diamètre $[AS]$, donc $A$ et $S$ sont de part et d'autre de $(UV)$ : les triangles $UVS$ et $UVA$ sont de sens contraires. Comme $U \in [AB]$ et $V \in [AC]$, les triangles $UVA$ et $BCA$ ont le même sens. La similitude conserve le sens, donc le triangle $BC\,s(S)$ a le sens de $UVS$, contraire à celui de $BCA$ : $s(S)$ et $A$ sont de part et d'autre de $(BC)$. Ainsi **$s(S) = D$**.

**Étape 5 : $T$, $I$, $S$, $K$ sont cocycliques.** La similitude envoie la droite $(SA)$ sur $(DN)$ et la droite $(ST)$ sur $(DT)$, et elle conserve les angles orientés. Avec l'alignement de l'étape 3 et les angles inscrits dans $\Omega$ :
$$(KI, KT) = (KN, KT) = (DN, DT) = (SA, ST) = (SI, ST) .$$
Donc $K$, $S$, $I$, $T$ sont cocycliques.

**Étape 6 : $T$, $D$, $I$, $M$ sont cocycliques.** La droite $(AS)$ contient $I$ et $D$, la droite $(DN)$ contient $M$ et $D$, et $s$ envoie la première sur la seconde. Donc
$$(DI, DM) = \left((AS), (DN)\right) = \theta = (TI, TM),$$
la dernière égalité parce que $M = s(I)$. Ainsi $D$, $T$, $I$, $M$ sont cocycliques.

**Conclusion.** Avec les alignements $M, O, D$ (étape 4), $I, S, D$ (notations) et $K, S, O$ (étape 1), puis les étapes 6 et 5 :
$$(MT, MO) = (MT, MD) = (IT, ID) = (IT, IS) = (KT, KS) = (KT, KO) .$$
Donc **les points $K$, $T$, $M$ et $O$ sont cocycliques.**

## Going further

Le cercle $\omega$ s'appelle le *cercle $A$-mixtilinéaire* du triangle.

1. Montrer que la droite $(TS)$ passe par le point de $\Omega$ diamétralement opposé à $A$.
2. Plus difficile : le cercle exinscrit dans l'angle $\widehat{BAC}$ touche $[BC]$ en un point $E$. Montrer que les droites $(AK)$ et $(AE)$ sont symétriques par rapport à la bissectrice de l'angle $\widehat{BAC}$.
