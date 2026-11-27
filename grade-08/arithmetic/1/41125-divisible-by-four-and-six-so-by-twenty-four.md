---
id: "41125"
title: "Divisible par 4 et par 6, donc par 24 ?"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [divisibilite, contre-exemple, ppcm]
adapted_from: null
see_also: []
same_as: []
created: 2026-11-27
source:
  name: "MathCool, Грузия, август 2026 г., группа «Земляные элементали», листок «Делимость» (А. А. Пронина)"
  reference: "mathcool-2026-08-17-delimost.pdf, задача 4"
  url: ""
  original_language: "ru"
  local_copy: "sources/originals/mathcool/mathcool-2026-08-17-delimost.pdf"
---

## Statement

Est-il vrai que si un nombre est divisible à la fois par $4$ et par $6$, alors il est aussi divisible par $24$ ?

## Hints

1. Écris quelques nombres qui sont à la fois multiples de $4$ et de $6$.
2. Le plus petit d'entre eux est-il divisible par $24$ ?
3. Pour comprendre pourquoi, décompose $4$, $6$ et $24$ en facteurs premiers. Combien de facteurs $2$ faut-il pour être divisible par $4$ ? par $6$ ? par $24$ ?

## Solution

**Non.** Le nombre $12$ est divisible par $4$ et par $6$, mais pas par $24$.

**Pourquoi.** On a $4 = 2 \times 2$, $6 = 2 \times 3$ et $24 = 2 \times 2 \times 2 \times 3$. Un nombre divisible par $4$ contient au moins deux facteurs $2$ ; un nombre divisible par $6$ contient au moins un facteur $2$ et un facteur $3$. Le facteur $2$ demandé par $6$ peut être l'un des deux facteurs $2$ déjà demandés par $4$. Au total, on est seulement sûr d'avoir $2 \times 2 \times 3 = 12$, pas $2 \times 2 \times 2 \times 3 = 24$.

Ce qui est vrai : un nombre divisible par $4$ et par $6$ est toujours divisible par $12$, le plus petit multiple commun de $4$ et $6$.

**La règle à retenir.** Si un nombre est divisible par $a$ et par $b$, et si $a$ et $b$ n'ont pas de facteur premier commun (on dit qu'ils sont premiers entre eux), alors il est divisible par $a \times b$. Ici $4$ et $6$ ont le facteur $2$ en commun, et la règle ne s'applique pas.

## Going further

Un nombre divisible par $3$ et par $8$ est-il toujours divisible par $24$ ? Et un nombre divisible par $6$ et par $9$ est-il toujours divisible par $54$ ?

*Réponses : oui pour le premier, car $3$ et $8$ sont premiers entre eux ; non pour le second, car $18$ est divisible par $6$ et par $9$ mais pas par $54$.*
