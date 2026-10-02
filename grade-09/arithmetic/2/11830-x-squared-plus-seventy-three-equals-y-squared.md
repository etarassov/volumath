---
id: "11830"
title: "x² + 73 = y²"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [equation diophantienne, identites remarquables, diviseurs, nombres premiers, entiers relatifs]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 5 (pot-pourri)"
  reference: "2022-03_sujet-envoi-5.pdf, Exercices Juniors, exercice 1 ; corrigé 2022-05_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/03/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-03_sujet-envoi-5.pdf"
---

## Statement

Déterminer tous les couples d'entiers relatifs $(x, y)$ tels que

$$x^2 + 73 = y^2.$$

## Hints

1. Mettre les carrés du même côté et factoriser avec une identité remarquable.
2. Le nombre $73$ est premier. Quels sont ses diviseurs, positifs **et** négatifs ?
3. Pour chaque façon d'écrire $73$ comme produit de deux entiers, résoudre le petit système obtenu.

## Solution

**Factoriser.** L'équation s'écrit $y^2 - x^2 = 73$, c'est-à-dire

$$(y - x)(y + x) = 73.$$

Les nombres $y - x$ et $y + x$ sont des entiers dont le produit vaut $73$. Or $73$ est premier : ses seuls diviseurs sont $1$, $73$, $-1$ et $-73$. Il y a donc quatre cas.

**Les quatre cas.** Dans chaque cas, on additionne et on soustrait les deux égalités pour trouver $y$ et $x$.

| $y - x$ | $y + x$ | $2y$ | $2x$ | $(x, y)$ |
|---|---|---|---|---|
| $1$ | $73$ | $74$ | $72$ | $(36, 37)$ |
| $73$ | $1$ | $74$ | $-72$ | $(-36, 37)$ |
| $-1$ | $-73$ | $-74$ | $-72$ | $(-36, -37)$ |
| $-73$ | $-1$ | $-74$ | $72$ | $(36, -37)$ |

**Vérification.** On a $36^2 + 73 = 1296 + 73 = 1369 = 37^2$, et changer le signe de $x$ ou de $y$ ne change pas les carrés. Les quatre couples conviennent.

**Conclusion.** Les solutions sont les quatre couples $(36, 37)$, $(-36, 37)$, $(-36, -37)$ et $(36, -37)$.

## Going further

- Montrer que l'équation $x^2 + 30 = y^2$ n'a aucune solution entière. (On pourra regarder la parité de $y - x$ et de $y + x$.)
- Combien de couples d'entiers relatifs vérifient $x^2 + 45 = y^2$ ?
