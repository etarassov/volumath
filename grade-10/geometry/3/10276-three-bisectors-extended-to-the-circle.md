---
id: "10276"
title: "Trois bissectrices prolongées jusqu'au cercle"
grade: 10
theme: geometry
difficulty: 3
duration_min: 20
tags: [bissectrice, cercle-circonscrit, centre-cercle-inscrit, angle-inscrit, pole-sud, mediatrice]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 1 (géométrie)"
  reference: "2024-11_Sujet-envoi-1-2024-2025.pdf, Exercices Juniors, exercice 4 ; corrigé 2025-01_Corrige-envoi-1-2024-2025.pdf (le corrigé calcule l'angle entre (AD) et (EF) ; la solution ci-dessous montre que (EF) est la médiatrice de [AI])"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/11/Sujet-envoi-1-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-11_Sujet-envoi-1-2024-2025.pdf"
---

## Statement

Soit $ABC$ un triangle et $\Gamma$ son cercle circonscrit. La bissectrice de l'angle $\widehat{BAC}$ recoupe le cercle $\Gamma$ en un point $D$, autre que $A$. De même, la bissectrice de l'angle $\widehat{ABC}$ recoupe $\Gamma$ en $E$, et la bissectrice de l'angle $\widehat{BCA}$ recoupe $\Gamma$ en $F$.

Montrer que les droites $(AD)$ et $(EF)$ sont perpendiculaires.

![Le triangle ABC, son cercle circonscrit Γ, les trois bissectrices prolongées jusqu'aux points D, E, F du cercle, et la droite (EF)](10276-figure-1.svg)

## Hints

1. Les trois bissectrices se coupent en un point $I$, le centre du cercle inscrit. Placez-le.
2. Montrez que le triangle $EAI$ est isocèle en $E$. Pour cela, exprimez les angles $\widehat{EAI}$ et $\widehat{EIA}$ à l'aide des angles du triangle $ABC$.
3. Faites de même pour $F$. Que représente la droite $(EF)$ pour le segment $[AI]$ ?

## Solution

*Rappels.*

- *Angle inscrit.* Deux angles inscrits dans un cercle qui interceptent la même corde, avec leurs sommets du même côté de cette corde, sont égaux.
- *Angle extérieur.* Dans un triangle, un angle extérieur est égal à la somme des deux angles intérieurs qui ne lui sont pas adjacents.
- *Médiatrice.* Un point est à égale distance de $X$ et de $Y$ si et seulement s'il est sur la médiatrice de $[XY]$, qui est perpendiculaire à $(XY)$.

On note $\alpha$, $\beta$, $\gamma$ les angles du triangle $ABC$ en $A$, $B$, $C$, et $I$ le point de concours des trois bissectrices. Le point $I$ est à l'intérieur du triangle, entre $A$ et $D$, entre $B$ et $E$ et entre $C$ et $F$.

La bissectrice issue de $B$ traverse le triangle et ressort par le côté $[AC]$, donc $E$ est sur l'arc $AC$ qui ne contient pas $B$. De même, $D$ est sur l'arc $BC$ qui ne contient pas $A$, et $F$ sur l'arc $AB$ qui ne contient pas $C$. En faisant le tour du cercle, on rencontre donc dans l'ordre $A$, $E$, $C$, $D$, $B$, $F$.

**Étape 1 : $EA = EI$.** Calculons les deux angles à la base du triangle $EAI$.

- Vu de $A$, la demi-droite $[AC)$ est entre $[AE)$ et $[AD)$, d'après l'ordre des points sur le cercle. Donc $\widehat{EAI} = \widehat{EAC} + \widehat{CAD}$. D'une part $\widehat{CAD} = \frac{\alpha}{2}$, car $(AD)$ est la bissectrice. D'autre part, les angles inscrits $\widehat{EAC}$ et $\widehat{EBC}$ interceptent la corde $[EC]$, et $A$ et $B$ sont du même côté de cette corde, donc $\widehat{EAC} = \widehat{EBC} = \frac{\beta}{2}$. Finalement
$$\widehat{EAI} = \frac{\alpha}{2} + \frac{\beta}{2}.$$
- Comme $I$ est entre $B$ et $E$, l'angle $\widehat{EIA}$ est un angle extérieur du triangle $ABI$. Il est égal à la somme des deux autres angles de ce triangle :
$$\widehat{EIA} = \widehat{IAB} + \widehat{IBA} = \frac{\alpha}{2} + \frac{\beta}{2}.$$

Le triangle $EAI$ a deux angles égaux, il est isocèle en $E$ : $EA = EI$.

**Étape 2 : $FA = FI$.** C'est le même calcul, en échangeant les rôles de $B$ et de $C$ : on trouve $\widehat{FAI} = \widehat{FIA} = \frac{\alpha}{2} + \frac{\gamma}{2}$, donc $FA = FI$.

![Les égalités EA = EI et FA = FI, et la droite (EF), médiatrice de [AI]](10276-figure-2.svg)

**Étape 3 : conclusion.** Les points $E$ et $F$ sont tous les deux à égale distance de $A$ et de $I$. Ils sont donc tous les deux sur la médiatrice du segment $[AI]$. Comme $E \neq F$ (ils sont sur deux arcs différents), la droite $(EF)$ est cette médiatrice. Elle est perpendiculaire à $(AI)$, qui est la droite $(AD)$.

Les droites $(AD)$ et $(EF)$ sont perpendiculaires.

*Remarques.*

- Le résultat de l'étape 1 est souvent appelé **théorème du pôle Sud** : le point où la bissectrice issue de $B$ recoupe le cercle circonscrit est à égale distance de $A$, de $C$ et du centre $I$ du cercle inscrit. C'est un outil qui revient très souvent.
- En appliquant le résultat aux trois bissectrices, on voit que $(AD) \perp (EF)$, $(BE) \perp (FD)$ et $(CF) \perp (DE)$ : les droites $(AD)$, $(BE)$, $(CF)$ sont les trois hauteurs du triangle $DEF$. Autrement dit, le centre du cercle inscrit de $ABC$ est l'orthocentre de $DEF$.
