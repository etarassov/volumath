---
id: "11053"
title: "a⁴ − b² est un multiple de 3"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 10
tags: [restes, carres, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 3 (arithmétique)"
  reference: "2024-01_Sujet-envoi-3-2023-2024.pdf, Exercices Juniors, exercice 1, repris tel quel en Exercices Seniors, exercice 10 ; corrigé 2024-02_Corrige-envoi-arithmetique-2023-2024.pdf. Coquille du corrigé : « tout carré d'un nombre non divisible par 4 » au lieu de « non divisible par 3 »."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/01/Sujet-envoi-3-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-01_Sujet-envoi-3-2023-2024.pdf"
---

## Statement

Soient $a$ et $b$ deux entiers, positifs ou négatifs.

Montrer que si ni $a$ ni $b$ n'est un multiple de $3$, alors $a^4 - b^2$ est un multiple de $3$.

## Hints

1. Essaie avec $a = 2$ et $b = 5$, puis avec $a = 4$ et $b = 7$.
2. Un entier qui n'est pas un multiple de $3$ s'écrit $3k + 1$ ou $3k + 2$, avec $k$ entier. Calcule son carré dans les deux cas.
3. Quel est le reste de $b^2$ dans la division par $3$ ? Et celui de $a^4 = (a^2)^2$ ?

## Solution

**Étape 1 : le carré d'un entier qui n'est pas un multiple de 3.**

Soit $n$ un entier qui n'est pas un multiple de $3$. Son reste dans la division par $3$ vaut $1$ ou $2$, donc $n$ s'écrit $n = 3k + 1$ ou $n = 3k + 2$ avec $k$ entier. Pour un entier négatif, c'est pareil, avec $k$ négatif : par exemple $-5 = 3 \times (-2) + 1$.

- Si $n = 3k + 1$, alors $n^2 = 9k^2 + 6k + 1 = 3(3k^2 + 2k) + 1$.
- Si $n = 3k + 2$, alors $n^2 = 9k^2 + 12k + 4 = 3(3k^2 + 4k + 1) + 1$.

Dans les deux cas, $n^2$ s'écrit $3m + 1$ avec $m$ entier : **le carré d'un entier qui n'est pas un multiple de $3$ a pour reste $1$ dans la division par $3$.**

**Étape 2 : le reste de $b^2$ et celui de $a^4$.**

Comme $b$ n'est pas un multiple de $3$, l'étape 1 donne $b^2 = 3m + 1$ avec $m$ entier.

De même $a^2 = 3\ell + 1$ avec $\ell$ entier. En particulier $a^2$ n'est pas un multiple de $3$, et on peut appliquer l'étape 1 au nombre $a^2$ : son carré $a^4 = (a^2)^2$ s'écrit $3s + 1$ avec $s$ entier.

On peut aussi le calculer directement : $a^4 = (3\ell + 1)^2 = 9\ell^2 + 6\ell + 1 = 3(3\ell^2 + 2\ell) + 1$.

**Étape 3 : conclusion.**

$$a^4 - b^2 = (3s + 1) - (3m + 1) = 3(s - m) .$$

Comme $s - m$ est un entier, **$a^4 - b^2$ est un multiple de $3$.**

Vérification avec $a = 2$ et $b = 5$ : $2^4 - 5^2 = 16 - 25 = -9 = 3 \times (-3)$.

## Going further

On suppose maintenant que $a$ est un multiple de $3$, mais pas $b$. Quel est le reste de $a^4 - b^2$ dans la division par $3$ ?

*Réponse :* $a^4 = 3t$ avec $t$ entier et $b^2 = 3m + 1$, donc $a^4 - b^2 = 3t - 3m - 1 = 3(t - m - 1) + 2$. Le reste vaut $2$, donc $a^4 - b^2$ n'est jamais un multiple de $3$ dans ce cas.
