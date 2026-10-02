---
id: "1207"
title: "Le reste de x²⁰²³ + 1"
grade: 12
theme: algebra
difficulty: 3
duration_min: 25
tags: [polynome, division-euclidienne, factorisation, restes, congruences]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, compétition d'automne 2023"
  reference: "Handout-4216-3990.pdf, problème 6.5 (réponse dans Handout-4217-3990.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4216-3990.pdf"
---

## Statement

Soient $Q$ et $R$ les deux polynômes, uniques, tels que

$$x^{2023} + 1 = (x^2 + x + 1)\,Q(x) + R(x)$$

avec $\deg R \leqslant 1$.

Déterminer $R$.

## Hints

1. Inutile de poser la division : $Q$ a plus de deux mille termes. Il faut trouver une astuce.
2. Le polynôme $x^2 + x + 1$ se cache dans une factorisation très connue. Développer $(x - 1)(x^2 + x + 1)$.
3. On a donc $x^3 - 1 = (x-1)(x^2+x+1)$ : tout multiple de $x^3 - 1$ est un multiple de $x^2+x+1$.
4. Rappel utile : pour tout entier $m \geqslant 1$, $a^m - 1$ est divisible par $a - 1$. L'appliquer avec $a = x^3$.
5. Que vaut $2023$ modulo $3$ ? Essayer d'écrire $x^{2023}$ comme $x \times (x^3)^{674}$.

## Solution

**L'idée : se ramener à $x^3 - 1$.**

Développons :

$$(x-1)(x^2+x+1) = x^3 + x^2 + x - x^2 - x - 1 = x^3 - 1.$$

Donc $x^2 + x + 1$ divise $x^3 - 1$. Toute quantité divisible par $x^3 - 1$ sera donc divisible par $x^2 + x + 1$ : voilà ce que nous allons exploiter.

**Découper l'exposant.**

Divisons $2023$ par $3$ :

$$2023 = 3 \times 674 + 1.$$

Donc

$$x^{2023} = x \times x^{2022} = x \times \left(x^{3}\right)^{674}.$$

**Faire apparaître un multiple de $x^3 - 1$.**

Écrivons

$$x^{2023} - x = x\left[\left(x^{3}\right)^{674} - 1\right].$$

Or, pour tout entier $m \geqslant 1$ et tout $a$, on connaît la factorisation

$$a^{m} - 1 = (a - 1)\left(a^{m-1} + a^{m-2} + \dots + a + 1\right).$$

Appliquée à $a = x^3$ et $m = 674$, elle donne

$$\left(x^{3}\right)^{674} - 1 = (x^3 - 1)\left(\left(x^{3}\right)^{673} + \left(x^{3}\right)^{672} + \dots + x^3 + 1\right).$$

Donc $x^{2023} - x$ est un multiple de $x^3 - 1$, donc un multiple de $x^2 + x + 1$ : il existe un polynôme $Q$ tel que

$$x^{2023} - x = (x^2 + x + 1)\,Q(x).$$

**Conclure.**

On peut alors écrire

$$x^{2023} + 1 = \left(x^{2023} - x\right) + (x + 1) = (x^2+x+1)\,Q(x) + (x+1).$$

Le polynôme $x + 1$ est de degré $1$, donc strictement inférieur au degré de $x^2+x+1$ : c'est bien le reste de la division euclidienne, qui est unique.

$$\boxed{R(x) = x + 1.}$$

**Vérification sur un petit cas.** Avec $2023$ remplacé par $4$ (et $4 = 3 \times 1 + 1$, même reste), la méthode prédit $R(x) = x+1$. Et en effet

$$x^4 + 1 = (x^2+x+1)(x^2 - x) + (x + 1),$$

ce qu'on vérifie en développant : $(x^2+x+1)(x^2-x) = x^4 - x$, puis $x^4 - x + x + 1 = x^4+1$. ✓

## Going further

1. Quel est le reste de la division de $x^{n} + 1$ par $x^2+x+1$ ? Il y a trois réponses possibles selon le reste de $n$ dans la division par $3$ : les trouver toutes.
2. Même question pour la division de $x^{2023} + 1$ par $x^2 + 1$.
