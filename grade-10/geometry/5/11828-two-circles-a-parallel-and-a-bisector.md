---
id: "11828"
title: "Deux cercles, une parallèle et une bissectrice"
grade: 10
theme: geometry
difficulty: 5
duration_min: 60
tags: [cercles secants, cordes paralleles, mediatrice, vecteurs, coordonnees, bissectrice, symetrie]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 5 (pot-pourri)"
  reference: "2021-02_sujet-envoi-5.pdf, Exercices Seniors, exercice 17 ; corrigé 2021-04_corrige-envoi-5.pdf (le corrigé passe par des triangles semblables et le théorème de la bissectrice ; la solution ci-dessous est différente)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-02_sujet-envoi-5.pdf"
---

## Statement

Deux cercles $\omega_1$ et $\omega_2$ se coupent en deux points $P$ et $Q$. Une droite passant par $P$ recoupe $\omega_1$ en $A$ et $\omega_2$ en $B$.

Une droite parallèle à $(AB)$ coupe $\omega_1$ en deux points $D$ et $F$, et $\omega_2$ en deux points $E$ et $C$, de sorte que $E$ et $F$ soient tous les deux sur le segment $[CD]$.

On note $X$ le point d'intersection des droites $(AD)$ et $(BE)$, et $Y$ celui des droites $(BC)$ et $(AF)$. Enfin, $R$ est le symétrique de $P$ par rapport à la droite $(CD)$.

Montrer que la droite $(PR)$ est la bissectrice de l'angle $\widehat{XPY}$.

## Hints

1. La droite $(PR)$ est perpendiculaire à $(CD)$, donc à $(AB)$. Il s'agit de montrer que $(PX)$ et $(PY)$ sont symétriques par rapport à cette perpendiculaire. Prendre un repère orthonormé d'origine $P$, dont le premier axe est la droite $(AB)$.
2. Les cordes $[PA]$ et $[DF]$ de $\omega_1$ sont parallèles : elles ont la même médiatrice. Qu'en déduire pour les abscisses de $D$ et $F$ ? Montrer ensuite que $\overrightarrow{DE} + \overrightarrow{FC} = \overrightarrow{AB}$.
3. Soient $P_0$ et $P_1$ les points où $(PX)$ et $(PY)$ coupent $(CD)$. Calculer les abscisses de $P_0$ et $P_1$ et les comparer.

## Solution

**Le repère.** On prend un repère orthonormé d'origine $P$, dont l'axe des abscisses est la droite $(AB)$. Notons $A(\alpha ; 0)$ et $B(\beta ; 0)$. La droite $(CD)$ est parallèle à $(AB)$ : c'est la droite d'équation $y = c$ pour un certain réel $c \neq 0$. Le symétrique $R$ de $P$ par rapport à $(CD)$ est $R(0 ; 2c)$, et la droite $(PR)$ est l'axe des ordonnées. Pour un point $M$, on note $x_M$ son abscisse.

**Étape 1 : les milieux des cordes.** Le centre de $\omega_1$ est sur la médiatrice de la corde $[PA]$, qui est la droite verticale d'équation $x = \frac{\alpha}{2}$. La médiatrice de la corde $[DF]$ est la perpendiculaire à $(DF)$ passant par le centre de $\omega_1$ : c'est la même droite verticale. Le milieu de $[DF]$ a donc pour abscisse $\frac{\alpha}{2}$, c'est-à-dire

$$x_D + x_F = \alpha. \qquad \text{De même, avec } \omega_2 : \qquad x_E + x_C = \beta.$$

**Étape 2 : une égalité de vecteurs.** Les vecteurs $\overrightarrow{DE}$, $\overrightarrow{FC}$ et $\overrightarrow{AB}$ sont tous horizontaux, donc colinéaires à $\overrightarrow{AB}$ : il existe deux réels $\lambda$ et $\mu$ tels que

$$\overrightarrow{DE} = \lambda\, \overrightarrow{AB} \qquad \text{et} \qquad \overrightarrow{FC} = \mu\, \overrightarrow{AB}.$$

En comparant les abscisses, et grâce à l'étape 1 :

$$(\lambda + \mu)(\beta - \alpha) = (x_E - x_D) + (x_C - x_F) = (x_E + x_C) - (x_D + x_F) = \beta - \alpha.$$

