---
id: "5012"
title: "Un produit divisible par 6 sans facteur divisible par 6"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [divisibilite, nombres premiers, restes, contre-exemple]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Introduction to Finite Systems: Z6 and Z7 », Harold Reiter, Teachers' Circle Workshop"
  reference: "HReiterZ6andZ7.pdf, section « Solving quadratic equations in Z6 »"
  url: "https://mathcircles.org/activity/introduction-to-finite-systems-z6-and-z7/"
  original_language: "en"
  local_copy: "sources/originals/namc/HReiterZ6andZ7.pdf"
---

## Statement

Quand on résout $(x-2)(x-3) = 0$ dans les nombres réels, on écrit sans réfléchir : « un produit
est nul si et seulement si l'un des facteurs est nul », donc $x = 2$ ou $x = 3$.

Remplaçons « est nul » par « est divisible par $6$ » et voyons ce qui reste vrai.

1. Vérifier que pour $n = 5$, le produit $(n-2)(n-3)$ est divisible par $6$, alors que ni
   $n - 2$ ni $n - 3$ ne l'est. La règle du produit nul ne se transporte donc pas telle quelle.
2. Trouver tous les entiers $n$ compris entre $0$ et $5$ tels que $(n-2)(n-3)$ soit divisible
   par $6$.
3. En déduire tous les entiers naturels $n$ tels que $(n-2)(n-3)$ soit divisible par $6$, et
   expliquer pourquoi la réponse se répète de $6$ en $6$.
4. Reprendre la question avec $7$ à la place de $6$ : trouver tous les entiers naturels $n$
   tels que $(n-2)(n-3)$ soit divisible par $7$. Cette fois, la règle du produit nul se
   transporte-t-elle ? Pourquoi ?

## Hints

1. Pour la question 1, calcule simplement $(5-2)(5-3)$.
2. Pour la question 2, il n'y a que six calculs à faire. Fais-les tous.
3. Pour la question 3 : si on remplace $n$ par $n + 6$, de combien changent $n-2$ et $n-3$ ?
   Le reste du produit dans la division par $6$ change-t-il ?
4. Pour la question 4, la propriété clé est : si un nombre **premier** $p$ divise un produit
   $ab$, alors $p$ divise $a$ ou $p$ divise $b$. Le nombre $7$ est premier, le nombre $6$ ne
   l'est pas.
5. Regarde comment $6$ arrive dans le cas $n = 5$ : d'où viennent le facteur $2$ et le facteur
   $3$ ?

## Solution

### 1. Le contre-exemple

$$(5-2)(5-3) = 3 \times 2 = 6 .$$

Le produit est bien divisible par $6$. Pourtant $5 - 2 = 3$ n'est pas divisible par $6$, et
$5 - 3 = 2$ non plus.

L'explication est visible : le $6$ ne vient pas d'un seul facteur, il vient de la **rencontre**
d'un facteur $3$ et d'un facteur $2$, chacun apporté par un côté différent. C'est exactement ce
qui ne peut pas se produire avec « être nul », car un produit non nul n'est jamais nul.

### 2. Les entiers de 0 à 5

| $n$ | $n-2$ | $n-3$ | produit | divisible par $6$ ? |
|---|---|---|---|---|
| $0$ | $-2$ | $-3$ | $6$ | **oui** |
| $1$ | $-1$ | $-2$ | $2$ | non |
| $2$ | $0$ | $-1$ | $0$ | **oui** |
| $3$ | $1$ | $0$ | $0$ | **oui** |
| $4$ | $2$ | $1$ | $2$ | non |
| $5$ | $3$ | $2$ | $6$ | **oui** |

Les solutions entre $0$ et $5$ sont donc $n = 0$, $n = 2$, $n = 3$ et $n = 5$ : **quatre**
solutions, au lieu des deux attendues.

### 3. Tous les entiers naturels

Remplaçons $n$ par $n + 6$. Alors $n - 2$ devient $(n-2) + 6$ et $n - 3$ devient $(n-3) + 6$.
En développant,

$$\bigl((n-2)+6\bigr)\bigl((n-3)+6\bigr) = (n-2)(n-3) + 6(n-2) + 6(n-3) + 36 ,$$

et les trois derniers termes sont tous des multiples de $6$. Donc le produit change d'un
multiple de $6$ : il est divisible par $6$ pour $n$ si et seulement s'il l'est pour $n + 6$.

Tout se décide donc sur le reste de $n$ dans la division par $6$, et le tableau de la question
2 donne la réponse complète :

$$\boxed{(n-2)(n-3) \text{ est divisible par } 6 \iff n \text{ laisse le reste } 0,\ 2,\ 3 \text{ ou } 5 \text{ dans la division par } 6 .}$$

Les solutions sont $0, 2, 3, 5, 6, 8, 9, 11, 12, 14, 15, 17, \ldots$ Autrement dit, les entiers
exclus sont ceux dont le reste vaut $1$ ou $4$.

### 4. Avec 7 à la place de 6

Cette fois la règle se transporte.

**Le point clé.** Si un nombre **premier** $p$ divise un produit $ab$, alors $p$ divise $a$ ou
$p$ divise $b$. (C'est le lemme d'Euclide. Il est faux pour un nombre non premier : $6$ divise
$3 \times 2$ sans diviser ni $3$ ni $2$.)

Comme $7$ est premier, si $7$ divise $(n-2)(n-3)$, alors $7$ divise $n-2$ ou $7$ divise
$n - 3$. Réciproquement, si $7$ divise l'un des deux facteurs, il divise le produit.

**Conclusion.** Les solutions sont exactement les entiers $n$ qui laissent le reste $2$ ou le
reste $3$ dans la division par $7$ :

$$n = 2,\ 3,\ 9,\ 10,\ 16,\ 17,\ 23,\ 24,\ \ldots$$

Vérifions sur une période complète, pour $n$ de $0$ à $6$ :

| $n$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ |
|---|---|---|---|---|---|---|---|
| $(n-2)(n-3)$ | $6$ | $2$ | $0$ | $0$ | $2$ | $6$ | $12$ |
| divisible par $7$ ? | non | non | **oui** | **oui** | non | non | non |

Deux solutions seulement, comme dans les réels : la règle du produit nul survit, mais **à la
seule condition que le diviseur soit premier**.

## Going further

Ce phénomène a un nom. Modulo $6$, les nombres $2$ et $3$ sont des « diviseurs de zéro » : ils
ne sont pas divisibles par $6$, mais leur produit l'est. Modulo un nombre premier, il n'y en a
pas, et c'est ce qui fait que l'arithmétique modulo $7$ ressemble beaucoup plus à celle des
nombres réels que l'arithmétique modulo $6$.

Le même effet se voit sur les équations du premier degré. Cherche les entiers $n$ tels que
$2n + 3$ laisse le reste $4$ dans la division par $7$ : il y en a exactement un par période,
$n = 4$. Puis pose la même question avec $6$ au lieu de $7$ : il n'y en a **aucun**, parce que
$2n + 3$ est toujours impair alors que les nombres de reste $4$ modulo $6$ sont tous pairs.
