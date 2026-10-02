---
id: "2812"
title: "11ⁿ − 4ⁿ est un multiple de 7"
grade: 12
theme: arithmetic
difficulty: 2
duration_min: 20
tags: [recurrence, divisibilite, puissances, multiples]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School I, Proofs using Induction"
  reference: "Handout-772-875.pdf, problème 2 c) (et 2 b), « Challenge » pour les prolongements)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-772-875.pdf"
---

## Statement

Démontrer que pour tout entier $n \geqslant 0$, le nombre

$$11^n - 4^n$$

est un multiple de $7$.

## Hints

1. Commence par vérifier sur les premières valeurs : $n = 0$, $n = 1$, $n = 2$, $n = 3$. Quels multiples de $7$ obtiens-tu ?
2. La démonstration se fait par récurrence. Énonce clairement la propriété $P(n)$ : « il existe un entier $k$ tel que $11^n - 4^n = 7k$ ».
3. Pour l'hérédité, exprime $11^{n+1}$ en fonction de $11^n$, et $4^{n+1}$ en fonction de $4^n$.
4. L'astuce habituelle : écris $11^{n+1} - 4^{n+1} = 11 \times 11^n - 4 \times 4^n$, puis fais apparaître artificiellement $11 \times 4^n$ en l'ajoutant et en le retranchant.
5. Le nombre $11 - 4$ va alors apparaître tout seul.

## Solution

**Quelques vérifications d'abord.**

$$n = 0 : \; 1 - 1 = 0 = 7 \times 0 ; \qquad n = 1 : \; 11 - 4 = 7 ; \qquad n = 2 : \; 121 - 16 = 105 = 7 \times 15 ;$$
$$n = 3 : \; 1331 - 64 = 1267 = 7 \times 181 .$$

**La propriété à démontrer.**

Pour $n \geqslant 0$, on pose

$$P(n) : \quad \text{il existe un entier } k \text{ tel que } 11^n - 4^n = 7k .$$

**Initialisation.** Pour $n = 0$ : $11^0 - 4^0 = 1 - 1 = 0 = 7 \times 0$. Donc $P(0)$ est vraie.

**Hérédité.** Supposons $P(n)$ vraie pour un entier $n \geqslant 0$ : il existe un entier $k$ tel que

$$11^n - 4^n = 7k, \qquad \text{c'est-à-dire} \qquad 11^n = 4^n + 7k .$$

Calculons alors :

$$11^{n+1} - 4^{n+1} = 11 \times 11^n - 4 \times 4^n = 11\left(4^n + 7k\right) - 4 \times 4^n .$$

En développant :

$$11^{n+1} - 4^{n+1} = 11 \times 4^n + 77k - 4 \times 4^n = (11 - 4) \times 4^n + 77k = 7 \times 4^n + 7 \times 11k .$$

Donc

$$11^{n+1} - 4^{n+1} = 7\left(4^n + 11k\right),$$

et $4^n + 11k$ est bien un entier. La propriété $P(n+1)$ est vraie.

**Conclusion.** $P(0)$ est vraie et $P$ est héréditaire, donc par récurrence, pour tout entier $n \geqslant 0$, le nombre $11^n - 4^n$ est un multiple de $7$.

**Une deuxième preuve, sans récurrence.** On connaît l'identité, valable pour tous nombres $a$ et $b$ et tout entier $n \geqslant 1$ :

$$a^n - b^n = (a - b)\left(a^{n-1} + a^{n-2}b + \cdots + a b^{n-2} + b^{n-1}\right).$$

Avec $a = 11$ et $b = 4$, le premier facteur vaut $11 - 4 = 7$, et le second est un entier. La divisibilité par $7$ est immédiate. Cette identité explique aussi pourquoi le résultat n'a rien de particulier à $11$ et $4$ : pour tous entiers $a$ et $b$, $a^n - b^n$ est toujours un multiple de $a - b$.

## Going further

1. Démontrer de la même façon que $5^n - 1$ est un multiple de $4$ pour tout $n \geqslant 0$.
2. Démontrer que $2^{n+2} + 7^n$ est un multiple de $5$ pour tout $n \geqslant 0$. (L'identité de la deuxième preuve ne s'applique pas directement : ici la récurrence est vraiment utile.)
3. Démontrer que $n^3 - n$ est un multiple de $6$ pour tout entier $n$. Trouver une preuve en une ligne en factorisant.
