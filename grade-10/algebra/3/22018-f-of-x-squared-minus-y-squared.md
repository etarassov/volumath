---
id: "22018"
title: "f(x² − y²) = (x − y)(f(x) + f(y))"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [equation-fonctionnelle, substitution, fonction-impaire]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « Équations fonctionnelles 2 » (Rémi & Melvil), exercice 10"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Trouver toutes les fonctions $f$ définies sur $\mathbb{R}$, à valeurs dans $\mathbb{R}$, telles que, pour tous réels $x$ et $y$,

$$f(x^2 - y^2) = (x - y)\left(f(x) + f(y)\right).$$

## Hints

1. Commencez par $x = y$, puis par $y = 0$.
2. Avec $y = 0$, remplacez ensuite $x$ par $-x$. Que peut-on dire de $f(-x)$ ?
3. Le membre de gauche ne change pas quand on remplace $y$ par $-y$. Comparez les deux membres de droite.

## Solution

**Étape 1 : $f(0) = 0$.** Avec $y = x$, l'équation donne $f(0) = 0 \times 2f(x) = 0$.

**Étape 2 : $f$ est impaire.** Avec $y = 0$ et $f(0) = 0$, pour tout réel $x$,

$$f(x^2) = x f(x).$$

Remplaçons $x$ par $-x$ : $f(x^2) = -x f(-x)$. Donc $x f(x) = -x f(-x)$. Pour $x \neq 0$, on divise par $x$ : $f(-x) = -f(x)$. C'est encore vrai pour $x = 0$. On dit que $f$ est *impaire*.

**Étape 3 : on remplace $y$ par $-y$.** Comme $(-y)^2 = y^2$ et $f(-y) = -f(y)$, l'équation donne

$$f(x^2 - y^2) = (x + y)\left(f(x) - f(y)\right).$$

En comparant avec l'équation de départ :

$$(x - y)\left(f(x) + f(y)\right) = (x + y)\left(f(x) - f(y)\right).$$

Développons les deux membres :

$$x f(x) + x f(y) - y f(x) - y f(y) = x f(x) - x f(y) + y f(x) - y f(y),$$

ce qui se simplifie en $2x f(y) = 2y f(x)$, c'est-à-dire $x f(y) = y f(x)$ pour tous réels $x$, $y$.

**Étape 4 : la forme de $f$.** Avec $y = 1$, on obtient $f(x) = x f(1)$. En notant $c = f(1)$, on a $f(x) = cx$ pour tout réel $x$.

**Vérification.** Pour $f(x) = cx$ : à gauche $c(x^2 - y^2)$, à droite $(x - y)(cx + cy) = c(x - y)(x + y) = c(x^2 - y^2)$. Cela convient, quelle que soit la valeur de $c$.

**Conclusion.** Les solutions sont exactement les fonctions $x \mapsto cx$, où $c$ est un réel quelconque.

## Going further

1. Trouver toutes les fonctions $f : \mathbb{R} \to \mathbb{R}$ telles que $f(x)^2 - f(y)^2 + x^4 - y^4 = 2\left(x^2 f(x) - y^2 f(y)\right)$ pour tous réels $x$ et $y$. (Regroupez ce qui dépend de $x$ d'un côté, ce qui dépend de $y$ de l'autre.)
