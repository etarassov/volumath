---
id: "8136"
title: "Deux carrés dont la somme vaut au moins 8"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, substitution, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, entraînement de mi-parcours du Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Exercices d'entraînement – Entraînement de mi-parcours », exercice 2"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soient $a$ et $b$ deux nombres réels strictement positifs. Montrer que

$$\left(1 + \frac{a}{b}\right)^2 + \left(1 + \frac{b}{a}\right)^2 \geq 8.$$

Dans quel cas y a-t-il égalité ?

## Hints

1. Les deux fractions $\dfrac{a}{b}$ et $\dfrac{b}{a}$ sont inverses l'une de l'autre. Pose $u = \dfrac{a}{b}$ : tout s'écrit alors avec $u$ et $\dfrac{1}{u}$.
2. Développe les deux carrés et regroupe les termes qui se ressemblent.
3. Tu verras apparaître $u + \dfrac{1}{u}$ et $u^2 + \dfrac{1}{u^2}$. Montre séparément que chacune de ces deux quantités vaut au moins $2$.
4. Pour cela, l'inégalité $x + \dfrac{1}{x} \geq 2$ pour $x > 0$ revient, après multiplication par $x$, à un carré positif.

## Solution

**La substitution.**

Posons $u = \dfrac{a}{b}$. Comme $a$ et $b$ sont strictement positifs, $u > 0$, et $\dfrac{b}{a} = \dfrac{1}{u}$. L'expression à minorer s'écrit

$$E = (1+u)^2 + \left(1 + \frac{1}{u}\right)^2.$$

**Le développement.**

$$E = 1 + 2u + u^2 + 1 + \frac{2}{u} + \frac{1}{u^2} = 2 + 2\left(u + \frac{1}{u}\right) + \left(u^2 + \frac{1}{u^2}\right).$$

**Le lemme.**

Pour tout $x > 0$,

$$x + \frac{1}{x} \geq 2.$$

En effet, en multipliant par $x > 0$, cette inégalité équivaut à $x^2 + 1 \geq 2x$, c'est-à-dire à $(x-1)^2 \geq 0$, qui est toujours vraie. L'égalité a lieu exactement quand $x = 1$.

**L'application.**

Appliquons le lemme deux fois : à $x = u$, puis à $x = u^2$ (qui est bien strictement positif).

$$u + \frac{1}{u} \geq 2 \qquad \text{et} \qquad u^2 + \frac{1}{u^2} \geq 2.$$

Donc

$$E \geq 2 + 2 \times 2 + 2 = 8.$$

**Le cas d'égalité.**

Il faut que les deux inégalités du lemme soient des égalités, donc $u = 1$ et $u^2 = 1$, c'est-à-dire $u = 1$, c'est-à-dire

$$a = b.$$

Réciproquement, si $a = b$ l'expression vaut $(1+1)^2 + (1+1)^2 = 8$.

**Conclusion : l'inégalité est vraie, avec égalité si et seulement si $a = b$.**
