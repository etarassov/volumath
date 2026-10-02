---
id: "8524"
title: "Sept points dans un rectangle 3 sur 4"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [principe-des-tiroirs, distance, decoupage, diagonales]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Principe des tiroirs » (Vincent) du Groupe A, exercice 10"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Félicie place sept points dans un rectangle de dimensions $3 \times 4$.

Démontrer que, parmi ces sept points, il en existe deux dont la distance est au plus
$\sqrt{5}$.

## Hints

1. Sept points, et on veut en trouver deux « proches » : c'est le principe des tiroirs. Il faut donc découper le rectangle en au plus six morceaux.
2. Dans une zone, deux points sont toujours à une distance inférieure ou égale au plus grand écart possible à l'intérieur de cette zone. Pour un rectangle, quel est cet écart maximal ?
3. Cherche un découpage du rectangle $3 \times 4$ en six rectangles dont la diagonale vaut exactement $\sqrt{5}$.

## Solution

**Le découpage.** Coupons le côté de longueur $4$ en deux morceaux de longueur $2$, et le côté
de longueur $3$ en trois morceaux de longueur $1$. Cela découpe le rectangle $3 \times 4$ en

$$2 \times 3 = 6$$

petits rectangles de dimensions $2 \times 1$.

**Le principe des tiroirs.** Chacun des sept points appartient à l'un de ces six petits
rectangles (pour un point situé sur une frontière, on en choisit un une fois pour toutes).
Comme il y a sept points et seulement six rectangles, **deux des points se trouvent dans un
même petit rectangle.**

**La distance dans un rectangle $2 \times 1$.** Dans un rectangle, deux points sont toujours à
une distance inférieure ou égale à la longueur de la diagonale. Ici, d'après le théorème de
Pythagore, la diagonale d'un rectangle $2 \times 1$ mesure

$$\sqrt{2^2 + 1^2} = \sqrt{5} .$$

**Conclusion.** Les deux points trouvés sont donc à une distance au plus $\sqrt{5}$ l'un de
l'autre.
