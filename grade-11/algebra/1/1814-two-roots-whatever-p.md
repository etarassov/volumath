---
id: "1814"
title: "Deux racines, quelle que soit la valeur de p"
grade: 11
theme: algebra
difficulty: 1
duration_min: 10
tags: [second-degre, discriminant, parametre]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Quadratic Equations IV"
  reference: "Handout-1631-1520.pdf, nouveaux problèmes, exercice 1"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1631-1520.pdf"
---

## Statement

Soit $p$ un nombre réel. Démontrer que l'équation

$$x^2 + px - 1 = 0$$

admet toujours deux solutions réelles distinctes, quelle que soit la valeur de $p$.

## Hints

1. Identifie les coefficients $a$, $b$ et $c$ de l'équation. Attention au signe de $c$.
2. Calcule le discriminant $\Delta = b^2 - 4ac$.
3. Quel est le signe d'un carré ? Et donc celui de $\Delta$ ?

## Solution

L'équation $x^2 + px - 1 = 0$ est du second degré, avec

$$a = 1, \qquad b = p, \qquad c = -1.$$

Son discriminant vaut

$$\Delta = b^2 - 4ac = p^2 - 4 \times 1 \times (-1) = p^2 + 4.$$

Or $p^2 \ge 0$ pour tout réel $p$, donc

$$\Delta = p^2 + 4 \ge 4 > 0.$$

Le discriminant est strictement positif quelle que soit la valeur de $p$. L'équation admet donc **toujours deux solutions réelles distinctes**, à savoir

$$x_1 = \frac{-p - \sqrt{p^2+4}}{2} \qquad \text{et} \qquad x_2 = \frac{-p + \sqrt{p^2+4}}{2}.$$

**Remarque.** Le produit des racines vaut $\dfrac{c}{a} = -1$. Les deux solutions sont donc de signes contraires, et l'une est l'opposé de l'inverse de l'autre : $x_1 x_2 = -1$.

## Going further

1. Pour quelles valeurs de $p$ l'équation $x^2 + px + 1 = 0$ a-t-elle deux solutions réelles distinctes ?
2. Existe-t-il une valeur de $p$ pour laquelle les deux solutions de $x^2+px-1=0$ sont entières ?
