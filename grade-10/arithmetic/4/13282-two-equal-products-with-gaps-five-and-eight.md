---
id: "13282"
title: "Deux produits égaux, avec des écarts de 5 et de 8"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [equation-diophantienne, difference-de-carres, factorisation, identite-remarquable]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2020"
  reference: "2020-10_Sujet.pdf, exercices lycéens, exercice 16 ; corrigé 2020-10_sujetcommentairecorrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/10/Sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2020-10_Sujet.pdf"
---

## Statement

Suzanne multiplie deux entiers dont la différence vaut $5$. Martin multiplie deux entiers dont la différence vaut $8$. Les entiers peuvent être positifs, négatifs ou nuls. Ils obtiennent le même résultat, que l'on note $C$.

Quelles sont les valeurs possibles de $C$ ?

## Hints

1. Note $a$ et $a - 5$ les entiers de Suzanne, $b$ et $b - 8$ ceux de Martin. Cherche quelques exemples. Trouves-tu facilement une valeur de $C$ ? Et une valeur strictement positive ?
2. Fais apparaître des carrés : vérifie que $4a(a - 5) = (2a - 5)^2 - 25$, et écris de même $4b(b - 8)$.
3. Tu obtiens une différence de deux carrés égale à un petit nombre. Factorise-la et regarde les diviseurs de ce nombre.

## Solution

Notons $a$ et $a - 5$ les entiers de Suzanne, $b$ et $b - 8$ ceux de Martin. Alors

$$C = a(a - 5) = b(b - 8).$$

**Faire apparaître des carrés.** On multiplie par $4$ et on complète les carrés :

$$4a(a - 5) = 4a^2 - 20a = (2a - 5)^2 - 25, \qquad 4b(b - 8) = 4b^2 - 32b = (2b - 8)^2 - 64.$$

Ces deux nombres valent $4C$, donc $(2b - 8)^2 - 64 = (2a - 5)^2 - 25$, c'est-à-dire

$$(2b - 8)^2 - (2a - 5)^2 = 39.$$

**Factoriser.** Posons $u = |2b - 8|$ et $v = |2a - 5|$. Ce sont des entiers positifs ou nuls, et $u^2 - v^2 = 39$, soit

$$(u - v)(u + v) = 39.$$

Comme $u + v \geqslant 0$ et que le produit est positif, on a $u + v > 0$ puis $u - v > 0$, et $u - v \leqslant u + v$. Or $39 = 1 \times 39 = 3 \times 13$. Il y a deux cas.

- $u - v = 1$ et $u + v = 39$ : alors $u = 20$ et $v = 19$. Donc $2b - 8 = 20$ ou $-20$, c'est-à-dire $b = 14$ ou $b = -6$. Dans les deux cas $C = b(b - 8) = 14 \times 6 = (-6) \times (-14) = 84$.
- $u - v = 3$ et $u + v = 13$ : alors $u = 8$ et $v = 5$. Donc $2b - 8 = 8$ ou $-8$, c'est-à-dire $b = 8$ ou $b = 0$. Dans les deux cas $C = 0$.

**Les deux valeurs sont atteintes.**

- $C = 84$ : Suzanne calcule $12 \times 7$ (et $12 - 7 = 5$), Martin calcule $14 \times 6$ (et $14 - 6 = 8$).
- $C = 0$ : Suzanne calcule $5 \times 0$, Martin calcule $8 \times 0$.

**Conclusion.** Les valeurs possibles de $C$ sont $0$ et $84$.
