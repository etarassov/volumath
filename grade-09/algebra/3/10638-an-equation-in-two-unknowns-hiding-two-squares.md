---
id: "10638"
title: "Une équation à deux inconnues qui cache deux carrés"
grade: 9
theme: algebra
difficulty: 3
duration_min: 15
tags: [equation, identites-remarquables, somme-de-carres]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 2 (algèbre)"
  reference: "2022-12_Sujet-envoi-2.pdf, Exercices Juniors, exercice 2 ; corrigé 2023-01_corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-12_Sujet-envoi-2.pdf"
---

## Statement

Trouver tous les nombres réels $x$ et $y$ tels que

$$x(x - 2y) + y(2y - 4) + 4 = 0$$

## Hints

1. Développe le membre de gauche.
2. Les termes $x^2 - 2xy$ font penser à l'identité remarquable $(x - y)^2 = x^2 - 2xy + y^2$. Il te manque un $y^2$ : où peux-tu le prendre ?
3. Quand une somme de deux carrés est-elle nulle ?

## Solution

En développant, l'équation devient

$$x^2 - 2xy + 2y^2 - 4y + 4 = 0$$

On coupe $2y^2$ en $y^2 + y^2$, et on regroupe les termes :

$$(x^2 - 2xy + y^2) + (y^2 - 4y + 4) = 0$$

On reconnaît deux identités remarquables :

$$(x - y)^2 + (y - 2)^2 = 0$$

Un carré est toujours positif ou nul. Si l'un des deux carrés était strictement positif, la somme le serait aussi. La somme est donc nulle seulement si les deux carrés sont nuls, c'est-à-dire si $x - y = 0$ et $y - 2 = 0$. Cela donne $y = 2$ puis $x = 2$.

Vérification : pour $x = y = 2$, on trouve $2 \times (2 - 4) + 2 \times (4 - 4) + 4 = -4 + 0 + 4 = 0$.

**Conclusion : il y a une seule solution, $x = 2$ et $y = 2$.**
