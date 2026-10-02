---
id: "2001"
title: "Neuf divise toujours 4ⁿ + 15n − 1"
grade: 12
theme: arithmetic
difficulty: 2
duration_min: 20
tags: [recurrence, divisibilite, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Induction I"
  reference: "Handout-991-1043.pdf, exercice 12"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-991-1043.pdf"
---

## Statement

Démontrer que pour tout entier naturel $n$, le nombre

$$4^n + 15n - 1$$

est divisible par $9$.

## Hints

1. Essayez avec $n = 0$, $n = 1$, $n = 2$, $n = 3$. Que valent les quatre nombres obtenus ?
2. C'est une propriété qui dépend d'un entier $n$ et qu'il faut prouver pour tous les entiers : le raisonnement par récurrence est fait pour cela.
3. Pour l'hérédité, calculez la différence entre le nombre au rang $n+1$ et le nombre au rang $n$. Essayez d'y faire apparaître $4^n + 15n - 1$.
4. $4^{n+1} = 4 \times 4^n$. Écrivez $4^{n+1} + 15(n+1) - 1$ sous la forme $4\big(4^n + 15n - 1\big) + \text{quelque chose}$.

## Solution

On note $u_n = 4^n + 15n - 1$ et on démontre par récurrence que $9$ divise $u_n$ pour tout entier naturel $n$.

**Initialisation.** Pour $n = 0$ : $u_0 = 4^0 + 0 - 1 = 0$, et $9$ divise $0$. La propriété est vraie au rang $0$.

**Hérédité.** Supposons que pour un certain entier $n$, le nombre $u_n = 4^n + 15n - 1$ soit divisible par $9$ : il existe donc un entier $k$ tel que

$$4^n + 15n - 1 = 9k, \qquad \text{c'est-à-dire} \qquad 4^n = 9k - 15n + 1.$$

Calculons le nombre au rang suivant :

$$u_{n+1} = 4^{n+1} + 15(n+1) - 1 = 4 \times 4^n + 15n + 14.$$

Remplaçons $4^n$ par $9k - 15n + 1$ :

$$u_{n+1} = 4(9k - 15n + 1) + 15n + 14 = 36k - 60n + 4 + 15n + 14 = 36k - 45n + 18.$$

Or

$$36k - 45n + 18 = 9\,(4k - 5n + 2),$$

et $4k - 5n + 2$ est un entier. Donc $u_{n+1}$ est divisible par $9$.

**Conclusion.** La propriété est vraie au rang $0$ et elle est héréditaire, donc par récurrence $4^n + 15n - 1$ est divisible par $9$ pour tout entier naturel $n$.

## Going further

On peut aussi présenter la même idée sans récurrence, en calculant la différence de deux termes consécutifs :

$$u_{n+1} - 4u_n = \big(4^{n+1} + 15n + 14\big) - 4\big(4^n + 15n - 1\big) = -45n + 18 = 9(2 - 5n).$$

Ainsi $u_{n+1} = 4u_n + 9(2-5n)$ : si $u_n$ est un multiple de $9$, alors $u_{n+1}$ aussi. C'est exactement l'hérédité, écrite autrement.
