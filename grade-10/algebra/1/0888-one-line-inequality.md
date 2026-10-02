---
id: "0888"
title: "Une inégalité en une seule ligne"
grade: 10
theme: algebra
difficulty: 1
duration_min: 10
tags: [inegalite, signe-d-une-difference, identites-remarquables, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes issus des envois POFM (problèmes 1-3) », niveau collège - débutants, 12 mai 2023"
  reference: "Preparation.POFM.pdf, exercice 13, d'après les envois POFM 2019-2022"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Preparation.POFM.pdf"
---

## Statement

$x$ est un nombre réel strictement positif. Montrer que

$$x^3 + \frac{1}{x} \geqslant 2x,$$

et trouver le cas d'égalité.

## Hints

1. Pour comparer deux expressions, la méthode du cours est toujours la même : étudier le signe de leur différence.
2. Réduis $x^3 + \dfrac{1}{x} - 2x$ au même dénominateur.
3. Au numérateur apparaît $x^4 - 2x^2 + 1$. Pose $X = x^2$ : que reconnais-tu ?
4. N'oublie pas de dire pourquoi le dénominateur est strictement positif, et de repérer quand le numérateur s'annule.

## Solution

**La méthode : étudier le signe de la différence.**

Comme $x > 0$, on peut tout mettre sur le dénominateur $x$ :

$$x^3 + \frac{1}{x} - 2x \;=\; \frac{x^4}{x} + \frac{1}{x} - \frac{2x^2}{x} \;=\; \frac{x^4 - 2x^2 + 1}{x}.$$

Le numérateur est une identité remarquable, en $x^2$ :

$$x^4 - 2x^2 + 1 = (x^2)^2 - 2 \times x^2 \times 1 + 1^2 = (x^2 - 1)^2.$$

Donc

$$x^3 + \frac{1}{x} - 2x = \frac{(x^2-1)^2}{x}.$$

Le numérateur est un carré, donc positif ou nul ; le dénominateur est strictement positif. Le quotient est donc positif ou nul, ce qui donne bien

$$x^3 + \frac{1}{x} \geqslant 2x.$$

**Le cas d'égalité.** Il y a égalité exactement quand $(x^2-1)^2 = 0$, c'est-à-dire $x^2 = 1$, c'est-à-dire $x = 1$ ou $x = -1$. Comme $x > 0$, il reste

$$x = 1.$$

Vérification : pour $x = 1$, le membre de gauche vaut $1 + 1 = 2$ et le membre de droite vaut $2$.

**Conclusion : pour tout réel $x > 0$, $x^3 + \dfrac{1}{x} \geqslant 2x$, avec égalité si et seulement si $x = 1$.**
