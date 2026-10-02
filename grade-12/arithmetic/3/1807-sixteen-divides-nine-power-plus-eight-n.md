---
id: "1807"
title: "Seize divise 3^(2n+2) + 8n − 9"
grade: 12
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [recurrence, divisibilite, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Induction in Arithmetic"
  reference: "Handout-1496-1446.pdf, exercice 3"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1496-1446.pdf"
---

## Statement

Démontrer que, pour tout entier $n \ge 1$, le nombre

$$u_n = 3^{2n+2} + 8n - 9$$

est divisible par $16$.

## Hints

1. Commence par simplifier l'écriture : $3^{2n+2} = (3^2)^{n+1} = 9^{n+1}$.
2. Calcule $u_1$ et $u_2$ et vérifie que ce sont bien des multiples de $16$.
3. Pour l'hérédité, on aimerait faire apparaître $u_n$ dans $u_{n+1}$. Le terme dominant est une puissance de $9$ : quel multiple de $u_n$ faut-il retrancher à $u_{n+1}$ pour la faire disparaître ?
4. Calcule $u_{n+1} - 9\,u_n$. Toutes les puissances de $9$ s'annulent et il ne reste qu'une expression très simple en $n$.
5. Vérifie que ce qui reste est un multiple de $16$, puis conclus.

## Solution

Comme $3^{2n+2} = (3^2)^{n+1} = 9^{n+1}$, on peut écrire

$$u_n = 9^{n+1} + 8n - 9.$$

Notons $D(n)$ la propriété « $u_n$ est divisible par $16$ ».

**Initialisation.**

$$u_1 = 9^2 + 8 - 9 = 81 - 1 = 80 = 16 \times 5.$$

Donc $D(1)$ est vraie.

**Hérédité.**

Soit $n \ge 1$ tel que $u_n$ soit divisible par $16$.

L'idée est de retrancher $9\,u_n$ à $u_{n+1}$, pour que les puissances de $9$ se détruisent :

$$u_{n+1} = 9^{n+2} + 8(n+1) - 9 = 9^{n+2} + 8n - 1,$$

$$9\,u_n = 9 \times \left(9^{n+1} + 8n - 9\right) = 9^{n+2} + 72n - 81.$$

En soustrayant :

$$u_{n+1} - 9\,u_n = (8n - 1) - (72n - 81) = -64n + 80.$$

Donc

$$u_{n+1} = 9\,u_n - 64n + 80 = 9\,u_n + 16\,(5 - 4n).$$

Les deux morceaux sont des multiples de $16$ :

- $9\,u_n$, car $u_n$ est un multiple de $16$ par hypothèse de récurrence ;
- $16\,(5 - 4n)$, car $5 - 4n$ est un entier.

Donc $u_{n+1}$ est divisible par $16$, et $D(n+1)$ est vraie.

**Conclusion.**

Par récurrence, $3^{2n+2} + 8n - 9$ est divisible par $16$ pour tout entier $n \ge 1$.

**Vérifications.**

| $n$ | $1$ | $2$ | $3$ | $4$ |
|---|---|---|---|---|
| $u_n$ | $80$ | $736$ | $6576$ | $59\,072$ |
| $u_n / 16$ | $5$ | $46$ | $411$ | $3692$ |

**Remarque.** La formule marche aussi pour $n = 0$ : $u_0 = 9 + 0 - 9 = 0$, et $0$ est bien un multiple de $16$.

## Going further

1. Le résultat reste-t-il vrai si l'on remplace $16$ par $32$ ? Teste sur $u_1$ et $u_2$.
2. Démontre que $4^n + 15n - 1$ est divisible par $9$ pour tout entier naturel $n$. C'est le même type de calcul : retranche $4\,u_n$ à $u_{n+1}$.
