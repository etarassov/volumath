---
id: "4219"
title: "Les nombres premiers et les multiples de 6"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [nombre premier, division euclidienne, restes]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Remainders, Primes and the Euclidean Algorithm"
  reference: "Handout-1978-1808.pdf, exercice 2"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1978-1808.pdf"
---

## Statement

Démontrer que tout nombre premier strictement supérieur à $3$ s'écrit sous la forme $6k + 1$ ou
sous la forme $6k + 5$, où $k$ est un entier naturel.

## Hints

1. Fais la liste des nombres premiers entre $5$ et $40$ et calcule le reste de chacun dans la
   division par $6$. Que remarques-tu ?
2. Quand on divise un entier par $6$, quels restes peut-on obtenir ?
3. Examine chaque reste possible l'un après l'autre et demande-toi, à chaque fois, si le nombre
   obtenu peut être premier. Pense à la parité, puis à la divisibilité par $3$.

## Solution

Soit $p$ un nombre premier avec $p > 3$. Effectuons la division euclidienne de $p$ par $6$ :
$$p = 6k + r, \qquad \text{avec } 0 \leq r \leq 5.$$

Examinons les six valeurs possibles du reste $r$.

**Les restes $0$, $2$ et $4$ sont impossibles.**

Dans ces trois cas, $r$ est pair, et $6k$ est pair aussi. Donc $p = 6k + r$ est pair. Or le seul
nombre premier pair est $2$, et on a supposé $p > 3$. Contradiction.

**Le reste $3$ est impossible.**

Si $r = 3$, alors $p = 6k + 3 = 3(2k + 1)$, donc $p$ est divisible par $3$. Or le seul nombre
premier divisible par $3$ est $3$ lui-même, et on a supposé $p > 3$. Contradiction.

**Le reste $0$ est d'ailleurs impossible pour deux raisons :** $p = 6k$ serait divisible par $2$
et par $3$.

**Il ne reste que $r = 1$ et $r = 5$.**

Donc $p = 6k + 1$ ou $p = 6k + 5$.

**Conclusion.** Tout nombre premier strictement supérieur à $3$ est de la forme $6k+1$ ou $6k+5$.

*Vérification.* $5 = 6 \times 0 + 5$, $7 = 6 \times 1 + 1$, $11 = 6 \times 1 + 5$,
$13 = 6 \times 2 + 1$, $17 = 6 \times 2 + 5$, $19 = 6 \times 3 + 1$, $23 = 6 \times 3 + 5$,
$29 = 6 \times 4 + 5$, $31 = 6 \times 5 + 1$. ✓

**Attention à la réciproque :** elle est fausse. $25 = 6 \times 4 + 1$ est de la bonne forme et
n'est pourtant pas premier. La propriété démontrée permet d'écarter des candidats, pas d'en
fabriquer.

## Going further

1. On peut aussi écrire la forme $6k + 5$ comme $6k' - 1$. Tout nombre premier $p > 3$ est donc
   « voisin d'un multiple de $6$ ». Retrouve ce fait sur la liste ci-dessus.
2. En déduire que si $p > 3$ est premier, alors $p^2 - 1$ est divisible par $24$.
