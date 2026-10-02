---
id: "12812"
title: "Une somme de factorielles égale à 1 + 2 + ⋯ + n"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [factorielle, restes, congruences, equation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de février 2023"
  reference: "2023-09_Enonce-Test-3.pdf, test junior, exercice 2 ; corrigé 2023-09_Corrige-Test-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/09/Enonce-Test-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-09_Enonce-Test-3.pdf"
---

## Statement

Trouver tous les couples d'entiers $(k, n)$, avec $k \geq 1$ et $n \geq 1$, tels que

$$1! + 2! + \cdots + k! = 1 + 2 + \cdots + n.$$

On rappelle que $k! = 1 \times 2 \times \cdots \times k$.

## Hints

1. Calculez le membre de gauche pour $k = 1, 2, 3, 4, 5$, et cherchez à chaque fois s'il s'écrit $1 + 2 + \cdots + n$.
2. Le membre de droite vaut $\frac{n(n+1)}{2}$. Pour les grandes valeurs de $k$, il faut une raison pour laquelle l'égalité est impossible : cherchez un nombre $m$ tel que les restes dans la division par $m$ ne puissent pas coïncider.
3. À partir d'un certain rang, $k!$ est un multiple de $7$. Que dire alors du reste de $1! + 2! + \cdots + k!$ dans la division par $7$ ? Et quels restes peut avoir $n(n+1)$ ?

## Solution

La réponse : les couples solutions sont $(1, 1)$, $(2, 2)$ et $(5, 17)$.

Notons $A_k = 1! + 2! + \cdots + k!$ et $B_n = 1 + 2 + \cdots + n = \frac{n(n+1)}{2}$. On cherche les couples tels que $A_k = B_n$, c'est-à-dire $2A_k = n(n+1)$.

### Les petites valeurs de k

On calcule $A_1 = 1$, $A_2 = 3$, $A_3 = 9$, $A_4 = 33$ et $A_5 = 153$. Les nombres $B_n$ sont, dans l'ordre,

$$1,\ 3,\ 6,\ 10,\ 15,\ 21,\ 28,\ 36,\ 45,\ 55,\ 66,\ 78,\ 91,\ 105,\ 120,\ 136,\ 153,\ 171,\ \ldots$$

- $A_1 = 1 = B_1$ et $A_2 = 3 = B_2$.
- $A_3 = 9$ est entre $B_3 = 6$ et $B_4 = 10$ : ce n'est pas un $B_n$.
- $A_4 = 33$ est entre $B_7 = 28$ et $B_8 = 36$ : ce n'est pas un $B_n$.
- $A_5 = 153 = B_{17}$, car $\frac{17 \times 18}{2} = 153$.

On obtient les trois couples $(1, 1)$, $(2, 2)$ et $(5, 17)$.

### Pour k ≥ 6, il n'y a pas de solution

On regarde les restes dans la division par $7$.

**Le membre de gauche.** On a $A_6 = 153 + 720 = 873 = 7 \times 124 + 5$. Pour $j \geq 7$, le nombre $j! = 1 \times 2 \times \cdots \times 7 \times \cdots \times j$ est un multiple de $7$. Donc, pour tout $k \geq 6$,

$$A_k = A_6 + (7! + \cdots + k!) = A_6 + \text{un multiple de } 7,$$

et $A_k$ a le même reste que $A_6$, c'est-à-dire $5$. Alors $2A_k$ a le même reste que $2 \times 5 = 10$, c'est-à-dire $3$.

**Le membre de droite.** Le reste de $n(n+1)$ dans la division par $7$ ne dépend que du reste $r$ de $n$ : si $n = 7q + r$, alors $n(n+1) = 7 \times (\text{un entier}) + r(r+1)$. On fait le tableau.

| reste $r$ de $n$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 |
|---|---|---|---|---|---|---|---|
| $r(r+1)$ | 0 | 2 | 6 | 12 | 20 | 30 | 42 |
| reste de $n(n+1)$ | 0 | 2 | 6 | 5 | 6 | 2 | 0 |

Le reste de $n(n+1)$ est donc toujours $0$, $2$, $5$ ou $6$, jamais $3$.

Ainsi, pour $k \geq 6$, les deux nombres $2A_k$ et $n(n+1)$ n'ont pas le même reste dans la division par $7$ : ils ne peuvent pas être égaux.

**Conclusion : les solutions sont $(k, n) = (1, 1)$, $(2, 2)$ et $(5, 17)$.**

## Going further

1. Pourquoi ne pas avoir essayé les restes dans la division par $2$, $3$, $4$, $5$ ou $8$ ? Montrez que, pour tout $k \geq 5$, la différence $A_k - B_{17}$ est un multiple de $120$. En déduire qu'aucun diviseur de $120$ ne peut servir à exclure les grandes valeurs de $k$.
