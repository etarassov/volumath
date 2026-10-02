---
id: "2010"
title: "Les trois racines de x³ − 5x − 2"
grade: 12
theme: algebra
difficulty: 3
duration_min: 25
tags: [polynome, racines, factorisation, second-degre]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, The Cardano formula and the invention of complex numbers (Oleg Gleizer)"
  reference: "Handout-1294-1311.pdf, exercice 8"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1294-1311.pdf"
---

## Statement

Résoudre dans $\mathbb{R}$ l'équation

$$x^3 - 5x - 2 = 0.$$

On demande les **trois** solutions, et une justification du fait qu'il n'y en a pas d'autres.

## Hints

1. Cherchez d'abord une solution simple, parmi les entiers. Essayez $-2, -1, 1, 2$.
2. Si $r$ est une racine du polynôme $P(x) = x^3 - 5x - 2$, alors $P(x)$ se factorise par $(x - r)$.
3. Posez la division de $x^3 - 5x - 2$ par $x + 2$, ou bien cherchez directement $a$, $b$, $c$ tels que $x^3 - 5x - 2 = (x+2)(ax^2 + bx + c)$ en développant et en identifiant.
4. Il reste une équation du second degré : discriminant.

## Solution

**Une racine évidente.** Posons $P(x) = x^3 - 5x - 2$ et essayons quelques petits entiers :

$$P(1) = 1 - 5 - 2 = -6, \qquad P(2) = 8 - 10 - 2 = -4, \qquad P(-1) = -1 + 5 - 2 = 2,$$
$$P(-2) = -8 + 10 - 2 = 0.$$

Donc $x = -2$ est une solution.

**Factorisation.** Puisque $-2$ est racine, $P(x)$ est divisible par $x + 2$. Cherchons $a$, $b$, $c$ tels que

$$x^3 - 5x - 2 = (x+2)(ax^2 + bx + c).$$

En développant le membre de droite :

$$(x+2)(ax^2+bx+c) = ax^3 + (b + 2a)x^2 + (c + 2b)x + 2c.$$

Identifions les coefficients avec $x^3 + 0\,x^2 - 5x - 2$ :

- coefficient de $x^3$ : $a = 1$ ;
- coefficient de $x^2$ : $b + 2a = 0$, donc $b = -2$ ;
- terme constant : $2c = -2$, donc $c = -1$ ;
- coefficient de $x$ : $c + 2b = -1 - 4 = -5$. C'est bien la valeur attendue, la factorisation est cohérente.

Ainsi

$$x^3 - 5x - 2 = (x + 2)(x^2 - 2x - 1).$$

**Les deux autres racines.** Un produit est nul si et seulement si l'un de ses facteurs est nul. Il reste donc à résoudre

$$x^2 - 2x - 1 = 0.$$

Son discriminant vaut $\Delta = (-2)^2 - 4 \times 1 \times (-1) = 4 + 4 = 8 > 0$, et $\sqrt{8} = 2\sqrt{2}$. Les solutions sont

$$x = \frac{2 - 2\sqrt{2}}{2} = 1 - \sqrt{2} \qquad \text{et} \qquad x = \frac{2 + 2\sqrt{2}}{2} = 1 + \sqrt{2}.$$

**Conclusion.** L'équation $x^3 - 5x - 2 = 0$ a exactement trois solutions réelles :

$$x = -2, \qquad x = 1 - \sqrt{2}, \qquad x = 1 + \sqrt{2}.$$

Il n'y en a pas d'autres : un produit de deux facteurs ne s'annule qu'aux racines de l'un ou de l'autre, et nous les avons toutes trouvées. Numériquement, $1 - \sqrt{2} \approx -\text{0,414}$ et $1 + \sqrt{2} \approx \text{2,414}$.

## Going further

Il existe une formule générale, due à del Ferro, Tartaglia et Cardan, qui donne une racine de $x^3 + px + q = 0$ sans passer par une racine évidente. Appliquée ici, elle produit une expression du genre

$$x = \sqrt[3]{1 + \sqrt{-\tfrac{98}{27}}} + \sqrt[3]{1 - \sqrt{-\tfrac{98}{27}}},$$

où apparaît la racine carrée d'un nombre négatif, alors même que les trois racines de l'équation sont bien réelles. C'est précisément ce paradoxe, appelé *casus irreducibilis*, qui a poussé les mathématiciens du XVIᵉ siècle à inventer les nombres complexes : ils servaient d'abord de passage obligé pour atteindre des réponses réelles.
