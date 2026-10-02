---
id: "13012"
title: "Divisibles par 7 mais pas par 5"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 10
tags: [multiples, denombrement, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, épreuve de sélection (Coupe Animath d'automne) du 2 octobre 2013"
  reference: "2017-09_coupe_automne_2013.pdf, exercice 1 ; corrigé 2017-09_coupe_automne_2013_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2013.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2013.pdf"
---

## Statement

Combien y a-t-il d'entiers compris entre $1$ et $10\,000$ qui sont divisibles par $7$ mais ne sont pas divisibles par $5$ ?

## Hints

1. Commence par compter tous les multiples de $7$ entre $1$ et $10\,000$.
2. Parmi eux, il faut retirer ceux qui sont aussi divisibles par $5$. Un nombre divisible à la fois par $7$ et par $5$ est divisible par quel nombre ?
3. Compte les multiples de $35$ entre $1$ et $10\,000$.

## Solution

**Les multiples de $7$.** Les multiples de $7$ compris entre $1$ et $10\,000$ sont $7 \times 1$, $7 \times 2$, ..., $7 \times k$, où $k$ est le plus grand entier tel que $7k \leqslant 10\,000$. Comme
$$7 \times 1428 = 9996 \leqslant 10\,000 < 10\,003 = 7 \times 1429,$$
il y en a $1428$.

**Ceux qu'il faut retirer.** Parmi ces multiples de $7$, on doit enlever ceux qui sont aussi divisibles par $5$. Un nombre divisible par $7$ et par $5$ est divisible par $35$, car $5$ et $7$ sont des nombres premiers différents. Inversement, un multiple de $35$ est divisible par $7$ et par $5$. On doit donc enlever les multiples de $35$. Comme
$$35 \times 285 = 9975 \leqslant 10\,000 < 10\,010 = 35 \times 286,$$
il y a $285$ multiples de $35$ entre $1$ et $10\,000$.

**Conclusion.** Il y a
$$1428 - 285 = 1143$$
entiers compris entre $1$ et $10\,000$ qui sont divisibles par $7$ mais pas par $5$.

## Going further

1. Combien y a-t-il d'entiers entre $1$ et $10\,000$ qui ne sont divisibles ni par $5$ ni par $7$ ?
2. Combien y a-t-il d'entiers entre $1$ et $10\,000$ qui sont divisibles par $6$ mais pas par $4$ ? Attention, un nombre divisible par $6$ et par $4$ n'est pas forcément divisible par $24$.
