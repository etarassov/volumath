---
id: "3203"
title: "Un produit de sept facteurs qui s'effondre"
grade: 10
theme: algebra
difficulty: 4
duration_min: 25
tags: [identites remarquables, difference de carres, puissances, telescopage]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Algebra review"
  reference: "Handout-4789-4966.pdf, section 2.2, exercice 5, d'après AMC 12A 2021, problème 9 (réponse dans Handout-4792-4966.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4789-4966.pdf"
---

## Statement

Écrire le plus simplement possible le produit

$$P = (2 + 3)\left(2^2 + 3^2\right)\left(2^4 + 3^4\right)\left(2^8 + 3^8\right)\left(2^{16} + 3^{16}\right)\left(2^{32} + 3^{32}\right)\left(2^{64} + 3^{64}\right).$$

## Hints

1. Les exposants sont $1, 2, 4, 8, 16, 32, 64$ : chacun est le double du précédent. Ce n'est pas un hasard.
2. On sait factoriser une **différence** de carrés, pas une somme. Comment faire apparaître une différence à partir de $2 + 3$ ?
3. Multiplie $P$ par $(2 - 3)$. Que devient le premier facteur ?
4. Une fois $(2-3)(2+3)$ remplacé par $2^2 - 3^2$, recommence avec le facteur suivant. Chaque étape double les exposants.
5. À la fin, n'oublie pas que tu as multiplié par $2 - 3 = -1$, donc il faut revenir en arrière.

## Solution

**L'idée : fabriquer une différence de carrés.**

On ne sait pas factoriser une somme comme $2^k + 3^k$, mais on connaît bien

$$(a - b)(a + b) = a^2 - b^2 .$$

Le produit $P$ commence par $2 + 3$. Si on le multiplie par $2 - 3$, ce premier morceau devient $2^2 - 3^2$, qui est une **différence**, et cette différence peut à son tour se marier avec le facteur suivant $2^2 + 3^2$.

**Le calcul en cascade.**

Posons

$$Q = (2 - 3) \times P .$$

Alors, en regroupant à chaque ligne les deux premiers facteurs :

$$Q = \underbrace{(2-3)(2+3)}_{2^2 - 3^2}\left(2^2 + 3^2\right)\left(2^4 + 3^4\right)\cdots\left(2^{64} + 3^{64}\right)$$

$$Q = \underbrace{\left(2^2 - 3^2\right)\left(2^2 + 3^2\right)}_{2^4 - 3^4}\left(2^4 + 3^4\right)\cdots\left(2^{64} + 3^{64}\right)$$

$$Q = \left(2^4 - 3^4\right)\left(2^4 + 3^4\right)\left(2^8 + 3^8\right)\cdots = \left(2^8 - 3^8\right)\left(2^8 + 3^8\right)\cdots$$

À chaque étape l'exposant double. En continuant ainsi :

$$Q = 2^{16} - 3^{16} \ \text{puis} \ 2^{32} - 3^{32} \ \text{puis} \ 2^{64} - 3^{64} \ \text{puis, avec le dernier facteur,}$$

$$Q = 2^{128} - 3^{128}.$$

**On revient à $P$.**

Comme $2 - 3 = -1$, on a $Q = -P$, donc

$$P = -\left( 2^{128} - 3^{128} \right) = 3^{128} - 2^{128}.$$

**Conclusion.**

$$(2 + 3)\left(2^2 + 3^2\right)\left(2^4 + 3^4\right)\cdots\left(2^{64} + 3^{64}\right) = 3^{128} - 2^{128}.$$

Un produit de sept facteurs énormes se réduit donc à une simple différence de deux puissances.

## Going further

1. Tester la méthode sur un cas minuscule : vérifier à la main que $(2+3)(2^2+3^2) = 3^4 - 2^4$.
2. Que vaut $(x + y)(x^2 + y^2)(x^4 + y^4)(x^8 + y^8)$ quand $x \ne y$ ? Écrire le résultat sous forme de fraction.
3. Pourquoi la méthode échouerait-elle si les exposants étaient $1, 2, 3, 4, 5, 6, 7$ au lieu de $1, 2, 4, 8, 16, 32, 64$ ?
