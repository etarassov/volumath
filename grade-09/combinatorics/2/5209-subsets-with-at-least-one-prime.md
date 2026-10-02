---
id: "5209"
title: "Des parties qui contiennent au moins un nombre premier"
grade: 9
theme: combinatorics
difficulty: 2
duration_min: 20
tags: [denombrement, parties, complementaire, puissances-de-deux, nombres-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Tulsa Math Teachers' Circle, Counting Problems"
  reference: "Count-Me-In-Problem-Set.pdf, problèmes 1 et 2"
  url: "https://mathcircles.org/activity/count-me-in/"
  original_language: "en"
  local_copy: "sources/originals/namc/Count-Me-In-Problem-Set.pdf"
---

## Statement

On considère l'ensemble

$$E = \{1, \; 2, \; 3, \; 4, \; 5, \; 6, \; 7, \; 8, \; 9\} .$$

On appelle *partie* de $E$ n'importe quelle collection d'éléments de $E$, y compris la collection vide et $E$ tout entier.

1. Combien $E$ a-t-il de parties ?
2. Combien de parties de $E$ ne contiennent **aucun** nombre premier ?
3. Combien de parties de $E$ contiennent **au moins un** nombre premier ?

## Hints

1. Pour former une partie, on passe en revue les neuf éléments et, pour chacun, on décide s'il est dedans ou dehors.
2. Quels sont les nombres premiers de $E$ ? Attention à $1$, qui n'est pas premier, et à $9 = 3 \times 3$, qui ne l'est pas non plus.
3. Une partie sans nombre premier, c'est une partie de l'ensemble des éléments non premiers de $E$. Combien cet ensemble a-t-il d'éléments ?
4. Pour la question 3, ne cherchez pas à compter directement : comptez plutôt le contraire, ce que vous venez de faire.

## Solution

### 1. Le nombre de parties de $E$

Pour construire une partie de $E$, on examine chacun des $9$ éléments l'un après l'autre et on décide s'il appartient à la partie ou non. Cela fait $2$ choix pour chacun des $9$ éléments, et ces choix sont indépendants :

$$2^9 = \boxed{512} \text{ parties.}$$

*(Le choix « dehors » pour les neuf éléments donne la partie vide, le choix « dedans » partout donne $E$ : les deux sont bien comptées.)*

### 2. Les parties sans nombre premier

Les nombres premiers de $E$ sont $2$, $3$, $5$ et $7$ : il y en a $4$. En effet, $1$ n'est pas premier (il n'a qu'un seul diviseur), et $4$, $6$, $8$, $9$ ne le sont pas non plus.

Les éléments non premiers sont donc $1$, $4$, $6$, $8$, $9$ : il y en a $5$.

Une partie ne contenant aucun nombre premier est exactement une partie de $\{1, 4, 6, 8, 9\}$. Par le même raisonnement qu'à la question 1 :

$$2^5 = \boxed{32} \text{ parties.}$$

### 3. Les parties avec au moins un nombre premier

Chaque partie de $E$ est soit sans aucun nombre premier, soit avec au moins un : il n'y a pas d'autre possibilité, et les deux cas s'excluent. Donc

$$512 - 32 = \boxed{480} \text{ parties.}$$

## Going further

Compter le contraire est souvent bien plus court que compter directement : ici, la liste des parties contenant au moins un nombre premier est longue et pénible, alors que la liste des parties n'en contenant aucun se décrit en une ligne. On retient la règle générale : pour un ensemble à $n$ éléments, le nombre de parties vaut $2^n$.
