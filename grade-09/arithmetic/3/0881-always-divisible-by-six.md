---
id: "0881"
title: "Toujours divisible par 6"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [divisibilite, factorisation, entiers consecutifs, parite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes issus des envois POFM (problèmes 1-3) », niveau collège - débutants, 12 mai 2023"
  reference: "Preparation.POFM.pdf, exercice 7, d'après les envois POFM 2019-2022"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Preparation.POFM.pdf"
---

## Statement

Montrer que pour tout entier $n$, le nombre $n^3 - 7n$ est divisible par $6$.

## Hints

1. Vérifie d'abord sur quelques valeurs : $n = 2$, $n = 3$, $n = 4$. Cela a l'air vrai, mais pourquoi ?
2. Le $7$ est encombrant. Écris $n^3 - 7n = (n^3 - n) - 6n$ : pourquoi le morceau $6n$ ne pose-t-il aucun problème ?
3. Factorise $n^3 - n$. Tu devrais tomber sur trois entiers qui se suivent.
4. Parmi trois entiers consécutifs, combien y a-t-il de multiples de $3$ ? de nombres pairs ? Et un nombre à la fois pair et multiple de $3$, est-il forcément multiple de $6$ ?

## Solution

**L'idée : se débarrasser du $7$, puis factoriser pour faire apparaître trois entiers consécutifs.**

**Étape 1. On sépare un multiple de 6 bien visible.**

$$n^3 - 7n = n^3 - n - 6n = (n^3 - n) - 6n.$$

Le morceau $6n$ est évidemment un multiple de $6$. Il suffit donc de montrer que $n^3 - n$ est un multiple de $6$ : une différence de deux multiples de $6$ est encore un multiple de $6$.

**Étape 2. On factorise.**

$$n^3 - n = n(n^2 - 1) = n(n-1)(n+1) = (n-1) \times n \times (n+1).$$

C'est le produit de **trois entiers consécutifs**.

**Étape 3. Ce produit est un multiple de 3.** Parmi trois entiers consécutifs, les restes dans la division par $3$ sont trois restes qui se suivent, donc ce sont $0$, $1$ et $2$ dans un certain ordre : l'un des trois entiers a pour reste $0$, c'est un multiple de $3$. Le produit est donc un multiple de $3$.

**Étape 4. Ce produit est pair.** Parmi deux entiers consécutifs, il y en a toujours un qui est pair ; c'est vrai en particulier pour $n-1$ et $n$. Le produit est donc pair.

**Étape 5. Pair et multiple de 3, donc multiple de 6.** Notons $P = (n-1)n(n+1)$. Comme $P$ est un multiple de $3$, écrivons $P = 3k$ avec $k$ entier. Comme $P$ est pair et que $3$ est impair, le nombre $k$ est nécessairement pair (si $k$ était impair, le produit $3k$ de deux impairs serait impair). Écrivons $k = 2k'$ : alors

$$P = 3 \times 2k' = 6k'.$$

Le produit $P$ est bien un multiple de $6$.

**Conclusion.** $n^3 - 7n = P - 6n$ est une différence de deux multiples de $6$, c'est donc un multiple de $6$, et cela pour tout entier $n$.

*Vérification sur trois exemples :* $n = 2$ donne $8 - 14 = -6$ ; $n = 3$ donne $27 - 21 = 6$ ; $n = 4$ donne $64 - 28 = 36$. Tous sont bien des multiples de $6$.

## Going further

Le même découpage règle beaucoup d'énoncés de ce type. Par exemple $n^3 + 5n$ : on écrit $n^3 + 5n = (n^3 - n) + 6n$, et c'est fini. Plus généralement, $n^3 + an$ est divisible par $6$ dès que $a + 1$ est un multiple de $6$, c'est-à-dire pour $a = 5$, $a = 11$, $a = -7$, $a = -1$, etc.
