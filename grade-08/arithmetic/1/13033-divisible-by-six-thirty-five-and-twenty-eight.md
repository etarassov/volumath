---
id: "13033"
title: "Divisible par 6, par 35 et par 28"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [multiples, nombres premiers, decomposition en facteurs premiers]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, éliminatoires du test de rentrée 2015 (Coupe Animath d'automne), questionnaire collégiens"
  reference: "2017-09_coupe_automne_2015_elim_college.pdf, exercice 7 (l'énoncé dit « le plus petit entier » ; il faut lire « strictement positif ») ; corrigé 2017-09_coupe_automne_2015_elim_college_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015_elim_college.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015_elim_college.pdf"
---

## Statement

Déterminer le plus petit entier strictement positif qui soit divisible à la fois par $6$, par $35$ et par $28$.

## Hints

1. Décompose $6$, $35$ et $28$ en produits de nombres premiers.
2. Un nombre divisible par $28$ est divisible par $4$ et par $7$. Quels nombres premiers doivent apparaître dans le nombre cherché, et combien de fois chacun ?
3. Le produit $6 \times 35 \times 28$ convient. Mais est-ce le plus petit ?

## Solution

**Les décompositions.** On a
$$6 = 2 \times 3, \qquad 35 = 5 \times 7, \qquad 28 = 2 \times 2 \times 7 .$$

**Ce que doit contenir le nombre.** Soit $N$ un entier strictement positif divisible par $6$, par $35$ et par $28$.

- $N$ est divisible par $28$, donc par $4 = 2 \times 2$ et par $7$ : dans la décomposition de $N$ en facteurs premiers, $2$ apparaît au moins deux fois et $7$ au moins une fois.
- $N$ est divisible par $6$, donc par $3$ : le facteur $3$ apparaît.
- $N$ est divisible par $35$, donc par $5$ : le facteur $5$ apparaît.

La décomposition de $N$ contient donc au moins $2 \times 2 \times 3 \times 5 \times 7 = 420$. Ainsi $N$ est un multiple de $420$, et comme $N > 0$, on a $N \geqslant 420$.

**Le nombre $420$ convient.** En effet
$$420 = 6 \times 70 = 35 \times 12 = 28 \times 15 .$$

**Conclusion.** Le plus petit entier strictement positif divisible par $6$, par $35$ et par $28$ est $420$.

Le produit $6 \times 35 \times 28 = 5880$ convient aussi, mais il vaut $14 \times 420$ : il compte deux fois le facteur $2$ et deux fois le facteur $7$ de trop.

## Going further

1. Quel est le plus petit entier strictement positif divisible par $12$, par $18$ et par $30$ ?
2. Combien d'entiers compris entre $1$ et $10\,000$ sont divisibles à la fois par $6$, par $35$ et par $28$ ?
