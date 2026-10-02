---
id: "1406"
title: "Sept dés qui totalisent dix"
grade: 12
theme: probability-statistics
difficulty: 4
duration_min: 30
tags: [denombrement, des, separateurs, probabilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, Introduction to Probability"
  reference: "Handout-3798-3429.pdf, problème 4"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3798-3429.pdf"
---

## Statement

On lance $7$ dés cubiques équilibrés, numérotés de $1$ à $6$. Les dés sont discernables : on peut dire quel résultat vient de quel dé.

Quelle est la probabilité que la somme des sept faces du dessus soit égale à $10$ ?

## Hints

1. Commencer par compter le nombre total de résultats possibles pour les sept dés.
2. Chaque dé affiche au moins $1$. Les sept dés apportent donc déjà $7$ d'office. Combien reste-t-il à répartir pour arriver à $10$ ?
3. Poser $y_i = x_i - 1$ pour chaque dé. Les $y_i$ sont des entiers positifs ou nuls de somme $3$.
4. Un $y_i$ pourrait-il dépasser $5$, ce qui donnerait une face impossible ? Vérifier que non, et dénombrer sans contrainte.
5. Compter les façons d'écrire $3$ comme somme ordonnée de $7$ entiers positifs ou nuls : c'est le nombre de façons de ranger $3$ jetons dans $7$ cases.

## Solution

**Le nombre total de résultats.**

Chaque dé peut tomber de $6$ façons et les dés sont discernables, donc il y a

$$6^7 = 279\,936$$

résultats possibles, tous de même probabilité.

**Compter les résultats favorables.**

On cherche les septuplets $(x_1, \ldots, x_7)$ avec $1 \leqslant x_i \leqslant 6$ et

$$x_1 + x_2 + \cdots + x_7 = 10 .$$

Chaque dé affiche au moins $1$ : posons $y_i = x_i - 1$. Alors chaque $y_i$ est un entier vérifiant $0 \leqslant y_i \leqslant 5$, et

$$y_1 + y_2 + \cdots + y_7 = 10 - 7 = 3 .$$

Comme la somme des $y_i$ vaut $3$, aucun $y_i$ ne peut dépasser $3$, donc la contrainte $y_i \leqslant 5$ est automatiquement satisfaite : on peut l'oublier.

Il reste à compter les façons de répartir $3$ unités dans $7$ cases ordonnées. Représentons les $3$ unités par $3$ jetons et les séparations entre cases par $6$ barres : une répartition correspond exactement à un alignement de $3$ jetons et $6$ barres, par exemple

$$\bullet \;|\; |\; \bullet \bullet \;|\;|\;|\;|$$

qui code $y = (1, 0, 2, 0, 0, 0, 0)$. Il y a $3 + 6 = 9$ positions dans l'alignement, et il suffit de choisir celles des $3$ jetons :

$$\binom{9}{3} = \frac{9 \times 8 \times 7}{6} = 84 .$$

Il y a donc $84$ résultats favorables.

**La probabilité.**

$$P = \frac{84}{6^7} = \frac{84}{279\,936} = \frac{7}{23\,328} \approx \text{0,00030} .$$

**Conclusion.** La probabilité que les sept dés totalisent $10$ vaut $\boxed{\dfrac{7}{23\,328}}$, soit environ $3$ chances sur $10\,000$.

## Going further

1. Quelle est la probabilité que la somme vaille $7$ ? Et $42$ ?
2. Pourquoi le raisonnement ci-dessus tomberait-il en panne si l'on demandait une somme de $20$ ? Quelle contrainte faudrait-il alors gérer ?
3. La somme la plus probable des sept dés est-elle $10$ ? Sans calcul, deviner autour de quelle valeur se concentre la somme, puis le justifier.
