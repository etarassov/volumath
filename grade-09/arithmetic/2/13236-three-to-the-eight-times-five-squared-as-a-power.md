---
id: "13236"
title: "3⁸ × 5² comme une puissance"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 10
tags: [puissances, decomposition-en-facteurs-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017, premier tour"
  reference: "2017-10_coupe_automne_2017_elim.pdf, exercices communs, exercice 10 ; réponse (407) dans 2017-10_coupe_automne_2017_elim_college.pdf et 2017-10_coupe_automne_2017_elim_lycee.pdf, pas de corrigé rédigé"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017_elim.pdf"
---

## Statement

Déterminer la plus petite valeur possible de $a + b$, si $a$ et $b$ sont des entiers naturels vérifiant

$$3^8 \times 5^2 = a^b.$$

## Hints

1. Quels nombres premiers peuvent apparaître dans la décomposition de $a$ ?
2. Écris $a = 3^x \times 5^y$. Que vaut alors $a^b$ ? Quelles conditions obtiens-tu sur $b$ ?
3. Il ne reste que deux valeurs possibles pour $b$. Compare les deux sommes.

## Solution

**La forme de $a$.** Le nombre $a^b$ n'a que $3$ et $5$ comme facteurs premiers. Comme tout facteur premier de $a$ divise $a^b$, la décomposition de $a$ ne contient que des $3$ et des $5$ : $a = 3^x \times 5^y$. On a $b \geqslant 1$, car $a^0 = 1$.

**Les valeurs possibles de $b$.** On a $a^b = 3^{bx} \times 5^{by}$. Par unicité de la décomposition en facteurs premiers, $bx = 8$ et $by = 2$. Donc $b$ divise $8$ et $2$, c'est-à-dire $b = 1$ ou $b = 2$.

- Si $b = 1$ : $a = 3^8 \times 5^2 = 6561 \times 25 = 164\,025$, et $a + b = 164\,026$.
- Si $b = 2$ : $x = 4$, $y = 1$, donc $a = 3^4 \times 5 = 405$ et $a + b = 407$.

**Conclusion.** La plus petite valeur possible de $a + b$ est $407$, obtenue avec $3^8 \times 5^2 = 405^2$.
