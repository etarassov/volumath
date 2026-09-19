---
id: "3603"
title: "Quatre nombres impairs qui se suivent"
grade: 8
theme: algebra
difficulty: 2
duration_min: 10
tags: [impairs, consecutifs, equation, relatifs, produit]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 8 training, Berkeley mini Math Tournament 2025"
  reference: "Handout-5091-5540.pdf, problème 5 de l'Individual Round (corrigé dans Handout-5092-5540.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5091-5540.pdf"
---

## Statement

Quatre entiers impairs consécutifs ont pour somme $-16$.

Quel est le produit de ces quatre entiers ?

## Hints

1. La somme est négative : les nombres cherchés ne sont donc pas tous positifs.
2. Si le plus petit des quatre est $x$, comment s'écrivent les trois suivants ? Attention, deux impairs consécutifs ne diffèrent pas de $1$.
3. Écris l'équation donnée par la somme, puis résous-la.

## Solution

**Étape 1. Nommer les quatre nombres.**

Deux nombres impairs qui se suivent diffèrent de $2$. Si le plus petit des quatre s'appelle $x$, les quatre nombres sont

$$x, \quad x+2, \quad x+4, \quad x+6$$

**Étape 2. Écrire et résoudre l'équation.**

Leur somme vaut $-16$ :

$$x + (x+2) + (x+4) + (x+6) = -16$$
$$4x + 12 = -16$$
$$4x = -28$$
$$x = -7$$

**Étape 3. Vérifier.**

Les quatre nombres sont $-7$, $-5$, $-3$ et $-1$. Ils sont bien impairs et consécutifs, et

$$-7 - 5 - 3 - 1 = -16$$

**Étape 4. Calculer le produit.**

$$(-7) \times (-5) \times (-3) \times (-1)$$

Il y a quatre facteurs négatifs, donc le produit est positif :

$$7 \times 5 \times 3 \times 1 = 105$$

**Réponse.** Le produit vaut $105$.

## Going further

Une autre façon de nommer les nombres consiste à les placer symétriquement autour de leur milieu : $m-3$, $m-1$, $m+1$, $m+3$. La somme vaut alors $4m$, donc $4m = -16$ et $m = -4$. On retrouve $-7$, $-5$, $-3$, $-1$, et le produit s'écrit

$$(m^2 - 9)(m^2 - 1) = (16-9)(16-1) = 7 \times 15 = 105$$

Ce choix évite les calculs et rend la somme immédiate : c'est souvent le bon réflexe quand on manipule des nombres consécutifs.
