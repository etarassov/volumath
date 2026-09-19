---
id: "0584"
title: "Deux restes impossibles"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [division-euclidienne, reste, absurde, multiples]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 6–7 классы, 2-е полугодие, пособие для преподавателей"
  reference: "KuOn2017.pdf, листок 5 «Доказательство от противного», задача 5"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/KuOn2017.pdf"
---

## Statement

Montrer qu'il n'existe aucun entier naturel qui donne à la fois le reste $1$ dans la division par $21$ et le reste $3$ dans la division par $14$.

## Hints

1. Essaie quelques nombres qui donnent le reste $1$ dans la division par $21$ : $1$, $22$, $43$, $64$, ... Regarde leur reste dans la division par $14$.
2. Écris ce que veut dire chacune des deux conditions : un tel nombre $n$ s'écrit $n = 21a + 1$, et aussi $n = 14b + 3$, avec $a$ et $b$ entiers.
3. Que se cache-t-il à la fois dans $21$ et dans $14$ ?
4. Divise $n$ par $7$ de deux manières, en partant d'abord de $n = 21a + 1$, ensuite de $n = 14b + 3$. Un même nombre peut-il avoir deux restes différents dans la division par $7$ ?

## Solution

**L'idée : raisonner par l'absurde, et regarder les deux divisions à travers le nombre $7$.**

Supposons qu'un tel entier naturel $n$ existe.

**Ce que dit la première condition.**

$n$ donne le reste $1$ dans la division par $21$, donc il s'écrit
$$n = 21a + 1$$
où $a$ est un entier naturel. Comme $21 = 3 \times 7$, on peut écrire
$$n = 7 \times (3a) + 1$$
Ici $3a$ est un entier et le reste $1$ est bien compris entre $0$ et $6$. Cette écriture est donc exactement la division de $n$ par $7$ : **$n$ donne le reste $1$ dans la division par $7$.**

**Ce que dit la seconde condition.**

$n$ donne le reste $3$ dans la division par $14$, donc
$$n = 14b + 3$$
où $b$ est un entier naturel. Comme $14 = 2 \times 7$,
$$n = 7 \times (2b) + 3$$
Là encore $2b$ est un entier et le reste $3$ est compris entre $0$ et $6$ : **$n$ donne le reste $3$ dans la division par $7$.**

**La contradiction.**

Quand on divise un nombre par $7$, le quotient et le reste sont uniques : un même nombre ne peut pas donner deux restes différents. Or nous venons d'obtenir le reste $1$ et le reste $3$, et $1 \neq 3$.

C'est impossible : la supposition de départ est donc fausse.

**Conclusion.**

Aucun entier naturel ne donne à la fois le reste $1$ dans la division par $21$ et le reste $3$ dans la division par $14$.

**Une autre façon de conclure.** Des deux écritures on tire $21a + 1 = 14b + 3$, donc $21a - 14b = 2$, c'est-à-dire
$$7 \times (3a - 2b) = 2$$
Le membre de gauche est un multiple de $7$, le membre de droite ne l'est pas. Contradiction là encore.

## Going further

1. Trouver un entier naturel qui donne le reste $1$ dans la division par $21$ et le reste $1$ dans la division par $14$. Y en a-t-il plusieurs ?
2. Un nombre donne le reste $1$ dans la division par $21$. Quels restes peut-il donner dans la division par $14$ ?
3. Existe-t-il un entier naturel qui donne le reste $2$ dans la division par $6$ et le reste $3$ dans la division par $9$ ?
