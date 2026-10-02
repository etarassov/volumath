---
id: "8324"
title: "Quand aⁿ − 1 peut-il être premier ?"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [nombres-premiers, factorisation, divisibilite]
adapted_from: null
see_also: ["8323", "5014"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Modulo et factorisation » (Émile), exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Soient $a$ et $n$ deux entiers supérieurs ou égaux à $2$.

Montrer que si $a^n - 1$ est premier, alors $a = 2$ et $n$ est premier.

## Hints

1. Il y a deux choses à démontrer. Commence par la plus facile : pourquoi $a$ doit-il valoir $2$ ?
2. Connais-tu la factorisation de $a^n - 1$ ? Quel facteur évident apparaît toujours ?
3. $a - 1$ divise $a^n - 1$. Si $a^n - 1$ est premier, quelles valeurs $a-1$ peut-il prendre ?
4. Pour la seconde partie, on a maintenant $2^n - 1$ premier. Suppose que $n$ ait un diviseur $d$ avec $1 < d < n$, et applique la même factorisation avec $2^d$ à la place de $a$.
5. Attention au sens des inégalités quand tu vérifies que le diviseur obtenu est strict.

## Solution

**L'outil : la factorisation de $a^N - 1$.**

Pour tout entier $N \geqslant 1$ :

$$a^N - 1 = (a - 1)\left(a^{N-1} + a^{N-2} + \cdots + a + 1\right) .$$

En particulier **$a - 1$ divise toujours $a^N - 1$**.

**Première partie : $a = 2$.**

Supposons $a^n - 1$ premier, avec $a \geqslant 2$ et $n \geqslant 2$.

D'après la factorisation, $a - 1$ est un diviseur positif de $a^n - 1$. Comme $a^n - 1$ est
premier, ses seuls diviseurs positifs sont $1$ et $a^n - 1$. Donc

$$a - 1 = 1 \qquad \text{ou} \qquad a - 1 = a^n - 1 .$$

Le second cas donnerait $a = a^n$, donc $a^{n-1} = 1$, impossible puisque $a \geqslant 2$ et
$n - 1 \geqslant 1$. (Autre façon de le voir : $a \geqslant 2$ et $n \geqslant 2$ donnent
$a < a^2 \leqslant a^n$, donc $a - 1 < a^n - 1$.)

Il reste donc $a - 1 = 1$, c'est-à-dire

$$a = 2 .$$

**Seconde partie : $n$ est premier.**

On sait maintenant que $2^n - 1$ est premier. Supposons par l'absurde que $n$ ne soit pas premier :
comme $n \geqslant 2$, il existe alors un diviseur $d$ de $n$ avec $1 < d < n$.

Posons $q = \dfrac{n}{d}$, qui est un entier avec $q \geqslant 2$ puisque $d < n$. Alors

$$2^n - 1 = \left(2^{d}\right)^{q} - 1 .$$

Appliquons la factorisation avec $A = 2^d$ et $N = q$ :

$$2^n - 1 = \left(2^d - 1\right)\left(2^{d(q-1)} + 2^{d(q-2)} + \cdots + 2^d + 1\right) .$$

Donc $2^d - 1$ divise $2^n - 1$.

**Le diviseur est strict.**

- Comme $d \geqslant 2$, on a $2^d - 1 \geqslant 3 > 1$.
- Comme $d < n$, on a $2^d - 1 < 2^n - 1$.

Ainsi $2^n - 1$ a un diviseur strictement compris entre $1$ et lui-même : il n'est pas premier.
Contradiction.

Donc $n$ est premier.

**Conclusion.** Si $a^n - 1$ est premier avec $a, n \geqslant 2$, alors $a = 2$ et $n$ est premier.

## Going further

Les nombres $M_p = 2^p - 1$, pour $p$ premier, s'appellent les **nombres de Mersenne**. La
réciproque de l'énoncé est fausse : $p$ premier ne suffit pas. Par exemple

$$M_{11} = 2^{11} - 1 = 2047 = 23 \times 89 .$$

Les nombres de Mersenne premiers sont rares et précieux : depuis 1952, le plus grand nombre
premier connu à chaque époque a presque toujours été un nombre de Mersenne, parce qu'il existe
un test de primalité très rapide qui leur est spécialement adapté.

On ne sait toujours pas s'il en existe une infinité.
