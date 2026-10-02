---
id: "7244"
title: "Une grosse racine carrée qui se simplifie"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [identites-remarquables, racine-carree, pythagore, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2021"
  reference: "Polycopie-mini.pdf, groupe A, « Algèbre : calcul », exercice 3 ; repris en 2024 dans Poly_StCheron_2024.pdf, groupe A, « Calculus » (Clémentine), exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-mini.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois nombres positifs tels que
$$a^2 = b^2 + c^2 .$$

Simplifier l'écriture de
$$A = \sqrt{(a+b+c)(a+b-c)(a-b+c)(b+c-a)} .$$

## Hints

1. Ne développe pas les quatre facteurs d'un coup. Regroupe-les deux par deux, de façon à faire
   apparaître une identité remarquable.
2. Regroupe $(a+b+c)$ avec $(b+c-a)$ : cela ressemble à $(X+Y)(X-Y)$ avec $X = b+c$.
3. Regroupe ensuite $(a+b-c)$ avec $(a-b+c)$ de la même manière, avec $X = a$.
4. Utilise l'hypothèse $a^2 = b^2 + c^2$ pour simplifier chacun des deux résultats.

## Solution

**Premier regroupement.**

$$(a+b+c)(b+c-a) = \big((b+c) + a\big)\big((b+c) - a\big) = (b+c)^2 - a^2 .$$

Développons et utilisons l'hypothèse $a^2 = b^2 + c^2$ :
$$(b+c)^2 - a^2 = b^2 + 2bc + c^2 - a^2 = (b^2 + c^2) + 2bc - a^2 = a^2 + 2bc - a^2 = 2bc .$$

**Second regroupement.**

$$(a+b-c)(a-b+c) = \big(a + (b-c)\big)\big(a - (b-c)\big) = a^2 - (b-c)^2 .$$

De même :
$$a^2 - (b-c)^2 = a^2 - b^2 + 2bc - c^2 = a^2 - (b^2 + c^2) + 2bc = a^2 - a^2 + 2bc = 2bc .$$

**Conclusion.**

Le produit des quatre facteurs vaut donc
$$(a+b+c)(a+b-c)(a-b+c)(b+c-a) = 2bc \times 2bc = (2bc)^2 ,$$
et par conséquent
$$A = \sqrt{(2bc)^2} = |2bc| = 2bc ,$$
la dernière égalité parce que $b$ et $c$ sont positifs.

$$\boxed{A = 2bc} .$$

## Going further

Cet exercice cache la **formule de Héron**, qui donne l'aire $S$ d'un triangle de côtés $a$, $b$,
$c$ et de demi-périmètre $p = \dfrac{a+b+c}{2}$ :
$$S = \sqrt{p(p-a)(p-b)(p-c)} .$$

En multipliant les quatre facteurs par $2$, on obtient exactement
$$4S = \sqrt{(a+b+c)(-a+b+c)(a-b+c)(a+b-c)} = A .$$

L'hypothèse $a^2 = b^2 + c^2$ dit que le triangle est rectangle, d'hypoténuse $a$. Son aire vaut
alors $S = \dfrac{bc}{2}$, et on retrouve bien $A = 4S = 2bc$.
