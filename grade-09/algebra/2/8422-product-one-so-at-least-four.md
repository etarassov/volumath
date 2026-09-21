---
id: "8422"
title: "Produit égal à 1, donc au moins 4"
grade: 9
theme: algebra
difficulty: 2
duration_min: 12
tags: [inegalite, fraction, carre-positif, cas-degalite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Entraînement de mi-parcours », exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Soient $x$ et $y$ deux nombres réels strictement positifs tels que $xy = 1$. Montrer que

$$(x+1)(y+1) \geqslant 4.$$

Dans quel cas y a-t-il égalité ?

## Hints

1. Commence par développer le produit $(x+1)(y+1)$, puis utilise l'hypothèse $xy = 1$ pour simplifier.
2. Il ne te reste plus qu'à montrer que $x + y \geqslant 2$.
3. L'hypothèse $xy = 1$ signifie que $y$ est l'inverse de $x$. Remplace $y$ par $\frac{1}{x}$ et ramène tout au même dénominateur.

## Solution

**Étape 1. On développe.**

$$(x+1)(y+1) = xy + x + y + 1.$$

Comme $xy = 1$, cela vaut

$$(x+1)(y+1) = 1 + x + y + 1 = 2 + x + y.$$

Il suffit donc de montrer que $x + y \geqslant 2$.

**Étape 2. On montre que $x + y \geqslant 2$.**

De $xy = 1$ et $x > 0$ on tire $y = \dfrac{1}{x}$. Alors

$$x + y - 2 = x + \frac{1}{x} - 2 = \frac{x^2 + 1 - 2x}{x} = \frac{(x-1)^2}{x}.$$

Le numérateur est un carré, donc positif ou nul. Le dénominateur est strictement positif. Le quotient est donc positif ou nul :

$$x + y \geqslant 2.$$

**Étape 3. On conclut.**

$$(x+1)(y+1) = 2 + x + y \geqslant 2 + 2 = 4.$$

**Cas d'égalité.** L'inégalité de l'étape 2 est une égalité exactement lorsque $(x-1)^2 = 0$, c'est-à-dire $x = 1$. On a alors $y = \frac{1}{x} = 1$.

Réciproquement, pour $x = y = 1$ on trouve $(1+1)(1+1) = 4$.

L'égalité a donc lieu exactement pour $x = y = 1$.
