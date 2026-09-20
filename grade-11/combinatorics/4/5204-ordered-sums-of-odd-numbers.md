---
id: "5204"
title: "Les sommes ordonnées de nombres impairs"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [denombrement, fibonacci, recurrence, bijection, parite]
adapted_from: null
see_also: ["5203", "2019"]
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Compositions — Josh Zucker"
  reference: "JZuckerCompositions.pdf, question 4"
  url: "https://mathcircles.org/activity/compositions/"
  original_language: "en"
  local_copy: "sources/originals/namc/JZuckerCompositions.pdf"
---

## Statement

On écrit un entier $n \geqslant 1$ comme une somme d'entiers **impairs** strictement positifs, en tenant compte de l'ordre des termes. Une somme d'un seul terme est autorisée.

Par exemple, pour $n = 5$ il y a cinq écritures :

$$5, \qquad 3 + 1 + 1, \qquad 1 + 3 + 1, \qquad 1 + 1 + 3, \qquad 1 + 1 + 1 + 1 + 1 .$$

On note $a_n$ le nombre de ces écritures.

1. Calculer $a_1, a_2, a_3, a_4$ et $a_6$ en écrivant toutes les sommes. Que reconnaissez-vous ?
2. Démontrer que pour tout $n \geqslant 3$,

   $$a_n = a_{n-1} + a_{n-2} .$$

3. En déduire $a_{10}$ et $a_{15}$.

## Hints

1. Prenez le temps d'écrire toutes les sommes pour $n = 4$ et $n = 6$ ; ensuite seulement, regardez la liste $a_1, a_2, \ldots$
2. Pour la question 2, classez les écritures de $n$ selon leur **dernier** terme. Il n'y a que deux cas à distinguer : le dernier terme vaut $1$, ou il vaut au moins $3$.
3. Si le dernier terme vaut $1$, effacez-le. Qu'obtenez-vous ?
4. Si le dernier terme vaut au moins $3$, il est impair, donc il vaut $3$, $5$, $7$… Diminuez-le de $2$ : il reste impair et strictement positif. Qu'obtenez-vous, et pourquoi cette transformation ne perd-elle rien ?

## Solution

### 1. Les premières valeurs

- $n = 1$ : $1$. Donc $a_1 = 1$.
- $n = 2$ : $1 + 1$. On ne peut pas écrire $2$ tout seul, car $2$ est pair. Donc $a_2 = 1$.
- $n = 3$ : $3$ et $1+1+1$. Donc $a_3 = 2$.
- $n = 4$ : $3+1$, $1+3$, $1+1+1+1$. Donc $a_4 = 3$.
- $n = 5$ : les cinq écritures de l'énoncé, donc $a_5 = 5$.
- $n = 6$ : $5+1$, $1+5$, $3+3$, $3+1+1+1$, $1+3+1+1$, $1+1+3+1$, $1+1+1+3$, $1+1+1+1+1+1$. Donc $a_6 = 8$.

La suite obtenue est

$$1, \; 1, \; 2, \; 3, \; 5, \; 8, \; \ldots$$

c'est-à-dire la suite de **Fibonacci**.

### 2. La relation de récurrence

Soit $n \geqslant 3$. Classons les écritures de $n$ en somme ordonnée de nombres impairs selon leur dernier terme.

**Cas A : le dernier terme vaut $1$.** Effaçons-le. Il reste une somme ordonnée de nombres impairs valant $n - 1$. Réciproquement, à partir de n'importe quelle écriture de $n-1$, on retrouve une écriture de $n$ finissant par $1$ en ajoutant $+\,1$ à la fin, et on retrouve bien celle d'où l'on était parti.

Le cas A correspond donc exactement aux écritures de $n-1$ : il y en a $a_{n-1}$.

*(Comme $n \geqslant 3$, le nombre $n-1$ est bien $\geqslant 2$, et il y a bien quelque chose à écrire.)*

**Cas B : le dernier terme vaut au moins $3$.** Ce terme est impair, donc il vaut $3$, $5$, $7$, … Diminuons-le de $2$ : il devient $1$, $3$, $5$, …, donc il reste impair et strictement positif, et la somme totale vaut maintenant $n - 2$.

Cette transformation est réversible : à partir d'une écriture quelconque de $n-2$, on augmente son dernier terme de $2$, il reste impair, devient au moins $3$, et la somme vaut $n$. Les deux opérations se défont l'une l'autre.

Le cas B correspond donc exactement aux écritures de $n-2$ : il y en a $a_{n-2}$.

Les deux cas sont incompatibles et couvrent tout, d'où

$$a_n = a_{n-1} + a_{n-2} \qquad \text{pour } n \geqslant 3 .$$

### 3. Les valeurs demandées

Avec $a_1 = a_2 = 1$ et la relation ci-dessus :

| $n$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $a_n$ | 1 | 1 | 2 | 3 | 5 | 8 | 13 | 21 | 34 | 55 | 89 | 144 | 233 | 377 | 610 |

Donc

$$a_{10} = \boxed{55} \qquad \text{et} \qquad a_{15} = \boxed{610} .$$

## Going further

Le contraste est joli : si l'on autorise **tous** les entiers strictement positifs comme termes, le nombre d'écritures de $n$ est $2^{n-1}$ (exercice 5203), qui grandit très vite. En n'autorisant que les termes impairs, on tombe sur la suite de Fibonacci, qui grandit bien plus lentement.

On peut aussi relier ce compte au carrelage d'une frise de l'exercice 2019, où l'on retrouve Fibonacci en pavant une bande avec des carreaux de longueur $1$ et $2$.
