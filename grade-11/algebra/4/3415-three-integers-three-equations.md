---
id: "3415"
title: "Trois entiers, trois équations"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [systemes, entiers relatifs, factorisation, nombres premiers]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12, Algebra (ORMC AMC Packet 2)"
  reference: "Handout-5118-5603.pdf, problème 12, d'après AMC 10A 2024, problème 23 (réponse dans Handout-5124-5603.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5118-5603.pdf"
---

## Statement

Les entiers relatifs $a$, $b$ et $c$ vérifient

$$ab + c = 100, \qquad bc + a = 87, \qquad ca + b = 60.$$

Combien vaut $ab + bc + ca$ ?

## Hints

1. Un système non linéaire à trois inconnues : il n'y a pas de méthode automatique. Cherche plutôt à combiner deux équations pour faire apparaître une factorisation.
2. Soustrais la deuxième équation de la première. Regroupe les termes en $a$ et en $c$.
3. Tu obtiens $ab + c - bc - a = 13$, qui se factorise en $(a-c)(b-1) = 13$.
4. $13$ est premier. Combien de façons y a-t-il d'écrire $13$ comme produit de deux entiers relatifs ?
5. Quatre cas seulement. Dans chacun, $b$ est connu et il reste un petit système linéaire.

## Solution

**L'idée : la différence de deux équations se factorise, et $13$ est premier, ce qui ne laisse que quatre cas.**

**Étape 1. On soustrait.**

$$\underbrace{ab + c}_{100} - \underbrace{(bc + a)}_{87} = 13,$$

donc

$$ab + c - bc - a = 13.$$

Regroupons : $ab - bc = b(a-c)$ et $c - a = -(a-c)$. Il vient

$$b(a-c) - (a-c) = 13, \qquad \text{c'est-à-dire} \qquad (a-c)(b-1) = 13.$$

**Étape 2. Quatre cas.**

$13$ est premier, donc les façons de l'écrire comme produit de deux entiers relatifs sont

$$1 \times 13, \quad 13 \times 1, \quad (-1) \times (-13), \quad (-13) \times (-1).$$

**Cas A : $b - 1 = 13$, donc $b = 14$ et $a - c = 1$.**
La première équation donne $14a + c = 100$, et $a = c+1$, donc $14(c+1) + c = 100$, soit $15c = 86$. Ce n'est pas un entier : impossible.

**Cas B : $b - 1 = 1$, donc $b = 2$ et $a - c = 13$.**
La première équation donne $2a + c = 100$, et $a = c+13$, donc $2(c+13) + c = 100$, soit $3c = 74$. Impossible.

**Cas C : $b - 1 = -1$, donc $b = 0$ et $a - c = -13$.**
La première équation donne $c = 100$, et la deuxième donne $a = 87$. Mais alors $a - c = -13$, ce qui est cohérent. Vérifions la troisième : $ca + b = 100 \times 87 + 0 = 8700 \neq 60$. Impossible.

**Cas D : $b - 1 = -13$, donc $b = -12$ et $a - c = -1$.**
La première équation donne $-12a + c = 100$, et $c = a+1$, donc $-12a + a + 1 = 100$, soit $-11a = 99$ et $a = -9$. Alors $c = -8$.

Vérifions les deux autres équations :
$$bc + a = (-12)\times(-8) + (-9) = 96 - 9 = 87 \quad \checkmark$$
$$ca + b = (-8)\times(-9) + (-12) = 72 - 12 = 60 \quad \checkmark$$

**Étape 3. On conclut.**

La seule solution est $(a, b, c) = (-9,\, -12,\, -8)$, et

$$ab + bc + ca = 108 + 96 + 72 = 276.$$

**Conclusion : $ab + bc + ca = 276$.**
