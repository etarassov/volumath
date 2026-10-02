---
id: "10679"
title: "Une suite qui ne dépasse jamais zéro"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalite, suites, maximum, principe-extremal]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 2 (algèbre)"
  reference: "2024-12_Sujet-envoi-2-2024-2025.pdf, Exercices Seniors, exercice 11 ; corrigé 2025-01_Corrige-envoi-2-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/12/Sujet-envoi-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-12_Sujet-envoi-2-2024-2025.pdf"
---

## Statement

Soit $N \geqslant 2$ un entier et soient $a_0, a_1, \ldots, a_N$ des réels tels que $a_0 = a_N = 0$ et

$$a_{i+1} - 2a_i + a_{i-1} = a_i^2$$

pour tout entier $i$ tel que $1 \leqslant i \leqslant N - 1$. Montrer que $a_i \leqslant 0$ pour tout $i$ entre $0$ et $N$.

## Hints

1. Il suffit de montrer que le plus grand des nombres $a_0, a_1, \ldots, a_N$ est négatif ou nul.
2. Choisis un indice $i$ où ce plus grand nombre est atteint. Le cas où $i$ vaut $0$ ou $N$ est facile.
3. Si $1 \leqslant i \leqslant N - 1$, compare $a_{i+1}$ et $a_{i-1}$ à $a_i$. Quel est le signe de $a_{i+1} - 2a_i + a_{i-1}$ ?

## Solution

Il y a un nombre fini de réels $a_0, a_1, \ldots, a_N$, donc l'un d'eux est le plus grand. Notons $M$ ce plus grand nombre et $i$ un indice tel que $a_i = M$. Il suffit de montrer que $M \leqslant 0$, puisque tous les $a_k$ sont inférieurs ou égaux à $M$.

**Premier cas : $i = 0$ ou $i = N$.** Alors $M = a_0 = 0$ ou $M = a_N = 0$. Dans les deux cas $M = 0$.

**Second cas : $1 \leqslant i \leqslant N - 1$.** Les deux voisins $a_{i-1}$ et $a_{i+1}$ existent. Comme $a_i$ est le plus grand, $a_{i+1} \leqslant a_i$ et $a_{i-1} \leqslant a_i$. En additionnant,

$$a_{i+1} - 2a_i + a_{i-1} = (a_{i+1} - a_i) + (a_{i-1} - a_i) \leqslant 0$$

Mais d'après l'énoncé, ce nombre vaut $a_i^2$, qui est positif ou nul. Donc $a_i^2 = 0$, c'est-à-dire $M = a_i = 0$.

Dans les deux cas, $M = 0$.

**Conclusion : tous les $a_i$ sont inférieurs ou égaux à $M = 0$, donc $a_i \leqslant 0$ pour tout $i$.**

## Going further

1. La suite nulle convient évidemment. Pour $N = 2$, trouve une autre suite $a_0, a_1, a_2$ qui vérifie toutes les conditions.
2. On a seulement utilisé que $a_{i+1} - 2a_i + a_{i-1} \geqslant 0$. Interprète cette condition sur le dessin des points $(i, a_i)$ : que dit-elle des pentes entre deux points voisins ?
