---
id: "17819"
title: "L'inégalité de Bernoulli"
grade: 10
theme: algebra
difficulty: 2
duration_min: 15
tags: [recurrence, inegalite, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Débutants"
  reference: "stage_junior_2014.pdf, chapitre « Débutants », combinatoire, jeudi matin, « Récurrence » (Félix Lequen), exercice 9, p.50 ; solution p.51"
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soit $x$ un nombre réel tel que $x \geq -1$. Montrer que, pour tout entier $n \geq 1$,

$$(1 + x)^n \geq 1 + nx .$$

## Hints

1. Vérifiez l'inégalité pour $n = 1$, puis pour $n = 2$ en développant $(1 + x)^2$.
2. Supposez l'inégalité vraie pour un entier $n$ et multipliez ses deux membres par $1 + x$. Pourquoi a-t-on le droit de le faire sans changer le sens de l'inégalité ?
3. Développez $(1 + nx)(1 + x)$ et repérez un terme qui est toujours positif ou nul.

## Solution

On raisonne de proche en proche : on vérifie l'inégalité pour $n = 1$, puis on montre que si elle est vraie pour un entier $n$, elle est vraie pour $n + 1$. Elle sera alors vraie pour $n = 2$, puis $n = 3$, et ainsi de suite pour tous les entiers $n \geq 1$. C'est un raisonnement par récurrence.

**Pour $n = 1$.** $(1 + x)^1 = 1 + x = 1 + 1 \times x$ : l'inégalité est vraie, c'est même une égalité.

**Passer de $n$ à $n + 1$.** Supposons que $(1 + x)^n \geq 1 + nx$ pour un certain entier $n \geq 1$. Comme $x \geq -1$, le nombre $1 + x$ est positif ou nul. On peut donc multiplier les deux membres de l'inégalité par $1 + x$ sans changer son sens :

$$(1 + x)^{n+1} \geq (1 + nx)(1 + x) .$$

On développe le membre de droite :

$$(1 + nx)(1 + x) = 1 + x + nx + nx^2 = 1 + (n+1)x + nx^2 .$$

Or $nx^2 \geq 0$, car c'est le produit d'un entier positif et d'un carré. Donc

$$(1 + x)^{n+1} \geq 1 + (n+1)x + nx^2 \geq 1 + (n+1)x .$$

C'est l'inégalité pour l'entier $n + 1$.

**Conclusion :** pour tout réel $x \geq -1$ et tout entier $n \geq 1$, $(1 + x)^n \geq 1 + nx$.

## Going further

La condition $x \geq -1$ sert seulement à multiplier par un nombre positif, mais on ne peut pas s'en passer. Pour $x = -3$ et $n = 5$, on a $(1 + x)^5 = (-2)^5 = -32$ alors que $1 + 5x = -14$. Comme $-32 < -14$, l'inégalité est fausse.
