---
id: "13278"
title: "Des sommes impaires sur chaque ligne et chaque colonne"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [parite, grille, construction, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2020"
  reference: "2020-10_Sujet.pdf, exercices lycéens, exercice 12 ; corrigé 2020-10_sujetcommentairecorrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/10/Sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2020-10_Sujet.pdf"
---

## Statement

On écrit $9$ entiers dans les cases d'une grille de $3 \times 3$ cases, de sorte que la somme des trois nombres de chaque ligne et de chaque colonne soit impaire.

Combien de cases peuvent contenir un nombre pair ? Donner toutes les valeurs possibles.

## Hints

1. Seule la parité compte : tu peux remplacer chaque nombre pair par $0$ et chaque nombre impair par $1$.
2. Combien de nombres pairs peut contenir une ligne dont la somme est impaire ?
3. Déduis-en les valeurs possibles, puis cherche une grille pour chacune. Une des valeurs restantes est impossible : si les nombres pairs sont seulement deux, où peuvent-ils être ?

## Solution

**Ce que dit une ligne.** Une somme de trois entiers est impaire exactement quand elle contient un nombre impair de termes impairs, c'est-à-dire $1$ ou $3$. Une ligne de somme impaire contient donc $2$ ou $0$ nombres pairs. Il en est de même pour chaque colonne.

**Les valeurs a priori possibles.** Le nombre total de cases paires est la somme des nombres de cases paires des trois lignes, chacun valant $0$ ou $2$. Il vaut donc $0$, $2$, $4$ ou $6$.

**La valeur $2$ est impossible.** Supposons qu'il y ait exactement deux cases paires. Une ligne contient $0$ ou $2$ cases paires, donc les deux cases paires sont sur la même ligne. Pour la même raison, elles sont dans la même colonne. Deux cases sur la même ligne et dans la même colonne sont une seule et même case : c'est absurde.

**Les valeurs $0$, $4$ et $6$ sont possibles.** Dans les grilles ci-dessous, $0$ représente un nombre pair et $1$ un nombre impair. On peut prendre ces nombres eux-mêmes.

- $0$ case paire : on met $1$ dans toutes les cases. Chaque ligne et chaque colonne a pour somme $3$.
- $4$ cases paires :

|   | 1 | 2 | 3 |
|---|---|---|---|
| **1** | 0 | 0 | 1 |
| **2** | 0 | 0 | 1 |
| **3** | 1 | 1 | 1 |

Les sommes des lignes valent $1$, $1$ et $3$, celles des colonnes aussi.

- $6$ cases paires :

|   | 1 | 2 | 3 |
|---|---|---|---|
| **1** | 0 | 0 | 1 |
| **2** | 1 | 0 | 0 |
| **3** | 0 | 1 | 0 |

Chaque ligne et chaque colonne contient un seul $1$, donc a pour somme $1$.

**Conclusion.** Le nombre de cases paires peut valoir $0$, $4$ ou $6$, et seulement ces valeurs.
