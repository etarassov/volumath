---
id: "0627"
title: "Divisibles par 3 mais pas par 6"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [multiples, divisibilite, denombrement, parite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Ensembles. Géométrie »"
  reference: "Ensembles.Geometry.pdf, 22 septembre 2023, problème P 23, section « Ensembles »"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Ensembles.Geometry.pdf"
---

## Statement

Combien y a-t-il de nombres entiers strictement positifs, inférieurs à $2021$, qui sont divisibles par $3$ mais qui ne sont pas divisibles par $6$ ?

## Hints

1. Les nombres dont on parle vont de $1$ à $2020$. Commence par compter ceux qui sont divisibles par $3$ : ce sont $3, 6, 9, \ldots$ Combien y en a-t-il ?
2. Compte ensuite de la même façon ceux qui sont divisibles par $6$.
3. Un multiple de $3$ qui n'est pas un multiple de $6$, qu'est-ce que c'est ? Retire d'un compte ce que tu as trouvé dans l'autre.

## Solution

Les nombres concernés sont les entiers de $1$ à $2020$.

**Les multiples de 3.**

Ce sont $3 \times 1,\ 3 \times 2,\ 3 \times 3, \ldots$ Le plus grand qui reste inférieur à $2021$ est $3 \times 673 = 2019$, car $3 \times 674 = 2022$ est trop grand. Il y en a donc

$$673.$$

**Les multiples de 6.**

Ce sont $6 \times 1,\ 6 \times 2, \ldots$ Le plus grand qui convient est $6 \times 336 = 2016$, car $6 \times 337 = 2022$ est trop grand. Il y en a donc

$$336.$$

**On enlève.**

Tout multiple de $6$ est aussi un multiple de $3$ (puisque $6 = 3 \times 2$). Les multiples de $6$ forment donc une partie des multiples de $3$, et les nombres cherchés sont exactement les multiples de $3$ dont on retire les multiples de $6$ :

$$673 - 336 = 337.$$

**Conclusion.** Il y a $337$ tels nombres.

**Une autre façon de voir.** Un multiple de $3$ est un multiple de $6$ exactement quand il est pair. Les nombres cherchés sont donc les multiples **impairs** de $3$ :

$$3,\ 9,\ 15,\ 21,\ \ldots,\ 2019.$$

Ils vont de $3$ en $3$ en sautant un terme sur deux, c'est-à-dire de $6$ en $6$. Il y en a

$$\frac{2019 - 3}{6} + 1 = 336 + 1 = 337,$$

ce qui confirme le premier compte.

## Going further

1. Combien de nombres entiers de $1$ à $2020$ sont divisibles par $3$ **ou** par $6$ ?
2. Combien de nombres entiers de $1$ à $2020$ sont divisibles par $4$ mais pas par $12$ ?
3. Combien de nombres entiers de $1$ à $2020$ ne sont divisibles ni par $2$, ni par $3$ ?
