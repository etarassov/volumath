---
id: "7029"
title: "Somme de valeur absolue 3, produit −10"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [valeur absolue, somme et produit, identite remarquable]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Saint Pierre lès Nemours 2009"
  reference: "stage_junior_2009.pdf, test final, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2009.pdf"
---

## Statement

Déterminer tous les couples $(x, y)$ de nombres réels tels que
$$|x + y| = 3 \qquad \text{et} \qquad xy = -10 .$$

## Hints

1. La valeur absolue cache deux cas. Mais quelle quantité connais-tu de façon certaine, sans
   avoir à les séparer ?
2. On connaît $(x+y)^2$ et $xy$. Développe $(x-y)^2$ et compare.
3. Une fois $x+y$ et $x-y$ connus, comment retrouver $x$ et $y$ ?

## Solution

**Ce que l'on connaît sans ambiguïté.**

L'hypothèse $|x+y| = 3$ signifie que $x+y$ vaut $3$ ou $-3$. Dans les deux cas,
$$(x+y)^2 = 9 .$$

**Calculer $(x-y)^2$.**

Les deux identités remarquables donnent
$$(x+y)^2 = x^2 + 2xy + y^2 \qquad \text{et} \qquad (x-y)^2 = x^2 - 2xy + y^2 .$$
En les soustrayant :
$$(x-y)^2 = (x+y)^2 - 4xy = 9 - 4 \times (-10) = 9 + 40 = 49 .$$

Donc $x - y$ vaut $7$ ou $-7$.

**Recoller les morceaux.**

On dispose de
$$x = \frac{(x+y) + (x-y)}{2} \qquad \text{et} \qquad y = \frac{(x+y) - (x-y)}{2} ,$$
et il y a quatre combinaisons possibles.

| $x+y$ | $x-y$ | $x$ | $y$ |
|---|---|---|---|
| $3$ | $7$ | $5$ | $-2$ |
| $3$ | $-7$ | $-2$ | $5$ |
| $-3$ | $7$ | $2$ | $-5$ |
| $-3$ | $-7$ | $-5$ | $2$ |

**Vérification.** Pour $(5, -2)$ : $|5 + (-2)| = 3$ ✓ et $5 \times (-2) = -10$ ✓. Les trois
autres couples se vérifient de la même façon, par symétrie et par changement de signe.

**Conclusion.** Les quatre couples solutions sont
$$(5\,;-2), \qquad (-2\,;5), \qquad (2\,;-5), \qquad (-5\,;2) .$$

## Going further

Une autre route : si $x + y = s$ et $xy = p$, alors $x$ et $y$ sont les deux racines du
trinôme
$$X^2 - sX + p .$$

Ici, pour $s = 3$ : $X^2 - 3X - 10 = (X-5)(X+2)$, d'où $\{x,y\} = \{5, -2\}$.
Pour $s = -3$ : $X^2 + 3X - 10 = (X+5)(X-2)$, d'où $\{x,y\} = \{-5, 2\}$.

On retrouve bien les mêmes solutions, et ce point de vue explique pourquoi elles vont par
paires : $x$ et $y$ jouent des rôles symétriques.
