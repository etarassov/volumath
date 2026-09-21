---
id: "8430"
title: "6ⁿ + 19 n'est jamais premier"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [nombre-premier, reste, division-euclidienne, puissance]
adapted_from: null
see_also: ["8545"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Modulos & factorisation » (Théo Lenoir et Angela Xue), exercice 7"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Existe-t-il un entier naturel $n$ tel que $6^n + 19$ soit un nombre premier ?

## Hints

1. Calcule les premières valeurs : $n = 0, 1, 2, 3$. Les résultats sont $20$, $25$, $55$, $235$. Qu'ont-ils tous en commun ?
2. Ils sont tous divisibles par $5$. Pour le démontrer en général, regarde le reste de $6^n$ dans la division par $5$.
3. Comme $6 = 5 + 1$, le nombre $6^n$ est un multiple de $5$ augmenté de... combien ?
4. Une fois établi que $5$ divise $6^n + 19$, il reste une petite chose à vérifier avant de conclure que ce n'est pas premier.

## Solution

La réponse est **non** : $6^n + 19$ n'est jamais premier.

**Étape 1. Le reste de $6^n$ dans la division par $5$.**

Le nombre $6$ laisse le reste $1$ dans la division par $5$. Comme multiplier des nombres revient à multiplier leurs restes, $6^n$ laisse le reste $1^n = 1$.

Si l'on préfère le voir directement : $6^n = (5+1)^n$, et en développant, tous les termes contiennent un facteur $5$ sauf le dernier, qui vaut $1$.

Donc $6^n = 5k + 1$ pour un certain entier $k \geqslant 0$.

**Étape 2. Le reste de $6^n + 19$.**

$$6^n + 19 = 5k + 1 + 19 = 5k + 20 = 5\,(k+4).$$

Le nombre $6^n + 19$ est donc **toujours divisible par $5$**.

**Étape 3. Conclure.**

Un nombre divisible par $5$ n'est premier que s'il vaut exactement $5$. Or

$$6^n + 19 \geqslant 6^0 + 19 = 20 > 5.$$

Le nombre $6^n + 19$ est donc toujours un multiple de $5$ strictement plus grand que $5$ : il n'est jamais premier.

## Going further

La méthode se résume à une phrase : **chercher un diviseur fixe**. Quand une famille de nombres semble ne jamais donner de nombres premiers, on calcule les premiers termes, on cherche un petit diviseur commun, puis on le démontre avec les restes.

Ici, le choix de $5$ vient de ce que $6$ laisse le reste $1$ modulo $5$, ce qui rend $6^n$ parfaitement prévisible. Le même truc marche pour $11^n + 4$, $16^n + 14$, ou toute famille $a^n + b$ où $a$ laisse le reste $1$ modulo un diviseur de $b+1$.

Voir aussi l'exercice n° 8437, où la famille $14^n + 19$ demande deux diviseurs différents selon la parité de $n$.
