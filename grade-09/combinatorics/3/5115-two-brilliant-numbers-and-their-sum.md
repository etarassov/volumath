---
id: "5115"
title: "Deux nombres brillants et leur somme"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [chiffres, permutations, somme-des-chiffres, divisibilite, construction]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Place Value Problems », Harold Reiter"
  reference: "HReiterPlaceValueProblems.pdf, problème 32, « Great Numbers »"
  url: "https://mathcircles.org/activity/place-value-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/HReiterPlaceValueProblems.pdf"
---

## Statement

On dit qu'un nombre est **brillant** s'il s'écrit avec neuf chiffres, tous différents et tous non nuls. Autrement dit, un nombre brillant utilise chacun des chiffres $1, 2, 3, \ldots, 9$ exactement une fois. Par exemple $123\,456\,789$ et $987\,654\,321$ sont brillants.

Trouver deux nombres brillants $A$ et $B$ tels que :

- leur somme $C = A + B$ soit elle aussi un nombre brillant ;
- $A$ et $B$ aient le même chiffre à sept de leurs neuf positions.

## Hints

1. Que vaut la somme des chiffres d'un nombre brillant ? Qu'en déduis-tu sur sa divisibilité ?
2. Si $A$ et $B$ coïncident en sept positions, c'est qu'ils diffèrent en exactement deux positions. Comme ils utilisent les mêmes neuf chiffres, comment passe-t-on de l'un à l'autre ?
3. La somme $C$ doit avoir neuf chiffres, donc $A + B < 10^9$. Il faut donc chercher des nombres brillants plutôt petits.
4. Essaie le plus petit nombre brillant de tous, et échange ses deux derniers chiffres.

## Solution

**Étape 1. Une remarque qui rassure.**

La somme des chiffres d'un nombre brillant vaut toujours

$$1 + 2 + \cdots + 9 = 45$$

qui est un multiple de $9$. Donc **tout nombre brillant est un multiple de $9$**.

Cela ne donne pas la réponse, mais cela montre qu'il n'y a pas d'obstruction : si $A$ et $B$ sont des multiples de $9$, leur somme l'est aussi, et $C$ a bien la divisibilité qu'il faut pour avoir une chance d'être brillant.

**Étape 2. Ce que veut dire « identiques en sept positions ».**

Si $A$ et $B$ coïncident en sept positions, ils diffèrent en exactement deux positions. Or ils utilisent tous les deux chacun des chiffres $1$ à $9$ une fois : les deux chiffres qui restent à placer sont les mêmes des deux côtés, simplement échangés.

Autrement dit, **$B$ s'obtient à partir de $A$ en échangeant deux de ses chiffres**.

**Étape 3. Où chercher.**

Il faut que $C = A + B$ ait neuf chiffres, donc $A + B < 1\,000\,000\,000$. Comme $A$ et $B$ sont du même ordre de grandeur, il faut qu'ils soient petits : on part donc du plus petit nombre brillant,

$$A = 123\,456\,789$$

Le doublement donne déjà une bonne surprise :

$$2A = 246\,913\,578$$

et ce nombre est brillant ! Ses chiffres sont $2, 4, 6, 9, 1, 3, 5, 7, 8$, c'est-à-dire tous les chiffres de $1$ à $9$.

**Étape 4. L'échange qui marche.**

Il ne reste qu'à modifier légèrement $A$ pour obtenir un $B$ différent. Échangeons ses deux derniers chiffres :

$$B = 123\,456\,798$$

Cet échange des chiffres $8$ et $9$ augmente le nombre de $9$, donc $B = A + 9$ et

$$C = A + B = 2A + 9 = 246\,913\,578 + 9 = 246\,913\,587$$

Vérifions que $C$ est brillant : ses chiffres sont $2, 4, 6, 9, 1, 3, 5, 8, 7$, soit exactement les chiffres de $1$ à $9$, chacun une fois. C'est gagné.

Et $A = 123\,456\,789$ et $B = 123\,456\,798$ ont bien les mêmes chiffres aux sept premières positions ; ils ne diffèrent qu'aux deux dernières.

**Conclusion.**

$$123\,456\,789 + 123\,456\,798 = 246\,913\,587$$

Les trois nombres sont brillants, et les deux premiers coïncident en sept positions.

## Going further

Ce couple est loin d'être le seul : il en existe des dizaines de milliers. Mais l'essentiel de la recherche a été fait par l'étape 3, qui dit où regarder, et par l'observation que $2 \times 123\,456\,789$ est déjà brillant.

Il y a une raison pour laquelle l'addition $A + B$ se passe si bien ici : dans $A + B = 2A + 9$, il ne se produit aucune retenue gênante, puisque les chiffres de $A$ sont petits à gauche. Essaie avec un $A$ contenant des chiffres élevés à gauche, et tu verras la somme dépasser le milliard, ou perdre sa propriété.
