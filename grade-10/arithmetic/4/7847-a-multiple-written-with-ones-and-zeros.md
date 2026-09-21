---
id: "7847"
title: "Un multiple écrit uniquement avec des 1 et des 0"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [principe des tiroirs, restes, divisibilite, ecriture decimale]
adapted_from: null
see_also: ["7718", "8551"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, première période, groupe A « stratégies de base », mercredi 19 matin (Clara Ding), exercice 11"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Montrer que pour tout entier $n \geq 1$, il existe un multiple non nul de $n$ qui s'écrit avec
au plus $n$ chiffres, tous égaux à $0$ ou à $1$.

*Par exemple pour $n = 3$ : le nombre $111$ convient. Pour $n = 4$ : le nombre $1100$ convient.*

## Hints

1. Encore un problème de tiroirs. Quels tiroirs choisir quand on parle de divisibilité par $n$ ?
   Les restes dans la division par $n$ : il y en a exactement $n$.
2. Il faut donc $n + 1$ objets. Trouve $n+1$ nombres bien choisis dont les **différences**
   s'écrivent avec des $0$ et des $1$.
3. Essaie la famille $0$, $1$, $11$, $111$, ..., jusqu'à $n$ chiffres $1$. Combien y a-t-il de
   nombres dans cette liste ?
4. Deux d'entre eux ont le même reste, donc leur différence est un multiple de $n$. À quoi
   ressemble la différence de deux nombres de cette liste ?

## Solution

**Étape 1 : les objets.**

Considérons les $n + 1$ entiers
$$a_0 = 0, \quad a_1 = 1, \quad a_2 = 11, \quad a_3 = 111, \quad \ldots, \quad
  a_n = \underbrace{11\cdots1}_{n \text{ chiffres}} ,$$
où $a_k$ s'écrit avec exactement $k$ chiffres $1$ (et $a_0 = 0$).

**Étape 2 : les tiroirs.**

Les tiroirs sont les restes possibles dans la division euclidienne par $n$, c'est-à-dire
$$0, 1, 2, \ldots, n-1 .$$
Il y en a exactement $n$.

**Étape 3 : le principe des tiroirs.**

On range les $n+1$ entiers $a_0, \ldots, a_n$ dans ces $n$ tiroirs selon leur reste. Comme
$n + 1 > n$, deux d'entre eux ont le même reste : il existe des indices $j < i$ tels que
$$a_i \equiv a_j \pmod n ,$$
c'est-à-dire que $n$ divise $a_i - a_j$.

**Étape 4 : à quoi ressemble cette différence ?**

Le nombre $a_i$ est fait de $i$ chiffres $1$, et $a_j$ de $j$ chiffres $1$, avec $j < i$. La
soustraction se fait sans retenue :
$$a_i - a_j = \underbrace{1\cdots1}_{i} - \underbrace{1\cdots1}_{j}
 = \underbrace{1\cdots1}_{i-j}\underbrace{0\cdots0}_{j} .$$

Autrement dit, $a_i - a_j$ s'écrit avec $i - j$ chiffres $1$ suivis de $j$ chiffres $0$.

*Vérification sur un exemple :* $11111 - 11 = 11100$, qui est bien fait de trois $1$ suivis de
deux $0$.

**Étape 5 : on vérifie les conditions.**

- $a_i - a_j$ est un **multiple de $n$** : c'est l'étape 3.
- Il est **non nul** : $i > j$ donc $a_i > a_j$.
- Il s'écrit uniquement avec des $1$ et des $0$ : c'est l'étape 4.
- Il a exactement $i$ chiffres, et $i \leq n$ : il a donc **au plus $n$ chiffres**.

**Conclusion.** Un tel multiple existe toujours.

*Exemple.* Pour $n = 7$, la liste des restes de $0, 1, 11, 111, 1111, 11111, 111111, 1111111$
modulo $7$ est $0, 1, 4, 6, 5, 2, 0, 1$. Les deux premiers $0$ sont $a_0 = 0$ et $a_6 = 111111$ :
la différence est $111111$ elle-même, et en effet $111111 = 7 \times 15873$.
