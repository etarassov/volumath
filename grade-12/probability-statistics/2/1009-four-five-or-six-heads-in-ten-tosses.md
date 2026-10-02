---
id: "1009"
title: "Quatre, cinq ou six piles en dix lancers"
grade: 12
theme: probability-statistics
difficulty: 2
duration_min: 20
tags: [loi-binomiale, coefficient-binomial, triangle-de-pascal, esperance]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Intro to combinatorics and probability"
  reference: "Handout-4796-4987.pdf, exercice 23 (réponse dans Handout-4797-4987.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4796-4987.pdf"
---

## Statement

On lance dix fois une pièce équilibrée.

1. Quelle est la probabilité d'obtenir exactement $5$ « pile » ?
2. Quelle est la probabilité d'obtenir $4$, $5$ ou $6$ « pile » ?
3. Le nombre moyen de « pile » vaut $5$. La réponse à la question 2 vous paraît-elle grande ou petite ? Commentez.

## Hints

1. Il y a $2^{10}$ suites de dix résultats, toutes également probables. Combien vaut $2^{10}$ ?
2. Pour compter les suites ayant exactement $k$ « pile », il suffit de choisir **quelles positions** portent un « pile ».
3. La dixième ligne du triangle de Pascal donne $\binom{10}{0}, \binom{10}{1}, \ldots, \binom{10}{10}$. Écrivez-la.
4. Les trois événements « exactement $4$ », « exactement $5$ », « exactement $6$ » sont incompatibles : leurs probabilités s'additionnent.

## Solution

Notons $X$ le nombre de « pile » obtenus. Les dix lancers sont indépendants et chacun donne « pile » avec la probabilité $\frac12$ : $X$ suit la loi binomiale de paramètres $n = 10$ et $p = \frac12$.

Toutes les $2^{10} = 1024$ suites de dix résultats sont équiprobables. Une suite comportant exactement $k$ « pile » est déterminée par le choix des $k$ positions occupées par un « pile » parmi les dix, d'où
$$P(X = k) = \frac{\binom{10}{k}}{1024}.$$

La dixième ligne du triangle de Pascal est
$$1, \quad 10, \quad 45, \quad 120, \quad 210, \quad 252, \quad 210, \quad 120, \quad 45, \quad 10, \quad 1.$$

### Question 1

$$P(X = 5) = \frac{\binom{10}{5}}{1024} = \frac{252}{1024} = \frac{63}{256} \approx \text{0,246}.$$

Autrement dit, obtenir exactement la moitié de « pile » n'arrive même pas une fois sur quatre.

### Question 2

Les événements $\{X = 4\}$, $\{X = 5\}$ et $\{X = 6\}$ sont deux à deux incompatibles, donc
$$P(4 \leqslant X \leqslant 6) = \frac{\binom{10}{4} + \binom{10}{5} + \binom{10}{6}}{1024} = \frac{210 + 252 + 210}{1024} = \frac{672}{1024}.$$

En simplifiant par $32$ :
$$P(4 \leqslant X \leqslant 6) = \frac{21}{32} = \text{0,65625}.$$

### Question 3

Le nombre moyen de « pile » est $E(X) = 10 \times \frac12 = 5$. La question 2 demande la probabilité que le résultat s'écarte de cette moyenne d'au plus $1$.

Deux remarques valent la peine :

- **Tomber pile sur la moyenne est rare** : seulement $\text{24,6}\,\%$ des fois. Une moyenne n'est pas une prévision.
- **Rester tout près de la moyenne est en revanche fréquent** : dans environ deux cas sur trois, on obtient entre $4$ et $6$ « pile ».

C'est le comportement typique d'une loi binomiale : les valeurs se regroupent autour de la moyenne, mais aucune valeur particulière n'est très probable.

**Conclusion.** $P(X = 5) = \dfrac{63}{256} \approx \text{0,246}$ et $P(4 \leqslant X \leqslant 6) = \dfrac{21}{32} \approx \text{0,656}$.

## Going further

1. Calculer $P(3 \leqslant X \leqslant 7)$, puis $P(2 \leqslant X \leqslant 8)$. À quelle vitesse se rapproche-t-on de $1$ ?
2. Avec $100$ lancers, la probabilité d'obtenir exactement $50$ « pile » est-elle plus grande ou plus petite que $\text{0,246}$ ? Deviner d'abord, calculer ensuite.
3. Montrer que $\binom{10}{4} = \binom{10}{6}$ sans calculer les deux nombres, et expliquer pourquoi cette égalité était prévisible ici pour des raisons de probabilité.
