---
id: "1804"
title: "Quand 2ⁿ dépasse-t-il n² ?"
grade: 12
theme: algebra
difficulty: 3
duration_min: 30
tags: [recurrence, inegalite, puissances, comparaison]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Induction I"
  reference: "Handout-1474-1433.pdf, exercice 4"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1474-1433.pdf"
---

## Statement

1. Démontrer que $2^n > n$ pour tout entier $n \ge 1$.
2. Déterminer **tous** les entiers $n \ge 1$ tels que $2^n > n^2$.

## Hints

1. Pour la première question, une récurrence suffit. Dans l'hérédité, pars de $2^{n+1} = 2 \times 2^n$.
2. Tu arriveras à $2^{n+1} > 2n$. Pourquoi $2n \ge n+1$ quand $n \ge 1$ ?
3. Pour la seconde question, commence par dresser un tableau : calcule $2^n$ et $n^2$ pour $n = 1, 2, 3, 4, 5, 6$. Tu verras que la réponse n'est pas « à partir d'un certain rang » tout court.
4. Une fois le bon rang de départ repéré, démontre par récurrence que l'inégalité reste vraie ensuite.
5. Dans l'hérédité, $2^{n+1} = 2 \times 2^n > 2n^2$. Il reste à comparer $2n^2$ et $(n+1)^2$, c'est-à-dire à étudier le signe de $n^2 - 2n - 1$.

## Solution

### 1. $2^n > n$ pour tout $n \ge 1$

*Initialisation :* pour $n = 1$, $2^1 = 2 > 1$.

*Hérédité :* supposons $2^n > n$ pour un entier $n \ge 1$. Alors

$$2^{n+1} = 2 \times 2^n > 2n = n + n \ge n + 1,$$

la dernière inégalité venant de $n \ge 1$. Donc $2^{n+1} > n+1$.

Par récurrence, $2^n > n$ pour tout $n \ge 1$.

### 2. Les entiers tels que $2^n > n^2$

**Le tableau des premières valeurs.**

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ |
|---|---|---|---|---|---|---|---|
| $2^n$ | $2$ | $4$ | $8$ | $16$ | $32$ | $64$ | $128$ |
| $n^2$ | $1$ | $4$ | $9$ | $16$ | $25$ | $36$ | $49$ |
| $2^n > n^2$ ? | oui | non | non | non | oui | oui | oui |

Attention aux cas $n = 2$ et $n = 4$ : il y a **égalité**, donc l'inégalité stricte est fausse.

On conjecture : l'inégalité est vraie pour $n = 1$, fausse pour $n = 2$, $3$, $4$, et vraie pour tout $n \ge 5$.

**Démonstration pour $n \ge 5$.**

Notons $R(n)$ la propriété « $2^n > n^2$ ».

*Initialisation :* $2^5 = 32$ et $5^2 = 25$, donc $R(5)$ est vraie.

*Hérédité :* soit $n \ge 5$ tel que $2^n > n^2$. Alors

$$2^{n+1} = 2 \times 2^n > 2n^2.$$

Il suffit donc de montrer que $2n^2 \ge (n+1)^2$. Or

$$2n^2 - (n+1)^2 = 2n^2 - n^2 - 2n - 1 = n^2 - 2n - 1 = (n-1)^2 - 2.$$

Comme $n \ge 5$, on a $(n-1)^2 \ge 16 > 2$, donc $2n^2 - (n+1)^2 > 0$, c'est-à-dire $2n^2 > (n+1)^2$.

En enchaînant : $2^{n+1} > 2n^2 > (n+1)^2$. Donc $R(n+1)$ est vraie.

Par récurrence, $2^n > n^2$ pour tout $n \ge 5$.

**Conclusion.**

$$2^n > n^2 \iff n = 1 \ \text{ ou } \ n \ge 5.$$

## Going further

1. Pour quels entiers $n$ a-t-on $2^n > n^3$ ?
2. Plus généralement, montre que pour tout entier $k$ fixé, l'inégalité $2^n > n^k$ est vraie à partir d'un certain rang.
