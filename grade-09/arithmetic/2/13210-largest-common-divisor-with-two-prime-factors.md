---
id: "13210"
title: "Le plus grand diviseur commun à deux facteurs premiers"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 10
tags: [diviseurs, pgcd, decomposition-en-facteurs-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM), éliminatoires"
  reference: "2017-09_coupe_automne_2016_elim.pdf, exercices communs, exercice 10 ; corrigé 2017-09_coupe_automne_2016_elim_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016_elim.pdf"
---

## Statement

Quel est le plus grand entier qui divise à la fois $110\,000$ et $121\,000$, et qui a au plus deux diviseurs premiers différents ?

## Hints

1. Décompose $110\,000$ et $121\,000$ en produits de facteurs premiers.
2. Les diviseurs communs aux deux nombres sont les diviseurs de leur $\mathrm{PGCD}$. Calcule-le.
3. Le $\mathrm{PGCD}$ a trois facteurs premiers différents. Il faut en abandonner un : lequel coûte le moins cher ?

## Solution

**Les décompositions.** On a $110\,000 = 11 \times 10^4 = 2^4 \times 5^4 \times 11$ et $121\,000 = 11^2 \times 10^3 = 2^3 \times 5^3 \times 11^2$.

**Les diviseurs communs.** Un diviseur commun ne contient que les facteurs premiers $2$, $5$ et $11$, et au plus autant de fois chacun que dans les deux nombres : au plus $2^3$, $5^3$ et $11^1$. Les diviseurs communs sont donc exactement les diviseurs du $\mathrm{PGCD}$

$$2^3 \times 5^3 \times 11 = 11\,000.$$

**Au plus deux facteurs premiers.** Ce $\mathrm{PGCD}$ a trois facteurs premiers différents, il ne convient pas. Un diviseur qui convient omet au moins un des trois nombres $2$, $5$, $11$. Le plus grand possible dans chaque cas est :

- sans $11$ : $2^3 \times 5^3 = 1000$ ;
- sans $5$ : $2^3 \times 11 = 88$ ;
- sans $2$ : $5^3 \times 11 = 1375$.

**Conclusion.** Le plus grand entier cherché est $1375$.
