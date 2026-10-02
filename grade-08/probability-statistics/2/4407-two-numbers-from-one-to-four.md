---
id: "4407"
title: "Deux nombres de 1 à 4, somme supérieure à 4"
grade: 8
theme: probability-statistics
difficulty: 2
duration_min: 15
tags: [probabilite, denombrement, somme]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Geometric Probability"
  reference: "Handout-1218-1231.pdf, problème 6"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1218-1231.pdf"
---

## Statement

On tire au hasard un nombre entier entre $1$ et $4$ (bornes comprises), puis, de la même façon
et indépendamment, un second nombre entier entre $1$ et $4$. Les deux tirages peuvent donner le
même nombre.

Quelle est la probabilité que la somme des deux nombres soit strictement supérieure à $4$ ?

Donner la réponse sous forme de fraction irréductible.

## Hints

1. Commence par compter tous les tirages possibles. Le premier nombre a $4$ valeurs, le second
   aussi.
2. Un tableau à $4$ lignes et $4$ colonnes, où l'on écrit la somme dans chaque case, rend tout
   visible.
3. Compte les cases où la somme vaut $5$, $6$, $7$ ou $8$.

## Solution

**Les tirages possibles.** Le premier nombre peut prendre $4$ valeurs et le second aussi, donc
il y a $4 \times 4 = 16$ tirages possibles, tous aussi probables les uns que les autres.

**Les tirages favorables.** Rangeons les tirages selon le premier nombre tiré, et comptons ceux
dont la somme dépasse $4$ :

- premier nombre $1$ : il faut un second nombre supérieur à $3$, donc seulement $4$. Cela fait $1$ tirage.
- premier nombre $2$ : il faut $3$ ou $4$. Cela fait $2$ tirages.
- premier nombre $3$ : il faut $2$, $3$ ou $4$. Cela fait $3$ tirages.
- premier nombre $4$ : n'importe lequel des quatre convient, car $4 + 1 = 5 > 4$. Cela fait $4$ tirages.

En tout : $1 + 2 + 3 + 4 = 10$ tirages favorables.

**La probabilité.**

$$\frac{10}{16} = \frac{5}{8}.$$

**La probabilité cherchée vaut $\dfrac{5}{8}$.**

## Going further

On peut aussi compter le contraire : les sommes inférieures ou égales à $4$ sont $6$ cases
($4 + 3 + 2 + 1$ en haut à gauche), ce qui donne $1 - \dfrac{6}{16} = \dfrac{10}{16}$. Compter
l'événement contraire est souvent plus rapide.
