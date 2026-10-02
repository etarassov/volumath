---
id: "0880"
title: "Une somme qui ne descend jamais sous 2y"
grade: 9
theme: algebra
difficulty: 2
duration_min: 15
tags: [inegalite, identites-remarquables, fractions, cas-d-egalite]
adapted_from: null
see_also: ["8211"]
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes issus des envois POFM (problèmes 1-3) », niveau collège - débutants, 12 mai 2023"
  reference: "Preparation.POFM.pdf, exercice 10, d'après les envois POFM 2019-2022"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Preparation.POFM.pdf"
---

## Statement

$x$ et $y$ sont deux nombres réels strictement positifs. Montrer que

$$x + \frac{y^2}{x} \geqslant 2y,$$

et trouver le cas d'égalité.

## Hints

1. La fraction gêne. Comme $x > 0$, tu as le droit de multiplier les deux membres par $x$ sans changer le sens de l'inégalité.
2. Tu obtiens $x^2 + y^2 \geqslant 2xy$. Fais passer tout du même côté.
3. $x^2 - 2xy + y^2$ : ne reconnais-tu pas une identité remarquable ?
4. Un carré est toujours positif ou nul, et il est nul uniquement quand le nombre qu'on élève au carré est nul.

## Solution

**L'idée : tout ramener d'un seul côté et reconnaître un carré.**

Comme $x > 0$, on peut réduire la différence des deux membres au même dénominateur :

$$x + \frac{y^2}{x} - 2y \;=\; \frac{x^2}{x} + \frac{y^2}{x} - \frac{2xy}{x} \;=\; \frac{x^2 - 2xy + y^2}{x}.$$

Le numérateur est une identité remarquable :

$$x^2 - 2xy + y^2 = (x - y)^2.$$

Donc

$$x + \frac{y^2}{x} - 2y = \frac{(x-y)^2}{x}.$$

Au numérateur, $(x-y)^2$ est un carré, donc il est positif ou nul. Au dénominateur, $x$ est strictement positif. Le quotient est donc positif ou nul :

$$x + \frac{y^2}{x} - 2y \geqslant 0, \qquad \text{c'est-à-dire} \qquad x + \frac{y^2}{x} \geqslant 2y.$$

**Le cas d'égalité.** Il y a égalité exactement quand $\dfrac{(x-y)^2}{x} = 0$, c'est-à-dire quand $(x-y)^2 = 0$, c'est-à-dire quand $x = y$.

Et on vérifie : si $x = y$, alors $x + \dfrac{y^2}{x} = y + \dfrac{y^2}{y} = y + y = 2y$. C'est bien une égalité.

**Conclusion : pour tous réels $x > 0$ et $y > 0$, on a $x + \dfrac{y^2}{x} \geqslant 2y$, avec égalité si et seulement si $x = y$.**

## Going further

En posant $y = 1$, on retrouve un grand classique : pour tout $x > 0$,
$$x + \frac{1}{x} \geqslant 2,$$
avec égalité seulement pour $x = 1$. Autrement dit, un nombre strictement positif et son inverse ont toujours une somme d'au moins $2$.
