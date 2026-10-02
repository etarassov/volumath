---
id: "12404"
title: "Les nombres dont le carré a la même somme des chiffres"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [somme-des-chiffres, congruences, carres, construction, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 10 janvier 2018"
  reference: "2018-01_pofm-2017-2018-test-janvier.pdf, exercices du groupe B, exercice 1 ; corrigé 2018-01_pofm-2017-2018-test-janvier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/01/pofm-2017-2018-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2018-01_pofm-2017-2018-test-janvier.pdf"
---

## Statement

Pour tout entier naturel $n$, on note $S(n)$ la somme des chiffres de $n$ en écriture décimale.
Par exemple $S(2018) = 2 + 0 + 1 + 8 = 11$.

On dit qu'un entier naturel $n$ est **joli** si $S(n) = S(n^2)$. Par exemple, $9$ est joli, car
$9^2 = 81$ et $8 + 1 = 9$.

Déterminer toutes les valeurs que peut prendre $S(n)$ lorsque $n$ est un entier joli.

## Hints

1. Un nombre et la somme de ses chiffres ont le même reste dans la division par $9$. Pourquoi ?
2. Si $n$ est joli, montre que $n^2 - n = n(n-1)$ est divisible par $9$. Les nombres $n$ et
   $n - 1$ peuvent-ils être tous les deux multiples de $3$ ?
3. Tu dois trouver que $S(n)$ a un reste égal à $0$ ou à $1$ dans la division par $9$. Pour
   montrer que toutes ces valeurs sont atteintes, calcule $99^2$, $999^2$, puis $199^2$,
   $1999^2$.

## Solution

### Un rappel : $n$ et $S(n)$ ont le même reste modulo 9

Écrivons $n$ avec ses chiffres : $n = c_0 + 10\,c_1 + 100\,c_2 + \cdots$, et
$S(n) = c_0 + c_1 + c_2 + \cdots$. Alors
$$n - S(n) = 9\,c_1 + 99\,c_2 + 999\,c_3 + \cdots,$$
et chaque nombre $99\ldots9$ est un multiple de $9$. Donc $n - S(n)$ est divisible par $9$ :
**$n$ et $S(n)$ ont le même reste dans la division par $9$.**

### Étape 1 : une condition nécessaire

Soit $n$ un entier joli. D'après le rappel, $n - S(n)$ et $n^2 - S(n^2)$ sont divisibles par $9$.
Comme $S(n) = S(n^2)$, leur différence
$$(n^2 - S(n^2)) - (n - S(n)) = n^2 - n = n(n-1)$$
est divisible par $9$.

Or $n$ et $n - 1$ sont deux entiers consécutifs : ils ne peuvent pas être tous les deux
multiples de $3$. Le facteur $9 = 3 \times 3$ doit donc se trouver entièrement dans l'un des deux :
soit $9$ divise $n$, soit $9$ divise $n - 1$. Autrement dit, $n$ a pour reste $0$ ou $1$ dans la
division par $9$.

Comme $S(n)$ a le même reste que $n$, **$S(n)$ a pour reste $0$ ou $1$ dans la division par $9$.**
Les seules valeurs possibles sont donc
$$0, \ 1, \ 9, \ 10, \ 18, \ 19, \ 27, \ 28, \ \ldots$$

### Étape 2 : toutes ces valeurs sont atteintes

- La valeur $0$ est atteinte par $n = 0$, et la valeur $1$ par $n = 1$.
- **Les multiples de 9.** Soit $k \geqslant 1$ et $n = 10^k - 1 = 99\ldots9$ ($k$ chiffres $9$).
  Alors $S(n) = 9k$, et
  $$n^2 = 10^{2k} - 2 \times 10^k + 1 = (10^k - 2) \times 10^k + 1.$$
  Le nombre $10^k - 2$ s'écrit $99\ldots98$ (avec $k - 1$ chiffres $9$). Le multiplier par $10^k$
  ajoute $k$ zéros, et ajouter $1$ remplace le dernier zéro par un $1$ :
  $$n^2 = \underbrace{9\ldots9}_{k-1}\,8\,\underbrace{0\ldots0}_{k-1}\,1.$$
  Donc $S(n^2) = 9(k-1) + 8 + 1 = 9k = S(n)$. Par exemple $999^2 = 998\,001$.
- **Les multiples de 9 plus 1.** Soit $k \geqslant 1$ et $n = 2 \times 10^k - 1 = 199\ldots9$
  ($k$ chiffres $9$). Alors $S(n) = 9k + 1$, et
  $$n^2 = 4 \times 10^{2k} - 4 \times 10^k + 1 = (4 \times 10^k - 4) \times 10^k + 1.$$
  Le nombre $4 \times 10^k - 4$ s'écrit $399\ldots96$ (avec $k - 1$ chiffres $9$), donc
  $$n^2 = 3\,\underbrace{9\ldots9}_{k-1}\,6\,\underbrace{0\ldots0}_{k-1}\,1,$$
  et $S(n^2) = 3 + 9(k-1) + 6 + 1 = 9k + 1 = S(n)$. Par exemple $199^2 = 39\,601$.

### Conclusion

Les valeurs possibles de $S(n)$ pour un entier joli $n$ sont **exactement les entiers naturels
dont le reste dans la division par $9$ vaut $0$ ou $1$** : $0, 1, 9, 10, 18, 19, \ldots$
