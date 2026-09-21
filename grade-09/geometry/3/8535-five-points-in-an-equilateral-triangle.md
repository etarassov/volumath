---
id: "8535"
title: "Cinq points dans un triangle équilatéral"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [principe-des-tiroirs, triangle-equilateral, distance, milieux]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Révisions » (Isaline) du Groupe A, exercice 9"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

On place cinq points dans un triangle équilatéral de côté $1$ (les points peuvent être à
l'intérieur ou sur les bords).

Démontrer qu'il existe deux de ces points dont la distance est inférieure ou égale à 0,5.

## Hints

1. Cinq points, et on veut en trouver deux proches : c'est le principe des tiroirs. Il faut découper le triangle en quatre morceaux.
2. Y a-t-il un découpage naturel d'un triangle équilatéral en quatre morceaux identiques ?
3. Relie les milieux des trois côtés.
4. Dans un triangle équilatéral de côté $c$, quelle est la plus grande distance entre deux de ses points ?

## Solution

**Le découpage.** Relions les milieux des trois côtés du triangle. On obtient quatre petits
triangles équilatéraux, tous de côté 0,5 : les trois triangles « des coins » et celui du
milieu, retourné.

**Le principe des tiroirs.** Chacun des cinq points appartient à l'un de ces quatre petits
triangles (si un point est sur une frontière, on choisit une fois pour toutes l'un des
triangles qui le touchent). Comme il y a cinq points et seulement quatre triangles, **deux
des points sont dans le même petit triangle.**

**La distance à l'intérieur d'un petit triangle.** Dans un triangle, la plus grande distance
entre deux points est la longueur du plus grand côté. Ici les petits triangles sont
équilatéraux de côté 0,5, donc deux points d'un même petit triangle sont à une distance
inférieure ou égale à 0,5.

**Conclusion.** Les deux points trouvés sont bien à une distance au plus 0,5 l'un de
l'autre.
