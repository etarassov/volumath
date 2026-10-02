---
id: "2026"
title: "Un tableau dont lignes et colonnes font 1"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [double-comptage, tableau, somme, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Invariants II"
  reference: "Handout-1027-1074.pdf, exercice 5"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1027-1074.pdf"
---

## Statement

On remplit un tableau rectangulaire de $n$ lignes et $m$ colonnes avec des nombres réels, de telle façon que

- la somme des nombres de **chaque ligne** soit égale à $1$,
- et la somme des nombres de **chaque colonne** soit égale à $1$.

Démontrer qu'alors $n = m$ : le tableau est forcément carré.

## Hints

1. Ne cherchez pas à deviner les nombres du tableau : ils peuvent être n'importe quoi, y compris négatifs.
2. Intéressez-vous à la somme de **tous** les nombres du tableau. Appelons-la $S$.
3. Il y a deux façons de calculer $S$ : en additionnant les totaux des lignes, ou en additionnant les totaux des colonnes.
4. Ces deux façons doivent donner le même résultat.

## Solution

Notons $S$ la somme de **tous** les nombres du tableau, et calculons-la de deux manières.

**Première manière : ligne par ligne.**

Additionner tous les nombres du tableau revient à additionner d'abord chaque ligne, puis à faire la somme de ces totaux. Or chaque ligne a pour total $1$, et il y a $n$ lignes. Donc

$$S = \underbrace{1 + 1 + \cdots + 1}_{n \text{ fois}} = n .$$

**Deuxième manière : colonne par colonne.**

De la même façon, on peut additionner d'abord chaque colonne, puis faire la somme de ces totaux. Chaque colonne a pour total $1$, et il y a $m$ colonnes. Donc

$$S = \underbrace{1 + 1 + \cdots + 1}_{m \text{ fois}} = m .$$

**La conclusion.**

Les deux calculs portent sur les mêmes nombres, ceux du tableau : ils donnent donc la même valeur. Par conséquent

$$n = S = m ,$$

c'est-à-dire $n = m$. Le tableau est carré.

## Going further

La méthode s'appelle le **double comptage** : on calcule une même quantité de deux façons différentes, et l'égalité des deux résultats donne l'information cherchée. C'est un des outils les plus efficaces des mathématiques, et il ne demande aucune technique particulière, seulement de trouver la bonne quantité à compter.

Remarquons enfin que la condition est bien réalisable dès que $n = m$ : il suffit par exemple de mettre des $1$ sur la diagonale et des $0$ partout ailleurs. Il en existe beaucoup d'autres, par exemple pour $n = m = 2$ le tableau

| $\text{0,3}$ | $\text{0,7}$ |
|---|---|
| $\text{0,7}$ | $\text{0,3}$ |

convient aussi.
