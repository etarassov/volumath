---
id: "13244"
title: "Deux cases voisines dans une grande grille"
grade: 10
theme: probability-statistics
difficulty: 2
duration_min: 15
tags: [probabilite, denombrement, quadrillage, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017, premier tour"
  reference: "2017-10_coupe_automne_2017_elim.pdf, exercices lycéens, exercice 18 ; réponse (90) dans 2017-10_coupe_automne_2017_elim_lycee.pdf, pas de corrigé rédigé"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017_elim.pdf"
---

## Statement

On choisit au hasard deux cases distinctes d'une grille de $n \times n$ cases, toutes les paires de cases ayant la même probabilité d'être choisies.

Déterminer le plus petit entier $n$ pour lequel la probabilité que ces deux cases soient adjacentes (c'est-à-dire qu'elles aient un côté commun) est strictement inférieure à $\frac{1}{2017}$.

## Hints

1. Combien y a-t-il de paires de cases distinctes ?
2. Combien y a-t-il de paires de cases adjacentes sur une même ligne ? Sur une même colonne ?
3. Simplifie la probabilité : tu dois trouver $\frac{4}{n(n+1)}$.

## Solution

**Toutes les paires.** La grille a $n^2$ cases. Pour choisir deux cases distinctes, on a $n^2$ choix pour la première et $n^2 - 1$ pour la seconde, et chaque paire est comptée deux fois (dans les deux ordres). Il y a donc $\frac{n^2 (n^2 - 1)}{2}$ paires.

**Les paires adjacentes.** Sur une ligne de $n$ cases, il y a $n - 1$ paires de cases voisines, donc $n(n - 1)$ sur les $n$ lignes. De même, il y en a $n(n - 1)$ dans les colonnes. En tout, $2n(n - 1)$ paires adjacentes.

**La probabilité.** Comme $n^2 - 1 = (n - 1)(n + 1)$,

$$p = \frac{2n(n - 1)}{\frac{n^2(n - 1)(n + 1)}{2}} = \frac{4n(n - 1)}{n^2(n - 1)(n + 1)} = \frac{4}{n(n + 1)}$$

(pour $n \geqslant 2$ ; pour $n = 1$ on ne peut pas choisir deux cases).

**La condition.** $p < \frac{1}{2017}$ équivaut à $n(n + 1) > 4 \times 2017 = 8068$. Or $89 \times 90 = 8010$ est trop petit et $90 \times 91 = 8190$ convient. Comme $n(n + 1)$ augmente avec $n$, aucun $n \leqslant 89$ ne convient.

**Conclusion.** Le plus petit $n$ cherché est $90$.
