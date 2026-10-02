---
id: "8608"
title: "n divisé par 3 et n multiplié par 3"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [multiples, denombrement, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023"
  reference: "valbonne-2023.pdf, Coupe Animath de printemps 2023, exercices lycéens, exercice 8"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Combien y a-t-il d'entiers $n$ pour lesquels $\dfrac{n}{3}$ **et** $3n$ sont tous les deux des entiers compris entre $1$ et $1000$ (bornes comprises) ?

On demande seulement un nombre.

## Hints

1. Il y a deux exigences très différentes. Traite-les séparément, puis regarde ce qui reste.
2. Pour que $\dfrac{n}{3}$ soit un entier, que faut-il sur $n$ ?
3. La condition $3n \leqslant 1000$ est la plus sévère des deux : elle enferme $n$ dans un petit intervalle. Lequel ?
4. Une fois $n$ enfermé, il ne reste qu'à compter les multiples de $3$ dans cet intervalle.

## Solution

**Ce que les conditions imposent.**

- $\dfrac{n}{3}$ doit être un entier : autrement dit $n$ doit être un **multiple de 3**.
- $\dfrac{n}{3}$ doit valoir au moins $1$ : donc $n \geqslant 3$.
- $3n$ doit valoir au moins $1$ et au plus $1000$ : donc $1 \leqslant 3n \leqslant 1000$.

**La condition qui décide.** De $3n \leqslant 1000$ on tire $n \leqslant \dfrac{1000}{3} = \text{333,33}\ldots$ Comme $n$ est un entier, cela signifie

$$n \leqslant 333 .$$

Remarquons au passage que la condition $\dfrac{n}{3} \leqslant 1000$, c'est-à-dire $n \leqslant 3000$, est alors automatiquement vérifiée : elle ne sert à rien.

**Ce qu'il reste à compter.** Les entiers cherchés sont donc exactement les multiples de $3$ vérifiant $3 \leqslant n \leqslant 333$, c'est-à-dire

$$3, \; 6, \; 9, \; \ldots, \; 333 .$$

En écrivant $n = 3k$, cette liste devient $k = 1, 2, \ldots, 111$, puisque $333 = 3 \times 111$.

Réciproquement, chacun de ces $n = 3k$ convient bien : $\dfrac{n}{3} = k$ est un entier entre $1$ et $111$, donc entre $1$ et $1000$, et $3n = 9k$ vaut au plus $9 \times 111 = 999 \leqslant 1000$.

**Conclusion.** Il y a $\boxed{111}$ entiers qui conviennent.
