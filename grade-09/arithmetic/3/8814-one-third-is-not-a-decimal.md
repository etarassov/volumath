---
id: "8814"
title: "Un tiers n'est pas un nombre décimal"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [nombre-decimal, divisibilite, critere-par-3, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Algèbre : Découverte » (Melvil), exercice 5, p. 48"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Un **nombre décimal** est un nombre qui peut s'écrire avec un nombre fini de chiffres après la virgule. Autrement dit, c'est un nombre de la forme
$$\frac{a}{10^{\,b}}$$
où $a$ est un entier relatif et $b$ un entier naturel. Par exemple $\text{2,75} = \dfrac{275}{10^2}$ est décimal, et $7 = \dfrac{7}{10^0}$ aussi.

Montrer que $\dfrac{1}{3}$ **n'est pas** un nombre décimal.

Attention : constater que la division de $1$ par $3$ « ne s'arrête jamais » sur une calculatrice n'est pas une démonstration. On demande une preuve.

## Hints

1. Raisonne par l'absurde : suppose que $\dfrac{1}{3}$ s'écrive $\dfrac{a}{10^b}$, et débarrasse-toi des fractions en multipliant en croix.
2. Tu obtiens une égalité qui dit qu'un certain nombre est un multiple de $3$. Lequel ?
3. Rappelle-toi le critère de divisibilité par $3$ : un entier est divisible par $3$ si et seulement si la somme de ses chiffres l'est. Quels sont les chiffres de $10^b$ ?

## Solution

Raisonnons par l'absurde et supposons que $\dfrac{1}{3}$ soit un nombre décimal. Il existe alors un entier relatif $a$ et un entier naturel $b$ tels que
$$\frac{1}{3} = \frac{a}{10^{\,b}} .$$

Multiplions les deux membres par $3 \times 10^{\,b}$, qui n'est pas nul :
$$10^{\,b} = 3a .$$

Cette égalité dit que $10^{\,b}$ est un multiple de $3$.

Or, d'après le critère de divisibilité par $3$, un entier est divisible par $3$ si et seulement si la somme de ses chiffres l'est. Et l'écriture décimale de $10^{\,b}$ est
$$1\underbrace{00\cdots0}_{b \text{ zéros}} ,$$
donc la somme de ses chiffres vaut $1$. Comme $1$ n'est pas divisible par $3$, le nombre $10^{\,b}$ ne l'est pas non plus.

Nous avons donc à la fois « $10^{\,b}$ est un multiple de $3$ » et « $10^{\,b}$ n'est pas un multiple de $3$ » : c'est impossible.

L'hypothèse de départ était donc fausse : **$\dfrac{1}{3}$ n'est pas un nombre décimal.**

### Une variante du même argument

On peut aussi éviter le critère de divisibilité. Le nombre $10^{\,b}$ est un produit de facteurs tous égaux à $2$ ou à $5$ :
$$10^{\,b} = 2^{\,b} \times 5^{\,b}.$$
Sa décomposition en facteurs premiers ne contient donc aucun $3$. Comme cette décomposition est unique, $3$ ne peut pas diviser $10^{\,b}$.

Cette seconde version a un avantage : elle se recopie telle quelle pour d'autres fractions.

## Going further

1. Montrer de la même façon que $\dfrac{1}{7}$ n'est pas décimal.
2. Soit $n$ un entier strictement positif. À quelle condition sur $n$ le nombre $\dfrac{1}{n}$ est-il décimal ? (Réponse attendue : une condition sur les facteurs premiers de $n$.)
