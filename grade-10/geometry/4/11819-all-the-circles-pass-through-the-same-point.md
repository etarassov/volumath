---
id: "11819"
title: "Tous les cercles passent par le même point"
grade: 10
theme: geometry
difficulty: 4
duration_min: 40
tags: [cercle circonscrit, bissectrice, centre du cercle inscrit, symetrie axiale, angle inscrit, point fixe]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 5 (pot-pourri)"
  reference: "2021-02_sujet-envoi-5.pdf, Exercices Juniors, exercice 6 ; corrigé 2021-04_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-02_sujet-envoi-5.pdf"
---

## Statement

Soit $ABC$ un triangle dont le plus petit côté est $[BC]$.

Pour chaque point $X$ du segment $[BC]$, on construit :

- le point $Y$ du côté $[AC]$ tel que $CY = CX$ ;
- le point $Z$ du côté $[AB]$ tel que $BZ = BX$ ;

puis le cercle circonscrit au triangle $AYZ$.

Montrer qu'il existe un point $P$ par lequel passent **tous** ces cercles, quel que soit le point $X$ choisi.

## Hints

1. Faire une figure soignée pour deux ou trois positions de $X$, et repérer le point commun. Le reconnaître.
2. Comment construire $Z$ à partir de $X$ ? Le triangle $BXZ$ est isocèle en $B$ : quelle droite échange $X$ et $Z$ ?
3. Soit $I$ le point d'intersection des bissectrices de $ABC$. Montrer que $IY = IZ$. Puis montrer qu'un point de la bissectrice de $\widehat{YAZ}$ situé à égale distance de $Y$ et de $Z$ est sur le cercle circonscrit à $AYZ$.

## Solution

On va montrer que le point cherché est $I$, le point d'intersection des trois bissectrices du triangle $ABC$ (le centre de son cercle inscrit).

**Pourquoi $Y$ et $Z$ sont sur les côtés.** Comme $[BC]$ est le plus petit côté, $CY = CX \leqslant CB \leqslant CA$ et $BZ = BX \leqslant BC \leqslant BA$ : les points $Y$ et $Z$ sont bien sur les segments $[AC]$ et $[AB]$. On suppose dans la suite qu'ils sont distincts de $A$, sinon le triangle $AYZ$ n'existe pas.

**Étape 1 : $IY = IZ$.** Le triangle $BXZ$ est isocèle en $B$. Dans un triangle isocèle, la bissectrice issue du sommet principal est aussi la médiatrice de la base. Or la bissectrice de l'angle $\widehat{XBZ}$ est celle de l'angle $\widehat{CBA}$, qui passe par $I$. Donc $I$ est sur la médiatrice de $[XZ]$, et $IX = IZ$. (Lorsque $X = B$, on a $Z = B = X$ et l'égalité est évidente.)

De même, avec le triangle $CXY$, isocèle en $C$, on obtient $IX = IY$. Donc $IY = IZ$.

**Étape 2 : un lemme.** *Soit $AYZ$ un triangle avec $AY \neq AZ$. Si un point $J$ est sur la bissectrice de l'angle $\widehat{YAZ}$ et vérifie $JY = JZ$, alors $J$ est sur le cercle circonscrit à $AYZ$.*

Preuve. La bissectrice de $\widehat{YAZ}$ recoupe le cercle circonscrit à $AYZ$ en un point $S$. Les angles inscrits $\widehat{SAY}$ et $\widehat{SAZ}$ sont égaux, donc ils interceptent des cordes de même longueur : $SY = SZ$. Ainsi $S$ est à la fois sur la bissectrice et sur la médiatrice de $[YZ]$. Ces deux droites sont différentes : si elles étaient confondues, $A$ serait sur la médiatrice de $[YZ]$ et l'on aurait $AY = AZ$. Deux droites différentes ont au plus un point commun. Or $J$ est lui aussi sur les deux droites, donc $J = S$, qui est sur le cercle.

**Étape 3 : le cas général.** Les points $Y$ et $Z$ sont sur les demi-droites $[AC)$ et $[AB)$, donc la bissectrice de $\widehat{YAZ}$ est celle de $\widehat{BAC}$, qui passe par $I$. Si $AY \neq AZ$, le lemme appliqué à $J = I$ montre que $I$ est sur le cercle circonscrit à $AYZ$.

**Étape 4 : le cas $AY = AZ$.** Alors le triangle $AYZ$ est isocèle en $A$, et la bissectrice issue de $A$ est la médiatrice de $[YZ]$ : le lemme ne s'applique plus, il faut un autre argument. Écrivons $AY = AC - CX$ et $AZ = AB - BX$. L'égalité $AY = AZ$ avec $BX + CX = BC$ donne

$$BX = \frac{AB + BC - AC}{2}.$$

C'est exactement la position du point de contact $D$ du cercle inscrit avec $[BC]$. En effet, les deux tangentes menées d'un point à un cercle ont la même longueur, donc si $D$, $E$, $F$ sont les points de contact sur $[BC]$, $[CA]$, $[AB]$, on a $BD = BF$, $CD = CE$, $AE = AF$, et l'on vérifie que $BD = \frac{AB + BC - AC}{2}$.

Ainsi $X = D$, puis $Z = F$ et $Y = E$ : ce sont les points de contact du cercle inscrit avec $[AB]$ et $[AC]$. Les angles $\widehat{AZI}$ et $\widehat{AYI}$ sont droits (un rayon est perpendiculaire à la tangente). Les points $Y$ et $Z$ sont donc sur le cercle de diamètre $[AI]$, qui est le cercle circonscrit à $AYZ$. Il passe encore par $I$.

**Conclusion.** Pour tout point $X$ de $[BC]$, le cercle circonscrit à $AYZ$ passe par **le centre $I$ du cercle inscrit** du triangle $ABC$, qui ne dépend pas de $X$.

## Going further

- Que se passe-t-il si $[BC]$ n'est pas le plus petit côté ? Pour quels points $X$ la construction reste-t-elle possible, et le résultat reste-t-il vrai ?
- Le point $S$ du lemme est souvent appelé le « pôle Sud » de $A$ dans le triangle $AYZ$ : c'est le point où se coupent la bissectrice issue de $A$ et la médiatrice du côté opposé. Le retrouver dans d'autres exercices.
