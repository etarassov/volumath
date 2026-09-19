---
id: "3219"
title: "Un reste avec des puissances de deux gigantesques"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [division euclidienne, reste, identites remarquables, difference de carres, puissances]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Number theory review"
  reference: "Handout-4813-5008.pdf, exercice 16, d'après AMC 10B 2020, problème 22 (réponse dans Handout-4815-5008.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4813-5008.pdf"
---

## Statement

Quel est le reste de la division euclidienne de

$$2^{202} + 202$$

par

$$2^{101} + 2^{51} + 1 \ ?$$

## Hints

1. Aucun de ces nombres n'est calculable à la main. Il faut trouver une factorisation.
2. Le diviseur ressemble à un carré presque parfait. Développe $\left( 2^{101} + 1 \right)^2$ : que trouves-tu ?
3. Tu obtiens $\left( 2^{101}+1 \right)^2 = 2^{202} + 2^{102} + 1$. Or $2^{102}$ est le carré de quoi ?
4. Applique alors l'identité $X^2 - Y^2 = (X-Y)(X+Y)$ avec $X = 2^{101}+1$ et $Y = 2^{51}$.
5. Une fois le produit obtenu, il ne reste qu'à vérifier que ce qui dépasse est bien plus petit que le diviseur.

## Solution

Notons

$$A = 2^{101} + 2^{51} + 1 \qquad \text{(le diviseur)} .$$

**Repérer un carré.**

$$\left( 2^{101} + 1 \right)^2 = 2^{202} + 2 \times 2^{101} + 1 = 2^{202} + 2^{102} + 1 .$$

Le terme du milieu, $2^{102}$, est un carré :

$$2^{102} = \left( 2^{51} \right)^2 .$$

**La différence de deux carrés.**

Posons $X = 2^{101} + 1$ et $Y = 2^{51}$. Alors

$$X^2 - Y^2 = \left( 2^{202} + 2^{102} + 1 \right) - 2^{102} = 2^{202} + 1 .$$

Et par l'identité $X^2 - Y^2 = (X - Y)(X + Y)$ :

$$2^{202} + 1 = \left( 2^{101} - 2^{51} + 1 \right)\left( 2^{101} + 2^{51} + 1 \right) = B \times A,$$

où l'on a posé $B = 2^{101} - 2^{51} + 1$. Remarquons que $B$ est un entier strictement positif, puisque $2^{101} > 2^{51}$.

**La division euclidienne.**

$$2^{202} + 202 = \left( 2^{202} + 1 \right) + 201 = A \times B + 201 .$$

C'est exactement la forme « dividende $=$ diviseur $\times$ quotient $+$ reste », à condition que $201$ soit un reste valable, c'est-à-dire que

$$0 \le 201 < A .$$

C'est évident : $A = 2^{101} + 2^{51} + 1$ est un nombre de trente et un chiffres, bien plus grand que $201$.

**Conclusion.** Le reste de la division de $2^{202} + 202$ par $2^{101} + 2^{51} + 1$ vaut

$$201 .$$

## Going further

1. Vérifier l'identité sur un petit modèle : montrer que $2^{10} + 1 = \left( 2^{5} - 2^{3} + 1 \right)\left( 2^{5} + 2^{3} + 1 \right)$, puis le vérifier numériquement.
2. Généraliser : pour quels entiers $k$ a-t-on $4^{2k+1} + 1 = \left( 2^{2k+1} - 2^{k+1} + 1 \right)\left( 2^{2k+1} + 2^{k+1} + 1 \right)$ ? (C'est l'identité de Sophie Germain déguisée.)
3. Quel est le reste de $2^{202} + 202$ par $2^{101} - 2^{51} + 1$ ?
