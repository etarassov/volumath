---
id: "12604"
title: "3²ⁿ⁺¹ + 2ⁿ⁺² est divisible par 35 quand n = 2021"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [divisibilite, puissances, factorisation, multiples]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 6 janvier 2021"
  reference: "2021-01_Enonce-Test-2.pdf, exercice 1 (junior) ; corrigé 2021-01_Corrige-Test-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/01/Énoncé-Test-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-01_Enonce-Test-2.pdf"
---

## Statement

On pose $n = 2021$. Démontrer que le nombre
$$N = 3^{2n+1} + 2^{n+2}$$
est divisible par $35$.

## Hints

1. On a $35 = 5 \times 7$. Commence par montrer que $N$ est divisible par $7$, puis qu'il est
   divisible par $5$.
2. Écris $3^{2n+1} = 3 \times 9^n$ et $2^{n+2} = 4 \times 2^n$. Développe
   $(x - y)(x^2 + xy + y^2)$ : que peux-tu dire de $x^n - y^n$ en général ?
3. Pour $7$ : fais apparaître $9^n - 2^n$ dans $N$.
4. Pour $5$ : remarque que $9 = 10 - 1$ et que $2^4 = 16 = 15 + 1$. C'est ici que la valeur
   $n = 2021$ compte.

## Solution

On écrit
$$N = 3^{2n+1} + 2^{n+2} = 3 \times 9^n + 4 \times 2^n .$$

### Un outil : $x^n - y^n$ est un multiple de $x - y$

Pour des entiers $x$, $y$ et un entier $n \geqslant 1$, on a
$$x^n - y^n = (x - y)\left(x^{n-1} + x^{n-2}y + \cdots + x y^{n-2} + y^{n-1}\right).$$
On le vérifie en développant le membre de droite : tous les termes se simplifient deux à deux,
sauf $x^n$ et $-y^n$. Comme la grande parenthèse est un entier, **$x^n - y^n$ est un multiple de
$x - y$**.

Par exemple, $9^n - 2^n$ est un multiple de $9 - 2 = 7$, et $16^m - 1$ est un multiple de
$16 - 1 = 15$.

Si de plus $n$ est **impair**, alors $(-y)^n = -y^n$, donc $x^n + y^n = x^n - (-y)^n$ est un
multiple de $x - (-y) = x + y$. Par exemple, pour $n$ impair, $9^n + 1$ est un multiple de
$9 + 1 = 10$.

### $N$ est divisible par $7$

On fait apparaître $9^n - 2^n$ :
$$N = 3 \times 9^n + 4 \times 2^n = 3\,(9^n - 2^n) + 3 \times 2^n + 4 \times 2^n
= 3\,(9^n - 2^n) + 7 \times 2^n .$$
Le premier terme est un multiple de $7$ d'après l'outil, et le second aussi. Donc $N$ est
divisible par $7$. (Cela marche d'ailleurs pour tout $n \geqslant 1$.)

### $N$ est divisible par $5$

Ici on utilise $n = 2021$.

- Comme $2021$ est impair, $9^{2021} + 1$ est un multiple de $10$, donc de $5$.
- On a $2021 = 4 \times 505 + 1$, donc $2^{2021} = 2 \times 2^{2020} = 2 \times 16^{505}$, et
  $16^{505} - 1$ est un multiple de $15$, donc de $5$.

On réécrit alors $N$ :
$$N = 3 \times 9^{2021} + 4 \times 2 \times 16^{505}
= 3\,(9^{2021} + 1) - 3 + 8\,(16^{505} - 1) + 8$$
$$N = 3\,(9^{2021} + 1) + 8\,(16^{505} - 1) + 5 .$$
Les trois termes sont des multiples de $5$, donc $N$ est divisible par $5$.

### Conclusion

On a $N = 7q$ et $N = 5r$ pour des entiers $q$ et $r$. Alors, comme $21 - 20 = 1$,
$$N = 21N - 20N = 21 \times 5r - 20 \times 7q = 35\,(3r - 4q).$$

**Le nombre $3^{2n+1} + 2^{n+2}$ est donc bien divisible par $35$ lorsque $n = 2021$.**

## Going further

- La divisibilité par $7$ est vraie pour tout $n \geqslant 1$, mais pas celle par $5$. Par
  exemple, pour $n = 2$, on trouve $3^5 + 2^4 = 243 + 16 = 259 = 7 \times 37$, qui n'est pas
  divisible par $5$. Montrer que $N$ est divisible par $35$ exactement quand le reste de $n$
  dans la division par $4$ vaut $1$ (c'est le cas pour $n = 1$ : $27 + 8 = 35$).
- On peut aussi raisonner avec les restes : le reste d'un produit dans la division par $7$ ne
  dépend que des restes des facteurs. Comme $9$ et $2$ ont le même reste dans la division par
  $7$, les nombres $9^n$ et $2^n$ aussi. Les élèves qui connaissent les congruences écriront
  $9 \equiv 2 \pmod 7$, donc $N \equiv 3 \times 2^n + 4 \times 2^n = 7 \times 2^n \equiv 0 \pmod 7$.
