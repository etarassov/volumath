---
id: "4411"
title: "Le dernier chiffre de 2 puissance 50"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [puissance, chiffre, periodicite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Divisibility"
  reference: "Handout-1265-1276.pdf, problème 4 (réponse dans Handout-1271-1276.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1265-1276.pdf"
---

## Statement

Quel est le chiffre des unités de $2^{50}$ ?

## Hints

1. Calcule le chiffre des unités de $2^1$, $2^2$, $2^3$, $2^4$, $2^5$, $2^6$… Écris-les à la
   suite.
2. La liste se répète. Au bout de combien de puissances ?
3. Pour savoir où tombe $2^{50}$ dans ce cycle, regarde le reste de la division de $50$ par la
   longueur du cycle.

## Solution

**Le cycle.** Calculons les premières puissances de $2$ et ne gardons que leur chiffre des
unités :

$$2^1 = 2, \quad 2^2 = 4, \quad 2^3 = 8, \quad 2^4 = 16, \quad 2^5 = 32, \quad 2^6 = 64, \quad 2^7 = 128, \quad 2^8 = 256.$$

Les chiffres des unités sont

$$2,\ 4,\ 8,\ 6,\ 2,\ 4,\ 8,\ 6,\ \ldots$$

**Pourquoi cela se répète.** Le chiffre des unités d'un produit ne dépend que des chiffres des
unités des facteurs. Comme on passe d'une puissance à la suivante en multipliant par $2$, dès
que le chiffre des unités $2$ réapparaît (à l'exposant $5$), toute la suite recommence à
l'identique. Le motif $2,\ 4,\ 8,\ 6$ se répète donc indéfiniment, avec une période de $4$.

**Où tombe l'exposant $50$ ?** Divisons $50$ par $4$ :

$$50 = 4 \times 12 + 2.$$

Le reste est $2$, donc $2^{50}$ a le même chiffre des unités que $2^2$, c'est-à-dire $4$.

**Le chiffre des unités de $2^{50}$ est $4$.**

## Going further

Le même travail donne le chiffre des unités de n'importe quelle puissance de $2$ : il suffit de
regarder le reste de l'exposant modulo $4$ (un reste de $1$ donne $2$, de $2$ donne $4$, de $3$
donne $8$, de $0$ donne $6$). Les puissances de $3$ ont aussi une période de $4$
($3,\ 9,\ 7,\ 1$), celles de $7$ également, tandis que celles de $5$ et de $6$ se terminent
toujours par le même chiffre.
