---
id: "7821"
title: "Quand 2ⁿ + 1 est-il un carré ? un cube ?"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [puissances-de-deux, carres, cubes, factorisation, parite]
adapted_from: null
see_also: ["7034"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, « Coupe Animath et évaluation initiale », évaluation initiale, section arithmétique, dernier exercice"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

**a)** Trouver tous les entiers naturels $n$ tels que $2^n + 1$ soit le carré d'un entier.

**b)** Trouver tous les entiers naturels $n$ tels que $2^n + 1$ soit le cube d'un entier.

## Hints

1. Commence par essayer : $n = 0, 1, 2, 3, 4, 5$. Une des deux questions a une réponse, l'autre
   n'en a aucune.
2. Pour a) : si $2^n + 1 = k^2$, écris $2^n = k^2 - 1$ et factorise le membre de droite.
3. Les deux facteurs obtenus sont deux diviseurs d'une puissance de $2$, donc ce sont eux-mêmes
   des puissances de $2$. Et ils diffèrent de $2$. Combien y a-t-il de couples de puissances de
   $2$ qui diffèrent de $2$ ?
4. Pour b) : si $2^n + 1 = m^3$, écris $2^n = m^3 - 1$ et factorise. L'identité
   $m^3 - 1 = (m-1)(m^2 + m + 1)$ est celle qu'il te faut.
5. Regarde alors la **parité** du second facteur $m^2 + m + 1$. Que vaut $m^2 + m$ ?

## Solution

### a) Le cas du carré

Supposons $2^n + 1 = k^2$ avec $k$ entier naturel.

**Le cas $n = 0$ :** $2^0 + 1 = 2$, qui n'est pas un carré. On peut donc supposer $n \geq 1$.

Alors $2^n$ est pair, donc $k^2 = 2^n + 1$ est impair, donc $k$ est impair, et en particulier
$k \geq 3$ (car $k^2 \geq 3$).

On factorise :
$$2^n = k^2 - 1 = (k-1)(k+1).$$

Les entiers $k - 1$ et $k + 1$ sont deux diviseurs positifs de $2^n$, donc ce sont des
puissances de $2$. Écrivons
$$k - 1 = 2^u, \qquad k + 1 = 2^v, \qquad \text{avec } u < v \text{ et } u + v = n .$$

En soustrayant :
$$2^v - 2^u = 2, \qquad \text{c'est-à-dire} \qquad 2^u\left(2^{v-u} - 1\right) = 2 .$$

Le facteur $2^{v-u} - 1$ est impair (et vaut au moins $1$), donc il vaut $1$ et $2^u = 2$. D'où
$$u = 1, \quad v - u = 1, \quad v = 2 .$$

Ainsi $k - 1 = 2$, $k + 1 = 4$, donc $k = 3$ et $n = u + v = 3$.

**Réponse de a) :** le seul entier est $\boxed{n = 3}$, et en effet $2^3 + 1 = 9 = 3^2$.

### b) Le cas du cube

Supposons $2^n + 1 = m^3$ avec $m$ entier naturel.

**Le cas $n = 0$ :** $2^0 + 1 = 2$, qui n'est pas un cube. On peut donc supposer $n \geq 1$.

Alors $m^3 = 2^n + 1 \geq 3$, donc $m \geq 2$.

On factorise avec l'identité $m^3 - 1 = (m-1)(m^2 + m + 1)$ :
$$2^n = m^3 - 1 = (m - 1)\left(m^2 + m + 1\right).$$

Le facteur $m^2 + m + 1$ est un diviseur positif de $2^n$, donc c'est une puissance de $2$.

Mais regardons sa parité : $m^2 + m = m(m+1)$ est le produit de deux entiers consécutifs, donc
il est **pair**. Par conséquent $m^2 + m + 1$ est **impair**.

La seule puissance de $2$ impaire est $1$. Il faudrait donc
$$m^2 + m + 1 = 1, \qquad \text{c'est-à-dire} \qquad m(m+1) = 0,$$
donc $m = 0$ (ou $m = -1$), ce qui contredit $m \geq 2$.

**Réponse de b) :** il n'existe $\boxed{\text{aucun}}$ entier naturel $n$ tel que $2^n + 1$ soit
un cube.

*Pour s'en convaincre à la main :* $2, 3, 5, 9, 17, 33, 65, 129, 257, 513, \ldots$ Aucun n'est un
cube, et les cubes $8, 27, 64, 125, 216, 343, 512$ sont tous ratés de peu par cette suite.
