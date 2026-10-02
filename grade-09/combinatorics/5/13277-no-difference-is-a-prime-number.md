---
id: "13277"
title: "Aucune différence n'est un nombre premier"
grade: 9
theme: combinatorics
difficulty: 5
duration_min: 30
tags: [nombres-premiers, maximum, construction, majoration, paquets]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2020"
  reference: "2020-10_Sujet.pdf, exercices collégiens, exercice 8 ; corrigé 2020-10_sujetcommentairecorrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/10/Sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2020-10_Sujet.pdf"
---

## Statement

On choisit des nombres parmi $1, 2, 3, \ldots, 200$. L'ensemble $S$ des nombres choisis est dit **joli** si, pour deux nombres $a > b$ de $S$, la différence $a - b$ n'est jamais un nombre premier.

Combien de nombres un ensemble joli peut-il contenir, au plus ?

## Hints

1. Cherche d'abord un grand ensemble joli. Quelles différences sont sûres de ne jamais être des nombres premiers ?
2. Une différence multiple de $4$ n'est jamais un nombre premier. Combien de nombres entre $1$ et $200$ ont pour reste $1$ dans la division par $4$ ?
3. Pour montrer qu'on ne peut pas faire mieux, découpe $1, 2, \ldots, 200$ en $25$ paquets de $8$ nombres qui se suivent. Combien de nombres d'un ensemble joli peut contenir un même paquet ?
4. Si $n$ est le plus petit nombre de $S$ dans un paquet, les autres nombres de $S$ de ce paquet sont parmi $n + 1, \ldots, n + 7$. Lesquels sont interdits, sachant que $2$, $3$, $5$ et $7$ sont premiers ?

## Solution

La réponse est $50$. Il faut montrer deux choses : qu'un ensemble joli de $50$ nombres existe, et qu'aucun ensemble joli n'en a plus.

**Un ensemble joli de $50$ nombres.** Prenons les nombres qui ont pour reste $1$ dans la division par $4$ :

$$S = \{1,\ 5,\ 9,\ 13,\ \ldots,\ 197\}.$$

Ce sont les nombres $4m + 1$ pour $m$ allant de $0$ à $49$, il y en a $50$, et le plus grand, $197$, ne dépasse pas $200$. La différence de deux d'entre eux est un multiple de $4$ au moins égal à $4$. Un tel nombre est divisible par $2$ et plus grand que $2$, donc il n'est pas premier. L'ensemble $S$ est joli.

**Pas plus de $50$.** Découpons les nombres de $1$ à $200$ en $25$ paquets de $8$ nombres qui se suivent :

$$\{1, \ldots, 8\},\quad \{9, \ldots, 16\},\quad \ldots,\quad \{193, \ldots, 200\}.$$

Montrons qu'un ensemble joli $S$ contient au plus $2$ nombres de chaque paquet.

Prenons un paquet qui contient au moins un nombre de $S$, et notons $n$ le plus petit d'entre eux. Comme le paquet est formé de $8$ nombres qui se suivent, les autres nombres de $S$ de ce paquet sont parmi $n + 1, n + 2, \ldots, n + 7$. Les nombres $2$, $3$, $5$ et $7$ sont premiers, donc $n + 2$, $n + 3$, $n + 5$ et $n + 7$ ne sont pas dans $S$. Il ne reste que trois candidats : $n + 1$, $n + 4$ et $n + 6$.

- Si $n + 1$ est dans $S$, alors $n + 4$ n'y est pas, car $(n + 4) - (n + 1) = 3$ est premier, et $n + 6$ non plus, car $(n + 6) - (n + 1) = 5$ est premier. Le paquet contient alors seulement $n$ et $n + 1$.
- Si $n + 1$ n'est pas dans $S$, il reste $n + 4$ et $n + 6$, qui ne peuvent pas être dans $S$ tous les deux, car leur différence $2$ est première. Le paquet contient au plus $n$ et l'un des deux.

Dans tous les cas, le paquet contient au plus $2$ nombres de $S$. Avec $25$ paquets, $S$ contient au plus $25 \times 2 = 50$ nombres.

**Conclusion.** Un ensemble joli contient au plus $50$ nombres, et l'ensemble $\{1, 5, 9, \ldots, 197\}$ montre que $50$ est atteint.
