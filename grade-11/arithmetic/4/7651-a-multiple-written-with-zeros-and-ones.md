---
id: "7651"
title: "Un multiple écrit avec des 0 et des 1"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [principe-des-tiroirs, congruences, divisibilite, numeration]
adapted_from: null
see_also: ["4617"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, cours de stratégies de base du groupe A"
  reference: "stage_ete_2013.pdf, chapitre II, groupe A, « Cours de stratégies de base : principe des tiroirs, invariants » (Pierre Bertin), exercice sur les répunits"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Soit $n$ un entier strictement positif.

Démontrer qu'il existe un multiple de $n$ dont l'écriture décimale n'utilise que les chiffres $0$ et $1$.

## Hints

1. Construisez une liste de $n+1$ nombres bien choisis, tous écrits avec des $1$ et des $0$.
2. Les nombres $1, 11, 111, 1111, \ldots$ ne comportent que des $1$. Combien de restes différents peuvent-ils avoir dans la division par $n$ ?
3. Principe des tiroirs : parmi $n+1$ nombres, deux ont le même reste modulo $n$.
4. Que vaut la différence de deux nombres de cette liste ? Comment s'écrit-elle en base dix ?

## Solution

**Étape 1 : une liste de $n+1$ nombres.**

Considérons les $n+1$ nombres

$$a_1 = 1, \quad a_2 = 11, \quad a_3 = 111, \quad \ldots, \quad a_{n+1} = \underbrace{11\cdots 1}_{n+1 \text{ chiffres}} .$$

Le nombre $a_k$ est celui qui s'écrit avec exactement $k$ chiffres $1$.

**Étape 2 : le principe des tiroirs.**

Divisons chacun de ces $n+1$ nombres par $n$. Le reste d'une division par $n$ ne peut prendre que $n$ valeurs, à savoir $0, 1, 2, \ldots, n-1$.

Nous avons $n+1$ nombres et seulement $n$ restes possibles. Donc **deux de ces nombres ont le même reste** : il existe des indices $i < j$ tels que

$$a_i \equiv a_j \pmod{n} .$$

**Étape 3 : la différence.**

Posons $N = a_j - a_i$. Comme $a_i$ et $a_j$ ont le même reste modulo $n$, leur différence est un multiple de $n$ :

$$n \mid N .$$

Reste à voir comment $N$ s'écrit en base dix. Le nombre $a_j$ commence par $j - i$ chiffres $1$, puis $i$ chiffres $1$ ; en lui retranchant $a_i$, qui est fait de $i$ chiffres $1$, les $i$ derniers chiffres s'annulent sans retenue :

$$N = \underbrace{11\cdots 1}_{j \text{ chiffres}} \;-\; \underbrace{11\cdots 1}_{i \text{ chiffres}} \;=\; \underbrace{11\cdots 1}_{j - i \text{ chiffres}}\underbrace{00\cdots 0}_{i \text{ chiffres}} .$$

Autrement dit $N = a_{j-i} \times 10^{i}$, un nombre écrit uniquement avec des $1$ suivis de $0$.

**Étape 4 : conclusion.**

Le nombre $N$ est un multiple de $n$, il est strictement positif puisque $i < j$, et son écriture décimale n'utilise que les chiffres $0$ et $1$. $\blacksquare$

**Un exemple.** Pour $n = 7$, les restes de $1, 11, 111, 1111, \ldots$ modulo $7$ sont $1, 4, 6, 5, 2, 0, \ldots$ : le sixième vaut déjà $0$, donc $111111 = 7 \times 15873$ convient directement. Pour $n = 6$, les restes sont $1, 5, 3, 1, \ldots$ : le premier et le quatrième coïncident, et la différence $1111 - 1 = 1110 = 6 \times 185$ convient.

## Going further

**Peut-on demander mieux ?** Si l'on exige un multiple écrit uniquement avec des $1$, sans aucun $0$, ce n'est plus toujours possible : un tel nombre est impair et n'est pas divisible par $5$, donc aucun multiple de $2$ ni de $5$ n'a cette forme. En revanche, dès que $n$ est premier avec $10$, un nombre de la forme $11\cdots1$ convient. La démonstration se fait avec le même argument des tiroirs, en remarquant qu'alors on peut « diviser par $10^i$ » modulo $n$.

**En base quelconque.** Le même raisonnement, mot pour mot, montre que pour toute base $b \geqslant 2$ et tout entier $n \geqslant 1$, il existe un multiple de $n$ dont l'écriture en base $b$ n'utilise que les chiffres $0$ et $1$.

**Et si on veut le plus petit ?** C'est une tout autre question, beaucoup plus difficile, et il n'existe pas de formule simple. Pour $n = 3$ le plus petit est $111$ ; pour $n = 9$ c'est $111111111$ ; pour $n = 99$ c'est un nombre de $18$ chiffres.
