---
id: "3611"
title: "Les diviseurs de 120 divisibles par 12"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 10
tags: [diviseurs, multiples, decomposition, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 8 training, Berkeley mini Math Tournament 2025"
  reference: "Handout-5091-5540.pdf, problème 7 de l'Individual Round (corrigé dans Handout-5092-5540.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5091-5540.pdf"
---

## Statement

Combien de diviseurs positifs de $120$ sont divisibles par $12$ ?

On rappelle que $1$ et $120$ comptent parmi les diviseurs de $120$.

## Hints

1. Un tel nombre est un multiple de $12$ : il s'écrit $12k$ pour un certain entier $k \geqslant 1$.
2. Écris $120 = 12 \times 10$. À quelle condition sur $k$ le nombre $12k$ divise-t-il $120$ ?
3. Il ne reste plus qu'à compter les diviseurs de $10$.

## Solution

**Étape 1. Traduire la condition « divisible par 12 ».**

Soit $d$ un diviseur de $120$ divisible par $12$. Comme $d$ est un multiple de $12$, on peut écrire

$$d = 12k \quad \text{avec } k \text{ entier}, \ k \geqslant 1$$

**Étape 2. Traduire la condition « divise 120 ».**

Dire que $d$ divise $120$, c'est dire que $\dfrac{120}{d}$ est un entier. Or

$$\frac{120}{d} = \frac{120}{12k} = \frac{10}{k}$$

Donc $d$ divise $120$ si et seulement si $k$ divise $10$.

**Étape 3. Compter.**

Les diviseurs positifs de $10$ sont $1$, $2$, $5$ et $10$ : il y en a $4$.

À chacun correspond un diviseur de $120$ divisible par $12$ :

$$12 \times 1 = 12, \quad 12 \times 2 = 24, \quad 12 \times 5 = 60, \quad 12 \times 10 = 120$$

et ces quatre nombres sont bien deux à deux différents.

**Réponse.** Il y a $4$ tels diviseurs : $12$, $24$, $60$ et $120$.

## Going further

On peut aussi lister les $16$ diviseurs de $120 = 2^3 \times 3 \times 5$ et repérer ceux qui sont des multiples de $12$, mais le raisonnement ci-dessus est plus rapide et se généralise.

En général, si $m$ divise $N$, alors les diviseurs de $N$ qui sont multiples de $m$ sont exactement les nombres $mk$ où $k$ décrit les diviseurs de $\dfrac{N}{m}$. Leur nombre est donc le nombre de diviseurs de $\dfrac{N}{m}$.
