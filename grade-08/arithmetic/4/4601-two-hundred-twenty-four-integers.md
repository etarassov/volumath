---
id: "4601"
title: "Deux cent vingt-quatre entiers"
grade: 8
theme: arithmetic
difficulty: 4
duration_min: 20
tags: [tiroirs, restes, division-euclidienne, demonstration]
adapted_from: null
see_also: ["5419"]
same_as: ["8627"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Beginners Circle, Pigeonhole Principle"
  reference: "Handout-582-703.pdf, problème 3 (réponse dans Handout-583-703.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-582-703.pdf"
---

## Statement

On écrit $224$ nombres entiers au tableau. On ne sait rien de plus sur eux : ils peuvent être
n'importe lesquels, et certains peuvent être égaux.

Montrer qu'il y en a toujours deux dont la différence est divisible par $223$.

## Hints

1. Tu ne peux pas regarder les nombres un par un, tu ne les connais pas. Il faut donc les
   ranger en familles.
2. Quand on divise un entier par $223$, on obtient un quotient et un reste. Combien de restes
   différents sont possibles ?
3. Il y a plus de nombres que de restes possibles. Qu'est-ce que cela force ?
4. Si deux nombres ont le même reste dans la division par $223$, que vaut leur différence ?

## Solution

**Les restes possibles.**

Divisons chacun des $224$ nombres par $223$. Pour un nombre $a$, cela s'écrit
$$a = 223 \times q + r,$$
où $r$ est le reste, et où $r$ est l'un des nombres
$$0,\ 1,\ 2,\ \ldots,\ 222 .$$
Il y a donc exactement $223$ restes possibles.

**Deux nombres ont le même reste.**

Nous avons $224$ nombres et seulement $223$ restes possibles. Si chaque reste était obtenu au
plus une fois, on ne pourrait ranger que $223$ nombres au maximum. Comme il y en a $224$, c'est
impossible : au moins deux de nos nombres ont le même reste.

(C'est le **principe des tiroirs** : si l'on range $224$ chaussettes dans $223$ tiroirs, un
tiroir au moins en contient deux.)

**Leur différence est divisible par 223.**

Appelons $a$ et $b$ ces deux nombres, avec le même reste $r$ :
$$a = 223 \times q_1 + r \qquad \text{et} \qquad b = 223 \times q_2 + r .$$
En soustrayant, les restes disparaissent :
$$a - b = 223 \times q_1 + r - (223 \times q_2 + r) = 223 \times (q_1 - q_2).$$
La différence $a - b$ est donc bien un multiple de $223$.

**Conclusion.** Parmi $224$ entiers quelconques, il y en a toujours deux dont la différence est
divisible par $223$.

## Going further

Rien n'est particulier au nombre $223$ : le même raisonnement montre que parmi $n + 1$ entiers
quelconques, il y en a toujours deux dont la différence est divisible par $n$.

Le nombre $224$ est le plus petit qui convienne. Avec seulement $223$ entiers, on peut échouer :
prends $0, 1, 2, \ldots, 222$. Deux d'entre eux ont une différence comprise entre $1$ et $222$,
jamais divisible par $223$.
