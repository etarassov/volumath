---
id: "2018"
title: "Trois inverses dont la somme atteint 9"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [inegalite, identite remarquable, demonstration, inverses]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Quadratic equations (Oleg Gleizer)"
  reference: "Handout-1272-1283.pdf, exercices 21 et 22"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1272-1283.pdf"
---

## Statement

1. Démontrer que pour tout réel $t > 0$,

$$t + \frac{1}{t} \geqslant 2 ,$$

et préciser dans quel cas il y a égalité.

2. Soient $x$, $y$, $z$ trois réels strictement positifs tels que $x + y + z = 1$. Démontrer que

$$\frac{1}{x} + \frac{1}{y} + \frac{1}{z} \geqslant 9 .$$

Dans quel cas a-t-on l'égalité ?

## Hints

1. Pour la question 1, tout part de $(t-1)^2 \geqslant 0$.
2. Pour la question 2, la contrainte $x+y+z = 1$ permet d'écrire $\dfrac{1}{x} + \dfrac{1}{y} + \dfrac{1}{z} = \left(\dfrac{1}{x} + \dfrac{1}{y} + \dfrac{1}{z}\right)(x+y+z)$.
3. Développez ce produit. Vous obtenez neuf termes : trois valent $1$, et les six autres se regroupent deux par deux.
4. Chaque paire est de la forme $\dfrac{x}{y} + \dfrac{y}{x}$. La question 1 s'applique avec $t = \dfrac{x}{y}$.

## Solution

**1. L'inégalité $t + \frac1t \geqslant 2$.**

Soit $t > 0$. Comme un carré est toujours positif ou nul,

$$(t - 1)^2 \geqslant 0, \qquad \text{donc} \qquad t^2 - 2t + 1 \geqslant 0, \qquad \text{donc} \qquad t^2 + 1 \geqslant 2t .$$

Divisons par $t$, qui est strictement positif, ce qui ne change pas le sens de l'inégalité :

$$t + \frac{1}{t} \geqslant 2 .$$

L'égalité a lieu exactement quand $(t-1)^2 = 0$, c'est-à-dire quand $t = 1$.

**2. L'inégalité sur les trois inverses.**

Soient $x$, $y$, $z$ strictement positifs avec $x + y + z = 1$. Puisque $x+y+z = 1$, multiplier par cette somme ne change rien :

$$\frac{1}{x} + \frac{1}{y} + \frac{1}{z} = \left(\frac{1}{x} + \frac{1}{y} + \frac{1}{z}\right)(x + y + z).$$

Développons le produit. Chaque terme $\frac1x$ est multiplié par $x$, par $y$ et par $z$, et ainsi de suite :

$$\left(\frac{1}{x} + \frac{1}{y} + \frac{1}{z}\right)(x + y + z) = \underbrace{\frac{x}{x} + \frac{y}{y} + \frac{z}{z}}_{= \ 3} + \left(\frac{y}{x} + \frac{x}{y}\right) + \left(\frac{z}{x} + \frac{x}{z}\right) + \left(\frac{z}{y} + \frac{y}{z}\right).$$

Appliquons maintenant la question 1 à chacune des trois parenthèses. Par exemple, avec $t = \dfrac{y}{x} > 0$, on a $\dfrac{1}{t} = \dfrac{x}{y}$, donc

$$\frac{y}{x} + \frac{x}{y} \geqslant 2 .$$

De même $\dfrac{z}{x} + \dfrac{x}{z} \geqslant 2$ et $\dfrac{z}{y} + \dfrac{y}{z} \geqslant 2$. En additionnant :

$$\frac{1}{x} + \frac{1}{y} + \frac{1}{z} \geqslant 3 + 2 + 2 + 2 = 9 .$$

**Le cas d'égalité.** Il faut que les trois inégalités utilisées soient des égalités, donc que

$$\frac{y}{x} = 1, \qquad \frac{z}{x} = 1, \qquad \frac{z}{y} = 1,$$

c'est-à-dire $x = y = z$. Avec $x + y + z = 1$, cela donne $x = y = z = \dfrac{1}{3}$. On vérifie alors

$$\frac{1}{x} + \frac{1}{y} + \frac{1}{z} = 3 + 3 + 3 = 9 . \quad \checkmark$$

**Conclusion.** Pour tous réels strictement positifs $x, y, z$ de somme $1$, on a $\dfrac1x + \dfrac1y + \dfrac1z \geqslant 9$, avec égalité si et seulement si $x = y = z = \dfrac13$.

## Going further

Sans la contrainte $x+y+z=1$, le même calcul donne l'inégalité générale

$$(x + y + z)\left(\frac{1}{x} + \frac{1}{y} + \frac{1}{z}\right) \geqslant 9 ,$$

valable pour tous réels strictement positifs. On l'écrit souvent sous la forme

$$\frac{x+y+z}{3} \ \geqslant \ \frac{3}{\frac1x + \frac1y + \frac1z} ,$$

qui se lit : la moyenne arithmétique est toujours supérieure ou égale à la moyenne harmonique.

Avec $n$ nombres au lieu de trois, le même raisonnement donne $\dfrac{1}{x_1} + \cdots + \dfrac{1}{x_n} \geqslant n^2$ dès que $x_1 + \cdots + x_n = 1$.
