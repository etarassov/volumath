---
id: "3618"
title: "Une suite qui finit par être divisible par 20"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [recurrence, congruences, restes, somme-des-entiers]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 8 training, Berkeley mini Math Tournament 2025"
  reference: "Handout-5091-5540.pdf, problème 14 de l'Individual Round (corrigé dans Handout-5092-5540.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5091-5540.pdf"
---

## Statement

On construit une liste d'entiers $a_1$, $a_2$, $a_3$, … de la façon suivante :

$$a_1 = 1 \qquad \text{et} \qquad a_i = 81\,a_{i-1} + i \quad \text{pour tout entier } i \geqslant 2$$

Ainsi $a_2 = 81 \times 1 + 2 = 83$, puis $a_3 = 81 \times 83 + 3 = 6726$, et les nombres grandissent très vite.

Quel est le plus petit entier $n \geqslant 1$ pour lequel $a_n$ est divisible par $20$ ?

## Hints

1. Les nombres $a_n$ deviennent énormes, mais la question ne porte que sur leur reste dans la division par $20$. Travaille uniquement avec les restes.
2. Quel est le reste de $81$ dans la division par $20$ ? Que devient alors la relation $a_i = 81\,a_{i-1} + i$ si on ne garde que les restes ?
3. Tu obtiens une somme très simple. Cherche le plus petit $n$ tel que cette somme soit un multiple de $20$.

## Solution

**Étape 1. Ne garder que les restes modulo 20.**

Multiplier ou additionner ne change pas les restes de façon imprévisible : le reste d'un produit ne dépend que des restes des facteurs, et le reste d'une somme ne dépend que des restes des termes. On peut donc remplacer chaque nombre par son reste dans la division par $20$.

Or $81 = 4 \times 20 + 1$, donc $81$ a pour reste $1$.

La relation $a_i = 81\,a_{i-1} + i$ donne donc, en termes de restes,

$$a_i \equiv a_{i-1} + i \pmod{20}$$

Autrement dit, d'un terme au suivant, le reste augmente simplement de $i$.

**Étape 2. Dérouler la relation.**

En partant de $a_1 = 1$ :

$$a_2 \equiv a_1 + 2 \equiv 1 + 2$$
$$a_3 \equiv a_2 + 3 \equiv 1 + 2 + 3$$

et ainsi de suite. Pour tout $n \geqslant 1$ :

$$a_n \equiv 1 + 2 + 3 + \dots + n \pmod{20}$$

On reconnaît la somme des $n$ premiers entiers :

$$a_n \equiv \frac{n(n+1)}{2} \pmod{20}$$

*Vérification.* Pour $n = 2$ : $\frac{2 \times 3}{2} = 3$, et $a_2 = 83 = 4 \times 20 + 3$. Le reste est bien $3$.

**Étape 3. Chercher le plus petit $n$.**

On veut que $\dfrac{n(n+1)}{2}$ soit un multiple de $20$, c'est-à-dire que $n(n+1)$ soit un multiple de $40$.

Comme $40 = 8 \times 5$, il faut que $n(n+1)$ soit divisible par $8$ et par $5$.

Deux entiers consécutifs $n$ et $n+1$ ne peuvent pas être pairs tous les deux : le facteur $8$ doit donc venir d'un seul des deux. Il faut ainsi que $8$ divise $n$ ou que $8$ divise $n+1$.

De même, il faut que $5$ divise $n$ ou que $5$ divise $n+1$.

Passons en revue les petits $n$ pour lesquels $8$ divise $n$ ou $n+1$ : $n = 7, 8, 15, 16, 23, 24, \ldots$

- $n = 7$ : ni $7$ ni $8$ n'est multiple de $5$. Non.
- $n = 8$ : ni $8$ ni $9$. Non.
- $n = 15$ : $15$ est un multiple de $5$. Oui.

**Étape 4. Vérifier.**

Pour $n = 15$ :

$$\frac{15 \times 16}{2} = 120 = 6 \times 20$$

C'est bien un multiple de $20$.

**Réponse.** Le plus petit entier convenable est $n = 15$.

## Going further

Le coefficient $81$ ne sert qu'à intimider : tout ce qui compte est qu'il laisse le reste $1$ modulo $20$. On obtiendrait exactement la même réponse avec $21$, $41$ ou $2001$ à la place de $81$.

En revanche, si le coefficient avait été $2$ par exemple, la relation $a_i \equiv 2a_{i-1} + i$ ne se déroulerait pas en une somme aussi simple, et il faudrait calculer les restes un par un.
