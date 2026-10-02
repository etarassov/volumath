---
id: "10640"
title: "x + n/x ≥ n + 1 quand x ≥ n"
grade: 10
theme: algebra
difficulty: 2
duration_min: 15
tags: [inegalite, factorisation, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 2 (algèbre)"
  reference: "2022-12_Sujet-envoi-2.pdf, Exercices Juniors, exercice 4, repris en Exercices Seniors, exercice 11 ; corrigé 2023-01_corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-12_Sujet-envoi-2.pdf"
---

## Statement

Soit $n$ un entier strictement positif et soit $x$ un réel tel que $x \geqslant n$. Montrer que

$$x + \frac{n}{x} \geqslant n + 1$$

et trouver les cas d'égalité.

## Hints

1. Le réel $x$ est strictement positif. Multiplie l'inégalité par $x$ pour faire disparaître la fraction.
2. Factorise $x^2 - (n + 1)x + n$ : quelles sont ses racines évidentes ?
3. Pour l'égalité, n'oublie pas la condition $x \geqslant n$.

## Solution

Comme $x \geqslant n \geqslant 1$, le réel $x$ est strictement positif. On peut donc multiplier l'inégalité par $x$ sans changer son sens : l'inégalité à montrer équivaut à

$$x^2 + n \geqslant (n + 1)x, \qquad \text{c'est-à-dire} \qquad x^2 - (n + 1)x + n \geqslant 0$$

On vérifie en développant que $x^2 - (n + 1)x + n = (x - n)(x - 1)$. Or $x - n \geqslant 0$ par hypothèse, et $x - 1 \geqslant 0$ car $x \geqslant n \geqslant 1$. Le produit de deux nombres positifs ou nuls est positif ou nul, ce qui prouve l'inégalité.

**Cas d'égalité.** Il y a égalité si et seulement si $(x - n)(x - 1) = 0$, c'est-à-dire $x = n$ ou $x = 1$. Mais si $x = 1$, alors $1 \geqslant n \geqslant 1$, donc $n = 1$ et $x = n$. Dans tous les cas, l'égalité signifie $x = n$. Réciproquement, pour $x = n$ on trouve bien $n + 1$.

**Conclusion : l'inégalité est vraie, et c'est une égalité si et seulement si $x = n$.**
