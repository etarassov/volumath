---
id: "11071"
title: "Le plus grand facteur premier de a² − 1, encore et encore"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [nombres-premiers, suites, factorisation, encadrement, identites-remarquables]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 3 (arithmétique)"
  reference: "2025-01_Sujet-envoi-3-2024-2025.pdf, Exercices Juniors, exercice 7 ; corrigé 2025-03_Corrige-envoi-3-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Sujet-envoi-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-01_Sujet-envoi-3-2024-2025.pdf"
---

## Statement

Soient $a_1, a_2, \ldots, a_{2025}$ des entiers tels que $a_1 = 2^{2024} + 1$ et, pour tout $n \leqslant 2024$, le nombre $a_{n+1}$ est le plus grand facteur premier de $a_n^2 - 1$.

Combien vaut $a_{2024} + a_{2025}$ ?

## Hints

1. Personne ne sait calculer $a_2$. Cherche plutôt ce qui se passe si l'un des termes vaut $2$, ou $3$.
2. Si $a$ est impair, écris $a^2 - 1 = (a - 1)(a + 1) = 4 \times \frac{a - 1}{2} \times \frac{a + 1}{2}$. Un facteur premier impair de ce nombre divise l'un des deux quotients.
3. Tant que les termes restent impairs, montre que $a_{k+1} - 1 \leqslant \frac{a_k - 1}{2}$. Que vaut alors $a_{2024}$ au plus ?

## Solution

**Réponse :** $a_{2024} + a_{2025} = 5$.

Pour $k \geqslant 2$, le nombre $a_k$ est un nombre premier. Remarquons d'abord deux calculs :

- si $a_k = 2$, alors $a_k^2 - 1 = 3$, donc $a_{k+1} = 3$ ;
- si $a_k = 3$, alors $a_k^2 - 1 = 8 = 2^3$, donc $a_{k+1} = 2$.

Dès qu'un terme vaut $2$ ou $3$, la suite alterne donc entre $2$ et $3$.

**Un lemme.** Soit $a \geqslant 3$ un entier impair, et $q$ un nombre premier impair qui divise $a^2 - 1$. Alors $q \leqslant \frac{a+1}{2}$, c'est-à-dire $q - 1 \leqslant \frac{a - 1}{2}$.

*Preuve.* Les nombres $u = \frac{a-1}{2}$ et $v = \frac{a+1}{2}$ sont des entiers au moins égaux à $1$, et
$$a^2 - 1 = (a - 1)(a + 1) = 4uv .$$
Le nombre premier $q$ divise $4uv$ mais pas $4$, car il est impair. D'après le lemme d'Euclide, il divise $u$ ou $v$, donc $q \leqslant v = \frac{a+1}{2}$.

**Premier cas : l'un des termes $a_2, \ldots, a_{2024}$ est pair.** Ce terme est un nombre premier pair, donc il vaut $2$. À partir de lui, la suite alterne entre $2$ et $3$, jusqu'à $a_{2025}$. Les deux derniers termes $a_{2024}$ et $a_{2025}$ valent donc $2$ et $3$ dans un certain ordre, et leur somme vaut $5$.

**Second cas : $a_1, a_2, \ldots, a_{2024}$ sont tous impairs.** Pour $1 \leqslant k \leqslant 2023$, le nombre $a_k$ est impair et au moins égal à $3$, et $a_{k+1}$ est un nombre premier impair qui divise $a_k^2 - 1$. Le lemme donne
$$a_{k+1} - 1 \leqslant \frac{a_k - 1}{2} .$$
À chaque étape, le nombre $a_k - 1$ est donc au moins divisé par $2$. Comme $a_1 - 1 = 2^{2024}$, on obtient de proche en proche
$$a_2 - 1 \leqslant 2^{2023}, \qquad a_3 - 1 \leqslant 2^{2022}, \qquad \ldots, \qquad a_k - 1 \leqslant 2^{2025 - k}, \qquad \ldots, \qquad a_{2024} - 1 \leqslant 2 .$$
Ainsi $a_{2024} \leqslant 3$. Or $a_{2024}$ est un nombre premier impair, donc $a_{2024} = 3$, puis $a_{2025} = 2$, et la somme vaut encore $5$.

**Conclusion.** Dans tous les cas, $a_{2024} + a_{2025} = 5$.
