---
id: "4006"
title: "Deux dés sans 4 ni 6"
grade: 8
theme: probability-statistics
difficulty: 2
duration_min: 15
tags: [probabilite, parite, denombrement, des]
adapted_from: null
see_also: []
same_as: ["3812"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 2A, Week 1 Competition"
  reference: "Handout-3131-2694.pdf, problème 16 (réponse 5/9 dans le barème en fin de fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3131-2694.pdf"
---

## Statement

Les six faces de chacun de deux dés équilibrés portent les nombres

$$1, \quad 2, \quad 3, \quad 5, \quad 7, \quad 8.$$

On lance les deux dés et on additionne les deux nombres obtenus.

Quelle est la probabilité que cette somme soit paire ?

## Hints

1. Une somme de deux entiers est paire dans deux cas seulement. Lesquels ?
2. Sur ce dé, combien de faces portent un nombre pair ? Combien un nombre impair ?
3. Les deux dés sont indépendants : pour obtenir la probabilité de « les deux pairs », multiplie.

## Solution

**Étape 1. Quand une somme est-elle paire ?**

La somme de deux entiers est paire dans exactement deux cas :

- les deux nombres sont pairs (pair $+$ pair $=$ pair) ;
- les deux nombres sont impairs (impair $+$ impair $=$ pair).

Si l'un est pair et l'autre impair, la somme est impaire.

**Étape 2. Compter les faces.**

Parmi $1, 2, 3, 5, 7, 8$ :

- les faces paires sont $2$ et $8$, soit $2$ faces sur $6$ ;
- les faces impaires sont $1$, $3$, $5$ et $7$, soit $4$ faces sur $6$.

La probabilité qu'un dé donne un nombre pair vaut donc $\dfrac{2}{6} = \dfrac{1}{3}$, et
celle qu'il donne un nombre impair vaut $\dfrac{4}{6} = \dfrac{2}{3}$.

**Étape 3. Combiner.**

Les deux dés sont indépendants, donc

$$P(\text{les deux pairs}) = \frac{1}{3} \times \frac{1}{3} = \frac{1}{9},
\qquad
P(\text{les deux impairs}) = \frac{2}{3} \times \frac{2}{3} = \frac{4}{9}.$$

Ces deux situations ne peuvent pas se produire en même temps, donc on additionne :

$$P(\text{somme paire}) = \frac{1}{9} + \frac{4}{9} = \frac{5}{9}.$$

**Réponse : la probabilité vaut $\dfrac{5}{9}$.**

## Going further

Avec un dé ordinaire ($1$ à $6$), il y a autant de faces paires que de faces impaires, et
la probabilité d'une somme paire est exactement $\dfrac12$. C'est le déséquilibre entre
les $2$ faces paires et les $4$ faces impaires qui fait pencher la balance ici.
