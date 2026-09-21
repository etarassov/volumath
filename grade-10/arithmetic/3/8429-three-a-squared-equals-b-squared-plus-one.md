---
id: "8429"
title: "3a² = b² + 1 n'a pas de solution"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 15
tags: [carres, reste, division-euclidienne, equation-en-entiers]
adapted_from: null
see_also: ["7859", "8326", "8661"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Modulos & factorisation » (Théo Lenoir et Angela Xue), exercice 6"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Trouver tous les couples d'entiers $(a, b)$ tels que

$$3a^2 = b^2 + 1.$$

## Hints

1. Essaie quelques petites valeurs de $a$ : $3$, $12$, $27$, $48$... Ces nombres sont-ils jamais égaux à un carré plus $1$ ?
2. Le membre de gauche est un multiple de $3$. Cela suggère de regarder les restes dans la division par $3$.
3. Quels restes le carré d'un entier peut-il laisser dans la division par $3$ ? Fais le tableau des trois cas.
4. Quel reste devrait laisser $b^2$ pour que $b^2 + 1$ soit un multiple de $3$ ?

## Solution

Il n'y a **aucune** solution.

**Étape 1. Les restes possibles d'un carré dans la division par $3$.**

Tout entier $b$ s'écrit $b = 3q + r$ avec $r$ valant $0$, $1$ ou $2$.

| $r$ | $b^2 = (3q+r)^2$ | reste de $b^2$ modulo $3$ |
|---|---|---|
| $0$ | $9q^2$ | $0$ |
| $1$ | $9q^2 + 6q + 1$ | $1$ |
| $2$ | $9q^2 + 12q + 4$ | $1$ |

On retient :

> **Le carré d'un entier laisse toujours le reste $0$ ou $1$ dans la division par $3$.**

**Étape 2. Ce qu'impose l'équation.**

Le membre de gauche, $3a^2$, est un multiple de $3$ : son reste est $0$.

Donc $b^2 + 1$ doit être un multiple de $3$, c'est-à-dire que $b^2$ doit laisser le reste $2$ dans la division par $3$.

**Étape 3. Conclure.**

C'est impossible d'après l'étape 1 : un carré ne laisse jamais le reste $2$ modulo $3$.

L'équation $3a^2 = b^2 + 1$ n'a donc aucune solution en nombres entiers.

## Going further

Le même raisonnement fonctionne modulo $4$. Si $a$ est impair, $3a^2$ laisse le reste $3$, et $b^2+1$ laisse le reste $1$ ou $2$ : impossible. Si $a$ est pair, $3a^2$ est un multiple de $4$, donc $b^2$ laisse le reste $3$ : impossible aussi.

Quand plusieurs modulos fonctionnent, autant choisir celui qui donne la contradiction la plus courte. Ici c'est $3$, parce que le coefficient $3$ du membre de gauche saute aux yeux.
