---
id: "8625"
title: "Un demi-cercle qui contient trois points sur quatre"
grade: 10
theme: geometry
difficulty: 3
duration_min: 25
tags: [tiroirs, cercle, sphere, diametre]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Principe des tiroirs » (Maena), exercice 9"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

1. Quatre points sont placés sur un cercle. Montrer qu'il existe un demi-cercle, bords compris, qui contient trois de ces points.
2. Cinq points sont placés sur une sphère. Montrer qu'il existe une demi-sphère, bords compris, qui contient quatre de ces points.

## Hints

1. Un diamètre coupe le cercle en deux demi-cercles. Les trois points restants se répartissent entre eux : avec le principe des tiroirs, combien en as-tu dans l'un des deux ?
2. Cela ne donne que deux points. Il te manque une unité : relis l'énoncé, « bords compris ».
3. Le diamètre est à toi : choisis-le de sorte qu'il **passe par l'un des points**. Ce point appartient alors aux deux demi-cercles à la fois.
4. Pour la sphère : un plan passant par le centre la coupe en deux demi-sphères. Combien de points peux-tu faire passer par un tel plan ?

## Solution

### 1. Quatre points sur un cercle

Appelons $A$, $B$, $C$, $D$ les quatre points, et $O$ le centre du cercle.

**Le bon découpage.** Traçons le diamètre qui passe par $A$. Il coupe le cercle en deux demi-cercles, et le point $A$, qui est sur ce diamètre, appartient aux **deux** demi-cercles puisque les bords sont compris.

**Les tiroirs.** Les trois points restants $B$, $C$, $D$ se répartissent entre les deux demi-cercles (un point qui tomberait sur le diamètre peut être attribué à l'un ou à l'autre). Comme $3 > 2$, l'un des deux demi-cercles en contient au moins deux.

**Conclusion.** Ce demi-cercle contient ces deux points, plus le point $A$ qui est sur son bord : il contient donc trois des quatre points.

### 2. Cinq points sur une sphère

Appelons $A$, $B$, $C$, $D$, $E$ les cinq points et $O$ le centre de la sphère.

**Le bon découpage.** Sur une sphère, ce sont les plans passant par le centre qui découpent deux demi-sphères. Un plan est déterminé par trois points : choisissons celui qui passe par $O$, $A$ et $B$. (Si $O$, $A$, $B$ sont alignés, n'importe quel plan contenant cette droite convient.)

Ce plan contient $A$ et $B$, donc ces deux points appartiennent aux **deux** demi-sphères.

**Les tiroirs.** Les trois points restants $C$, $D$, $E$ se répartissent entre les deux demi-sphères. Comme $3 > 2$, l'une d'elles en contient au moins deux.

**Conclusion.** Cette demi-sphère contient ces deux points, plus $A$ et $B$ qui sont sur son bord : elle contient quatre des cinq points.

## Going further

Toute l'astuce tient dans une phrase de l'énoncé, « bords compris », et dans le fait que l'on est libre de choisir le diamètre, ou le plan. Placer la coupe **sur** des points au lieu de la placer entre eux fait gagner une unité dans le cercle, et deux dans la sphère.

Sans cette astuce, le principe des tiroirs brut donnerait seulement « deux points dans un demi-cercle », ce qui est vrai mais beaucoup plus faible.
