---
id: "0001"
title: "Parité de n² + n"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 15
tags: [parite, entiers, factorisation, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Exercice classique, ajouté comme exemple de mise en forme"
  reference: ""
  url: ""
  original_language: "fr"
  local_copy: ""
---

## Statement

$n$ désigne un entier naturel quelconque.

Montrer que le nombre $n^2 + n$ est toujours pair.

## Hints

1. Commence par calculer $n^2 + n$ pour $n = 1$, puis $2$, puis $3$, puis $4$. Que remarques-tu ?
2. Dans l'expression $n^2 + n$, cherche un facteur commun aux deux termes.
3. Une fois l'expression factorisée, tu obtiens le produit de deux entiers qui se suivent. Que peut-on dire de deux entiers qui se suivent ?

## Solution

**Étape 1. Factoriser.**

$$n^2 + n = n \times n + n \times 1 = n(n+1)$$

Le facteur commun aux deux termes est $n$.

**Étape 2. Regarder les deux facteurs.**

$n$ et $n+1$ sont deux entiers qui se suivent. Parmi deux entiers qui se suivent, il y en a toujours un qui est pair. Il y a donc deux cas.

**Cas 1 : $n$ est pair.**
On peut alors écrire $n = 2k$, où $k$ est un entier. Donc

$$n(n+1) = 2k(n+1) = 2 \times \big(k(n+1)\big)$$

Ce nombre est le double d'un entier, il est donc pair.

**Cas 2 : $n$ est impair.**
Alors $n+1$ est pair, et on peut écrire $n+1 = 2k$, où $k$ est un entier. Donc

$$n(n+1) = n \times 2k = 2 \times (nk)$$

Ce nombre est encore le double d'un entier, il est donc pair.

**Conclusion.**
Dans les deux cas, $n^2 + n$ est pair. C'est vrai pour tout entier naturel $n$.

## Going further

1. Le nombre $n^2 + n + 1$ est-il pair, impair, ou bien cela dépend-il de $n$ ?
2. Même question pour $n^2 + 3n$.
3. Plus difficile : montrer que $n(n+1)(n+2)$ est toujours divisible par $6$.
