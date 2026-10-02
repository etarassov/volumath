---
id: "13235"
title: "Une équation avec π"
grade: 10
theme: algebra
difficulty: 2
duration_min: 15
tags: [equation, fractions, calcul-litteral]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017, premier tour"
  reference: "2017-10_coupe_automne_2017_elim.pdf, exercices communs, exercice 9 ; réponse (2) dans 2017-10_coupe_automne_2017_elim_college.pdf et 2017-10_coupe_automne_2017_elim_lycee.pdf, pas de corrigé rédigé. On demande ici d'abord d'exprimer x, et on explique dans « Pour aller plus loin » pourquoi le quotient ne dépend pas de l'écriture choisie."
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017_elim.pdf"
---

## Statement

Soit $x$ un nombre réel non nul tel que

$$\frac{3 + \frac{17}{x}}{5 + \frac{13}{x}} = \pi.$$

Exprimer $x$ en fonction de $\pi$ sous la forme $x = \frac{a\pi + b}{c\pi + d}$, où $a$, $b$, $c$, $d$ sont des entiers relatifs. Calculer ensuite $\frac{a + b}{c + d}$.

## Hints

1. Multiplie le numérateur et le dénominateur de la grande fraction par $x$.
2. Fais disparaître la fraction, puis regroupe d'un côté les termes qui contiennent $x$.
3. Tu peux choisir les signes de $a$, $b$, $c$, $d$ de deux façons. Le quotient demandé change-t-il ?

## Solution

**On simplifie la grande fraction.** En multipliant son numérateur et son dénominateur par $x$, qui n'est pas nul, l'équation devient

$$\frac{3x + 17}{5x + 13} = \pi.$$

Le dénominateur $5x + 13$ n'est pas nul, sinon la fraction n'existerait pas. On peut donc multiplier par $5x + 13$ :

$$3x + 17 = 5\pi x + 13\pi, \qquad \text{donc} \qquad x\,(3 - 5\pi) = 13\pi - 17.$$

Comme $\pi$ n'est pas égal à $\frac{3}{5}$, le nombre $3 - 5\pi$ n'est pas nul, et

$$x = \frac{13\pi - 17}{-5\pi + 3}.$$

**Le quotient.** Avec $a = 13$, $b = -17$, $c = -5$ et $d = 3$,

$$\frac{a + b}{c + d} = \frac{13 - 17}{-5 + 3} = \frac{-4}{-2} = 2.$$

Si l'on préfère changer tous les signes, $x = \frac{-13\pi + 17}{5\pi - 3}$, on trouve $\frac{4}{2} = 2$ aussi.

**Conclusion.** $x = \frac{13\pi - 17}{3 - 5\pi}$ et $\frac{a + b}{c + d} = 2$.

## Going further

Multiplier $a$, $b$, $c$, $d$ par un même entier non nul ne change ni $x$, ni le quotient $\frac{a + b}{c + d}$. Mais pourrait-il exister une écriture vraiment différente de $x$, avec un autre quotient ?

Non. Si $\frac{a\pi + b}{c\pi + d} = \frac{13\pi - 17}{3 - 5\pi}$, on fait le produit en croix et on obtient une égalité de la forme $u\pi^2 + v\pi + w = 0$, avec $u$, $v$, $w$ entiers. Or on sait (c'est difficile, et hors programme) que $\pi$ n'est solution d'aucune équation de ce type, sauf si $u = v = w = 0$. En écrivant ces trois conditions, on trouve que $(a, b, c, d)$ est un multiple de $(13, -17, -5, 3)$. Le quotient vaut donc toujours $2$.
