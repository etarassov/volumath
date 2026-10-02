---
id: "13241"
title: "Ce qui divise toujours (n+1)(n+3)(n+5)(n+7)(n+9)"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [divisibilite, restes, pgcd]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017, premier tour"
  reference: "2017-10_coupe_automne_2017_elim.pdf, exercices lycéens, exercice 15 ; réponse (15) dans 2017-10_coupe_automne_2017_elim_lycee.pdf, pas de corrigé rédigé"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017_elim.pdf"
---

## Statement

Déterminer le plus grand entier qui divise

$$(n + 1)(n + 3)(n + 5)(n + 7)(n + 9)$$

pour tout entier $n \geqslant 1$.

## Hints

1. Calcule le produit pour $n = 1$ et pour $n = 2$, et décompose les deux résultats. Quels diviseurs ont-ils en commun ?
2. Le produit est-il toujours divisible par $3$ ? Regarde les restes de $n + 1$, $n + 3$, $n + 5$ dans la division par $3$.
3. Fais de même avec $5$ et les cinq facteurs.

## Solution

Notons $P(n)$ ce produit.

**Une limite par le haut.** Un entier qui divise $P(n)$ pour tout $n$ divise en particulier

$$P(1) = 2 \times 4 \times 6 \times 8 \times 10 = 3840 = 2^8 \times 3 \times 5$$

et

$$P(2) = 3 \times 5 \times 7 \times 9 \times 11 = 10\,395 = 3^3 \times 5 \times 7 \times 11.$$

Les diviseurs communs à ces deux nombres sont les diviseurs de $3 \times 5 = 15$. Le nombre cherché est donc au plus $15$.

**$P(n)$ est toujours divisible par $3$.** Notons $r$ le reste de $n + 1$ dans la division par $3$. Les nombres $n + 3$ et $n + 5$ s'obtiennent en ajoutant $2$ puis $4$, donc leurs restes sont ceux de $r + 2$ et de $r + 4$, c'est-à-dire de $r + 2$ et de $r + 1$. Les trois nombres $n + 1$, $n + 3$, $n + 5$ ont donc les trois restes $0$, $1$, $2$ dans un certain ordre : l'un d'eux est un multiple de $3$.

**$P(n)$ est toujours divisible par $5$.** De même, si $r$ est le reste de $n + 1$ dans la division par $5$, les cinq facteurs ont les restes de $r$, $r + 2$, $r + 4$, $r + 6$, $r + 8$, c'est-à-dire de $r$, $r + 2$, $r + 4$, $r + 1$, $r + 3$. Ce sont les cinq restes possibles, donc l'un des facteurs est un multiple de $5$.

**$P(n)$ est divisible par $15$.** $P(n)$ est multiple de $3$ et de $5$, deux nombres premiers différents, donc de $15$.

**Conclusion.** Le plus grand entier qui divise $P(n)$ pour tout $n \geqslant 1$ est $15$.
