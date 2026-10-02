---
id: "13230"
title: "Les diviseurs de 10! multiples de 1, 2, …, 10"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [diviseurs, decomposition-en-facteurs-premiers, factorielle, ppcm]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017, premier tour"
  reference: "2017-10_coupe_automne_2017_elim.pdf, exercices collégiens, exercice 3 ; réponse (36) dans 2017-10_coupe_automne_2017_elim_college.pdf, pas de corrigé rédigé"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017_elim.pdf"
---

## Statement

On note $10! = 1 \times 2 \times 3 \times \cdots \times 10$.

Combien y a-t-il d'entiers naturels $n$ qui sont à la fois un diviseur de $10!$ et un multiple de chacun des entiers $1, 2, \ldots, 10$ ?

## Hints

1. Décompose $10!$ en produit de facteurs premiers.
2. Quel est le plus petit nombre divisible par $1, 2, \ldots, 10$ ? Décompose-le aussi.
3. Écris $n = 2^\alpha \times 3^\beta \times 5^\gamma \times 7^\delta$. Entre quelles bornes chaque exposant doit-il se trouver ?

## Solution

**Décomposition de $10!$.** On décompose chaque facteur : $4 = 2^2$, $6 = 2 \times 3$, $8 = 2^3$, $9 = 3^2$, $10 = 2 \times 5$. En regroupant,

$$10! = 2^8 \times 3^4 \times 5^2 \times 7.$$

(Pour $2$ : $1$ dans $2$, $2$ dans $4$, $1$ dans $6$, $3$ dans $8$, $1$ dans $10$, soit $8$. Pour $3$ : $1$ dans $3$, $1$ dans $6$, $2$ dans $9$, soit $4$.)

**Être multiple de $1, 2, \ldots, 10$.** Un nombre est multiple de $8 = 2^3$, de $9 = 3^2$, de $5$ et de $7$ exactement quand sa décomposition contient au moins $2^3$, $3^2$, $5$ et $7$. Il est alors multiple de tous les entiers de $1$ à $10$, car chacun d'eux divise $2^3 \times 3^2 \times 5 \times 7 = 2520$.

**Le décompte.** Un diviseur $n$ de $10!$ s'écrit $n = 2^\alpha \times 3^\beta \times 5^\gamma \times 7^\delta$, avec des exposants au plus égaux à ceux de $10!$. Les conditions sont donc

$$3 \leqslant \alpha \leqslant 8, \qquad 2 \leqslant \beta \leqslant 4, \qquad 1 \leqslant \gamma \leqslant 2, \qquad \delta = 1.$$

Cela fait $6$ choix pour $\alpha$, $3$ pour $\beta$, $2$ pour $\gamma$ et $1$ pour $\delta$, et chaque choix donne un nombre différent.

**Conclusion.** Il y a $6 \times 3 \times 2 \times 1 = 36$ tels entiers.
