---
id: "2014"
title: "Une équation en x + 1/x"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [changement-de-variable, second-degre, fractions, equation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Quadratic equations (Oleg Gleizer)"
  reference: "Handout-1272-1283.pdf, exercice 3"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1272-1283.pdf"
---

## Statement

Résoudre dans $\mathbb{R}$ l'équation

$$7\left(x + \frac{1}{x}\right) - 2\left(x^2 + \frac{1}{x^2}\right) = 9 .$$

## Hints

1. Commencez par dire pour quelles valeurs de $x$ l'équation a un sens.
2. Posez $t = x + \dfrac{1}{x}$. Essayez d'exprimer $x^2 + \dfrac{1}{x^2}$ à l'aide de $t$.
3. Calculez $t^2 = \left(x + \dfrac{1}{x}\right)^2$ en développant. Le double produit vaut $2$.
4. Vous obtiendrez une équation du second degré en $t$. Chaque valeur de $t$ trouvée redonne ensuite une équation du second degré en $x$ : attention, l'une des deux pourrait n'avoir aucune solution réelle.

## Solution

**Ensemble de définition.** Les fractions $\dfrac{1}{x}$ et $\dfrac{1}{x^2}$ imposent $x \neq 0$.

**Le changement de variable.** Posons

$$t = x + \frac{1}{x}.$$

En élevant au carré :

$$t^2 = x^2 + 2 \times x \times \frac{1}{x} + \frac{1}{x^2} = x^2 + 2 + \frac{1}{x^2},$$

donc

$$x^2 + \frac{1}{x^2} = t^2 - 2 .$$

L'équation devient

$$7t - 2(t^2 - 2) = 9, \qquad \text{c'est-à-dire} \qquad -2t^2 + 7t + 4 - 9 = 0,$$

soit, en multipliant par $-1$ :

$$2t^2 - 7t + 5 = 0 .$$

**Résolution en $t$.** Le discriminant vaut $\Delta = 49 - 40 = 9$, donc $\sqrt{\Delta} = 3$ et

$$t = \frac{7 - 3}{4} = 1 \qquad \text{ou} \qquad t = \frac{7 + 3}{4} = \frac{5}{2}.$$

**Retour à $x$.** Il reste à résoudre $x + \dfrac{1}{x} = t$ pour chacune de ces deux valeurs. En multipliant par $x$ (non nul), cela s'écrit $x^2 - t x + 1 = 0$.

*Cas $t = 1$ :* l'équation est $x^2 - x + 1 = 0$, de discriminant $\Delta = 1 - 4 = -3 < 0$. Elle n'a aucune solution réelle.

*Cas $t = \frac{5}{2}$ :* l'équation est $x^2 - \dfrac{5}{2}x + 1 = 0$, soit en multipliant par $2$ :

$$2x^2 - 5x + 2 = 0 .$$

Son discriminant vaut $\Delta = 25 - 16 = 9$, donc $\sqrt{\Delta} = 3$ et

$$x = \frac{5 - 3}{4} = \frac{1}{2} \qquad \text{ou} \qquad x = \frac{5 + 3}{4} = 2 .$$

Ces deux valeurs sont bien non nulles.

**Vérification.** Pour $x = 2$ : $x + \frac1x = \frac52$ et $x^2 + \frac{1}{x^2} = 4 + \frac14 = \frac{17}{4}$. Alors

$$7 \times \frac52 - 2 \times \frac{17}{4} = \frac{35}{2} - \frac{17}{2} = \frac{18}{2} = 9 . \quad \checkmark$$

Pour $x = \frac12$, les deux quantités $x + \frac1x$ et $x^2 + \frac{1}{x^2}$ sont les mêmes que pour $x = 2$, donc le calcul est identique.

**Conclusion.** L'équation a exactement deux solutions :

$$x = \frac{1}{2} \qquad \text{et} \qquad x = 2 .$$

## Going further

Il n'est pas surprenant que les deux solutions soient inverses l'une de l'autre. Toute l'équation est écrite à l'aide de $x + \frac1x$ et de $x^2 + \frac{1}{x^2}$, deux expressions qui ne changent pas quand on remplace $x$ par $\frac1x$. Si $x$ est solution, $\frac1x$ l'est donc aussi : les solutions vont par paires.

Remarquons enfin pourquoi $t = 1$ ne donne rien. Pour $x > 0$, on a toujours $x + \frac1x \geqslant 2$, et pour $x < 0$, toujours $x + \frac1x \leqslant -2$. La valeur $1$ est hors d'atteinte.
