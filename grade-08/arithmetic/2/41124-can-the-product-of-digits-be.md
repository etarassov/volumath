---
id: "41124"
title: "Le produit des chiffres peut-il valoir 630, 5500 ou 2014 ?"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [produit-des-chiffres, chiffres, decomposition-en-facteurs-premiers, nombres-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-11-27
source:
  name: "MathCool, Грузия, август 2026 г., группа «Земляные элементали», листок «Делимость» (А. А. Пронина)"
  reference: "mathcool-2026-08-17-delimost.pdf, задача 3 (la question du baron, задача 0, est dans « Going further »)"
  url: ""
  original_language: "ru"
  local_copy: "sources/originals/mathcool/mathcool-2026-08-17-delimost.pdf"
---

## Statement

Le produit des chiffres d'un nombre entier peut-il être égal à

**a)** $630$ ? **b)** $5500$ ? **c)** $2014$ ?

## Hints

1. Un chiffre vaut au plus $9$. Quels nombres premiers peuvent apparaître quand on décompose un chiffre en facteurs premiers ?
2. Décompose $630$, $5500$ et $2014$ en produits de nombres premiers.
3. Si un nombre premier plus grand que $9$ apparaît dans la décomposition du produit, il doit venir de l'un des chiffres. Est-ce possible ?

## Solution

**Le fait clé.** Les chiffres non nuls sont $1, 2, \ldots, 9$, et leurs décompositions n'utilisent que les nombres premiers $2$, $3$, $5$ et $7$ :

$$4 = 2 \times 2, \quad 6 = 2 \times 3, \quad 8 = 2 \times 2 \times 2, \quad 9 = 3 \times 3.$$

Si un chiffre vaut $0$, le produit vaut $0$. Sinon, le produit des chiffres est un produit de $2$, de $3$, de $5$ et de $7$, et aucun autre nombre premier ne peut apparaître dans sa décomposition.

**a)** $630 = 2 \times 3 \times 3 \times 5 \times 7 = 2 \times 5 \times 7 \times 9$. Le nombre $2579$ convient : $2 \times 5 \times 7 \times 9 = 630$. **Oui.**

**b)** $5500 = 2^2 \times 5^3 \times 11$. Le nombre premier $11$ apparaît, et aucun chiffre n'est divisible par $11$. **Non.**

**c)** $2014 = 2 \times 19 \times 53$. Les nombres premiers $19$ et $53$ apparaissent. **Non.**

## Going further

Le baron de Münchhausen se vantait de savoir multiplier de tête. Pour le mettre à l'épreuve, on lui demande d'écrire un nombre, de multiplier ses chiffres entre eux et de donner le résultat. Sans hésiter, le baron répond : « $1210$ ». S'est-il trompé ?

*Réponse : oui, car $1210 = 2 \times 5 \times 11^2$ contient le facteur premier $11$.*
