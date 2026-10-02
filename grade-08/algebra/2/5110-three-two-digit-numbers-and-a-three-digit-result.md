---
id: "5110"
title: "Trois nombres à deux chiffres, un résultat à trois"
grade: 8
theme: algebra
difficulty: 2
duration_min: 20
tags: [chiffres, cryptarithme, equation, addition]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Place Value Problems », Harold Reiter"
  reference: "HReiterPlaceValueProblems.pdf, problème 29"
  url: "https://mathcircles.org/activity/place-value-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/HReiterPlaceValueProblems.pdf"
---

## Statement

Dans l'addition ci-dessous, chaque lettre remplace un chiffre. La même lettre remplace toujours le même chiffre, et un nombre ne commence jamais par un zéro.

```
      B A
      A B
  +   A B
  -------
    C A A
```

Autrement dit, on cherche les chiffres $A$, $B$ et $C$ tels que

$$\overline{BA} + \overline{AB} + \overline{AB} = \overline{CAA}$$

Trouver $A$, $B$ et $C$.

## Hints

1. Traduis chaque nombre à l'aide de $A$, $B$ et $C$ : par exemple $\overline{BA}$ vaut $10B + A$.
2. Écris l'égalité complète, puis simplifie-la le plus possible. Tu devrais tomber sur une égalité à trois termes seulement.
3. Combien peut valoir au maximum le membre où figurent $A$ et $B$ ? Qu'est-ce que cela impose à $C$ ?
4. Une fois $C$ connu, regarde la divisibilité par $5$.

## Solution

**Étape 1. Traduire.**

$$\overline{BA} = 10B + A, \qquad \overline{AB} = 10A + B, \qquad \overline{CAA} = 100C + 10A + A = 100C + 11A$$

L'égalité de l'énoncé devient

$$(10B + A) + 2\,(10A + B) = 100C + 11A$$

**Étape 2. Simplifier.**

Le membre de gauche vaut $10B + A + 20A + 2B = 21A + 12B$. Donc

$$21A + 12B = 100C + 11A$$
$$10A + 12B = 100C$$

On divise tout par $2$ :

$$5A + 6B = 50C$$

**Étape 3. Trouver $C$.**

$A$ et $B$ sont des chiffres, donc au plus $9$ :

$$5A + 6B \leqslant 5 \times 9 + 6 \times 9 = 45 + 54 = 99$$

Comme $50C \leqslant 99$, on a $C = 0$ ou $C = 1$.

Si $C = 0$, alors $5A + 6B = 0$, donc $A = B = 0$. Mais alors $\overline{BA}$ ne serait pas un nombre à deux chiffres. Donc

$$C = 1$$

**Étape 4. Trouver $A$ et $B$.**

L'équation devient $5A + 6B = 50$, c'est-à-dire

$$6B = 50 - 5A = 5\,(10 - A)$$

Le membre de droite est un multiple de $5$, donc $6B$ aussi. Comme $6$ et $5$ n'ont aucun facteur commun, $B$ est un multiple de $5$ : $B = 0$ ou $B = 5$.

- Si $B = 0$ : $5A = 50$, donc $A = 10$, ce qui n'est pas un chiffre.
- Si $B = 5$ : $30 = 5(10 - A)$, donc $10 - A = 6$ et $A = 4$.

**Conclusion. $A = 4$, $B = 5$, $C = 1$**, et l'addition s'écrit

$$54 + 45 + 45 = 144$$

## Going further

Remarque que la solution ne fait jamais appel aux retenues : traduire chaque nombre par sa valeur, puis résoudre l'équation, suffit. C'est presque toujours la méthode la plus courte pour ce genre de casse-tête, tant que le nombre de lettres reste petit.

Essaie maintenant la variante $\overline{AB} + \overline{BA} = \overline{CBC}$ avec la même règle, et vois ce que la méthode donne.
