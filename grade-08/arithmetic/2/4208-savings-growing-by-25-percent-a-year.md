---
id: "4208"
title: "Le placement à 25 % par an"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [pourcentages, puissances, coefficient-multiplicateur]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Tricky Percents"
  reference: "Handout-2354-2086.pdf, exercice 9"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2354-2086.pdf"
---

## Statement

Amélie place une certaine somme d'argent à la banque. À la fin de chaque année, la somme placée
augmente de $25\,\%$.

Au bout de combien d'années la somme sur le compte dépasse-t-elle le double de la somme du départ ?

## Hints

1. Augmenter de $25\,\%$, c'est multiplier par un nombre. Lequel ?
2. Prends $100$ € au départ, cela rend les calculs faciles, et remplis un petit tableau année
   par année.
3. Attention : en quatre ans la somme n'augmente pas de $4 \times 25\,\% = 100\,\%$. Chaque
   année, les intérêts se calculent sur une somme plus grande que l'année d'avant.

## Solution

Augmenter de $25\,\%$ revient à multiplier par
$$1 + \frac{25}{100} = \text{1,25}.$$

Partons de $100$ € et suivons le compte année après année.

| Fin de l'année | Somme sur le compte |
|---|---|
| $1$ | $100 \times \text{1,25} = 125$ € |
| $2$ | $125 \times \text{1,25} = \text{156,25}$ € |
| $3$ | $\text{156,25} \times \text{1,25} = \text{195,3125}$ € |
| $4$ | $\text{195,3125} \times \text{1,25} = \text{244,140625}$ € |

Au bout de $3$ ans, la somme vaut environ $195$ €, elle n'a donc pas encore atteint le double de
$100$ €. Au bout de $4$ ans, elle vaut environ $244$ €, elle a dépassé $200$ €.

**Conclusion.** Il faut $\mathbf{4}$ ans pour que la somme dépasse le double de la somme placée
au départ.

Remarquons que la réponse ne dépend pas de la somme placée : à chaque étape on multiplie par
$\text{1,25}$, donc au bout de $n$ années la somme a été multipliée par $\text{1,25}^n$, quel
que soit le point de départ. Il suffit que ce coefficient dépasse $2$.

## Going further

Au bout de combien d'années la somme dépasse-t-elle le **triple** de la somme de départ ?
(Réponse : $5$ ans, car $\text{1,25}^5 \approx \text{3,05}$.)
