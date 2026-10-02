---
id: "11851"
title: "Deux côtés réfléchis par les bissectrices"
grade: 10
theme: geometry
difficulty: 4
duration_min: 40
tags: [cercle-inscrit, bissectrice, symetrie-axiale, tangente, perpendicularite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 5 (pot-pourri)"
  reference: "2023-03_Sujet-envoi-5.pdf, Exercices Juniors, exercice 9 ; corrigé 2023-07_corrige-envoi-5.pdf. La solution ci-dessous suit une autre voie que le corrigé : elle n'utilise que des symétries et ne dépend pas de la figure."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/03/Sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-03_Sujet-envoi-5.pdf"
---

## Statement

Soit $ABC$ un triangle dont l'angle en $A$ n'est pas droit, et $I$ le centre de son cercle inscrit.

- Soit $d_1$ la symétrique de la droite $(AB)$ par rapport à la bissectrice $(CI)$.
- Soit $d_2$ la symétrique de la droite $(AC)$ par rapport à la bissectrice $(BI)$.

Les droites $d_1$ et $d_2$ se coupent en un point $X$. Montrer que les droites $(XI)$ et $(BC)$ sont perpendiculaires.

## Hints

1. Notons $\omega$ le cercle inscrit. La symétrie par rapport à $(CI)$ envoie $\omega$ sur lui-même. Que peut-on dire de la droite $d_1$ par rapport à $\omega$ ?
2. Notons $T$, $U$, $V$ les points où $\omega$ touche $(BC)$, $(CA)$ et $(AB)$. Sur quel point la symétrie par rapport à $(CI)$ envoie-t-elle $U$ ? Et la symétrie par rapport à $(BI)$, sur quel point envoie-t-elle $V$ ?
3. Soient $V'$ et $U'$ les points où $d_1$ et $d_2$ touchent $\omega$. Comparer les longueurs $TV'$, $TU'$ et $UV$.
4. Montrer que $d_1$ et $d_2$ sont symétriques l'une de l'autre par rapport à la droite $(IT)$.

## Solution

**Rappels.**

- Une droite est tangente à un cercle de centre $I$ en un point $M$ quand elle est perpendiculaire au rayon $[IM]$ en $M$.
- Si deux tangentes à un cercle de centre $I$ partent d'un même point $K$ et touchent le cercle en $M$ et $N$, alors $KM = KN$. Comme aussi $IM = IN$, les points $K$ et $I$ sont sur la médiatrice de $[MN]$ : la droite $(KI)$ est la médiatrice de $[MN]$, et la symétrie par rapport à $(KI)$ échange $M$ et $N$.
- Une symétrie axiale conserve les longueurs, envoie une droite sur une droite et un cercle sur un cercle de même rayon.

**Notations.** Soit $\omega$ le cercle inscrit, de centre $I$, et soient $T$, $U$, $V$ les points où il touche $(BC)$, $(CA)$ et $(AB)$. Notons $s_C$ la symétrie par rapport à $(CI)$ et $s_B$ la symétrie par rapport à $(BI)$.

**Étape 1 : $d_1$ et $d_2$ sont tangentes à $\omega$.** Le centre $I$ est sur l'axe $(CI)$, donc $s_C$ envoie $\omega$ sur lui-même. La droite $(AB)$ est tangente à $\omega$ en $V$, donc son image par $s_C$, qui est $d_1$, est tangente à $\omega$ au point $V' = s_C(V)$. De même, $d_2$ est tangente à $\omega$ au point $U' = s_B(U)$.

**Étape 2 : $TV' = TU' = UV$.** Les tangentes $(CB)$ et $(CA)$ partent de $C$ et touchent $\omega$ en $T$ et $U$. D'après le second rappel, $s_C$ échange $T$ et $U$. Elle envoie donc le segment $[UV]$ sur le segment $[TV']$, et comme elle conserve les longueurs, $TV' = UV$.

De même, les tangentes $(BC)$ et $(BA)$ partent de $B$ et touchent $\omega$ en $T$ et $V$, donc $s_B$ échange $T$ et $V$. Elle envoie $[VU]$ sur $[TU']$, d'où $TU' = UV$.

**Étape 3 : $U'$ et $V'$ sont symétriques par rapport à $(IT)$.** Notons $\sigma$ la symétrie par rapport à la droite $(IT)$. Les points $U'$ et $V'$ sont sur $\omega$, à la même distance $UV$ de $T$. Or les points de $\omega$ situés à une distance donnée de $T$ sont au plus deux, et ils sont symétriques l'un de l'autre par rapport à $(IT)$ (ce sont les points communs à $\omega$ et au cercle de centre $T$ et de rayon $UV$, deux cercles dont les centres sont sur $(IT)$). Il y a donc deux possibilités : $U' = V'$, ou bien $U' = \sigma(V')$.

Si $U' = V'$, les droites $d_1$ et $d_2$ seraient toutes les deux la tangente à $\omega$ en ce point : elles seraient confondues, et ne se couperaient pas en un seul point $X$. Donc $U' = \sigma(V')$.

**Étape 4 : $X$ est sur $(IT)$.** La symétrie $\sigma$ envoie $\omega$ sur lui-même (car $I$ est sur l'axe) et $V'$ sur $U'$. Elle envoie donc la tangente à $\omega$ en $V'$ sur la tangente à $\omega$ en $U'$ : $\sigma(d_1) = d_2$, et de même $\sigma(d_2) = d_1$.

Le point $X$ est sur $d_1$ et sur $d_2$, donc $\sigma(X)$ est sur $d_2$ et sur $d_1$. Comme ces deux droites n'ont que le point $X$ en commun, $\sigma(X) = X$ : le point $X$ est sur l'axe $(IT)$.

**Conclusion.** Le point $X$ est sur une tangente à $\omega$, donc $X \neq I$, et la droite $(XI)$ est la droite $(IT)$. Comme $(BC)$ est tangente à $\omega$ en $T$, elle est perpendiculaire au rayon $[IT]$. Donc $(XI)$ et $(BC)$ sont perpendiculaires.

## Going further

Pourquoi faut-il exclure un angle droit en $A$ ? D'après l'étape 3, $d_1$ et $d_2$ sont parallèles exactement quand $U'$ et $V'$ sont diamétralement opposés, c'est-à-dire tous deux « à un quart de tour » de $T$ sur $\omega$, donc quand $UV = TV' = r\sqrt{2}$, où $r$ est le rayon de $\omega$. Cela revient à $\widehat{UIV} = 90°$. Or le quadrilatère $AVIU$ a deux angles droits, en $U$ et en $V$, donc $\widehat{UIV} = 180° - \widehat{BAC}$. Les deux droites sont donc parallèles exactement quand l'angle en $A$ est droit, et l'énoncé original, qui ne le précise pas, suppose implicitement que ce n'est pas le cas.
