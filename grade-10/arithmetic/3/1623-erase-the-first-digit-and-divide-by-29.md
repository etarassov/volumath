---
id: "1623"
title: "Effacer le premier chiffre, diviser par 29"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [numeration, divisibilite, equation-en-nombres-entiers, pgcd]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2B, Olympiad Style Problems 2"
  reference: "Handout-2015-1715.pdf, problème 3 (AIME I 2006, problème 3)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2015-1715.pdf"
---

## Statement

Trouver le plus petit entier strictement positif $N$ ayant la propriété suivante : lorsqu'on
efface son chiffre le plus à gauche, l'entier obtenu est égal à $\dfrac{N}{29}$.

## Hints

1. Écris $N$ avec sa décomposition : si $N$ a $k+1$ chiffres, son chiffre de gauche est un certain $d$ entre $1$ et $9$, et le reste forme un nombre $M$ avec $0 \le M < 10^k$. Exprime $N$ en fonction de $d$, $k$ et $M$.
2. La condition de l'énoncé s'écrit $N = 29M$. Combine-la avec $N = d \times 10^k + M$.
3. Tu obtiens $d \times 10^k = 28 M$. Comme $28 = 4 \times 7$, que peut-on dire du chiffre $d$ ?
4. Le nombre $7$ ne divise aucune puissance de $10$. Il doit donc diviser $d$.

## Solution

**L'idée : traduire « effacer le chiffre de gauche » par une égalité, puis regarder quels
facteurs premiers doivent se trouver où.**

**Étape 1. Mettre le problème en équation.**

Supposons que $N$ s'écrive avec $k+1$ chiffres, $k \ge 1$. Notons $d$ son chiffre le plus à
gauche ($1 \le d \le 9$) et $M$ le nombre formé par les $k$ chiffres suivants, de sorte que
$$N = d \times 10^k + M, \qquad 0 \le M < 10^k .$$

La condition de l'énoncé est $M = \dfrac{N}{29}$, c'est-à-dire
$$N = 29\,M .$$

**Étape 2. Simplifier.**

En reportant :
$$d \times 10^k + M = 29 M, \qquad\text{donc}\qquad d \times 10^k = 28\,M . \qquad (\star)$$

**Étape 3. Trouver le chiffre $d$.**

Dans $(\star)$, le nombre $28 = 2^2 \times 7$ divise $d \times 10^k$. En particulier $7$ divise
$d \times 10^k$.

Or $7$ est premier et ne divise pas $10$, donc il ne divise aucune puissance de $10$ : par le
lemme d'Euclide, $7$ doit diviser $d$.

Comme $1 \le d \le 9$, la seule possibilité est
$$d = 7 .$$

**Étape 4. Trouver $M$, puis $N$.**

Avec $d = 7$, l'égalité $(\star)$ devient
$$7 \times 10^k = 28\,M, \qquad\text{donc}\qquad M = \frac{10^k}{4} .$$

Il faut que $4$ divise $10^k$. Comme $10^1 = 10$ n'est pas divisible par $4$ et que
$10^k = 4 \times 25 \times 10^{k-2}$ dès que $k \ge 2$, la plus petite valeur possible est
$$k = 2, \qquad M = \frac{100}{4} = 25 .$$

Alors
$$N = 7 \times 100 + 25 = 725 .$$

**Étape 5. Vérifier, et vérifier qu'il n'y a pas plus petit.**

$725 \div 29 = 25$, et effacer le $7$ de $725$ donne bien $25$. ✔

Et il n'y a rien de plus petit : tout nombre solution a au moins $3$ chiffres, puisque $k = 1$
donnerait $M = \frac{10}{4}$, qui n'est pas entier. Parmi les nombres à $3$ chiffres, la
solution est unique, car $d$ et $M$ sont entièrement déterminés.

**Conclusion : le plus petit entier convenant est $N = 725$.**

## Going further

Les solutions suivantes s'obtiennent avec $k = 3, 4, \ldots$ :
$$M = 250 \Rightarrow N = 7250, \qquad M = 2500 \Rightarrow N = 72\,500, \qquad \ldots$$
On retrouve à chaque fois $725$ suivi de zéros, ce qui n'est pas surprenant : multiplier $N$
par $10$ ne change ni le chiffre de gauche ni le rapport.

On peut refaire l'exercice en remplaçant $29$ par un autre nombre. Avec $57$, par exemple,
l'équation devient $d \times 10^k = 56\,M$, avec $56 = 2^3 \times 7$ : encore $d = 7$, puis
$M = 10^k/8$, donc $k = 3$ et $N = 7125$. Le raisonnement ne change pas, seuls les chiffres
changent.
