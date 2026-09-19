---
id: "3812"
title: "Deux dés pas comme les autres"
grade: 9
theme: probability-statistics
difficulty: 2
duration_min: 15
tags: [probabilite, parite, evenements independants]
adapted_from: null
see_also: ["4006"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Mid-Quarter Competition"
  reference: "Handout-4070-3775.pdf, problème 21, d'après AMC 8 2019, problème 18 (corrigé dans Handout-4071-3775.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4070-3775.pdf"
---

## Statement

Deux dés équilibrés portent sur leurs six faces les nombres

$$1, \quad 2, \quad 3, \quad 5, \quad 7, \quad 8.$$

On lance les deux dés et on additionne les deux nombres obtenus.

Quelle est la probabilité que cette somme soit paire ?

## Hints

1. Une somme de deux entiers est paire dans deux cas seulement. Lesquels ?
2. Sur un de ces dés, combien de faces portent un nombre pair ? Combien un nombre impair ?
3. Les deux lancers sont indépendants : la probabilité que les deux dés donnent à la fois tel type de nombre est le produit des deux probabilités.

## Solution

**L'idée : seule la parité de chaque face compte, pas sa valeur.**

**Étape 1. On compte les faces paires et impaires.**

Sur chaque dé, les six faces sont $1, 2, 3, 5, 7, 8$.

- Faces paires : $2$ et $8$, soit $2$ faces.
- Faces impaires : $1$, $3$, $5$ et $7$, soit $4$ faces.

Donc, pour un dé :

$$P(\text{pair}) = \frac{2}{6} = \frac{1}{3}, \qquad P(\text{impair}) = \frac{4}{6} = \frac{2}{3}.$$

**Étape 2. Quand la somme est-elle paire ?**

$$\text{pair} + \text{pair} = \text{pair}, \qquad \text{impair} + \text{impair} = \text{pair}, \qquad \text{pair} + \text{impair} = \text{impair}.$$

La somme est donc paire exactement lorsque les deux dés donnent des nombres **de même parité**.

**Étape 3. On calcule.**

Les deux lancers sont indépendants, donc

$$P(\text{les deux pairs}) = \frac{1}{3} \times \frac{1}{3} = \frac{1}{9},$$

$$P(\text{les deux impairs}) = \frac{2}{3} \times \frac{2}{3} = \frac{4}{9}.$$

Ces deux situations s'excluent, donc on les additionne :

$$P(\text{somme paire}) = \frac{1}{9} + \frac{4}{9} = \frac{5}{9}.$$

**Vérification par dénombrement.** Il y a $6 \times 6 = 36$ résultats possibles, tous de même probabilité. Les résultats donnant une somme paire sont $2 \times 2 = 4$ (les deux pairs) plus $4 \times 4 = 16$ (les deux impairs), soit $20$. Et $\dfrac{20}{36} = \dfrac{5}{9}$.

**Conclusion.** La probabilité que la somme soit paire est $\dfrac{5}{9}$.

## Going further

1. Avec deux dés ordinaires ($1$ à $6$), quelle est la probabilité que la somme soit paire ? Pourquoi le résultat est-il différent ?
2. Avec les dés de l'énoncé, quelle est la probabilité que le produit des deux nombres soit pair ?
