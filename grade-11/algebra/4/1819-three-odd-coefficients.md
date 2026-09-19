---
id: "1819"
title: "Trois coefficients impairs"
grade: 11
theme: algebra
difficulty: 4
duration_min: 30
tags: [second-degre, parite, racine-rationnelle, demonstration-par-labsurde]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Quadratic Equations IV"
  reference: "Handout-1631-1520.pdf, nouveaux problèmes, exercice 5"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1631-1520.pdf"
---

## Statement

Les trois coefficients $a$, $b$, $c$ de l'équation du second degré

$$ax^2 + bx + c = 0$$

sont des entiers **impairs**.

Démontrer que cette équation ne peut pas avoir pour racine un nombre de la forme $\dfrac{1}{n}$, où $n$ est un entier non nul.

## Hints

1. Raisonne par l'absurde : suppose que $\dfrac{1}{n}$ est racine, et écris ce que cela signifie.
2. Tu obtiens une égalité avec des fractions. Multiplie tout par $n^2$ pour n'avoir plus que des entiers.
3. Tu devrais arriver à $a + bn + cn^2 = 0$.
4. Un nombre nul est pair. Regarde donc la **parité** du membre de gauche.
5. La parité de $bn$ et de $cn^2$ dépend de $n$. Sépare deux cas : $n$ pair, puis $n$ impair.
6. Dans les deux cas, additionne les parités. Que trouves-tu ?

## Solution

**Raisonnement par l'absurde.**

Supposons qu'il existe un entier $n \neq 0$ tel que $\dfrac{1}{n}$ soit racine de l'équation. Alors

$$a \times \frac{1}{n^2} + b \times \frac{1}{n} + c = 0.$$

Multiplions les deux membres par $n^2$, qui n'est pas nul :

$$a + bn + cn^2 = 0. \qquad (\star)$$

Les trois termes sont des entiers, et leur somme est nulle, donc **paire**.

**Étude de la parité du membre de gauche.**

Rappelons les hypothèses : $a$, $b$ et $c$ sont impairs. Deux cas se présentent.

**Cas 1 : $n$ est pair.**

Alors $bn$ est pair (produit par un nombre pair) et $n^2$ est pair, donc $cn^2$ est pair. Ainsi

$$a + bn + cn^2 = \underbrace{a}_{\text{impair}} + \underbrace{bn}_{\text{pair}} + \underbrace{cn^2}_{\text{pair}}$$

est impair, comme somme d'un impair et de deux pairs.

**Cas 2 : $n$ est impair.**

Alors $n^2$ est impair. Les produits de deux impairs sont impairs, donc $bn$ est impair et $cn^2$ est impair. Ainsi

$$a + bn + cn^2 = \underbrace{a}_{\text{impair}} + \underbrace{bn}_{\text{impair}} + \underbrace{cn^2}_{\text{impair}}$$

est impair, car la somme de trois nombres impairs est impaire.

**Conclusion.**

Dans les deux cas, $a + bn + cn^2$ est impair, donc différent de $0$. Cela contredit $(\star)$.

L'hypothèse de départ est donc fausse : aucune équation du second degré à coefficients entiers tous impairs n'a de racine de la forme $\dfrac{1}{n}$ avec $n$ entier non nul.

**Exemple.** $3x^2 + 5x + 7 = 0$ n'a d'ailleurs aucune racine réelle. Mais $x^2 + 3x + 1 = 0$ en a deux, $\dfrac{-3 \pm \sqrt{5}}{2}$, et aucune n'est de la forme $\dfrac{1}{n}$ : elles ne sont même pas rationnelles.

**Remarque.** Le résultat vaut aussi pour $n = \pm 1$, c'est-à-dire que ni $1$ ni $-1$ ne peuvent être racines. On le retrouve directement : si $1$ était racine, on aurait $a+b+c=0$, or la somme de trois impairs est impaire.

## Going further

1. Démontre, avec le même raisonnement, que l'équation ne peut avoir **aucune** racine rationnelle. (Écris la racine sous la forme irréductible $\dfrac{u}{v}$ et discute la parité de $u$ et de $v$.)
2. Trouve une équation du second degré dont deux coefficients sont impairs et le troisième pair, et qui admet pourtant une racine de la forme $\dfrac{1}{n}$.
