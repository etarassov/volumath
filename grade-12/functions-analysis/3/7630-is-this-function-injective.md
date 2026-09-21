---
id: "7630"
title: "Cette fonction est-elle injective ?"
grade: 12
theme: functions-analysis
difficulty: 3
duration_min: 25
tags: [injectivite, exponentielles, factorisation, fonction]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 46 (solution chapitre XI, résolue par Pierre Bras)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

La fonction $f$ définie sur $\mathbb{R}$ par

$$f(x) = 6^x - 2 \cdot 3^x - 9 \cdot 2^x + 19$$

est-elle injective ?

*Rappel : $f$ est injective lorsque deux nombres différents ont toujours des images différentes. Pour montrer qu'une fonction ne l'est pas, il suffit d'exhiber $u \neq v$ tels que $f(u) = f(v)$.*

## Hints

1. Avant toute théorie, essayez quelques valeurs simples : $f(0)$, $f(1)$, $f(2)$.
2. Pour comprendre ce qui se passe, remarquez que $6^x = 2^x \times 3^x$.
3. Regroupez les termes de $f(x) - 1$ deux par deux et cherchez un facteur commun.
4. Une fois la factorisation trouvée, cherchez les valeurs de $x$ qui annulent chacun des deux facteurs.

## Solution

**Réponse : non, $f$ n'est pas injective.**

**La réponse courte.**

$$f(1) = 6 - 2 \times 3 - 9 \times 2 + 19 = 6 - 6 - 18 + 19 = 1 ,$$
$$f(2) = 36 - 2 \times 9 - 9 \times 4 + 19 = 36 - 18 - 36 + 19 = 1 .$$

On a donc $f(1) = f(2) = 1$ avec $1 \neq 2$ : la fonction $f$ n'est pas injective.

**D'où cela vient-il ?**

Ce n'est pas un hasard, et une factorisation l'explique. Comme $6^x = (2 \times 3)^x = 2^x \times 3^x$ :

$$f(x) - 1 = 2^x \cdot 3^x - 2 \cdot 3^x - 9 \cdot 2^x + 18 .$$

Regroupons les deux premiers termes, puis les deux derniers :

$$2^x \cdot 3^x - 2 \cdot 3^x = 3^x\left(2^x - 2\right) , \qquad -9 \cdot 2^x + 18 = -9\left(2^x - 2\right) .$$

Le facteur $2^x - 2$ est commun :

$$f(x) - 1 = \left(3^x - 9\right)\left(2^x - 2\right) , \qquad \text{c'est-à-dire} \qquad f(x) = \left(3^x - 9\right)\left(2^x - 2\right) + 1 .$$

Sous cette forme, tout se lit :

- $3^x - 9 = 0$ pour $x = 2$ ;
- $2^x - 2 = 0$ pour $x = 1$.

Dans les deux cas le produit s'annule, donc $f(x) = 1$.

**Conclusion.** $f(1) = f(2) = 1$, donc $f$ n'est pas injective. Ce sont d'ailleurs les deux seules valeurs de $x$ pour lesquelles $f(x) = 1$, puisqu'un produit est nul seulement si l'un de ses facteurs l'est.

## Going further

La forme factorisée donne bien plus que la réponse. Comme $x \mapsto 3^x - 9$ et $x \mapsto 2^x - 2$ sont toutes deux croissantes et changent de signe en $2$ et en $1$ respectivement, on peut lire le signe de $f(x) - 1$ :

| | $x < 1$ | $1 < x < 2$ | $x > 2$ |
|---|---|---|---|
| $3^x - 9$ | $-$ | $-$ | $+$ |
| $2^x - 2$ | $-$ | $+$ | $+$ |
| $f(x) - 1$ | $+$ | $-$ | $+$ |

La courbe de $f$ passe donc sous la droite d'équation $y = 1$ entre $x = 1$ et $x = 2$, et repasse au-dessus ailleurs. Une fonction qui redescend puis remonte ne peut pas être injective : l'exercice était donc « joué » dès que l'on avait vu la factorisation.

Une question pour continuer : quelles sont les valeurs $c$ telles que l'équation $f(x) = c$ ait exactement **trois** solutions ?
