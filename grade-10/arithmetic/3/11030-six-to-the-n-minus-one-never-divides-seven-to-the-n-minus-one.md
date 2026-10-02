---
id: "11030"
title: "6ⁿ − 1 ne divise jamais 7ⁿ − 1"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [divisibilite, restes, puissances, parite, raisonnement-par-labsurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 3 (arithmétique)"
  reference: "2022-01_sujet-envoi-3.pdf, Exercices Seniors, exercice 11 ; corrigé 2022-02_corrige-envoi-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-01_sujet-envoi-3.pdf"
---

## Statement

Trouver tous les entiers $n \geqslant 1$ tels que $6^n - 1$ divise $7^n - 1$.

## Hints

1. Essaie les petites valeurs de $n$. Cherche ensuite un petit nombre premier qui divise $6^n - 1$ pour tout $n$.
2. Le nombre $5$ divise toujours $6^n - 1$, donc il devrait diviser $7^n - 1$. Pour quels $n$ est-ce le cas ? Regarde les restes des puissances de $7$ dans la division par $5$.
3. Tu dois trouver que $n$ est pair. Alors $6^n - 1 = 36^{n/2} - 1$. Quel autre nombre premier divise ce nombre ?

## Solution

Supposons que $6^n - 1$ divise $7^n - 1$, et cherchons une contradiction.

**$5$ divise $6^n - 1$.** Comme $6 = 5 + 1$, le nombre $6^n$ a pour reste $1$ dans la division par $5$
(un produit de nombres de reste $1$ a pour reste $1$). Donc $5$ divise $6^n - 1$, et par conséquent $5$
divise aussi $7^n - 1$.

**Donc $n$ est pair.** Regardons les restes de $7^n$ dans la division par $5$. On a
$7^4 = 2401 = 480 \times 5 + 1$, donc $7^{n+4} - 7^n = 7^n \times 2400$ est un multiple de $5$ : les
restes se répètent tous les quatre pas.

| $n$ | $1$ | $2$ | $3$ | $4$ |
|---|---|---|---|---|
| $7^n$ | $7$ | $49$ | $343$ | $2401$ |
| reste dans la division par $5$ | $2$ | $4$ | $3$ | $1$ |

Le reste vaut $1$ seulement quand $n$ est un multiple de $4$. Comme $5$ divise $7^n - 1$, l'entier $n$ est
un multiple de $4$, et en particulier il est pair.

**Alors $7$ divise $6^n - 1$.** Écrivons $n = 2m$. Alors $6^n = 36^m$, et $36 = 35 + 1$ a pour reste $1$
dans la division par $35$. Donc $36^m$ a aussi pour reste $1$, et $35$ divise $6^n - 1$. En particulier,
$7$ divise $6^n - 1$, donc $7$ divise $7^n - 1$.

**Contradiction.** Or $7$ divise $7^n$, donc $7^n - 1$ a pour reste $6$ dans la division par $7$ : il
n'est pas divisible par $7$.

Il n'existe donc **aucun** entier $n \geqslant 1$ tel que $6^n - 1$ divise $7^n - 1$.
