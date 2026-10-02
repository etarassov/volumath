---
id: "3024"
title: "Quand 1! + 2! + … + n! est-il un carré ?"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [factorielle, carres, chiffre-des-unites, recherche-exhaustive]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Modular Arithmetic I and Divisibility Rules"
  reference: "Handout-3277-2873.pdf, exercice 5 (HMMT Guts 2004 ; réponse dans Handout-3324-2873.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3277-2873.pdf"
---

## Statement

On rappelle que $n! = 1 \times 2 \times 3 \times \cdots \times n$.

Trouver tous les couples d'entiers strictement positifs $(m, n)$ tels que

$$1! + 2! + 3! + \cdots + n! = m^2.$$

## Hints

1. Calcule la somme pour $n = 1, 2, 3, 4, 5, 6$. Regarde le chiffre des unités.
2. À partir d'un certain rang, $n!$ se termine par $0$. Pourquoi ? Cherche les facteurs $2$ et $5$ dans le produit.
3. Si tous les $n!$ avec $n \geq 5$ finissent par $0$, le chiffre des unités de la somme ne change plus. Combien vaut-il ?
4. Par quels chiffres un carré parfait peut-il se terminer ? Dresse la liste de $0^2$ à $9^2$.

## Solution

**Les premières valeurs.**

| $n$ | $1! + \cdots + n!$ | carré ? |
|---|---|---|
| $1$ | $1$ | oui, $1 = 1^2$ |
| $2$ | $3$ | non |
| $3$ | $9$ | oui, $9 = 3^2$ |
| $4$ | $33$ | non |
| $5$ | $153$ | non |
| $6$ | $873$ | non |

**À partir de n = 5, le chiffre des unités se fige.**

Dès que $n \geq 5$, le produit $n! = 1 \times 2 \times \cdots \times n$ contient à la fois le
facteur $2$ et le facteur $5$, donc il est divisible par $10$ : il se termine par $0$.

Donc pour $n \geq 5$, la somme $1! + 2! + \cdots + n!$ a le même chiffre des unités que

$$1! + 2! + 3! + 4! = 1 + 2 + 6 + 24 = 33,$$

c'est-à-dire le chiffre $3$.

**Un carré ne finit jamais par 3.**

Le chiffre des unités d'un carré ne dépend que du chiffre des unités du nombre élevé au
carré :

| chiffre | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ |
|---|---|---|---|---|---|---|---|---|---|---|
| son carré finit par | $0$ | $1$ | $4$ | $9$ | $6$ | $5$ | $6$ | $9$ | $4$ | $1$ |

Les seuls chiffres possibles sont $0, 1, 4, 5, 6, 9$. Le chiffre $3$ n'y figure pas.

Donc aucune somme avec $n \geq 5$ n'est un carré parfait.

**Il ne reste que quatre cas.**

Ils sont dans le tableau du début : seuls $n = 1$ (somme $1 = 1^2$) et $n = 3$ (somme
$9 = 3^2$) conviennent.

**Conclusion.**

Les seules solutions sont

$$(m, n) = (1, 1) \qquad \text{et} \qquad (m, n) = (3, 3).$$

## Going further

On peut aller plus loin et chercher quand $1! + 2! + \cdots + n! = m^k$ avec un exposant
$k \geq 2$ quelconque. La réponse est la même : seuls $n = 1$ et $n = 3$ marchent. Pour le
voir, on regarde cette fois la somme modulo $81$ : pour $n \geq 9$ tous les termes ajoutés
sont des multiples de $81$, et la somme reste congrue à $63 = 9 \times 7$. Elle est donc
divisible par $9$ mais pas par $27$, ce qui force $k = 2$ — et on se ramène au cas déjà
traité.
