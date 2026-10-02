---
id: "3608"
title: "La plus petite note possible"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 10
tags: [moyenne, optimisation, notes, probleme-concret]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), X26 AMC 8, Number Theory"
  reference: "Handout-5143-5656.pdf, problème 6.3 (AMC 8 2019, problème 7) ; notes converties sur 20"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5143-5656.pdf"
---

## Statement

Chloé passe cinq contrôles, chacun noté sur $20$.

Aux trois premiers, elle obtient $14$, $18$ et $16$.

Elle voudrait que sa moyenne sur les cinq contrôles soit exactement $15$.

Si elle y arrive, quelle est la plus petite note qu'elle puisse avoir obtenue à l'un des deux derniers contrôles ?

## Hints

1. Une moyenne de $15$ sur cinq contrôles, cela correspond à quel total de points ?
2. Combien de points les deux derniers contrôles doivent-ils rapporter à eux deux ?
3. Pour que l'une des deux notes soit la plus petite possible, que doit valoir l'autre ?

## Solution

**Étape 1. Le total à atteindre.**

Une moyenne de $15$ sur cinq contrôles signifie que le total des cinq notes vaut

$$5 \times 15 = 75$$

**Étape 2. Ce que rapportent les trois premiers contrôles.**

$$14 + 18 + 16 = 48$$

**Étape 3. Ce que doivent rapporter les deux derniers.**

$$75 - 48 = 27$$

Les deux dernières notes ont donc pour somme $27$.

**Étape 4. Rendre l'une des deux aussi petite que possible.**

Si l'une des deux notes vaut $n$, l'autre vaut $27 - n$. Pour que $n$ soit le plus petit possible, il faut que $27 - n$ soit le plus grand possible. Or une note ne peut pas dépasser $20$, donc

$$27 - n \leqslant 20 \quad\text{c'est-à-dire}\quad n \geqslant 7$$

La valeur $n = 7$ est bien atteignable : avec $7$ et $20$, la somme fait $27$, et les deux notes sont entre $0$ et $20$.

**Étape 5. Vérifier.**

$$\frac{14 + 18 + 16 + 20 + 7}{5} = \frac{75}{5} = 15$$

**Réponse.** La plus petite note possible est $7$.

## Going further

Si Chloé visait une moyenne de $16$, le total deviendrait $80$, les deux dernières notes devraient totaliser $32$, et la plus petite possible serait $32 - 20 = 12$.

Si elle visait $18$, il lui faudrait $90 - 48 = 42$ points sur deux contrôles notés sur $20$ : c'est impossible, puisque $42 > 40$. Une moyenne visée n'est donc pas toujours atteignable, et la première chose à faire est de comparer le total manquant au maximum réalisable.
