---
id: "3410"
title: "Une équation à résoudre en nombres entiers"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [entiers, factorisation, diviseurs, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12, Week 1: Algebra"
  reference: "Handout-4100-3834.pdf, section 2.2, exercice 8, d'après AIME 1987, problème 5 (réponse dans Handout-4101-3834.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4100-3834.pdf"
---

## Statement

Les entiers relatifs $x$ et $y$ vérifient

$$y^2 + 3x^2y^2 = 30x^2 + 517.$$

Combien vaut $3x^2y^2$ ?

## Hints

1. Range tout d'un même côté : $3x^2y^2 + y^2 - 30x^2 = 517$.
2. Les deux premiers termes ont $y^2$ en facteur : $y^2(3x^2+1) - 30x^2 = 517$. Peux-tu faire apparaître $3x^2+1$ aussi dans le troisième terme ?
3. $-30x^2 = -10(3x^2+1) + 10$. Remplace, et fais passer le $10$ à droite.
4. Tu obtiens $(3x^2+1)(y^2-10) = 507$. Décompose $507$ en facteurs premiers.
5. $507 = 3 \times 13^2$. Quel est le reste de $3x^2+1$ dans la division par $3$ ? Cela élimine d'un coup la moitié des diviseurs.

## Solution

**L'idée : faire apparaître le même facteur $3x^2+1$ partout, pour transformer l'équation en un produit égal à $507$.**

**Étape 1. On regroupe.**

$$3x^2y^2 + y^2 - 30x^2 = 517.$$

Les deux premiers termes se factorisent par $y^2$ :

$$y^2\,(3x^2+1) - 30x^2 = 517.$$

**Étape 2. On fait apparaître $3x^2+1$ dans le dernier terme.**

On écrit $-30x^2 = -10\,(3x^2 + 1) + 10$. L'équation devient

$$y^2\,(3x^2+1) - 10\,(3x^2+1) + 10 = 517,$$

c'est-à-dire

$$(3x^2+1)\,(y^2 - 10) = 507.$$

**Étape 3. On décompose $507$.**

$$507 = 3 \times 169 = 3 \times 13^2.$$

Ses diviseurs positifs sont $1$, $3$, $13$, $39$, $169$ et $507$.

Comme $x$ et $y$ sont entiers, $3x^2+1$ et $y^2-10$ sont entiers, et leur produit vaut $507 > 0$. De plus $3x^2 + 1 \geqslant 1 > 0$, donc $y^2 - 10 > 0$ aussi : les deux facteurs sont des diviseurs positifs de $507$.

**Étape 4. Un argument de reste élimine la moitié des cas.**

Le nombre $3x^2 + 1$ laisse le reste $1$ dans la division par $3$. Or parmi les diviseurs de $507$, ceux qui laissent le reste $1$ dans la division par $3$ sont seulement $1$, $13$ et $169$ (les trois autres, $3$, $39$ et $507$, sont des multiples de $3$).

Il ne reste donc que trois cas.

- **$3x^2 + 1 = 1$.** Alors $x = 0$, et $y^2 - 10 = 507$, donc $y^2 = 517$. Or $22^2 = 484$ et $23^2 = 529$ : $517$ n'est pas un carré parfait. Impossible.
- **$3x^2 + 1 = 169$.** Alors $3x^2 = 168$, donc $x^2 = 56$. Or $7^2 = 49$ et $8^2 = 64$ : $56$ n'est pas un carré parfait. Impossible.
- **$3x^2 + 1 = 13$.** Alors $3x^2 = 12$, donc $x^2 = 4$ et $x = \pm 2$. Et $y^2 - 10 = 39$, donc $y^2 = 49$ et $y = \pm 7$. Cela convient.

**Étape 5. On conclut.**

Les solutions sont $x = \pm 2$ et $y = \pm 7$, en toute combinaison de signes. Dans tous les cas,

$$3x^2y^2 = 3 \times 4 \times 49 = 588.$$

**Vérification.** Avec $x = 2$ et $y = 7$ : $y^2 + 3x^2y^2 = 49 + 588 = 637$, et $30x^2 + 517 = 120 + 517 = 637$. 

**Conclusion : $3x^2y^2 = 588$.**
