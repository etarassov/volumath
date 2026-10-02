---
id: "10657"
title: "Le plus petit des nombres aᵢ − aᵢaᵢ₊₁"
grade: 9
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, maximum, minimum, carre, extremalite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 2 (algèbre)"
  reference: "2023-12_Sujet-envoi-2-2023-2024.pdf, Exercices Juniors, exercice 5 ; corrigé 2024-01_Corrige-envoi-algebre-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/Sujet-envoi-2-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-12_Sujet-envoi-2-2023-2024.pdf"
---

## Statement

Soit $n \geqslant 2$ un entier et $a_1, a_2, \ldots, a_n$ des réels de l'intervalle $[0, 1]$. On regarde les $n$ nombres

$$a_1 - a_1a_2, \quad a_2 - a_2a_3, \quad \ldots, \quad a_{n-1} - a_{n-1}a_n, \quad a_n - a_na_1$$

Quelle est la plus grande valeur que peut prendre le plus petit de ces nombres ?

## Hints

1. Essaie de prendre tous les $a_i$ égaux à un même nombre $t$. Quelle valeur de $t$ est la meilleure ?
2. Pour montrer qu'on ne peut pas faire mieux, il suffit de trouver **un** des nombres qui est petit. Lequel ? Pense au plus petit des $a_i$.
3. Si $a_i$ est le plus petit des $a_j$, compare $a_i(1 - a_{i+1})$ avec $a_i(1 - a_i)$.

## Solution

Pour simplifier l'écriture, on pose $a_{n+1} = a_1$. Les nombres de l'énoncé sont alors les $a_i - a_ia_{i+1} = a_i(1 - a_{i+1})$ pour $i = 1, \ldots, n$. Notons $m$ le plus petit d'entre eux.

**Étape 1. On peut obtenir $\frac{1}{4}$.**

Si tous les $a_i$ valent $\frac{1}{2}$, chacun des nombres vaut $\frac{1}{2} \times \frac{1}{2} = \frac{1}{4}$, donc $m = \frac{1}{4}$.

**Étape 2. On ne peut pas dépasser $\frac{1}{4}$.**

Choisissons un indice $i$ tel que $a_i$ soit le plus petit des nombres $a_1, \ldots, a_n$. Alors $a_{i+1} \geqslant a_i$, donc $1 - a_{i+1} \leqslant 1 - a_i$. Comme $a_i \geqslant 0$, on peut multiplier par $a_i$ :

$$a_i(1 - a_{i+1}) \leqslant a_i(1 - a_i)$$

Or, pour tout réel $t$,

$$t(1 - t) = t - t^2 = \frac{1}{4} - \left(t - \frac{1}{2}\right)^2 \leqslant \frac{1}{4}$$

Donc le nombre $a_i(1 - a_{i+1})$ est au plus $\frac{1}{4}$. Le plus petit des $n$ nombres est inférieur ou égal à celui-ci, donc $m \leqslant \frac{1}{4}$.

**Conclusion : la plus grande valeur possible du plus petit des nombres est $\frac{1}{4}$. Elle est atteinte quand tous les $a_i$ valent $\frac{1}{2}$.**

## Going further

Pour $n = 2$, trouve tous les couples $(a_1, a_2)$ pour lesquels le plus petit des deux nombres vaut exactement $\frac{1}{4}$.
