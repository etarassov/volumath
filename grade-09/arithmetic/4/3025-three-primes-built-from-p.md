---
id: "3025"
title: "Trois nombres premiers construits sur p"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [nombres-premiers, restes, divisibilite, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Fermat's Thm"
  reference: "Handout-3291-2885.pdf, exercice 10 (réponse dans Handout-3328-2885.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3291-2885.pdf"
---

## Statement

Trouver tous les nombres premiers $p$ tels que les deux nombres

$$p^2 + p + 1 \qquad \text{et} \qquad p + 10$$

soient eux aussi premiers.

## Hints

1. Commence par essayer $p = 2$, $p = 3$, $p = 5$, $p = 7$, $p = 11$. Qu'est-ce qui coince à chaque fois ?
2. Quand un nombre premier $p$ est plus grand que $3$, il n'est pas divisible par $3$. Quels restes peut-il laisser dans la division par $3$ ?
3. Traite les deux cas séparément. Dans l'un, regarde $p^2 + p + 1$ ; dans l'autre, regarde $p + 10$.
4. Montrer qu'un nombre est divisible par $3$ ne suffit pas : il faut aussi vérifier qu'il est strictement plus grand que $3$.

## Solution

**Les petites valeurs.**

- $p = 2$ : $p^2 + p + 1 = 7$ est premier, mais $p + 10 = 12 = 2^2 \times 3$ ne l'est pas.
- $p = 3$ : $p^2 + p + 1 = 9 + 3 + 1 = 13$ est premier, et $p + 10 = 13$ est premier.
  **$p = 3$ convient.**

**Les p plus grands que 3.**

Soit $p$ un nombre premier avec $p > 3$. Alors $p$ n'est pas divisible par $3$, donc son
reste dans la division par $3$ vaut $1$ ou $2$.

*Premier cas : $p$ laisse le reste $1$.* Écrivons $p = 3k + 1$. Alors

$$p^2 + p + 1 = (3k+1)^2 + (3k+1) + 1 = 9k^2 + 6k + 1 + 3k + 2 = 9k^2 + 9k + 3
= 3\left(3k^2 + 3k + 1\right).$$

Ce nombre est divisible par $3$. Et comme $p > 3$, on a $p^2 + p + 1 > 9 + 3 + 1 > 3$. Un
nombre divisible par $3$ et strictement plus grand que $3$ n'est pas premier.

*Deuxième cas : $p$ laisse le reste $2$.* Écrivons $p = 3k + 2$. Alors

$$p + 10 = 3k + 12 = 3(k + 4),$$

qui est divisible par $3$, et $p + 10 > 13 > 3$. Là encore, ce n'est pas un nombre premier.

**Conclusion.**

Aucun nombre premier strictement plus grand que $3$ ne convient, et parmi $2$ et $3$ seul
$3$ convient.

La seule solution est

$$p = 3,$$

et les trois nombres sont alors $3$, $13$ et $13$.

## Going further

L'argument utilisé s'appelle un **raisonnement modulo 3** : on range les entiers en trois
familles selon leur reste, et on montre que dans chaque famille l'un des trois nombres
« tombe » sur un multiple de $3$. Cette technique sert dès qu'un énoncé demande plusieurs
nombres premiers à la fois : au moins l'un d'eux finit toujours par être attrapé par un
petit diviseur.
