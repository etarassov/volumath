---
id: "12887"
title: "Quand |4ᵐ − 7ⁿ| est-il premier ?"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [nombres-premiers, puissances, restes, divisibilite, valeur-absolue]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 2 avril 2025"
  reference: "2025-10_Sujet-Test-4-2024-2025.pdf, test junior, exercice 1 ; corrigé 2025-10_Corrige-Test-4-2024-2025.pdf (même solution, rédigée avec des restes au lieu des congruences)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-4-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-4-2024-2025.pdf"
---

## Statement

Déterminer tous les couples $(m, n)$ d'entiers strictement positifs tels que le nombre $|4^m - 7^n|$ est un nombre premier.

On rappelle que $|x|$ désigne la distance entre $x$ et $0$ : $|3| = |-3| = 3$. Ainsi $|4^m - 7^n|$ est l'écart entre $4^m$ et $7^n$, c'est-à-dire le plus grand des deux moins le plus petit.

## Hints

1. Calculez $|4^m - 7^n|$ pour quelques petites valeurs de $m$ et $n$. Que remarquez-vous ?
2. Quel est le reste de la division de $4^m$ par $3$ ? Et celui de $7^n$ ?
3. Si $m \geq 2$, le nombre $4^m$ est un multiple de $8$. Quels sont les restes possibles de $7^n$ dans la division par $8$ ?

## Solution

La réponse : **le seul couple est $(m, n) = (1, 1)$.**

Ce couple convient : $|4 - 7| = 3$ est premier. Soit maintenant $(m, n)$ un couple qui convient.

### Le nombre vaut 3

Un nombre de la forme $3q + 1$, multiplié par $4$, donne $12q + 4 = 3(4q + 1) + 1$, qui est encore de la forme $3q' + 1$. Comme $4 = 3 + 1$, on obtient de proche en proche que $4^2$, $4^3$, ..., et donc $4^m$, sont de la forme $3q + 1$.

De même, $7(3q + 1) = 21q + 7 = 3(7q + 2) + 1$, donc $7^n$ est aussi de la forme $3q' + 1$.

Alors $4^m - 7^n = (3q + 1) - (3q' + 1) = 3(q - q')$ est un multiple de $3$. Le nombre premier $|4^m - 7^n|$ est donc un multiple de $3$. Le seul nombre premier multiple de $3$ est $3$ lui-même, donc

$$4^m - 7^n = 3 \qquad \text{ou} \qquad 4^m - 7^n = -3.$$

### Le cas où m vaut au moins 2 est impossible

Supposons $m \geq 2$. Alors $4^m = 16 \times 4^{m-2}$ est un multiple de $8$.

Regardons $7^n$. On a $7^2 = 49 = 6 \times 8 + 1$. Un nombre de la forme $8q + 1$, multiplié par $49$, donne $49 \times 8q + 49 = 8(49q + 6) + 1$, encore de la forme $8q' + 1$. Donc :

- si $n$ est pair, $7^n = 49^{n/2}$ est de la forme $8q + 1$ ;
- si $n$ est impair, $7^n = 7 \times 7^{n-1}$ avec $7^{n-1}$ de la forme $8q + 1$, donc $7^n = 56q + 7$ est de la forme $8q' + 7$.

Par conséquent, $4^m - 7^n + 1$ ou $4^m - 7^n + 7$ est un multiple de $8$.

- Si $4^m - 7^n = 3$, l'un des nombres $3 + 1 = 4$ ou $3 + 7 = 10$ serait un multiple de $8$. C'est faux.
- Si $4^m - 7^n = -3$, l'un des nombres $-3 + 1 = -2$ ou $-3 + 7 = 4$ serait un multiple de $8$. C'est faux aussi.

Donc $m \geq 2$ est impossible, et $m = 1$.

### Le cas m = 1

- Si $4 - 7^n = 3$, alors $7^n = 1$, ce qui est impossible puisque $n \geq 1$.
- Si $4 - 7^n = -3$, alors $7^n = 7$, donc $n = 1$.

### Conclusion

**Le seul couple qui convient est $(m, n) = (1, 1)$, pour lequel $|4 - 7| = 3$.**

## Going further

1. Déterminer tous les couples $(m, n)$ d'entiers strictement positifs tels que $|10^m - 7^n|$ est un nombre premier. (Attention, $10^m$ n'est un multiple de $8$ que pour $m \geq 3$.)
2. Le même raisonnement ne permet pas de conclure pour $|4^m - 13^n|$. Où bloque-t-il ? Trouvez un couple $(m, n)$ pour lequel $|4^m - 13^n|$ est premier.