Comme $A \neq B$, on obtient $\lambda + \mu = 1$. De plus, $E$ et $F$ sont sur le segment $[DC]$, donc $\overrightarrow{DE}$ et $\overrightarrow{FC}$ sont de même sens que $\overrightarrow{DC}$ : les réels $\lambda$ et $\mu$ ont le même signe. Leur somme vaut $1$, donc ils sont positifs, et même strictement (car $E \neq D$ et $F \neq C$, ces points étant sur des cercles différents). Ainsi $0 < \lambda < 1$ et $0 < \mu < 1$.

**Étape 3 : le point $X$ et le point $P_0$.** Comme $\lambda \neq 1$, il existe un unique point $X'$ tel que $\overrightarrow{X'D} = \lambda\, \overrightarrow{X'A}$. Alors

$$\overrightarrow{X'E} = \overrightarrow{X'D} + \overrightarrow{DE} = \lambda\, \overrightarrow{X'A} + \lambda\, \overrightarrow{AB} = \lambda\, \overrightarrow{X'B}.$$

Le point $X'$ est donc à la fois sur $(AD)$ et sur $(BE)$ : c'est le point $X$.

Soit $P_0$ le point tel que $\overrightarrow{XP_0} = \lambda\, \overrightarrow{XP}$. Il est sur la droite $(XP)$, et

$$\overrightarrow{DP_0} = \overrightarrow{XP_0} - \overrightarrow{XD} = \lambda\left(\overrightarrow{XP} - \overrightarrow{XA}\right) = \lambda\, \overrightarrow{AP}.$$

Ce vecteur est horizontal, donc $P_0$ est sur la droite $(CD)$ : **$P_0$ est le point d'intersection de $(PX)$ et de $(CD)$**, et son abscisse vaut $x_{P_0} = x_D + \lambda(0 - \alpha) = x_D - \lambda \alpha$.

De la même façon, avec $\mu$ à la place de $\lambda$ et les points $F$, $C$ à la place de $D$, $E$ : le point $Y$ vérifie $\overrightarrow{YF} = \mu\, \overrightarrow{YA}$ et $\overrightarrow{YC} = \mu\, \overrightarrow{YB}$, et la droite $(PY)$ coupe $(CD)$ au point $P_1$ d'abscisse $x_{P_1} = x_F - \mu \alpha$.

**Étape 4 : $P_0$ et $P_1$ sont symétriques.** En additionnant, puis avec les étapes 1 et 2 :

$$x_{P_0} + x_{P_1} = (x_D + x_F) - (\lambda + \mu)\,\alpha = \alpha - \alpha = 0.$$

Les points $P_0$ et $P_1$ sont sur la droite $y = c$ et ont des abscisses opposées : ils sont symétriques par rapport à l'axe des ordonnées, c'est-à-dire par rapport à la droite $(PR)$. Le triangle $P P_0 P_1$ est donc isocèle en $P$, et $(PR)$ est la bissectrice de l'angle $\widehat{P_0 P P_1}$. (Si $P_0 = P_1$, les points $X$, $Y$ sont sur la droite $(PR)$ elle-même, et il n'y a rien à démontrer.)

**Étape 5 : conclusion.** De $\overrightarrow{XP_0} = \lambda\, \overrightarrow{XP}$, on tire $\overrightarrow{PP_0} = (1 - \lambda)\, \overrightarrow{PX}$ avec $1 - \lambda > 0$ : le point $P_0$ est sur la demi-droite $[PX)$. De même, $\overrightarrow{PP_1} = (1 - \mu)\, \overrightarrow{PY}$ avec $1 - \mu > 0$, donc $P_1$ est sur la demi-droite $[PY)$. L'angle $\widehat{XPY}$ est donc l'angle $\widehat{P_0 P P_1}$, et **la droite $(PR)$ est la bissectrice de l'angle $\widehat{XPY}$.**

## Going further

- Le point $R$ est en fait sur le segment $[XY]$. Le démontrer.
- L'égalité $\overrightarrow{DE} + \overrightarrow{FC} = \overrightarrow{AB}$ dit que $DE + FC = AB$ : la droite parallèle peut bouger, cette somme ne change pas. L'interpréter avec les deux trapèzes isocèles $APFD$ et $PBCE$.
