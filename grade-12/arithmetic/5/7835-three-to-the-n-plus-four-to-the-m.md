---
id: "7835"
title: "3ⁿ + 4ᵐ = 5ᵏ"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [equation exponentielle, congruences, factorisation, puissances de deux]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, test de fin de parcours du mardi 25 août, groupe C, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Trouver tous les triplets d'entiers naturels $(n, m, k)$ tels que
$$3^n + 4^m = 5^k .$$

## Hints

1. Il y a deux solutions. L'une est le triplet pythagoricien le plus célèbre du monde, déguisé.
   Cherche-les d'abord à la main pour de petits exposants.
2. Traite à part les cas $n = 0$ et $m = 0$, qui sont particuliers. Pour $m = 0$, l'équation
   modulo $4$ se règle en une ligne.
3. Dans le cas général ($n$, $m$, $k$ tous $\geq 1$), lis l'équation modulo $4$ pour obtenir la
   parité de $n$, puis modulo $3$ pour celle de $k$.
4. Avec $n$ et $k$ pairs, $5^k - 3^n$ est une différence de deux carrés : factorise-la. Les deux
   facteurs sont des puissances de $2$.
5. Deux puissances de $2$ dont la différence n'est pas un multiple de $4$ : que peut valoir la
   plus petite ? Puis, à la fin, deux puissances de $3$ qui diffèrent de $2$.

## Solution

Deux triplets sautent aux yeux :
$$3^0 + 4^1 = 1 + 4 = 5 = 5^1 \qquad \text{et} \qquad 3^2 + 4^2 = 9 + 16 = 25 = 5^2 .$$

Montrons qu'il n'y en a pas d'autres. Remarquons d'abord que $5^k = 3^n + 4^m \geq 2$, donc
$k \geq 1$.

**Cas 1 : $n = 0$.** L'équation devient $1 + 4^m = 5^k$.

Si $m = 0$, on aurait $2 = 5^k$, impossible. Donc $m \geq 1$, et $4^m$ est pair.

Lisons l'équation modulo $8$. Les puissances de $5$ y alternent : $5^1 \equiv 5$,
$5^2 \equiv 1$, $5^3 \equiv 5$, ... donc $5^k \equiv 5$ si $k$ est impair et $5^k \equiv 1$ si
$k$ est pair.

Par ailleurs $1 + 4^m$ vaut $5$ si $m = 1$, et $1 + 4^m \equiv 1 \pmod 8$ dès que $m \geq 2$
(car $4^m$ est alors multiple de $16$).

- Si $m = 1$ : l'équation donne $5 = 5^k$, donc $k = 1$. C'est la solution $(0, 1, 1)$.
- Si $m \geq 2$ : alors $5^k \equiv 1 \pmod 8$, donc $k$ est pair, disons $k = 2k'$. Alors
  $$4^m = 5^{2k'} - 1 = \left(5^{k'} - 1\right)\left(5^{k'} + 1\right).$$
  Les deux facteurs sont des puissances de $2$, et leur différence vaut $2$. Deux puissances de
  $2$ qui diffèrent de $2$ ne peuvent être que $2$ et $4$, ce qui donnerait $5^{k'} = 3$ :
  impossible.

**Cas 2 : $m = 0$ et $n \geq 1$.** L'équation devient $3^n + 1 = 5^k$.

Lisons-la modulo $4$ : on a $5 \equiv 1$, donc $5^k \equiv 1 \pmod 4$. Il faudrait donc
$3^n \equiv 0 \pmod 4$, alors que $3^n$ est impair. **Aucune solution.**

**Cas 3 : $n \geq 1$, $m \geq 1$ (et donc $k \geq 1$).**

*Modulo $4$.* On a $4^m \equiv 0$ et $5^k \equiv 1$, donc $3^n \equiv 1 \pmod 4$. Comme
$3 \equiv -1 \pmod 4$, cela donne $(-1)^n \equiv 1$, donc **$n$ est pair**. Écrivons $n = 2n'$
avec $n' \geq 1$.

*Modulo $3$.* On a $3^n \equiv 0$, $4 \equiv 1$ donc $4^m \equiv 1$, et $5 \equiv -1$ donc
$5^k \equiv (-1)^k$. L'équation donne $1 \equiv (-1)^k \pmod 3$, donc **$k$ est pair**. Écrivons
$k = 2k'$ avec $k' \geq 1$.

*On factorise.*
$$4^m = 5^{2k'} - 3^{2n'} = \left(5^{k'} - 3^{n'}\right)\left(5^{k'} + 3^{n'}\right).$$

Les deux facteurs sont des diviseurs positifs de la puissance de $2$ qu'est $4^m$ : ce sont donc
eux-mêmes des puissances de $2$. De plus $5^{k'} - 3^{n'} > 0$.

Comme $5^{k'}$ et $3^{n'}$ sont impairs, les deux facteurs sont pairs. Écrivons
$$5^{k'} - 3^{n'} = 2^s, \qquad 5^{k'} + 3^{n'} = 2^t, \qquad 1 \leq s < t .$$

Leur différence vaut
$$2^t - 2^s = 2 \times 3^{n'} ,$$
qui n'est pas un multiple de $4$ (car $3^{n'}$ est impair). Si on avait $s \geq 2$, alors $t > 2$
aussi et les deux puissances seraient des multiples de $4$, donc leur différence aussi.
Contradiction. Donc $s = 1$ :
$$5^{k'} - 3^{n'} = 2 .$$

*On termine.* Alors $5^{k'} + 3^{n'} = \dfrac{4^m}{2} = 2^{2m - 1}$, et en soustrayant les deux
égalités :
$$2 \times 3^{n'} = 2^{2m-1} - 2, \qquad \text{donc} \qquad 3^{n'} = 2^{2m-2} - 1 .$$

On factorise à nouveau :
$$3^{n'} = \left(2^{m-1}\right)^2 - 1 = \left(2^{m-1} - 1\right)\left(2^{m-1} + 1\right).$$

Les deux facteurs sont des puissances de $3$ (diviseurs positifs de $3^{n'}$) et leur différence
vaut $2$. Deux puissances de $3$ qui diffèrent de $2$ : ce sont $1$ et $3$. Donc
$$2^{m-1} - 1 = 1, \qquad \text{c'est-à-dire} \qquad m = 2 .$$

Alors $3^{n'} = 1 \times 3 = 3$, donc $n' = 1$ et $n = 2$. Et
$5^{k'} = 3^{n'} + 2 = 5$, donc $k' = 1$ et $k = 2$.

On retrouve la solution $(2, 2, 2)$.

**Conclusion.**

Les seuls triplets d'entiers naturels solutions sont
$$\boxed{(n, m, k) = (0, 1, 1) \quad \text{et} \quad (n, m, k) = (2, 2, 2)} .$$

La seconde n'est autre que $3^2 + 4^2 = 5^2$, le triangle rectangle $3$–$4$–$5$.
