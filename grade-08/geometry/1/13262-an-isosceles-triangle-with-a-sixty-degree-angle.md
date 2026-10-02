---
id: "13262"
title: "Un triangle isocèle avec un angle de 60°"
grade: 8
theme: geometry
difficulty: 1
duration_min: 10
tags: [angles, triangle-isocele, triangle-equilateral, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2019"
  reference: "2019-10_coupe_animath_automne_2019_sujet.pdf, exercices collégiens, exercice 3 ; corrigé 2019-10_Corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/10/coupe_animath_automne_2019_sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-10_coupe_animath_automne_2019_sujet.pdf"
---

## Statement

Soit $ABC$ un triangle isocèle tel que $\widehat{ABC} = 60^\circ$. On ne sait pas en quel sommet il est isocèle.

Trouver toutes les valeurs possibles de l'angle $\widehat{ACB}$.

## Hints

1. Il y a trois sommets possibles pour le sommet principal du triangle isocèle. Traite chaque cas.
2. Dans chaque cas, deux angles sont égaux. Que vaut la somme des trois angles ?

## Solution

Dans un triangle isocèle, les deux angles à la base sont égaux. Notons $\widehat{A}$, $\widehat{B}$, $\widehat{C}$ les angles du triangle, avec $\widehat{B} = 60^\circ$ et $\widehat{A} + \widehat{B} + \widehat{C} = 180^\circ$, donc $\widehat{A} + \widehat{C} = 120^\circ$.

- **Isocèle en $A$** : les angles à la base sont $\widehat{B}$ et $\widehat{C}$, donc $\widehat{C} = \widehat{B} = 60^\circ$.
- **Isocèle en $C$** : $\widehat{A} = \widehat{B} = 60^\circ$, donc $\widehat{C} = 120^\circ - 60^\circ = 60^\circ$.
- **Isocèle en $B$** : $\widehat{A} = \widehat{C}$, et comme $\widehat{A} + \widehat{C} = 120^\circ$, on obtient $\widehat{C} = 60^\circ$.

Dans tous les cas, le triangle a ses trois angles égaux à $60^\circ$ : il est équilatéral. Réciproquement, un triangle équilatéral est bien isocèle et a un angle de $60^\circ$ en $B$.

**Conclusion.** La seule valeur possible est $\widehat{ACB} = 60^\circ$.
