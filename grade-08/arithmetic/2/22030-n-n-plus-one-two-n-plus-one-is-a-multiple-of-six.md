---
id: "22030"
title: "n(n + 1)(2n + 1) est un multiple de 6"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [divisibilite, parite, entiers-consecutifs, disjonction-de-cas, division-euclidienne]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Divisibilité, PGCD » (Paul), exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $n$ un entier naturel.

1. Montrer que $n(n + 1)$ est pair.
2. Montrer que $n(n + 1)(2n + 1)$ est divisible par $6$.

## Hints

1. Parmi deux entiers qui se suivent, combien y en a-t-il de pairs ?
2. Pour la divisibilité par $3$, regardez le reste de la division de $n$ par $3$ : il vaut $0$, $1$ ou $2$. Dans chaque cas, trouvez lequel des trois facteurs est un multiple de $3$.
3. Un nombre pair qui est aussi un multiple de $3$ est un multiple de $6$. Pourquoi ?

## Solution

**Question 1.** Les entiers $n$ et $n + 1$ se suivent, donc l'un des deux est pair. Un produit dont un facteur est pair est pair. Donc $n(n + 1)$ est pair.

**Question 2.** Notons $P = n(n + 1)(2n + 1)$.

*$P$ est pair.* D'après la question 1, $n(n+1)$ est pair, donc $P = n(n+1) \times (2n+1)$ est pair aussi.

*$P$ est un multiple de $3$.* Le reste de la division de $n$ par $3$ vaut $0$, $1$ ou $2$.

- Si le reste vaut $0$, alors $n$ est un multiple de $3$.
- Si le reste vaut $1$, on écrit $n = 3k + 1$. Alors $2n + 1 = 6k + 3 = 3(2k + 1)$ est un multiple de $3$.
- Si le reste vaut $2$, on écrit $n = 3k + 2$. Alors $n + 1 = 3k + 3 = 3(k + 1)$ est un multiple de $3$.

Dans les trois cas, l'un des facteurs de $P$ est un multiple de $3$, donc $P$ est un multiple de $3$.

*$P$ est un multiple de $6$.* Écrivons $P = 3m$ avec $m$ entier. Comme $P$ est pair et que $3$ est impair, $m$ est forcément pair (sinon $3m$ serait un produit de deux nombres impairs, donc impair). Écrivons $m = 2m'$. Alors $P = 6m'$.

**Conclusion.** Pour tout entier naturel $n$, le nombre $n(n + 1)$ est pair et le nombre $n(n + 1)(2n + 1)$ est divisible par $6$.

## Going further

1. Calculez $\frac{n(n+1)(2n+1)}{6}$ pour $n = 1, 2, 3, 4$, puis $1^2$, $1^2 + 2^2$, $1^2 + 2^2 + 3^2$, $1^2 + 2^2 + 3^2 + 4^2$. Que remarquez-vous ?
2. Montrez que $n(n+1)(n+2)$ est toujours divisible par $6$.
