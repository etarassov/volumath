---
id: "12606"
title: "Une suite de multiples qui part de 63"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [suites, multiples, inegalite, recurrence]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 6 janvier 2021"
  reference: "2021-01_Enonce-Test-2.pdf, exercice 3 (junior) ; corrigé 2021-01_Corrige-Test-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/01/Énoncé-Test-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-01_Enonce-Test-2.pdf"
---

## Statement

On construit une liste de nombres $a_1, a_2, a_3, \ldots$ de la façon suivante :

- $a_1 = 63$ ;
- pour tout entier $n \geqslant 2$, $a_n$ est le plus petit multiple de $n$ qui soit supérieur ou
  égal à $a_{n-1}$.

Démontrer que les nombres de cette liste sont deux à deux distincts.

## Hints

1. Calcule les dix premiers termes. Par exemple $a_2 = 64$, puisque $64$ est le plus petit
   multiple de $2$ qui vaut au moins $63$.
2. Chaque terme est au moins égal au précédent. Il suffit donc de montrer que deux termes
   **consécutifs** ne sont jamais égaux.
3. Regarde $a_9$, $a_{10}$, $a_{11}$ : que remarques-tu ?
4. Suppose que $a_{n-1} = 9(n-1)$ avec $n \geqslant 10$. Entre quels multiples de $n$ se trouve
   le nombre $9n - 9$ ?

## Solution

### Les premiers termes

On calcule pas à pas :

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ | $11$ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| $a_n$ | $63$ | $64$ | $66$ | $68$ | $70$ | $72$ | $77$ | $80$ | $81$ | $90$ | $99$ |

Par exemple, $a_7 = 77$, car les multiples de $7$ sont $\ldots, 70, 77, 84, \ldots$ et le plus
petit d'entre eux qui vaut au moins $a_6 = 72$ est $77$.

Ces onze nombres augmentent strictement, et à partir de $n = 9$ on voit que $a_n = 9n$ :
$a_9 = 81$, $a_{10} = 90$, $a_{11} = 99$.

### À partir de $n = 9$, on a toujours $a_n = 9n$

C'est vrai pour $n = 9$. Supposons que $a_{n-1} = 9(n - 1) = 9n - 9$ pour un certain entier
$n \geqslant 10$, et cherchons $a_n$, le plus petit multiple de $n$ qui vaut au moins $9n - 9$.

- D'une part $9n - 9 \leqslant 9n$, et $9n$ est un multiple de $n$.
- D'autre part $8n < 9n - 9$, car cela revient à $9 < n$, ce qui est vrai puisque
  $n \geqslant 10$.

Le nombre $9n - 9$ est donc strictement entre le multiple $8n$ et le multiple $9n$. Le plus
petit multiple de $n$ qui vaut au moins $9n - 9$ est donc $9n$, c'est-à-dire $a_n = 9n$.

De proche en proche (c'est une récurrence), on obtient $a_n = 9n$ pour tout $n \geqslant 9$.

### Conclusion

Les termes $a_1, \ldots, a_9$ sont $63, 64, 66, 68, 70, 72, 77, 80, 81$ : ils augmentent
strictement. À partir de $a_9$, on a $a_n = 9n$, qui augmente aussi strictement, de $9$ à chaque
étape. Toute la liste est donc **strictement croissante** :
$$a_1 < a_2 < a_3 < \cdots$$

**Deux termes de rangs différents ne peuvent donc pas être égaux : les termes de la suite sont
deux à deux distincts.**

## Going further

- Ce qui fait marcher l'exercice, c'est que le quotient $a_n / n$ diminue
  ($63, 32, 22, 17, 14, 12, 11, 10, 9$) jusqu'à se stabiliser. Deux termes consécutifs sont égaux
  exactement quand $n$ divise déjà $a_{n-1}$.
- Que se passe-t-il si l'on part de $a_1 = 64$ au lieu de $63$ ? Les termes sont-ils encore deux
  à deux distincts ?
