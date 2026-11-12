---
id: "22045"
title: "Une tour de puissances divisée par 19"
grade: 8
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [restes, puissances, periodicite, division-euclidienne]
adapted_from: null
see_also: ["7953", "0554", "22058"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Modulos » (Jean), exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Calculer le reste de la division euclidienne de

$$2022^{\,2023^{2024}}$$

par $19$.

La tour se lit du haut vers le bas : il s'agit de $2022$ élevé à la puissance $2023^{2024}$, et non de $\left(2022^{2023}\right)^{2024}$.

## Hints

1. Le reste de $a \times b$ dans la division par $19$ ne dépend que des restes de $a$ et de $b$. Pourquoi ?
2. Remplacez $2022$ par son reste, puis calculez les restes des puissances successives de ce reste, en multipliant à chaque fois par $8$ et en reprenant le reste.
3. Les restes se répètent. Tous les combien ?
4. Il suffit alors de connaître le reste de l'exposant $2023^{2024}$ dans la division par $6$.

## Solution

**Un outil : les restes se multiplient.** Si $a$ a pour reste $r$ et $b$ a pour reste $s$ dans la division par $19$, alors $a = 19k + r$ et $b = 19\ell + s$, et en développant :

$$ab = 19 \times 19k\ell + 19ks + 19\ell r + rs = 19\,(19k\ell + ks + \ell r) + rs.$$

Donc $ab$ a le même reste que $rs$. En recommençant, une puissance $a^m$ a le même reste que $r^m$. On peut donc, à chaque étape d'un calcul de produit, remplacer un nombre par son reste.

**Étape 1 : on remplace $2022$ par son reste.** On a $2022 = 19 \times 106 + 8$, donc le reste de $2022$ est $8$. Le nombre cherché a le même reste que $8^{N}$, où $N = 2023^{2024}$.

**Étape 2 : les puissances de $8$.** On multiplie par $8$ et on prend le reste à chaque fois :

| Puissance | $8^1$ | $8^2$ | $8^3$ | $8^4$ | $8^5$ | $8^6$ |
|---|---|---|---|---|---|---|
| Calcul | $8$ | $8 \times 8 = 64 = 3 \times 19 + 7$ | $8 \times 7 = 56 = 2 \times 19 + 18$ | $8 \times 18 = 144 = 7 \times 19 + 11$ | $8 \times 11 = 88 = 4 \times 19 + 12$ | $8 \times 12 = 96 = 5 \times 19 + 1$ |
| Reste | $8$ | $7$ | $18$ | $11$ | $12$ | $1$ |

Le reste de $8^6$ est $1$. Par conséquent, pour tout entier $q$, le reste de $\left(8^6\right)^q = 8^{6q}$ est celui de $1^q = 1$. Et si $N = 6q + t$, alors $8^N = 8^{6q} \times 8^t$ a le même reste que $1 \times 8^t = 8^t$. Il suffit donc de connaître le reste $t$ de $N$ dans la division par $6$.

**Étape 3 : l'exposant.** On fait la même chose, mais dans la division par $6$. On a $2023 = 6 \times 337 + 1$, donc $2023$ a pour reste $1$ dans la division par $6$. L'outil du début marche aussi pour $6$ à la place de $19$ : la puissance $2023^{2024}$ a le même reste que $1^{2024} = 1$. Donc $N = 6q + 1$ pour un certain entier $q$.

**Étape 4 : conclusion.** On a $t = 1$, donc $2022^{N}$ a le même reste que $8^1 = 8$.

**Le reste de la division euclidienne de $2022^{\,2023^{2024}}$ par $19$ est $8$.**

## Going further

1. Quel est le reste de $2022^{\,2024^{2023}}$ dans la division par $19$ ?
2. Pour un entier $a$ qui n'est pas un multiple de $19$, le reste de $a^{18}$ dans la division par $19$ semble toujours valoir $1$. Vérifiez-le pour $a = 2$ et $a = 3$.
