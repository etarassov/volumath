---
id: "13414"
title: "Cinq entiers et des produits multiples de 10"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [divisibilite, parite, multiples, denombrement, raisonnement par l absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2022"
  reference: "2022-10_sujet-Coupe-Animath-Automne-2022.pdf, épreuve collège, exercice 3 (repris tel quel en exercice 10 de l'épreuve lycée) ; corrigé 2022-10_corrige-commente-Coupe-Animath-Automne-2022.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/10/sujet-Coupe-Animath-Automne-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-10_sujet-Coupe-Animath-Automne-2022.pdf"
---

## Statement

Au tableau, Aline a écrit cinq entiers différents. Ils ont la propriété suivante : quels que soient les trois nombres que l'on choisit parmi eux, le produit de ces trois nombres est divisible par $10$.

Montrer que l'un des cinq entiers écrits au tableau est divisible par $10$.

## Hints

1. On a $10 = 2 \times 5$. À quelle condition un produit de trois entiers est-il pair ? À quelle condition est-il un multiple de $5$ ?
2. Combien, au plus, peut-il y avoir de nombres impairs parmi les cinq nombres d'Aline ?
3. Même question pour les nombres qui ne sont pas des multiples de $5$.
4. Sur les cinq nombres, combien au moins sont à la fois pairs et multiples de $5$ ?

## Solution

**Deux remarques sur les produits.**

- Un produit de nombres impairs est impair. Donc si $a$, $b$, $c$ sont impairs, $abc$ est impair, et il n'est pas divisible par $10$.
- Si aucun des nombres $a$, $b$, $c$ n'est un multiple de $5$, leur produit n'en est pas un non plus. En effet, $5$ est un nombre premier : la décomposition en facteurs premiers de $abc$ s'obtient en réunissant celles de $a$, de $b$ et de $c$, et le facteur $5$ n'apparaît dans aucune d'elles. Donc $abc$ n'est pas divisible par $10$.

**Au plus deux nombres impairs.** S'il y avait trois nombres impairs parmi les cinq, leur produit serait impair, donc pas divisible par $10$. C'est contraire à l'énoncé. Il y a donc au plus $2$ nombres impairs, c'est-à-dire **au moins $3$ nombres pairs**.

**Au plus deux nombres qui ne sont pas multiples de $5$.** De même, s'il y avait trois nombres non multiples de $5$, leur produit ne serait pas multiple de $5$, donc pas divisible par $10$. Il y a donc au plus $2$ nombres qui ne sont pas multiples de $5$, c'est-à-dire **au moins $3$ multiples de $5$**.

**On compte.** Parmi les cinq nombres, au moins trois sont pairs et au moins trois sont multiples de $5$. Comme $3 + 3 = 6$ est plus grand que $5$, ces deux groupes ont au moins un nombre en commun. Plus précisément, on retire au plus $2$ nombres impairs et au plus $2$ nombres non multiples de $5$ : il reste au moins $5 - 2 - 2 = 1$ nombre qui est à la fois pair et multiple de $5$.

**Conclusion.** Un nombre $n$ qui est à la fois pair et multiple de $5$ est un multiple de $10$. En effet, on écrit $n = 5m$. Comme $n$ est pair et $5$ est impair, $m$ est pair (sinon $5m$ serait impair), donc $m = 2p$ et $n = 10p$.

L'un des cinq entiers d'Aline est donc divisible par $10$.

## Going further

Le résultat reste-t-il vrai si Aline n'écrit que quatre entiers différents, avec la même propriété pour tous les choix de trois d'entre eux ?
