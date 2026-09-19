---
id: "3405"
title: "La plus petite valeur d'une somme de deux carrés"
grade: 10
theme: algebra
difficulty: 3
duration_min: 15
tags: [minimum, identites remarquables, developpement, carres]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12, Algebra (ORMC AMC Packet 2)"
  reference: "Handout-5118-5603.pdf, problème 2, d'après AMC 12A 2021, problème 7 (réponse dans Handout-5124-5603.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5118-5603.pdf"
---

## Statement

Quelle est la plus petite valeur que peut prendre

$$(xy - 1)^2 + (x + y)^2$$

lorsque $x$ et $y$ parcourent les nombres réels ?

## Hints

1. Une somme de deux carrés est toujours positive ou nulle. Peut-on annuler les deux carrés en même temps ? Essaie $x = y = 0$.
2. Tu trouves $1$ avec $x = y = 0$. Reste à montrer qu'on ne peut pas descendre en dessous de $1$.
3. Développe les deux carrés et regarde bien tous les termes. Deux d'entre eux s'annulent.

## Solution

**L'idée : développer. Le terme en $xy$ du premier carré et celui du second se détruisent, et il ne reste que des carrés.**

Développons les deux carrés :

$$(xy - 1)^2 = x^2y^2 - 2xy + 1, \qquad (x+y)^2 = x^2 + 2xy + y^2.$$

En les additionnant, les termes $-2xy$ et $+2xy$ disparaissent :

$$(xy-1)^2 + (x+y)^2 = x^2y^2 + x^2 + y^2 + 1.$$

Les trois premiers termes sont des carrés, donc positifs ou nuls. Par conséquent

$$(xy-1)^2 + (x+y)^2 = x^2y^2 + x^2 + y^2 + 1 \geqslant 1.$$

Cette valeur $1$ est bien atteinte : pour $x = 0$ et $y = 0$, l'expression vaut $(0-1)^2 + 0^2 = 1$.

**Conclusion : la plus petite valeur possible est $1$, atteinte pour $x = y = 0$.**

## Going further

Le piège, dans l'énoncé d'origine, est de croire qu'il faut annuler séparément $xy - 1$ et $x + y$. Cela demanderait $xy = 1$ et $y = -x$, donc $-x^2 = 1$ : impossible pour un réel. On en conclurait à tort que le minimum est strictement plus grand que $0$ et qu'il faut se lancer dans un calcul compliqué. Le développement montre que la question était en réalité beaucoup plus simple.
