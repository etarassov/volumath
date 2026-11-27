---
id: "41129"
title: "Trois nombres dont aucun ne divise un autre"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 15
tags: [divisibilite, construction, existence, decomposition-en-facteurs-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-11-27
source:
  name: "MathCool, Грузия, август 2026 г., группа «Земляные элементали», листок «Делимость» (А. А. Пронина)"
  reference: "mathcool-2026-08-17-delimost.pdf, задача 9"
  url: ""
  original_language: "ru"
  local_copy: "sources/originals/mathcool/mathcool-2026-08-17-delimost.pdf"
---

## Statement

Existe-t-il trois nombres entiers strictement positifs tels qu'aucun d'eux ne divise un des deux autres, mais que le produit de deux quelconques d'entre eux soit toujours divisible par le troisième ?

## Hints

1. Essaie trois nombres premiers différents, par exemple $2$, $3$ et $5$. Aucun ne divise un autre. Mais le produit de deux d'entre eux est-il divisible par le troisième ?
2. Il faudrait que chaque nombre ait un facteur premier en commun avec chacun des deux autres. Essaie des produits de deux nombres premiers.
3. Essaie $2 \times 3$, $3 \times 5$ et $5 \times 2$.

## Solution

**Oui** : les nombres $6$, $10$ et $15$ conviennent.

**Aucun ne divise un autre.** Un nombre ne peut pas diviser un nombre plus petit que lui, et $6$ ne divise ni $10$ ni $15$, tandis que $10$ ne divise pas $15$.

**Chaque produit de deux est divisible par le troisième.**

$$6 \times 10 = 60 = 4 \times 15, \qquad 6 \times 15 = 90 = 9 \times 10, \qquad 10 \times 15 = 150 = 25 \times 6.$$

**Comment on les trouve.** On choisit trois nombres premiers différents $p$, $q$, $r$ et on prend les produits deux à deux

$$a = p \times q, \qquad b = q \times r, \qquad c = r \times p.$$

Le produit $a \times b = p \times q \times q \times r$ contient $r \times p = c$, donc il est divisible par $c$, et de même pour les deux autres produits. Et $a$ ne divise pas $b$, car $p$ divise $a$ mais pas $b$. Avec $p = 2$, $q = 3$ et $r = 5$, on retrouve $6$, $15$ et $10$.

## Going further

Donner un autre exemple, puis un exemple où les trois nombres sont tous impairs.

*Par exemple $3 \times 5 = 15$, $5 \times 7 = 35$ et $7 \times 3 = 21$.*
