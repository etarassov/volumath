---
id: "0764"
title: "Le quadrilatère aux diagonales perpendiculaires"
grade: 9
theme: geometry
difficulty: 3
duration_min: 20
tags: [pythagore, quadrilatere, diagonales, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers », niveau collège - débutants, 9 février 2024"
  reference: "CalculLitteral.pdf, exercice 42 (section « Théorème de Pythagore »)"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/CalculLitteral.pdf"
---

## Statement

Les diagonales $[AC]$ et $[BD]$ d'un quadrilatère convexe $ABCD$ sont perpendiculaires (on dit alors que le quadrilatère est **orthodiagonal**).

Démontre que

$$AB^2 + CD^2 = BC^2 + DA^2.$$

## Hints

1. Trace la figure et appelle $P$ le point où les deux diagonales se coupent.
2. Combien de triangles rectangles vois-tu maintenant sur la figure ? Quels sont leurs côtés de l'angle droit ?
3. Écris le théorème de Pythagore dans chacun de ces triangles, puis additionne les égalités deux par deux. Les quatre longueurs $PA$, $PB$, $PC$, $PD$ vont jouer le même rôle des deux côtés.

## Solution

**On nomme le point de croisement.** Le quadrilatère est convexe, donc ses diagonales se coupent en un point $P$ situé à l'intérieur du quadrilatère, et par hypothèse elles se coupent à angle droit.

Les quatre triangles $APB$, $BPC$, $CPD$ et $DPA$ sont donc **rectangles en $P$**.

**Pythagore quatre fois.**

$$AB^2 = PA^2 + PB^2, \qquad CD^2 = PC^2 + PD^2,$$
$$BC^2 = PB^2 + PC^2, \qquad DA^2 = PD^2 + PA^2.$$

**On additionne.** D'un côté :

$$AB^2 + CD^2 = PA^2 + PB^2 + PC^2 + PD^2.$$

De l'autre :

$$BC^2 + DA^2 = PB^2 + PC^2 + PD^2 + PA^2.$$

Les deux résultats sont la même somme, écrite dans un ordre différent. Donc

$$AB^2 + CD^2 = BC^2 + DA^2.$$

C'est bien ce qu'il fallait démontrer.

**Ce qu'il faut retenir.** Les deux paires de côtés opposés se partagent exactement les quatre mêmes morceaux $PA$, $PB$, $PC$, $PD$ : chaque morceau sert une fois à gauche et une fois à droite.

## Going further

1. Vérifie la propriété sur un cas facile : un losange, puis un cerf-volant.
2. La réciproque est-elle vraie ? Autrement dit, si un quadrilatère convexe vérifie $AB^2 + CD^2 = BC^2 + DA^2$, ses diagonales sont-elles forcément perpendiculaires ?
