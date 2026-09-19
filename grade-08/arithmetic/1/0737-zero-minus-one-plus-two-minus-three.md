---
id: "0737"
title: "Zéro moins un plus deux moins trois"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [somme, regroupement, calcul astucieux]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Aires. Préparation Olympiades de Mathématiques de 4ème », 26 janvier 2024"
  reference: "Péparation.OMCollege.pdf, exercice 13, d'après Coupe Animath de Printemps 2020, P1"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Péparation.OMCollege.pdf"
---

## Statement

Donner la valeur de

$$0 - 1 + 2 - 3 + 4 - 5 + \ldots - 49 + 50 .$$

## Hints

1. Calculer de gauche à droite marcherait, mais ce serait long. Essaie plutôt de regrouper les termes.
2. Regroupe $-1 + 2$, puis $-3 + 4$, puis $-5 + 6$, et ainsi de suite. Combien vaut chaque paquet ?
3. Combien y a-t-il de paquets ? Le premier terme, $0$, n'est dans aucun paquet.

## Solution

**On regroupe les termes deux par deux.**

Le premier terme est $0$ et ne change rien. Regroupons tout le reste en paquets de deux, un nombre impair suivi du nombre pair juste après :

$$(-1 + 2) + (-3 + 4) + (-5 + 6) + \ldots + (-49 + 50) .$$

Chaque paquet vaut $1$.

**On compte les paquets.**

Les paquets sont repérés par leur nombre impair : $1$, $3$, $5$, $\ldots$, $49$. Ce sont les nombres impairs de $1$ à $49$, et il y en a $25$, puisque $1, 2, \ldots, 50$ contient autant de nombres pairs que de nombres impairs.

**On conclut.**

La somme vaut donc

$$0 + 25 \times 1 = 25 .$$

## Going further

1. Que vaut $0 - 1 + 2 - 3 + \ldots - 99 + 100$ ?
2. Que vaut $0 - 1 + 2 - 3 + \ldots + 48 - 49$, c'est-à-dire la même somme arrêtée un cran plus tôt ?
