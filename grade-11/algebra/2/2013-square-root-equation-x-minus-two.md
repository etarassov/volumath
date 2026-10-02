---
id: "2013"
title: "Une équation sous une racine carrée"
grade: 11
theme: algebra
difficulty: 2
duration_min: 15
tags: [racine-carree, equation, second-degre, verification]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Quadratic equations (Oleg Gleizer)"
  reference: "Handout-1272-1283.pdf, exercice 2"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1272-1283.pdf"
---

## Statement

Résoudre dans $\mathbb{R}$ l'équation

$$\sqrt{x - 2} = x - 4 .$$

## Hints

1. Pour que $\sqrt{x-2}$ existe, il faut $x \geqslant 2$. Y a-t-il une autre condition, en regardant le membre de droite ?
2. Une racine carrée n'est jamais négative. Que doit donc vérifier $x - 4$ ?
3. Sous ces conditions, vous pouvez élever les deux membres au carré.
4. Vous obtiendrez deux candidats. Il faudra les confronter aux conditions du départ, ou bien les vérifier dans l'équation initiale.

## Solution

**Les conditions à respecter.**

La racine carrée $\sqrt{x-2}$ n'a de sens que si $x - 2 \geqslant 0$, c'est-à-dire $x \geqslant 2$.

De plus, une racine carrée est toujours positive ou nulle. Le membre de droite doit donc l'être aussi :

$$x - 4 \geqslant 0, \qquad \text{c'est-à-dire} \qquad x \geqslant 4 .$$

Cette seconde condition contient la première. On cherche donc les solutions parmi les $x \geqslant 4$.

**Élévation au carré.**

Pour $x \geqslant 4$, les deux membres sont positifs ou nuls, donc l'équation équivaut à l'égalité de leurs carrés :

$$x - 2 = (x-4)^2 .$$

Développons :

$$x - 2 = x^2 - 8x + 16, \qquad \text{d'où} \qquad x^2 - 9x + 18 = 0 .$$

Le discriminant vaut $\Delta = 81 - 72 = 9$, donc $\sqrt{\Delta} = 3$ et les racines sont

$$x = \frac{9 - 3}{2} = 3 \qquad \text{et} \qquad x = \frac{9 + 3}{2} = 6 .$$

**Le tri.**

La condition $x \geqslant 4$ élimine $x = 3$. Vérifions d'ailleurs directement :

- pour $x = 3$ : $\sqrt{3-2} = 1$ alors que $3 - 4 = -1$. Ce n'est pas une solution ;
- pour $x = 6$ : $\sqrt{6-2} = \sqrt{4} = 2$ et $6 - 4 = 2$. C'est bien une solution.

**Conclusion.** L'équation a une unique solution :

$$x = 6 .$$

## Going further

Le nombre $3$ n'est pas apparu par hasard : il est solution de l'équation $\sqrt{x-2} = -(x-4)$, obtenue en changeant le signe du membre de droite. Élever au carré ne distingue pas ces deux équations, puisque $u$ et $-u$ ont le même carré. C'est pourquoi l'élévation au carré peut créer des solutions parasites, et pourquoi la vérification finale n'est jamais facultative.
