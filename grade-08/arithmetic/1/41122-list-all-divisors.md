---
id: "41122"
title: "Tous les diviseurs de quatre nombres"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [diviseurs, decomposition-en-facteurs-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-11-27
source:
  name: "MathCool, Грузия, август 2026 г., группа «Земляные элементали», листок «Делимость» (А. А. Пронина)"
  reference: "mathcool-2026-08-17-delimost.pdf, задача 1"
  url: ""
  original_language: "ru"
  local_copy: "sources/originals/mathcool/mathcool-2026-08-17-delimost.pdf"
---

## Statement

Écrire la liste de tous les diviseurs des nombres suivants :

**a)** $3 \times 5 \times 5 \times 11$ ; **b)** $5 \times 45$ ; **c)** $1001$ ; **d)** $256$.

## Hints

1. Commence par écrire chaque nombre comme un produit de nombres premiers. Pour c), essaie de diviser $1001$ par $7$.
2. Un diviseur est un produit de certains de ces facteurs premiers, chacun pris au plus autant de fois que dans le nombre. Pour a), on choisit de prendre le $3$ ou non, zéro, un ou deux $5$, et le $11$ ou non.
3. Pour ne rien oublier, range les diviseurs par paires : si $d$ divise $n$, alors $n \div d$ divise aussi $n$.

## Solution

**La méthode.** On décompose le nombre en facteurs premiers. Ses diviseurs sont alors tous les produits qu'on peut former avec ces facteurs, chacun pris au plus autant de fois que dans le nombre. Pour vérifier qu'on n'en oublie aucun, on les range par paires $d$ et $n \div d$.

**a)** $3 \times 5 \times 5 \times 11 = 825$. On choisit le $3$ ou non ($2$ choix), zéro, un ou deux $5$ ($3$ choix), le $11$ ou non ($2$ choix) : cela fait $2 \times 3 \times 2 = 12$ diviseurs.

$$1, 3, 5, 11, 15, 25, 33, 55, 75, 165, 275, 825.$$

Les paires : $1 \times 825$, $3 \times 275$, $5 \times 165$, $11 \times 75$, $15 \times 55$, $25 \times 33$.

**b)** $5 \times 45 = 5 \times 3 \times 3 \times 5 = 3^2 \times 5^2 = 225$. On prend zéro, un ou deux $3$, et zéro, un ou deux $5$ : $3 \times 3 = 9$ diviseurs.

$$1, 3, 5, 9, 15, 25, 45, 75, 225.$$

Les paires : $1 \times 225$, $3 \times 75$, $5 \times 45$, $9 \times 25$, et $15 \times 15$, où le diviseur $15$ est seul dans sa paire.

**c)** $1001 = 7 \times 143 = 7 \times 11 \times 13$. Chacun des trois facteurs est pris ou non : $2 \times 2 \times 2 = 8$ diviseurs.

$$1, 7, 11, 13, 77, 91, 143, 1001.$$

**d)** $256 = 2^8$. Les diviseurs sont les puissances de $2$ de $2^0$ à $2^8$, soit $9$ diviseurs.

$$1, 2, 4, 8, 16, 32, 64, 128, 256.$$

## Going further

1. Dans chaque cas, le nombre de diviseurs s'obtient en multipliant les exposants augmentés de $1$ : pour $825 = 3^1 \times 5^2 \times 11^1$, c'est $2 \times 3 \times 2 = 12$. Pourquoi ?
2. Seuls $225 = 15^2$ et $256 = 16^2$ ont un nombre impair de diviseurs. Expliquer pourquoi un nombre a un nombre impair de diviseurs exactement quand c'est un carré parfait.
