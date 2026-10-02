---
id: "2016"
title: "La somme des carrés des racines"
grade: 11
theme: algebra
difficulty: 2
duration_min: 15
tags: [second-degre, racines, somme-produit, identite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Quadratic equations (Oleg Gleizer)"
  reference: "Handout-1272-1283.pdf, exercice 11"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1272-1283.pdf"
---

## Statement

On considère l'équation $ax^2 + bx + c = 0$, où $a \neq 0$ et où le discriminant $\Delta = b^2 - 4ac$ est positif ou nul. Elle a donc deux racines réelles $x_1$ et $x_2$ (éventuellement égales).

**Sans résoudre l'équation**, exprimer $x_1^2 + x_2^2$ en fonction de $a$, $b$ et $c$.

Appliquer ensuite le résultat à l'équation $2x^2 - 7x + 3 = 0$.

## Hints

1. Vous connaissez deux quantités simples : la somme $x_1 + x_2$ et le produit $x_1 x_2$. Que valent-elles ?
2. $x_1 + x_2 = -\dfrac{b}{a}$ et $x_1 x_2 = \dfrac{c}{a}$.
3. Développez $(x_1 + x_2)^2$. Vous y verrez apparaître $x_1^2 + x_2^2$ et le produit $x_1 x_2$.

## Solution

**Les deux relations entre coefficients et racines.** Si $x_1$ et $x_2$ sont les racines de $ax^2 + bx + c = 0$, alors

$$x_1 + x_2 = -\frac{b}{a} \qquad \text{et} \qquad x_1 x_2 = \frac{c}{a} .$$

**L'identité à utiliser.** En développant le carré de la somme :

$$(x_1 + x_2)^2 = x_1^2 + 2x_1x_2 + x_2^2 ,$$

d'où

$$x_1^2 + x_2^2 = (x_1 + x_2)^2 - 2 x_1 x_2 .$$

**Le calcul.** En remplaçant :

$$x_1^2 + x_2^2 = \left(-\frac{b}{a}\right)^2 - 2 \times \frac{c}{a} = \frac{b^2}{a^2} - \frac{2c}{a} = \frac{b^2 - 2ac}{a^2} .$$

**Conclusion.**

$$x_1^2 + x_2^2 = \frac{b^2 - 2ac}{a^2} .$$

**Application.** Pour $2x^2 - 7x + 3 = 0$, on a $a = 2$, $b = -7$, $c = 3$, donc

$$x_1^2 + x_2^2 = \frac{49 - 2 \times 2 \times 3}{4} = \frac{49 - 12}{4} = \frac{37}{4} = \text{9,25} .$$

On peut le vérifier : les racines de $2x^2 - 7x + 3$ sont $\frac12$ et $3$, et

$$\left(\frac12\right)^2 + 3^2 = \frac14 + 9 = \frac{37}{4} . \quad \checkmark$$

## Going further

La même méthode donne d'autres quantités sans résoudre l'équation. Par exemple

$$\frac{1}{x_1} + \frac{1}{x_2} = \frac{x_1 + x_2}{x_1 x_2} = -\frac{b}{c} \qquad (\text{si } c \neq 0),$$

et

$$x_1^3 + x_2^3 = (x_1+x_2)^3 - 3x_1x_2(x_1+x_2) = -\frac{b^3}{a^3} + \frac{3bc}{a^2} .$$

Toute expression symétrique des deux racines, c'est-à-dire qui ne change pas quand on échange $x_1$ et $x_2$, s'écrit ainsi à l'aide de la somme et du produit. C'est un théorème général sur les polynômes symétriques.
