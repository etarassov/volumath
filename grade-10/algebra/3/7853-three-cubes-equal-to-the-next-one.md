---
id: "7853"
title: "Trois cubes consécutifs qui font le cube suivant"
grade: 10
theme: algebra
difficulty: 3
duration_min: 30
tags: [cubes, developpement, diviseurs, equation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, quatrième période, groupe A « arithmétique », lundi 24 matin (Julien Portier), exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Trouver tous les entiers relatifs $x$ tels que
$$x^3 + (x+1)^3 + (x+2)^3 = (x+3)^3 .$$

## Hints

1. Développe les quatre cubes avec l'identité $(a+b)^3 = a^3 + 3a^2b + 3ab^2 + b^3$, puis
   simplifie. Tu devrais tomber sur une équation de degré $3$ assez courte.
2. L'équation obtenue s'écrit $x^3 = 6x + 9$. Si $x$ est un entier, que divise $x$ dans cette
   égalité ?
3. Il ne reste alors qu'une poignée de valeurs à tester.

## Solution

**Étape 1 : on développe.**

$$(x+1)^3 = x^3 + 3x^2 + 3x + 1 ,$$
$$(x+2)^3 = x^3 + 6x^2 + 12x + 8 ,$$
$$(x+3)^3 = x^3 + 9x^2 + 27x + 27 .$$

Le membre de gauche vaut donc
$$x^3 + \left(x^3 + 3x^2 + 3x + 1\right) + \left(x^3 + 6x^2 + 12x + 8\right)
 = 3x^3 + 9x^2 + 15x + 9 .$$

L'équation devient
$$3x^3 + 9x^2 + 15x + 9 = x^3 + 9x^2 + 27x + 27 .$$

Les termes en $x^2$ se simplifient, et il reste
$$2x^3 - 12x - 18 = 0, \qquad \text{c'est-à-dire} \qquad x^3 - 6x - 9 = 0 .$$

**Étape 2 : on utilise que $x$ est entier.**

L'équation se réécrit
$$x^3 - 6x = 9, \qquad \text{c'est-à-dire} \qquad x\left(x^2 - 6\right) = 9 .$$

Comme $x$ et $x^2 - 6$ sont des entiers, $x$ est un **diviseur de $9$**. Les diviseurs entiers de
$9$ sont
$$-9, \quad -3, \quad -1, \quad 1, \quad 3, \quad 9 .$$

**Étape 3 : on teste.**

| $x$ | $x^3 - 6x - 9$ |
|---|---|
| $-9$ | $-729 + 54 - 9 = -684$ |
| $-3$ | $-27 + 18 - 9 = -18$ |
| $-1$ | $-1 + 6 - 9 = -4$ |
| $1$ | $1 - 6 - 9 = -14$ |
| $3$ | $27 - 18 - 9 = 0$ |
| $9$ | $729 - 54 - 9 = 666$ |

Seul $x = 3$ annule l'expression.

**Conclusion.**

Le seul entier relatif solution est $\boxed{x = 3}$, et l'égalité s'écrit alors
$$3^3 + 4^3 + 5^3 = 6^3 ,$$
c'est-à-dire
$$27 + 64 + 125 = 216 .$$

*Une jolie identité.* On l'écrit parfois « $3, 4, 5$ pour les cubes » par analogie avec le
triangle rectangle $3$–$4$–$5$. C'est une coïncidence numérique, mais elle est célèbre.
