---
id: "7850"
title: "Deux critères qui vont toujours ensemble"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [divisibilite, combinaison-lineaire, equivalence]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, quatrième période, groupe A « arithmétique », dimanche 23 après-midi (Eva Philippe), exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Soient $x$ et $y$ deux entiers.

Montrer que $11$ divise $4x + 9y$ **si et seulement si** $11$ divise $7x + 2y$.

## Hints

1. Une équivalence se démontre souvent en une seule fois si l'on trouve une relation qui lie
   les deux quantités.
2. Additionne les deux expressions : $(4x + 9y) + (7x + 2y)$. Que remarques-tu ?
3. Rappelle-toi que si $d$ divise deux nombres, il divise leur somme et leur différence.

## Solution

**L'observation clé.**

Additionnons les deux expressions :
$$(4x + 9y) + (7x + 2y) = 11x + 11y = 11\,(x + y).$$

Leur somme est donc **toujours** un multiple de $11$, quels que soient les entiers $x$ et $y$.
Autrement dit,
$$4x + 9y = 11(x+y) - (7x + 2y). \qquad (\star)$$

**Sens direct.**

Supposons que $11$ divise $7x + 2y$. Comme $11$ divise aussi $11(x+y)$, il divise la différence
des deux, qui vaut $4x + 9y$ d'après $(\star)$.

**Sens réciproque.**

Supposons que $11$ divise $4x + 9y$. En réécrivant $(\star)$ :
$$7x + 2y = 11(x+y) - (4x + 9y).$$
Le nombre $11$ divise les deux termes du membre de droite, donc il divise $7x + 2y$.

**Conclusion.**

Les deux divisibilités sont équivalentes :
$$11 \mid 4x + 9y \iff 11 \mid 7x + 2y .$$

*Un exemple.* Avec $x = 5$ et $y = 3$ : $4x + 9y = 20 + 27 = 47$, qui n'est pas un multiple de
$11$ ; et $7x + 2y = 35 + 6 = 41$, qui n'en est pas un non plus. Leur somme $47 + 41 = 88 = 8
\times 11$, comme prévu.
