---
id: "4010"
title: "Combien de solutions pour (x² − 5)² = 16 ?"
grade: 9
theme: algebra
difficulty: 2
duration_min: 15
tags: [equation, racine-carree, carre]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 2A, Week 1 Competition"
  reference: "Handout-3131-2694.pdf, problème 6 (réponse 4 dans le barème en fin de fichier)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3131-2694.pdf"
---

## Statement

Combien de nombres réels $x$ vérifient l'équation

$$(x^2 - 5)^2 = 16 \ ?$$

Les déterminer tous.

## Hints

1. Ne développe pas ! Pose $y = x^2 - 5$ : l'équation devient $y^2 = 16$.
2. Un carré vaut $16$ pour deux valeurs, pas une seule.
3. Pour chacune des deux valeurs de $y$, reviens à $x^2$ et compte les solutions. Attention : $x^2 = a$ n'a pas toujours deux solutions.

## Solution

**Étape 1. Se ramener à une équation simple.**

Posons $y = x^2 - 5$. L'équation s'écrit $y^2 = 16$, ce qui donne deux possibilités :

$$y = 4 \qquad \text{ou} \qquad y = -4.$$

**Étape 2. Revenir à $x$.**

*Premier cas : $x^2 - 5 = 4$.* Alors $x^2 = 9$, donc $x = 3$ ou $x = -3$.

*Second cas : $x^2 - 5 = -4$.* Alors $x^2 = 1$, donc $x = 1$ ou $x = -1$.

**Étape 3. Compter.**

Les quatre valeurs $-3$, $-1$, $1$ et $3$ sont bien distinctes, et on vérifie qu'elles
conviennent toutes :

$$(9-5)^2 = 4^2 = 16 \qquad \text{et} \qquad (1-5)^2 = (-4)^2 = 16.$$

**Réponse : il y a $4$ solutions réelles, qui sont $-3$, $-1$, $1$ et $3$.**

## Going further

Beaucoup d'élèves n'en trouvent que deux, en oubliant le cas $y = -4$. Une façon de ne rien
perdre est de tout ramener à zéro et de factoriser :
$$(x^2-5)^2 - 16 = (x^2 - 5 - 4)(x^2 - 5 + 4) = (x^2 - 9)(x^2 - 1),$$
puis $(x-3)(x+3)(x-1)(x+1) = 0$. Les quatre facteurs sautent alors aux yeux.
