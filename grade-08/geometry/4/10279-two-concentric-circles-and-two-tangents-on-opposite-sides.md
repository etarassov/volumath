---
id: "10279"
title: "Cercles concentriques et tangentes de part et d'autre"
grade: 8
theme: geometry
difficulty: 4
duration_min: 30
tags: [cercles-concentriques, tangente, pythagore, triangles-egaux, cercle-de-diametre, cocyclicite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 1 (géométrie)"
  reference: "2024-11_Sujet-envoi-1-2024-2025.pdf, Exercices Juniors, exercice 7 ; corrigé 2025-01_Corrige-envoi-1-2024-2025.pdf (le corrigé redéfinit E comme le projeté de O sur (CD) et utilise les angles inscrits ; la solution ci-dessous montre directement que E est le milieu de [CD], avec les outils du collège)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/11/Sujet-envoi-1-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-11_Sujet-envoi-1-2024-2025.pdf"
---

## Statement

Soit $\Gamma$ et $\Gamma'$ deux cercles de même centre $O$, le rayon de $\Gamma'$ étant plus grand que celui de $\Gamma$.

Soit $A$ et $B$ deux points distincts du petit cercle $\Gamma$. Soit $C$ et $D$ deux points du grand cercle $\Gamma'$ tels que la droite $(CA)$ soit tangente à $\Gamma$ en $A$, que la droite $(DB)$ soit tangente à $\Gamma$ en $B$, et que $C$ et $D$ soient de part et d'autre de la droite $(AB)$.

On note $E$ le point d'intersection des droites $(AB)$ et $(CD)$.

Montrer que les points $C$, $A$, $O$, $E$ sont sur un même cercle, et que les points $D$, $B$, $O$, $E$ sont sur un même cercle.

![Les deux cercles de centre O, les tangentes (CA) et (DB) au petit cercle, et le point E où (CD) coupe (AB)](10279-figure-1.svg)

## Hints

1. Comparez les longueurs $AC$ et $BD$.
2. Comparez les distances des points $C$ et $D$ à la droite $(AB)$. Qu'en déduire pour le point $E$ sur le segment $[CD]$ ?
3. Le triangle $OCD$ est isocèle. Quel angle droit voit-on en $E$ ? Pensez au cercle de diamètre $[OC]$.

## Solution

*Rappels.*

- *Tangente.* La tangente à un cercle en un point est perpendiculaire au rayon en ce point.
- *Cercle de diamètre $[UV]$.* Si l'angle $\widehat{UMV}$ est droit, le point $M$ est sur le cercle de diamètre $[UV]$.
- *Triangles égaux.* Deux triangles rectangles qui ont la même hypoténuse et un angle aigu égal sont égaux : leurs côtés correspondants ont la même longueur.

On note $r$ le rayon de $\Gamma$ et $R$ celui de $\Gamma'$.

**Étape 1 : $AC = BD$.** La droite $(AC)$ est tangente à $\Gamma$ en $A$, donc le triangle $OAC$ est rectangle en $A$. D'après le théorème de Pythagore, $AC^2 = OC^2 - OA^2 = R^2 - r^2$. De même, le triangle $OBD$ est rectangle en $B$, et $BD^2 = R^2 - r^2$. Donc $AC = BD$.

**Étape 2 : $C$ et $D$ sont à la même distance de $(AB)$.** On note $C_1$ et $D_1$ les projetés orthogonaux de $C$ et de $D$ sur la droite $(AB)$.

Le triangle $OAB$ est isocèle en $O$, donc ses angles $\widehat{OAB}$ et $\widehat{OBA}$ sont égaux. Appelons $\theta$ leur mesure, qui est un angle aigu. La droite $(AC)$ est perpendiculaire à $(OA)$, donc l'angle aigu entre les droites $(AC)$ et $(AB)$ mesure $90° - \theta$. Pour la même raison, l'angle aigu entre les droites $(BD)$ et $(AB)$ mesure aussi $90° - \theta$.

Les triangles $AC_1C$ et $BD_1D$ sont rectangles en $C_1$ et en $D_1$. Leurs hypoténuses $AC$ et $BD$ sont égales (étape 1), et leurs angles en $A$ et en $B$ mesurent tous les deux $90° - \theta$. Ces deux triangles sont égaux, donc $CC_1 = DD_1$.

(Si $\theta = 0$, c'est-à-dire si $(AB)$ passe par $O$, les tangentes $(AC)$ et $(BD)$ sont perpendiculaires à $(AB)$, et directement $CC_1 = AC = BD = DD_1$.)

**Étape 3 : $E$ est le milieu de $[CD]$.** Les points $C$ et $D$ sont de part et d'autre de $(AB)$, donc la droite $(AB)$ coupe le segment $[CD]$, en $E$. Les triangles $EC_1C$ et $ED_1D$ sont rectangles en $C_1$ et en $D_1$, leurs angles en $E$ sont opposés par le sommet, donc égaux, et $CC_1 = DD_1$. Ils sont donc égaux, et $EC = ED$. (Si $C_1 = D_1$, alors $E$ est ce point, et $EC = CC_1 = DD_1 = ED$ directement.)

**Étape 4 : l'angle droit en $E$.** Le triangle $OCD$ est isocèle en $O$, car $OC = OD = R$. Dans un triangle isocèle, la médiane issue du sommet principal est aussi la hauteur. Comme $E$ est le milieu de $[CD]$, la droite $(OE)$ est perpendiculaire à $(CD)$, si $E \neq O$.

![Les deux cercles de diamètres [OC] et [OD], et les angles droits en A, B et E](10279-figure-2.svg)

**Étape 5 : conclusion.** Les angles $\widehat{OAC}$ et $\widehat{OEC}$ sont droits. Les points $A$ et $E$ sont donc tous les deux sur le cercle de diamètre $[OC]$, qui passe aussi par $O$ et par $C$. Les points $C$, $A$, $O$, $E$ sont sur un même cercle.

De même, les angles $\widehat{OBD}$ et $\widehat{OED}$ sont droits, donc $B$ et $E$ sont sur le cercle de diamètre $[OD]$, et les points $D$, $B$, $O$, $E$ sont sur un même cercle.

*Remarques.*

- Il y a deux cas particuliers où l'un des deux groupes ne compte que trois points distincts. Si $E = O$, ce qui arrive quand $C$ et $D$ sont diamétralement opposés sur $\Gamma'$, les deux groupes se réduisent à $C, A, O$ et à $D, B, O$. Si $E = A$, le premier groupe se réduit à $C, A, O$. Dans les deux cas, trois points non alignés sont toujours sur un même cercle, et l'énoncé reste vrai.
- L'hypothèse « $C$ et $D$ de part et d'autre de $(AB)$ » sert à l'étape 3. Quand $C$ et $D$ sont du même côté de $(AB)$, le point $D$ est le symétrique de $C$ par rapport à la médiatrice de $[AB]$, les droites $(CD)$ et $(AB)$ sont parallèles et le point $E$ n'existe pas. C'est un autre exercice : on montre alors que $A$, $B$, $C$, $D$ sont sur un même cercle.
