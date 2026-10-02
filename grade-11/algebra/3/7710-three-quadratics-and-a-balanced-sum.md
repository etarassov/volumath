---
id: "7710"
title: "Trois équations du second degré et une somme équilibrée"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [second-degre, discriminant, racines, somme]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, test de mi-parcours du vendredi 22 août"
  reference: "stage_ete_2014.pdf, « Test de mi parcours », Groupe B, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

On considère trois équations du second degré :

$$x^2 + b_1 x + c_1 = 0, \qquad x^2 + b_2 x + c_2 = 0, \qquad x^2 + b_3 x + c_3 = 0 ,$$

où $b_1, b_2, b_3, c_1, c_2, c_3$ sont des réels. On suppose que leurs discriminants valent respectivement

$$\Delta_1 = 1, \qquad \Delta_2 = 4, \qquad \Delta_3 = 9 .$$

Chaque équation a donc deux racines réelles distinctes, ce qui fait six racines en tout.

Montrer qu'on peut choisir une racine dans chaque équation de sorte que la somme des trois racines choisies soit égale à la somme des trois racines laissées de côté.

## Hints

1. Écris les deux racines de la $i$-ième équation avec la formule habituelle. Qu'est-ce qui les distingue ?
2. Calcule la différence entre la grande racine et la petite racine de chaque équation. Que trouves-tu, en fonction du discriminant ?
3. Tu obtiens trois différences : $1$, $2$ et $3$. Vois-tu une relation entre ces trois nombres ?
4. Écris cette relation sous la forme « une somme de racines égale une autre somme de racines », en faisant passer les termes du bon côté.

## Solution

**L'idée tient dans une égalité entre trois nombres : $1 + 2 = 3$.**

**Étape 1 : les six racines.** Pour $i = 1, 2, 3$, l'équation $x^2 + b_i x + c_i = 0$ a pour discriminant $\Delta_i > 0$, et ses deux racines sont

$$u_i = \frac{-b_i + \sqrt{\Delta_i}}{2} \qquad \text{et} \qquad v_i = \frac{-b_i - \sqrt{\Delta_i}}{2} .$$

**Étape 2 : la différence des deux racines.** En soustrayant,

$$u_i - v_i = \frac{-b_i + \sqrt{\Delta_i}}{2} - \frac{-b_i - \sqrt{\Delta_i}}{2} = \frac{2\sqrt{\Delta_i}}{2} = \sqrt{\Delta_i} .$$

C'est le point clé : la différence des deux racines ne dépend que du discriminant. Ici

$$u_1 - v_1 = \sqrt{1} = 1, \qquad u_2 - v_2 = \sqrt{4} = 2, \qquad u_3 - v_3 = \sqrt{9} = 3 .$$

**Étape 3 : on exploite $1 + 2 = 3$.** On a donc

$$(u_1 - v_1) + (u_2 - v_2) = 1 + 2 = 3 = u_3 - v_3 ,$$

c'est-à-dire

$$u_1 - v_1 + u_2 - v_2 = u_3 - v_3 .$$

Faisons passer du bon côté tous les termes précédés d'un signe moins :

$$u_1 + u_2 + v_3 = v_1 + v_2 + u_3 .$$

**Conclusion.** Il suffit de choisir :

- la **grande** racine $u_1$ de la première équation,
- la **grande** racine $u_2$ de la deuxième,
- la **petite** racine $v_3$ de la troisième.

Les trois racines laissées de côté sont alors $v_1$, $v_2$ et $u_3$, et l'égalité ci-dessus dit exactement que les deux sommes sont égales. C'est ce qu'il fallait démontrer.

## Going further

Les coefficients $b_i$ et $c_i$ n'interviennent jamais : seuls comptent les discriminants. Le même argument marche dès que les trois discriminants $\Delta_1$, $\Delta_2$, $\Delta_3$ vérifient

$$\sqrt{\Delta_1} + \sqrt{\Delta_2} = \sqrt{\Delta_3} ,$$

par exemple $\Delta_1 = \Delta_2 = 1$ et $\Delta_3 = 4$.
