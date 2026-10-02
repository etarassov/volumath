---
id: "13854"
title: "Connaissant x + y et xy"
grade: 9
theme: algebra
difficulty: 2
duration_min: 15
tags: [identites remarquables, fractions, fraction irreductible]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet junior, exercice 24 ; réponse 639 (valeur de a + b) dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Les réels $x$ et $y$ vérifient $x + y = 15$ et $xy = -23$.

Écrire le nombre

$$x - \frac{y}{x} - \frac{x}{y} + y$$

sous la forme d'une fraction irréductible.

## Hints

1. Ne cherche pas à calculer $x$ et $y$. Regroupe $x + y$ d'un côté, les deux fractions de
   l'autre.
2. Mets $\dfrac{y}{x} + \dfrac{x}{y}$ au même dénominateur.
3. Calcule $x^2 + y^2$ à partir de $(x + y)^2$.

## Solution

Comme $xy = -23$, ni $x$ ni $y$ n'est nul, et les fractions ont un sens.

**On regroupe.** Le nombre s'écrit

$$(x + y) - \left(\frac{y}{x} + \frac{x}{y}\right) = 15 - \frac{y^2 + x^2}{xy}.$$

**On calcule $x^2 + y^2$.** D'après l'identité $(x + y)^2 = x^2 + 2xy + y^2$,

$$x^2 + y^2 = (x + y)^2 - 2xy = 225 + 46 = 271.$$

**On termine.** Le nombre vaut

$$15 - \frac{271}{-23} = 15 + \frac{271}{23} = \frac{345 + 271}{23} = \frac{616}{23}.$$

Cette fraction est irréductible : $23$ est premier, et il ne divise pas $616 = 23 \times 26 + 18$.

**Le nombre vaut $\dfrac{616}{23}$.**
