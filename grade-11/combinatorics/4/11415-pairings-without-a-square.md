---
id: "11415"
title: "Des couplages sans carré"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [denombrement, carres, construction, minimum]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 4 (combinatoire)"
  reference: "2021-01_sujet-envoi-4.pdf, Exercices Juniors, exercice 7 (le même texte est l'exercice 14 des Seniors) ; corrigé 2021-03_Corrige-envoi-4.pdf ; solution refaite ici avec la partie sans carré de chaque entier"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/01/sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-01_sujet-envoi-4.pdf"
---

## Statement

On considère $2n$ entiers strictement positifs, tous différents. Un **couplage** est une façon de
les grouper en $n$ paires, chaque entier étant dans exactement une paire. Par exemple,
$\{(1, 3), (5, 7)\}$ est un couplage des entiers $1, 3, 5, 7$, mais $\{(1, 3), (3, 7)\}$ n'en est
pas un.

Un couplage est **sans carré** si, dans chaque paire, le produit des deux nombres n'est pas un carré
parfait.

Montrer que s'il existe au moins un couplage sans carré, alors il en existe au moins $n!$.

## Hints

1. Quand le produit $ab$ est-il un carré ? Regarde les nombres premiers qui apparaissent avec un
   exposant impair dans $a$, et ceux qui apparaissent avec un exposant impair dans $b$.
2. Range les $2n$ nombres en « familles » : deux nombres sont de la même famille si leur produit est
   un carré. Que dit l'existence d'un couplage sans carré sur la taille des familles ?
3. Forme les paires une par une. Prends un nombre $x$ dans la famille la plus nombreuse : combien de
   partenaires peut-il recevoir ? Que reste-t-il ensuite ?

## Solution

**Les familles.** Écrivons un entier $a$ comme produit de nombres premiers. On appelle **type** de
$a$ le produit des nombres premiers qui ont un exposant impair dans cette écriture. Par exemple
$72 = 2^3 \times 3^2$ a pour type $2$, et $45 = 3^2 \times 5$ a pour type $5$. Un carré parfait a
pour type $1$.

*Le produit $ab$ est un carré si et seulement si $a$ et $b$ ont le même type.* En effet, $ab$ est
un carré exactement quand chaque nombre premier $p$ a un exposant pair dans $ab$. Or l'exposant de
$p$ dans $ab$ est la somme de ses exposants dans $a$ et dans $b$. Cette somme est paire exactement
quand les deux exposants ont la même parité. Donc $ab$ est un carré exactement quand les mêmes
nombres premiers ont un exposant impair dans $a$ et dans $b$, c'est-à-dire quand $a$ et $b$ ont le
même type.

Un couplage est donc sans carré quand **chaque paire réunit deux nombres de types différents**.

**Aucune famille n'est trop grosse.** Supposons qu'il existe un couplage sans carré, et soit $t$ le
nombre d'entiers d'un même type $T$. Dans ce couplage, chacun de ces $t$ entiers est en paire avec
un entier d'un autre type, et ces partenaires sont tous différents. Il y a donc au moins $t$ entiers
d'un autre type que $T$, d'où $t \leqslant 2n - t$, soit $t \leqslant n$.

Ainsi : **aucun type n'est porté par plus de $n$ des $2n$ entiers.**

**On forme les paires une par une.** Supposons qu'il reste $2p$ entiers, avec au plus $p$ entiers
de chaque type. Voici une étape.

- On prend un type $T$ porté par le plus grand nombre d'entiers restants. Notons $t \leqslant p$ ce
  nombre. On choisit $x$ le plus petit entier de type $T$ (cette règle fixe $x$ sans aucun choix).
- On choisit le partenaire $y$ de $x$ parmi les entiers d'un autre type. Il y en a
  $2p - t \geqslant 2p - p = p$. On a donc **au moins $p$ choix** pour $y$.
- On retire $x$ et $y$. Il reste $2(p - 1)$ entiers. Vérifions qu'il y a encore au plus $p - 1$
  entiers de chaque type.
  - Le type $T$ a perdu $x$ : il en reste $t - 1 \leqslant p - 1$.
  - Le type de $y$ avait au plus $t \leqslant p$ entiers (car $T$ est le plus nombreux) et en a
    perdu un : il en reste au plus $p - 1$.
  - Un autre type $V$ avait au plus $t$ entiers. S'il en avait $p$, alors $t = p$ aussi, et les
    types $T$ et $V$ réuniraient à eux deux $2p$ entiers, c'est-à-dire tous. Mais $y$ n'est ni de
    type $T$ ni de type $V$. C'est impossible, donc $V$ a au plus $p - 1$ entiers.

On peut donc recommencer avec les $2(p - 1)$ entiers restants, jusqu'à ce qu'il n'en reste plus.
À la fin, chaque paire réunit deux types différents : on a fabriqué un couplage sans carré.

**On compte les couplages obtenus.** On part de $2n$ entiers avec au plus $n$ de chaque type.
À la première étape on a au moins $n$ choix, à la deuxième au moins $n - 1$, et ainsi de suite
jusqu'à la dernière, où on a au moins $1$ choix. Cela donne au moins
$n \times (n - 1) \times \cdots \times 1 = n!$ suites de choix.

Deux suites de choix différentes donnent deux couplages différents. En effet, prenons la première
étape où elles diffèrent. Jusque-là, les mêmes paires ont été retirées, donc il reste les mêmes
entiers, et la règle donne le même $x$. À cette étape, $x$ reçoit deux partenaires différents : dans
un couplage il est avec $y$, dans l'autre avec $y' \neq y$. Les deux couplages sont donc différents.

**Conclusion.** S'il existe un couplage sans carré, alors aucun type n'est porté par plus de $n$
entiers, et la construction pas à pas fournit au moins $n!$ couplages sans carré différents.

## Going further

Le nombre $n!$ ne peut pas être amélioré. Prendre les entiers $1, 4, 9, \ldots, n^2$ (tous de type
$1$) et $2, 8, 18, \ldots, 2n^2$ (tous de type $2$) : combien y a-t-il de couplages sans carré ?
