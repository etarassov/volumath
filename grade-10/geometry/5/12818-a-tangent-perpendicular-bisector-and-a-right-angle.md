---
id: "12818"
title: "Une médiatrice tangente et un angle droit"
grade: 10
theme: geometry
difficulty: 5
duration_min: 50
tags: [tangente, mediatrice, symetrie, milieu, droite-des-milieux, angle-droit, repere]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de février 2023"
  reference: "2023-09_Enonce-Test-3.pdf, test EGMO, exercice 9 ; corrigé 2023-09_Corrige-Test-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/09/Enonce-Test-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-09_Enonce-Test-3.pdf"
---

## Statement

Soit $ABC$ un triangle et $E$ le milieu de $[BC]$. Soit $m$ la médiatrice de $[AC]$, et $D$ un point de $m$ tel que le cercle $\Omega$ circonscrit au triangle $ABD$ soit tangent à la droite $m$. Soit $K$ le second point d'intersection, autre que $A$, du cercle $\Omega$ avec la droite $(AC)$, et $F$ le milieu de $[CK]$.

![Le triangle ABC, la médiatrice m de [AC], le cercle Ω passant par A, B, D et K, et les milieux E et F](12818-figure-1.svg)

Démontrer que les droites $(DE)$ et $(EF)$ sont perpendiculaires.

## Hints

1. Notez $O$ le centre de $\Omega$ et $A'$ le milieu de $[AC]$. Que dire des droites $(OD)$ et $(AC)$ ?
2. Les points $E$ et $F$ sont les milieux de $[CB]$ et de $[CK]$, avec $B$ et $K$ sur $\Omega$. Montrez que, pour tout point $X$ de $\Omega$, le milieu de $[CX]$ est sur un cercle fixe. Quels autres points connus sont sur ce cercle ?
3. Pour que $D$ soit aussi sur ce cercle, il faudrait un point $K'$ de $\Omega$ tel que $D$ soit le milieu de $[CK']$. Essayez le symétrique de $A$ par rapport à la droite $(OD)$.
4. Sur le petit cercle, regardez l'angle $\widehat{DA'F}$.

## Solution

Notons $O$ le centre et $R$ le rayon de $\Omega$, et $A'$ le milieu de $[AC]$, qui est sur $m$. On suppose la figure non dégénérée : en particulier $D \neq A'$, et $E$ est distinct de $D$ et de $F$.

### Étape 1 : la droite (OD) est parallèle à (AC)

Le cercle $\Omega$ est tangent à $m$ au point $D$, donc le rayon $[OD]$ est perpendiculaire à $m$. La droite $(AC)$ est aussi perpendiculaire à $m$, puisque $m$ est la médiatrice de $[AC]$. Deux droites perpendiculaires à une même droite sont parallèles : $(OD) \parallel (AC)$.

### Étape 2 : un point K′ de Ω tel que D soit le milieu de [CK′]

Soit $K'$ le symétrique de $A$ par rapport à la droite $(OD)$. Comme $O$ est sur cette droite, $OK' = OA = R$ : **le point $K'$ est sur $\Omega$**.

Prenons un repère orthonormé d'origine $D$, dont l'axe des abscisses est la droite $(OD)$ et l'axe des ordonnées la droite $m$. La droite $(AC)$ est parallèle à l'axe des abscisses, donc $A$ et $C$ ont la même ordonnée $q$, et comme leur milieu $A'$ est sur $m$, leurs abscisses sont opposées :

$$A = (p\,;\,q), \qquad C = (-p\,;\,q), \qquad A' = (0\,;\,q).$$

Le symétrique de $A$ par rapport à l'axe des abscisses est $K' = (p\,;\,-q)$. Le milieu de $[CK']$ a pour coordonnées $\left(\frac{-p + p}{2}\,;\,\frac{q - q}{2}\right) = (0\,;\,0)$ : **c'est $D$**.

### Étape 3 : les milieux des segments [CX] sont sur un même cercle

Soit $O'$ le milieu de $[CO]$. Pour tout point $X$ de $\Omega$, notons $X'$ le milieu de $[CX]$. Dans le triangle $COX$, la droite des milieux donne $O'X' = \frac{1}{2}\,OX = \frac{R}{2}$.

Donc les milieux de tous les segments $[CX]$, pour $X$ sur $\Omega$, sont sur le cercle $\Omega'$ de centre $O'$ et de rayon $\frac{R}{2}$. Appliquons cela aux quatre points $A$, $B$, $K$, $K'$ de $\Omega$ :

$$A', \quad E, \quad F, \quad D \quad \text{sont sur le cercle } \Omega'.$$

### Étape 4 : l'angle droit

Les points $A'$ et $F$ sont tous les deux sur la droite $(AC)$ (car $K$ est sur $(AC)$), et ils sont distincts, car $K \neq A$. La droite $(DA')$ est la droite $m$, perpendiculaire à $(AC)$. Donc le triangle $DA'F$ est rectangle en $A'$.

Un triangle rectangle inscrit dans un cercle a pour hypoténuse un diamètre de ce cercle : $[DF]$ est un diamètre de $\Omega'$. Le point $E$ est aussi sur $\Omega'$, donc le triangle $DEF$ est rectangle en $E$.

**Les droites $(DE)$ et $(EF)$ sont perpendiculaires.**
