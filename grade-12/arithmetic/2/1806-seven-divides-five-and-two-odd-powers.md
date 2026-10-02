---
id: "1806"
title: "Sept divise 5^(2n+1) + 2^(2n+1)"
grade: 12
theme: arithmetic
difficulty: 2
duration_min: 25
tags: [recurrence, divisibilite, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Induction I"
  reference: "Handout-1475-1433.pdf, exercice 3"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1475-1433.pdf"
---

## Statement

Démontrer que, pour tout entier naturel $n$, le nombre

$$u_n = 5^{2n+1} + 2^{2n+1}$$

est divisible par $7$.

## Hints

1. Calcule $u_0$, $u_1$ et $u_2$ et vérifie à la main qu'ils sont bien multiples de $7$.
2. Une récurrence convient. Pour l'hérédité, exprime $u_{n+1}$ à partir de $u_n$.
3. Quand on passe de $2n+1$ à $2n+3$, l'exposant augmente de $2$ : la puissance de $5$ est multipliée par $25$ et celle de $2$ par $4$.
4. $u_{n+1} = 25 \times 5^{2n+1} + 4 \times 2^{2n+1}$. Les deux coefficients ne sont pas les mêmes, c'est là toute la difficulté : essaie d'en faire apparaître un commun.
5. Écris $25 = 4 + 21$. Que devient alors $u_{n+1}$ ?

## Solution

Posons, pour $n \ge 0$, $u_n = 5^{2n+1} + 2^{2n+1}$, et notons $D(n)$ la propriété « $u_n$ est divisible par $7$ ».

**Initialisation.**

$$u_0 = 5^1 + 2^1 = 7,$$

qui est bien divisible par $7$. Donc $D(0)$ est vraie.

**Hérédité.**

Soit $n \ge 0$ tel que $u_n$ soit divisible par $7$. Calculons $u_{n+1}$ :

$$u_{n+1} = 5^{2(n+1)+1} + 2^{2(n+1)+1} = 5^{2n+3} + 2^{2n+3} = 25 \times 5^{2n+1} + 4 \times 2^{2n+1}.$$

Le problème est que les deux coefficients, $25$ et $4$, sont différents : on ne peut pas reconnaître $u_n$ directement. L'astuce est d'écrire $25 = 4 + 21$ :

$$u_{n+1} = (4 + 21) \times 5^{2n+1} + 4 \times 2^{2n+1} = 4\left(5^{2n+1} + 2^{2n+1}\right) + 21 \times 5^{2n+1},$$

c'est-à-dire

$$u_{n+1} = 4\,u_n + 21 \times 5^{2n+1}.$$

Regardons les deux morceaux :

- $4\,u_n$ est divisible par $7$, puisque $u_n$ l'est par hypothèse de récurrence ;
- $21 \times 5^{2n+1}$ est divisible par $7$, puisque $21 = 3 \times 7$.

Une somme de deux multiples de $7$ est un multiple de $7$. Donc $u_{n+1}$ est divisible par $7$ : $D(n+1)$ est vraie.

**Conclusion.**

Par récurrence, $5^{2n+1} + 2^{2n+1}$ est divisible par $7$ pour tout entier naturel $n$.

**Vérification.** $u_1 = 125 + 8 = 133 = 7 \times 19$ et $u_2 = 3125 + 32 = 3157 = 7 \times 451$.

## Going further

1. Avec les congruences : $5^2 = 25 \equiv 4 \pmod 7$ et $2^2 = 4$, donc $5^{2n+1} \equiv 5 \times 4^n$ et $2^{2n+1} \equiv 2 \times 4^n$ modulo $7$. Conclus en une ligne.
2. Démontre de la même manière que $3^{2n+1} + 2^{4n+2}$ est divisible par $13$ pour tout entier naturel $n$.
