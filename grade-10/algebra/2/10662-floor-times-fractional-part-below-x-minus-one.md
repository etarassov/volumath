---
id: "10662"
title: "⌊x⌋ × {x} < x − 1"
grade: 10
theme: algebra
difficulty: 2
duration_min: 15
tags: [partie-entiere, partie-fractionnaire, inequation, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 2 (algèbre)"
  reference: "2023-12_Sujet-envoi-2-2023-2024.pdf, Exercices Seniors, exercice 11 ; corrigé 2024-01_Corrige-envoi-algebre-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/Sujet-envoi-2-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-12_Sujet-envoi-2-2023-2024.pdf"
---

## Statement

Pour un réel $x$, on note $\lfloor x \rfloor$ le plus grand entier relatif inférieur ou égal à $x$. Par exemple, $\lfloor \text{2,7} \rfloor = 2$, $\lfloor \pi \rfloor = 3$ et $\lfloor -\text{1,5} \rfloor = -2$. On note aussi $\{x\} = x - \lfloor x \rfloor$.

Trouver tous les réels $x$ tels que

$$\lfloor x \rfloor \, \{x\} < x - 1$$

## Hints

1. Pose $n = \lfloor x \rfloor$ et $f = \{x\}$. Dans quel intervalle se trouve $f$ ? Écris $x$ à l'aide de $n$ et $f$.
2. Fais tout passer du même côté et factorise.
3. Quel est le signe de $f - 1$ ?

## Solution

Posons $n = \lfloor x \rfloor$ et $f = \{x\}$. Alors $n$ est un entier, $x = n + f$, et $0 \leqslant f < 1$ : en effet $n \leqslant x < n + 1$, car $n + 1$ est un entier plus grand que $n$, donc strictement plus grand que $x$.

L'inéquation s'écrit

$$nf < n + f - 1 \iff nf - n - f + 1 < 0 \iff (n - 1)(f - 1) < 0$$

Comme $f < 1$, le nombre $f - 1$ est strictement négatif. Le produit est donc strictement négatif si et seulement si $n - 1 > 0$, c'est-à-dire $n \geqslant 2$ puisque $n$ est entier.

Enfin, $\lfloor x \rfloor \geqslant 2$ équivaut à $x \geqslant 2$ : si $x \geqslant 2$, alors $2$ est un entier inférieur ou égal à $x$, donc $\lfloor x \rfloor \geqslant 2$ ; et si $\lfloor x \rfloor \geqslant 2$, alors $x \geqslant \lfloor x \rfloor \geqslant 2$.

**Conclusion : les solutions sont exactement les réels $x \geqslant 2$.**

## Going further

Vérifie le résultat sur deux exemples : $x = \text{1,5}$ (qui ne convient pas) et $x = \text{2,5}$ (qui convient).
