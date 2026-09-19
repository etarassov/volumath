---
id: "3813"
title: "Plus de piles que de faces"
grade: 9
theme: probability-statistics
difficulty: 2
duration_min: 15
tags: [probabilite, piece, denombrement, symetrie]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, More on Combinatorics and Probability"
  reference: "Handout-4133-3874.pdf, problème 17"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4133-3874.pdf"
---

## Statement

On lance quatre fois de suite une pièce équilibrée.

Quelle est la probabilité d'obtenir strictement plus de « pile » que de « face » ?

## Hints

1. Combien y a-t-il de résultats possibles en tout pour quatre lancers ? Ils ont tous la même probabilité.
2. « Strictement plus de pile que de face » sur quatre lancers : combien de piles cela fait-il exactement ?
3. Il ne reste plus qu'à compter les suites de quatre lancers qui contiennent trois piles, puis celles qui en contiennent quatre.

## Solution

**L'idée : compter les résultats favorables parmi tous les résultats possibles, qui sont équiprobables.**

**Étape 1. Le nombre total de résultats.**

Chaque lancer donne $2$ résultats, et il y a $4$ lancers indépendants :

$$2 \times 2 \times 2 \times 2 = 2^4 = 16$$

suites de résultats possibles, toutes de même probabilité $\dfrac{1}{16}$.

**Étape 2. Ce que veut dire « plus de pile que de face ».**

Si on note $k$ le nombre de piles, le nombre de faces vaut $4 - k$. On veut

$$k > 4 - k, \qquad \text{c'est-à-dire} \qquad 2k > 4, \qquad \text{donc} \qquad k \geqslant 3.$$

Il faut donc $3$ piles ou $4$ piles.

**Étape 3. On compte.**

- **Quatre piles** : une seule suite, PPPP.
- **Trois piles** : il y a exactement une face, et elle peut occuper l'une des $4$ positions. Cela fait $4$ suites :

$$\text{FPPP}, \quad \text{PFPP}, \quad \text{PPFP}, \quad \text{PPPF}.$$

Au total $1 + 4 = 5$ suites favorables.

**Étape 4. On conclut.**

$$P = \frac{5}{16}.$$

**Conclusion.** La probabilité d'obtenir plus de piles que de faces est $\dfrac{5}{16}$, soit un peu moins de $32\ \%$.

## Going further

1. Par symétrie, la probabilité d'obtenir plus de faces que de piles vaut aussi $\dfrac{5}{16}$. Quelle est alors la probabilité d'obtenir autant de piles que de faces ? Vérifie-la par un décompte direct.
2. Même question avec cinq lancers. Pourquoi le calcul est-il plus simple avec un nombre impair de lancers ?
