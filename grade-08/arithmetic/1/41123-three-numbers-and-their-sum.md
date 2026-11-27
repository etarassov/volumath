---
id: "41123"
title: "Trois nombres et leur somme"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [divisibilite, construction, somme]
adapted_from: null
see_also: ["10849"]
same_as: []
created: 2026-11-27
source:
  name: "MathCool, Грузия, август 2026 г., группа «Земляные элементали», листок «Делимость» (А. А. Пронина)"
  reference: "mathcool-2026-08-17-delimost.pdf, задача 2"
  url: ""
  original_language: "ru"
  local_copy: "sources/originals/mathcool/mathcool-2026-08-17-delimost.pdf"
---

## Statement

**a)** Trouver trois nombres entiers strictement positifs, tous différents, dont la somme est divisible par chacun d'eux.

**b)** Trouver trois nombres entiers strictement positifs dont la somme est divisible par un nombre qui ne divise aucun des trois.

## Hints

1. Pour a), essaie de petits nombres. Si les deux premiers sont $1$ et $2$, quel troisième nombre choisir ?
2. Pour b), la somme est divisible par elle-même. Peut-elle diviser un des trois nombres, qui sont tous plus petits qu'elle ?
3. Pour b), si tu veux un diviseur plus petit que la somme, cherche trois nombres qui ont tous le même reste dans la division par $3$, par exemple un reste de $1$.

## Solution

**a)** Les nombres $1$, $2$ et $3$ conviennent : leur somme vaut $6$, et $6$ est divisible par $1$, par $2$ et par $3$.

On peut aussi prendre $2$, $4$, $6$ (somme $12$), ou plus généralement $k$, $2k$, $3k$ pour n'importe quel entier $k \geqslant 1$ : leur somme $6k$ est divisible par $k$, par $2k$ et par $3k$.

**b)** Prenons $1$, $2$ et $4$. Leur somme vaut $7$, qui est divisible par $7$. Or $7$ ne divise ni $1$, ni $2$, ni $4$ : un diviseur d'un entier strictement positif ne peut pas être plus grand que lui.

Ce raisonnement marche avec n'importe quels trois nombres strictement positifs : leur somme est plus grande que chacun d'eux, donc elle divise la somme sans diviser aucun des trois.

Un exemple moins évident : $1$, $4$ et $7$ ont tous un reste de $1$ dans la division par $3$. Leur somme $12$ a donc le même reste que $1 + 1 + 1 = 3$, c'est-à-dire $0$ : elle est divisible par $3$, alors qu'aucun des trois nombres ne l'est.

**Conclusion : par exemple $1$, $2$, $3$ pour a), et $1$, $2$, $4$ avec le nombre $7$ pour b).**

## Going further

Montrer que, dans la question a), les seules solutions sont les triplets $k$, $2k$, $3k$.

*Piste : si $a < b < c$, alors $c$ divise $a + b + c$, donc $c$ divise $a + b$, qui est strictement compris entre $0$ et $2c$. Donc $a + b = c$. Que donne ensuite le fait que $b$ divise la somme ?*
