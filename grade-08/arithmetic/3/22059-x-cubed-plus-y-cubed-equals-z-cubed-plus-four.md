---
id: "22059"
title: "x³ + y³ = z³ + 4"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [equation-diophantienne, cubes, restes, congruences]
adapted_from: null
see_also: ["22057"]
same_as: []
created: 2026-10-26
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Équations diophantiennes, factorisation » (Augustin & Éva), exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Trouver tous les triplets d'entiers $(x, y, z)$, positifs ou négatifs, tels que
$$x^3 + y^3 = z^3 + 4.$$

## Hints

1. Regardez les restes dans la division par $9$.
2. Tout entier s'écrit $3k$, $3k + 1$ ou $3k - 1$ avec $k$ entier. Développez le cube dans chaque cas.
3. Quels restes peut avoir $x^3 + y^3$ dans la division par $9$ ? Et $z^3 + 4$ ?

## Solution

On note $a \equiv b \pmod{9}$ quand $a - b$ est un multiple de $9$, autrement dit quand $a$ et $b$ ont le même reste dans la division par $9$. On peut ajouter de telles relations membre à membre.

**Étape 1 : le cube d'un entier.** Tout entier $n$, positif ou négatif, s'écrit $3k$, $3k + 1$ ou $3k - 1$ avec $k$ entier.

- $(3k)^3 = 27k^3 = 9 \times 3k^3$, donc $n^3 \equiv 0 \pmod{9}$.
- $(3k + 1)^3 = 27k^3 + 27k^2 + 9k + 1 = 9\left(3k^3 + 3k^2 + k\right) + 1$, donc $n^3 \equiv 1 \pmod{9}$.
- $(3k - 1)^3 = 27k^3 - 27k^2 + 9k - 1 = 9\left(3k^3 - 3k^2 + k\right) - 1$, donc $n^3 \equiv -1 \pmod{9}$.

Un cube est donc toujours congru à $-1$, $0$ ou $1$ modulo $9$.

**Étape 2 : les deux membres.**

- Le nombre $x^3 + y^3$ est la somme de deux nombres pris parmi $-1$, $0$, $1$ (à un multiple de $9$ près). Il est donc congru à $-2$, $-1$, $0$, $1$ ou $2$ modulo $9$.
- Le nombre $z^3 + 4$ est congru à $3$, $4$ ou $5$ modulo $9$.

**Étape 3 : conclusion.** Si l'on avait $x^3 + y^3 = z^3 + 4$, la différence $(x^3 + y^3) - (z^3 + 4)$ serait nulle, donc multiple de $9$. Or cette différence est congrue à un nombre compris entre $-2 - 5 = -7$ et $2 - 3 = -1$, qui n'est jamais un multiple de $9$. **L'équation n'a aucune solution en entiers.**

## Going further

1. Montrer de même que $x^3 + y^3 + z^3$ n'est jamais congru à $4$ ou à $5$ modulo $9$. En déduire que $2029$ ne s'écrit pas comme une somme de trois cubes d'entiers.
2. L'équation $x^3 + y^3 = z^3 + 2$ a-t-elle des solutions ?
