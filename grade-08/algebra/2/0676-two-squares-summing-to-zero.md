---
id: "0676"
title: "Deux carrés dont la somme est nulle"
grade: 8
theme: algebra
difficulty: 2
duration_min: 10
tags: [carres, puissances, equation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Inégalités. Égalités. Équations et systèmes d'équations », 3 novembre 2023"
  reference: "Inégalités.pdf, exercice 2"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Inégalités.pdf"
---

## Statement

Soient $x$ et $y$ deux nombres réels tels que

$$(x + 2)^2 + (y - 1)^2 = 0.$$

Calculer $(x + y)^{100} + y^{100}$.

## Hints

1. Un carré peut-il être négatif ?
2. Tu additionnes deux nombres qui ne sont jamais négatifs, et tu trouves $0$. Que peux-tu dire de chacun des deux ?
3. Si l'un des deux était strictement positif, la somme le serait aussi, puisque l'autre est positif ou nul.
4. Une fois que tu connais $x$ et $y$, attention au signe : quel est le signe de $(-1)^{100}$ ?

## Solution

**Étape 1. Deux nombres positifs ou nuls dont la somme est nulle sont tous les deux nuls.**

Le carré d'un nombre réel n'est jamais négatif, donc

$$(x + 2)^2 \geq 0 \qquad \text{et} \qquad (y - 1)^2 \geq 0.$$

Supposons que $(x + 2)^2$ soit strictement positif. Comme $(y - 1)^2$ est positif ou nul, la somme des deux serait strictement positive, ce qui contredit l'énoncé. Donc $(x + 2)^2 = 0$, et le même raisonnement donne $(y - 1)^2 = 0$.

**Étape 2. En déduire $x$ et $y$.**

Un carré est nul seulement si le nombre qu'on élève au carré est nul :

$$x + 2 = 0 \quad \text{donc} \quad x = -2,$$
$$y - 1 = 0 \quad \text{donc} \quad y = 1.$$

**Étape 3. Calculer.**

On a $x + y = -2 + 1 = -1$, donc

$$(x + y)^{100} + y^{100} = (-1)^{100} + 1^{100}.$$

L'exposant $100$ est pair, donc $(-1)^{100} = 1$. Et $1^{100} = 1$.

**Vérification.** Avec $x = -2$ et $y = 1$ : $(x+2)^2 + (y-1)^2 = 0^2 + 0^2 = 0$, l'hypothèse est bien satisfaite.

**Conclusion.**

$$(x + y)^{100} + y^{100} = 1 + 1 = 2.$$

## Going further

1. Mêmes questions si $(x - 1)^2 + (y - 2)^2 = 0$ : que vaut $x + y$ ?
2. Soient $a$, $b$, $c$ des réels tels que $(a - 1)^2 + (b - 2)^2 = -(c - 3)^2$. Montrer que $(a + b)^3 = c^3$. (Indication : le membre de droite est-il positif ou négatif ?)
