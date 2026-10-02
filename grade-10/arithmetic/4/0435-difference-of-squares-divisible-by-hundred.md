---
id: "0435"
title: "Une différence de carrés divisible par 100"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [divisibilite, restes, tiroirs, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, «Математический кружок (8 класс)», сост. А. Л. Канунников, 2017"
  reference: "Kan2017.pdf, листок 3 «Принцип Дирихле», задача 2"
  url: "https://mmmf.msu.ru/for_schools/Kan2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2017.pdf"
---

## Statement

On se donne $52$ entiers relatifs quelconques.

Montrer qu'on peut toujours en choisir deux, $a$ et $b$, tels que $a^2 - b^2$ soit divisible par $100$.

## Hints

1. Ne calcule surtout pas $a^2 - b^2$ : factorise-le.
2. Il suffit donc que l'un des deux facteurs, $a - b$ ou $a + b$, soit divisible par $100$. On cherche deux nombres dont la **différence** ou la **somme** est un multiple de $100$.
3. Écris chaque nombre sous la forme $100q + r$ avec $0 \leqslant r \leqslant 99$. Traduis les deux conditions précédentes en termes de restes $r$.
4. On aimerait appliquer le principe des tiroirs, mais $100$ restes possibles pour $52$ nombres, cela fait beaucoup trop de tiroirs. Il faut donc mettre certains restes dans un même tiroir. Lesquels regrouper, pour que deux nombres du même tiroir conviennent toujours ?
5. Regroupe le reste $r$ avec le reste $100 - r$. Combien cela fait-il de tiroirs en tout ?

## Solution

**Étape 1. Factoriser.**

On utilise l'identité remarquable

$$a^2 - b^2 = (a - b)(a + b)$$

Pour que $a^2 - b^2$ soit divisible par $100$, il suffit que $a - b$ le soit, ou bien que $a + b$ le soit. On cherche donc, parmi nos $52$ nombres, deux nombres dont la différence **ou** la somme est un multiple de $100$.

**Étape 2. Traduire avec les restes.**

Écrivons chaque nombre sous la forme $100q + r$, où $r$ est son reste dans la division par $100$, donc $0 \leqslant r \leqslant 99$.

Soient deux de nos nombres, $a = 100q_a + r_a$ et $b = 100q_b + r_b$. Alors

$$a - b = 100(q_a - q_b) + (r_a - r_b) \qquad \text{et} \qquad a + b = 100(q_a + q_b) + (r_a + r_b)$$

Donc :

- $a - b$ est divisible par $100$ dès que $r_a = r_b$ ;
- $a + b$ est divisible par $100$ dès que $r_a + r_b = 100$.

Il suffit donc de trouver deux nombres dont les restes sont **égaux**, ou bien dont les restes **ont pour somme $100$**.

**Étape 3. Construire les bons tiroirs.**

C'est exactement cela qui dicte le regroupement : on met dans un même tiroir les restes $r$ et $100 - r$.

| Tiroir | Restes qu'il contient |
| --- | --- |
| $T_0$ | $0$ |
| $T_1$ | $1$ et $99$ |
| $T_2$ | $2$ et $98$ |
| $\vdots$ | $\vdots$ |
| $T_{49}$ | $49$ et $51$ |
| $T_{50}$ | $50$ |

Chacun des $100$ restes possibles se trouve bien dans exactement un tiroir. Comptons-les : un tiroir $T_0$, un tiroir $T_{50}$, et les tiroirs $T_1$ à $T_{49}$, soit

$$1 + 1 + 49 = 51 \text{ tiroirs}$$

**Étape 4. Le principe des tiroirs.**

On range nos $52$ nombres dans ces $51$ tiroirs, selon leur reste. Comme $52 > 51$, un tiroir contient au moins deux de nos nombres. Appelons-les $a$ et $b$, de restes $r_a$ et $r_b$.

Puisqu'ils sont dans le même tiroir, il n'y a que deux possibilités.

- **Ou bien $r_a = r_b$.** Alors $a - b$ est divisible par $100$.
- **Ou bien $r_a + r_b = 100$.** Alors $a + b$ est divisible par $100$.

(Les tiroirs $T_0$ et $T_{50}$ ne contiennent qu'un seul reste, donc pour eux on est toujours dans le premier cas.)

Dans les deux cas, l'un des facteurs de $(a-b)(a+b)$ est divisible par $100$, donc le produit aussi.

**Conclusion.** Parmi $52$ entiers quelconques, il y en a toujours deux dont la différence des carrés est divisible par $100$.

**Ce qu'il faut retenir.** Le principe des tiroirs n'est utile que si les tiroirs sont bien choisis. Ici, on ne les choisit pas au hasard : on part de ce qu'on veut obtenir à la fin (restes égaux **ou** restes de somme $100$) et on construit les tiroirs pour que deux nombres d'un même tiroir donnent l'une ou l'autre de ces deux situations.

## Going further

1. Le nombre $52$ est-il le plus petit possible ? Trouver $51$ entiers tels qu'aucun choix de deux d'entre eux ne donne une différence de carrés divisible par $100$.
2. Même problème avec $10$ à la place de $100$ : combien d'entiers faut-il se donner pour être sûr d'en trouver deux dont la différence des carrés est divisible par $10$ ?
3. Et si l'on demande simplement deux nombres dont la **différence** est divisible par $100$, combien d'entiers faut-il se donner ?
