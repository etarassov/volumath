---
id: "11864"
title: "Deux perpendiculaires en B et C et deux cordes égales"
grade: 10
theme: geometry
difficulty: 4
duration_min: 45
tags: [cercle-inscrit, thales, tangente, symetrie-axiale, triangle-rectangle]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 5 (pot-pourri)"
  reference: "2024-03_sujet-envoi-5-2023-2024.pdf, Exercices Juniors, exercice 8 ; corrigé 2024-04_Corrige-envoi-5-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/03/sujet-envoi-5-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-03_sujet-envoi-5-2023-2024.pdf"
---

## Statement

Soit $ABC$ un triangle, $\omega$ son cercle inscrit, et $D$, $E$, $F$ les points où $\omega$ touche les côtés $[BC]$, $[CA]$ et $[AB]$.

La perpendiculaire à $(BC)$ passant par $C$ coupe la droite $(EF)$ en $M$, et la perpendiculaire à $(BC)$ passant par $B$ coupe la droite $(EF)$ en $N$. La droite $(DM)$ recoupe $\omega$ en $P$ et la droite $(DN)$ recoupe $\omega$ en $Q$.

Montrer que $DP = DQ$.

## Hints

1. Soit $I$ le centre de $\omega$. Il suffit de montrer que les droites $(DM)$ et $(DN)$ sont symétriques par rapport à la droite $(DI)$. Pourquoi ?
2. Cela revient à montrer que les angles $\widehat{MDC}$ et $\widehat{NDB}$ sont égaux. Il suffit pour cela que $\dfrac{BN}{BD} = \dfrac{CM}{CD}$.
3. Soit $Z$ le point où la droite $(EF)$ coupe la droite $(BC)$. Appliquer le théorème de Thalès avec les parallèles $(BN)$ et $(CM)$.
4. Soit $X$ le point de $(EF)$ tel que $(BX)$ soit parallèle à $(AC)$. Montrer que le triangle $BFX$ est isocèle en $B$, puis appliquer de nouveau le théorème de Thalès.

## Solution

Notons $I$ le centre du cercle $\omega$.

**Rappels.**

- Une tangente à un cercle est perpendiculaire au rayon qui aboutit au point de contact. Les deux segments de tangente menés d'un même point à un cercle ont la même longueur : $AE = AF$, $BD = BF$, $CD = CE$.
- Théorème de Thalès : si les points $Z, U, V$ et $Z, U', V'$ sont alignés et si $(UU')$ est parallèle à $(VV')$, alors $\dfrac{ZU}{ZV} = \dfrac{UU'}{VV'}$.
- Dans un triangle rectangle, la tangente d'un angle aigu est le côté opposé divisé par le côté adjacent. Deux angles aigus qui ont la même tangente sont égaux.

**Le cas $AB = AC$.** La droite $(AD)$ est alors un axe de symétrie de la figure : la symétrie par rapport à cet axe échange $B$ et $C$, $E$ et $F$, laisse $\omega$ en place, et échange donc $M$ et $N$, puis $P$ et $Q$. D'où $DP = DQ$. On suppose désormais $AB \neq AC$.

**Étape 1 : ce qu'il suffit de montrer.** La droite $(DI)$ est perpendiculaire à $(BC)$ en $D$. La symétrie par rapport à $(DI)$ laisse le cercle $\omega$ en place (son centre est sur l'axe) et laisse $D$ fixe. Si l'on montre qu'elle envoie la droite $(DN)$ sur la droite $(DM)$, alors elle envoie le second point d'intersection de $(DN)$ avec $\omega$, c'est-à-dire $Q$, sur le second point d'intersection de $(DM)$ avec $\omega$, c'est-à-dire $P$. On aura alors $DQ = DP$, car une symétrie conserve les longueurs.

Cette symétrie échange les demi-droites $[DB)$ et $[DC)$. Elle envoie donc $(DN)$ sur $(DM)$ dès que les deux conditions suivantes sont réunies :

- les angles $\widehat{NDB}$ et $\widehat{MDC}$ sont égaux ;
- les points $M$ et $N$ sont du même côté de la droite $(BC)$.

**Étape 2 : le point $Z$.** Comme $AB \neq AC$, la droite $(EF)$ n'est pas parallèle à $(BC)$ (sinon, par Thalès, $\frac{AE}{AC} = \frac{AF}{AB}$ avec $AE = AF$, d'où $AB = AC$). Elle coupe donc $(BC)$ en un point $Z$. Ce point n'est pas sur le segment $[BC]$ : la droite $(EF)$ coupe déjà le bord du triangle en $E$ et en $F$, et une droite qui ne contient pas de côté ne coupe le bord d'un triangle qu'en deux points au plus.

Les points $B$ et $C$ sont donc du même côté de $Z$ sur la droite $(BC)$. Les points $N$ et $M$, qui sont sur $(EF)$ et se projettent orthogonalement sur $(BC)$ en $B$ et en $C$, sont alors du même côté de $Z$ sur la droite $(EF)$, donc du même côté de la droite $(BC)$. C'est la deuxième condition de l'étape 1.

**Étape 3 : $\dfrac{ZB}{ZC} = \dfrac{BN}{CM}$.** Les droites $(BN)$ et $(CM)$ sont toutes deux perpendiculaires à $(BC)$, donc parallèles. Les points $Z, B, C$ sont alignés, ainsi que $Z, N, M$. Par Thalès, $\dfrac{ZB}{ZC} = \dfrac{BN}{CM}$.

**Étape 4 : $\dfrac{ZB}{ZC} = \dfrac{BD}{CD}$.** Soit $X$ le point de $(EF)$ tel que $(BX)$ soit parallèle à $(AC)$.

- Le triangle $AEF$ est isocèle en $A$ car $AE = AF$, donc $\widehat{AEF} = \widehat{AFE}$.
- Comme $(BX)$ est parallèle à $(AE)$, les angles $\widehat{BXF}$ et $\widehat{AEF}$ sont égaux (angles alternes-internes). Les angles $\widehat{BFX}$ et $\widehat{AFE}$ sont égaux car opposés par le sommet.
- Donc $\widehat{BXF} = \widehat{BFX}$ : le triangle $BFX$ est isocèle en $B$, et $BX = BF = BD$.

Les points $Z, B, C$ sont alignés, ainsi que $Z, X, E$, et $(BX)$ est parallèle à $(CE)$. Par Thalès,
$$\frac{ZB}{ZC} = \frac{BX}{CE} = \frac{BD}{CD}.$$

**Étape 5 : les angles.** Des étapes 3 et 4, on tire $\dfrac{BN}{CM} = \dfrac{BD}{CD}$, c'est-à-dire $\dfrac{BN}{BD} = \dfrac{CM}{CD}$. Dans le triangle $NBD$ rectangle en $B$ et dans le triangle $MCD$ rectangle en $C$, cela s'écrit
$$\tan \widehat{NDB} = \frac{BN}{BD} = \frac{CM}{CD} = \tan \widehat{MDC}.$$
Ces deux angles aigus sont donc égaux. C'est la première condition de l'étape 1.

**Conclusion.** La symétrie par rapport à $(DI)$ envoie la droite $(DN)$ sur la droite $(DM)$, donc $Q$ sur $P$. **On a bien $DP = DQ$.**
