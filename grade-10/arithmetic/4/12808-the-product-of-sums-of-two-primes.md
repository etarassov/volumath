---
id: "12808"
title: "Le produit des sommes de deux nombres premiers"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [nombres-premiers, divisibilite, factorielle, parite, restes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de janvier 2023"
  reference: "2023-01_Enonce-Web-Test-2.pdf, test junior, exercice 4, et test senior, exercice 5 (le même énoncé) ; corrigé 2023-01_Corrige-Web-Test-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Énoncé-Web-Test-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-01_Enonce-Web-Test-2.pdf"
---

## Statement

Soit $n \geq 3$ un entier. Pour chaque couple de nombres premiers $p$ et $q$ tels que $p < q \leq n$, Morgane écrit la somme $p + q$ au tableau. Elle note ensuite $P(n)$ le produit de toutes ces sommes. Par exemple,

$$P(5) = (2 + 3) \times (2 + 5) \times (3 + 5) = 280.$$

Si deux couples différents donnent la même somme, Morgane écrit les deux. Par exemple, pour $n = 13$, elle écrit bien $3 + 13$ et aussi $5 + 11$.

Trouver tous les entiers $n \geq 3$ pour lesquels $n!$ divise $P(n)$.

## Hints

1. Calculez $P(n)$ et $n!$ pour les petites valeurs de $n$. Lesquelles conviennent ?
2. Soit $r$ le plus grand nombre premier inférieur ou égal à $n$. Il divise $n!$, donc il doit diviser l'une des sommes $p + q$. Comparez $p + q$ et $2r$ : que vaut $p + q$ ? Que vaut $p$ ?
3. Vous savez maintenant que $r - 2$ est premier. Notez $q = r - 2$ et faites le même raisonnement avec $q$ : montrez que $q - 2$ est premier aussi.
4. Trois nombres premiers $q - 2$, $q$, $q + 2$ : regardez leurs restes dans la division par $3$.

## Solution

La réponse : seul $n = 7$ convient.

### Étape 1 : le plus grand nombre premier r ≤ n

Supposons que $n!$ divise $P(n)$. Soit $r$ le plus grand nombre premier tel que $r \leq n$. Comme $n \geq 3$, on a $r \geq 3$.

Le nombre premier $r$ divise $n! = 1 \times 2 \times \cdots \times n$, donc il divise $P(n)$. Un nombre premier qui divise un produit divise l'un des facteurs : il existe donc des nombres premiers $p < q \leq n$ tels que $r$ divise $p + q$.

Comme $p < q \leq r$ (car $r$ est le plus grand premier jusqu'à $n$), on a $p + q < 2r$. Le seul multiple de $r$ strictement entre $0$ et $2r$ est $r$, donc

$$p + q = r.$$

Le nombre $r$ est impair (il vaut au moins $3$, et $3 = p + q$ est impossible avec deux premiers distincts). La somme de deux nombres impairs est paire, donc $p$ et $q$ ne sont pas tous deux impairs : $p = 2$, et $q = r - 2$. **Donc $r - 2$ est premier.**

### Étape 2 : le nombre premier q = r − 2

Le nombre premier $q = r - 2 \leq n$ divise lui aussi $n!$, donc $P(n)$. Il existe donc des nombres premiers $u < v \leq n$ tels que $q$ divise $u + v$. Deux cas.

- **Si $v \leq q$**, alors $u + v < 2q$, donc $u + v = q$. Comme $q$ est impair, comme à l'étape 1, $u = 2$ et $v = q - 2$ : le nombre $q - 2$ est premier.
- **Si $v > q$**, alors $v$ est un nombre premier tel que $q < v \leq r = q + 2$. Comme $q + 1$ est pair et plus grand que $2$, il n'est pas premier, donc $v = q + 2$. Ensuite $u < v$ et $u$ ne peut pas valoir $q + 1$, donc $u \leq q$ et

$$q < u + v \leq q + (q + 2) = 2q + 2 < 3q$$

(la dernière inégalité vient de $q \geq 3$). Le seul multiple de $q$ dans cet intervalle est $2q$, donc $u + v = 2q$ et $u = 2q - (q + 2) = q - 2$ : le nombre $q - 2$ est premier.

Dans les deux cas, **les trois nombres $q - 2$, $q$ et $q + 2$ sont premiers**.

### Étape 3 : les restes dans la division par 3

Les nombres $q - 2$, $q$, $q + 2$ ont trois restes différents dans la division par $3$. En effet, $q + 2$ a le même reste que $q - 1$, et $q - 2$, $q - 1$, $q$ sont trois entiers consécutifs. L'un des trois est donc un multiple de $3$, et comme il est premier, il vaut $3$. C'est forcément le plus petit, $q - 2$ : sinon $q - 2$ serait au plus $1$, et ne serait pas premier.

Donc $q - 2 = 3$, $q = 5$ et $r = 7$. Le plus grand nombre premier inférieur ou égal à $n$ est $7$, donc $7 \leq n \leq 10$.

### Étape 4 : les quatre valeurs restantes

Pour $7 \leq n \leq 10$, les nombres premiers jusqu'à $n$ sont $2, 3, 5, 7$, et

$$P(n) = (2+3)(2+5)(2+7)(3+5)(3+7)(5+7) = 5 \times 7 \times 9 \times 8 \times 10 \times 12 = 2^6 \times 3^3 \times 5^2 \times 7.$$

- Pour $n = 7$ : $7! = 5040 = 2^4 \times 3^2 \times 5 \times 7$ divise bien $P(7)$ (le quotient vaut $2^2 \times 3 \times 5 = 60$).
- Pour $n \geq 8$ : $n!$ est un multiple de $2 \times 4 \times 6 \times 8 = 2^7 \times 3$, donc de $2^7$, alors que $P(n)$ ne contient que $2^6$. Ces valeurs ne conviennent pas.

**Conclusion : $n!$ divise $P(n)$ si et seulement si $n = 7$.**

## Going further

1. À l'étape 1, pourquoi avait-on le droit de dire que $p + q < 2r$ et non seulement $p + q \leq 2r$ ? Où sert ce « strictement » ?
