---
id: "8558"
title: "Sept amis et cent champignons"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [principe-de-lextremum, entiers-distincts, somme, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Principe des tiroirs et de l'extremum » (Angela) du Groupe B, exercice 17"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Sept amis sont allés aux champignons. Ils en ont ramassé cent en tout, et deux d'entre eux
n'en ont jamais ramassé le même nombre.

Démontrer qu'il y en a trois qui, à eux trois, en ont ramassé au moins cinquante.

## Hints

1. Range les sept nombres dans l'ordre décroissant : $a_1 > a_2 > \cdots > a_7$. Les trois plus gros sont $a_1$, $a_2$ et $a_3$.
2. Sépare deux cas selon la valeur de $a_4$, le quatrième plus grand.
3. Si $a_4$ est grand, alors $a_1$, $a_2$, $a_3$ le sont encore plus, et leur somme est grande. Quelle valeur seuil choisir pour $a_4$ ?
4. Si $a_4$ est petit, alors $a_4, a_5, a_6, a_7$ sont tous petits : majore leur somme, et déduis-en une minoration de $a_1 + a_2 + a_3$.

## Solution

Notons $a_1 > a_2 > a_3 > a_4 > a_5 > a_6 > a_7$ les sept nombres de champignons, rangés dans
l'ordre décroissant. Ce sont des entiers positifs ou nuls, deux à deux distincts, de somme
$100$.

Montrons que $a_1 + a_2 + a_3 \geqslant 50$. Séparons deux cas selon la valeur de $a_4$.

**Cas 1 : $a_4 \geqslant 15$.**

Comme les nombres sont des entiers strictement décroissants,

$$a_3 \geqslant a_4 + 1 \geqslant 16, \qquad a_2 \geqslant 17, \qquad a_1 \geqslant 18 .$$

Donc

$$a_1 + a_2 + a_3 \geqslant 18 + 17 + 16 = 51 \geqslant 50 .$$

**Cas 2 : $a_4 \leqslant 14$.**

Cette fois, ce sont les quatre plus petits qu'on majore :

$$a_4 \leqslant 14, \qquad a_5 \leqslant 13, \qquad a_6 \leqslant 12, \qquad
a_7 \leqslant 11 ,$$

toujours parce que les entiers sont strictement décroissants. Donc

$$a_4 + a_5 + a_6 + a_7 \leqslant 14 + 13 + 12 + 11 = 50 .$$

Comme la somme totale vaut $100$,

$$a_1 + a_2 + a_3 = 100 - (a_4 + a_5 + a_6 + a_7) \geqslant 100 - 50 = 50 .$$

**Conclusion.** Dans les deux cas, les trois amis les plus chanceux ont ramassé au moins $50$
champignons à eux trois.
