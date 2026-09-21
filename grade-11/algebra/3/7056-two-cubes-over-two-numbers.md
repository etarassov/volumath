---
id: "7056"
title: "Deux cubes divisés l'un par l'autre"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, reordonnement, factorisation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Saint-Pierre-lès-Nemours 2009"
  reference: "stage_junior_2009.pdf, « Expressions algébriques », factorisation d'expressions polynomiales, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2009.pdf"
---

## Statement

1. Soient $a$, $b$, $c$, $d$ des réels tels que $a \geq b$ et $c \geq d$. Montrer que
   $$ac + bd \geq ad + bc .$$
2. Soient $x$ et $y$ deux réels strictement positifs. Montrer que
   $$\frac{x^3}{y} + \frac{y^3}{x} \geq x^2 + y^2 .$$

## Hints

1. Pour la question 1, fais passer tout du même côté et cherche à factoriser.
2. Tu devrais tomber sur un produit de deux facteurs dont tu connais les signes.
3. Pour la question 2, remarque que les deux membres sont symétriques en $x$ et $y$ : tu peux
   donc supposer $x \geq y$.
4. Cherche alors quels $a$, $b$, $c$, $d$ il faut prendre dans la question 1 pour que
   $ad + bc$ devienne exactement $x^2 + y^2$.
5. Essaie $a = x^3$, $b = y^3$, $c = \dfrac1y$, $d = \dfrac1x$.

## Solution

### Question 1

Regroupons tout d'un côté et factorisons :
$$ac + bd - ad - bc = a(c - d) - b(c - d) = (a - b)(c - d) .$$

Par hypothèse $a - b \geq 0$ et $c - d \geq 0$. Le produit de deux nombres positifs est
positif, donc
$$ac + bd - ad - bc \geq 0 , \qquad \text{c'est-à-dire} \qquad ac + bd \geq ad + bc .
\qquad \blacksquare$$

### Question 2

Les deux membres de l'inégalité sont inchangés si l'on échange $x$ et $y$. On peut donc
supposer, sans perdre de généralité, que
$$x \geq y > 0 .$$

Appliquons alors la question 1 avec
$$a = x^3, \qquad b = y^3, \qquad c = \frac1y, \qquad d = \frac1x .$$

Vérifions les hypothèses :

- $a \geq b$, car $x \geq y > 0$ entraîne $x^3 \geq y^3$ ;
- $c \geq d$, car $0 < y \leq x$ entraîne $\dfrac1y \geq \dfrac1x$.

La question 1 donne donc $ac + bd \geq ad + bc$, c'est-à-dire
$$\frac{x^3}{y} + \frac{y^3}{x} \geq \frac{x^3}{x} + \frac{y^3}{y} = x^2 + y^2 .
\qquad \blacksquare$$

**Quand y a-t-il égalité ?**

L'inégalité de la question 1 est une égalité exactement quand $(a-b)(c-d) = 0$, donc ici
quand $x^3 = y^3$ ou $\dfrac1y = \dfrac1x$, ce qui revient dans les deux cas à $x = y$. Et on
vérifie qu'alors les deux membres valent $2x^2$.

## Going further

La question 1 est le cas le plus simple de l'**inégalité de réordonnement** : si $a_1 \leq
a_2$ et $b_1 \leq b_2$, alors le produit terme à terme « dans le même ordre »,
$a_1b_1 + a_2b_2$, est plus grand que le produit « dans l'ordre inverse »,
$a_1b_2 + a_2b_1$. Autrement dit : pour maximiser une somme de produits, il faut apparier les
grands avec les grands.

Il y a une autre route pour la question 2, entièrement calculatoire. En réduisant au même
dénominateur, l'inégalité devient $x^4 + y^4 \geq xy(x^2+y^2)$, c'est-à-dire
$$x^4 + y^4 - x^3 y - x y^3 \geq 0 .$$
Or $x^4 + y^4 - x^3y - xy^3 = x^3(x - y) - y^3(x - y) = (x-y)(x^3 - y^3)$, et les deux
facteurs sont toujours de même signe. Les deux démonstrations sont au fond la même, écrite de
deux façons.
