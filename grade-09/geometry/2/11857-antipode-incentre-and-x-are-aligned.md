---
id: "11857"
title: "Le point diamétralement opposé, le centre du cercle inscrit et X"
grade: 9
theme: geometry
difficulty: 2
duration_min: 20
tags: [cercle-inscrit, cercle-circonscrit, angle-droit, diametre, alignement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 5 (pot-pourri)"
  reference: "2024-03_sujet-envoi-5-2023-2024.pdf, Exercices Juniors, exercice 1 (repris tel quel en exercice 10 des Seniors) ; corrigé 2024-04_Corrige-envoi-5-2023-2024.pdf. L'hypothèse AB ≠ AC a été ajoutée : sans elle, les deux cercles sont tangents en A et le point X n'existe pas."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/03/sujet-envoi-5-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-03_sujet-envoi-5-2023-2024.pdf"
---

## Statement

Soit $ABC$ un triangle avec $AB \neq AC$, et $\Omega$ son cercle circonscrit. On note $A'$ le point diamétralement opposé à $A$ sur le cercle $\Omega$.

Soit $I$ le centre du cercle inscrit dans le triangle $ABC$, et soient $E$ et $F$ les points où le cercle inscrit touche les côtés $[AC]$ et $[AB]$.

Le cercle circonscrit au triangle $AEF$ recoupe le cercle $\Omega$ en un point $X$. Montrer que les points $A'$, $I$ et $X$ sont alignés.

## Hints

1. Que valent les angles $\widehat{AEI}$ et $\widehat{AFI}$ ?
2. En déduire un diamètre du cercle circonscrit au triangle $AEF$.
3. Que vaut l'angle $\widehat{AXI}$ ? Et l'angle $\widehat{AXA'}$ ?

## Solution

**Rappels.**

- Une tangente à un cercle est perpendiculaire au rayon qui aboutit au point de contact.
- Si $[MN]$ est un diamètre d'un cercle et $P$ un autre point de ce cercle, alors l'angle $\widehat{MPN}$ est droit. Réciproquement, si $\widehat{MPN}$ est droit, le point $P$ est sur le cercle de diamètre $[MN]$.

**Étape 1 : le cercle passant par $A$, $E$ et $F$ a pour diamètre $[AI]$.**
Le côté $[AC]$ est tangent au cercle inscrit en $E$, donc $(IE)$ est perpendiculaire à $(AC)$ : l'angle $\widehat{AEI}$ est droit. Pour la même raison, l'angle $\widehat{AFI}$ est droit. Par la réciproque du deuxième rappel, $E$ et $F$ sont sur le cercle de diamètre $[AI]$. Ce cercle passe par $A$, $E$ et $F$, c'est donc le cercle circonscrit au triangle $AEF$.

**Étape 2 : l'angle $\widehat{AXI}$ est droit.**
Le point $X$ est sur le cercle de diamètre $[AI]$, et il est différent de $A$. Il est aussi différent de $I$, car $I$ est à l'intérieur du triangle, donc strictement à l'intérieur de $\Omega$, alors que $X$ est sur $\Omega$. Par le deuxième rappel, l'angle $\widehat{AXI}$ est droit : la droite $(XI)$ est perpendiculaire à $(XA)$.

**Étape 3 : l'angle $\widehat{AXA'}$ est droit.**
Le segment $[AA']$ est un diamètre de $\Omega$, et $X$ est un point de $\Omega$ différent de $A$. Si $X = A'$, les trois points $A'$, $I$, $X$ sont évidemment alignés. Sinon, par le deuxième rappel, l'angle $\widehat{AXA'}$ est droit : la droite $(XA')$ est perpendiculaire à $(XA)$.

**Conclusion.**
Les droites $(XI)$ et $(XA')$ passent toutes les deux par $X$ et sont toutes les deux perpendiculaires à $(XA)$. Par un point, il ne passe qu'une seule perpendiculaire à une droite donnée, donc ces deux droites sont la même droite. **Les points $A'$, $I$ et $X$ sont alignés.**

**Pourquoi l'hypothèse $AB \neq AC$.** Si $AB = AC$, le centre de $\Omega$ et le point $I$ sont tous deux sur la bissectrice issue de $A$, qui est alors un axe de symétrie de la figure. Les deux cercles ont leur centre sur cet axe et passent par $A$ : ils sont tangents en $A$ et n'ont pas de second point commun. Le point $X$ n'existe donc pas.

## Going further

Le même argument montre plus généralement ceci : si deux cercles passent par $A$, de diamètres $[AM]$ et $[AN]$, alors leur second point d'intersection $X$ est sur la droite $(MN)$. C'est même le pied de la hauteur issue de $A$ dans le triangle $AMN$. Ici, $X$ est donc le pied de la hauteur issue de $A$ dans le triangle $AIA'$.
