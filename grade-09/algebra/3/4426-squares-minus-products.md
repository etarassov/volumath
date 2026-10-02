---
id: "4426"
title: "Des carrés moins des produits"
grade: 9
theme: algebra
difficulty: 3
duration_min: 25
tags: [identites-remarquables, somme, difference-de-carres]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Math Kangaroo"
  reference: "Handout-678-781.pdf, problème 21 (réponse dans Handout-679-781.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-678-781.pdf"
---

## Statement

Calculer

$$(1^2 + 2^2 + 3^2 + \cdots + 2014^2) - (1 \times 3 + 2 \times 4 + 3 \times 5 + \cdots + 2013 \times 2015).$$

## Hints

1. Il n'est pas question de calculer les deux sommes séparément : elles sont énormes. Cherche
   plutôt à apparier les termes.
2. Dans la seconde parenthèse, le terme $1 \times 3$ ressemble à $2^2$, le terme $2 \times 4$
   ressemble à $3^2$… Écris $k \times (k+2)$ autrement.
3. Une identité remarquable : $(a - 1)(a + 1) = a^2 - 1$. Applique-la à chaque terme de la
   seconde parenthèse.

## Solution

**On réécrit la seconde somme.** Son terme général est de la forme $k \times (k + 2)$, avec $k$
allant de $1$ à $2013$. Posons $a = k + 1$ : le terme s'écrit alors $(a - 1)(a + 1)$, et
l'identité remarquable donne

$$(a - 1)(a + 1) = a^2 - 1.$$

Quand $k$ va de $1$ à $2013$, le nombre $a = k + 1$ va de $2$ à $2014$. La seconde somme vaut
donc

$$1 \times 3 + 2 \times 4 + \cdots + 2013 \times 2015 = (2^2 - 1) + (3^2 - 1) + \cdots + (2014^2 - 1).$$

**On soustrait.** La différence demandée s'écrit alors

$$(1^2 + 2^2 + \cdots + 2014^2) - \left[(2^2 - 1) + (3^2 - 1) + \cdots + (2014^2 - 1)\right].$$

Les carrés $2^2, 3^2, \ldots, 2014^2$ apparaissent dans les deux sommes et se simplifient. Il
reste :

- le terme $1^2 = 1$, présent seulement dans la première somme ;
- les $-1$ de la seconde somme, qu'on soustrait, et qui donnent donc $+1$ chacun.

Combien y a-t-il de $-1$ ? Autant que de termes dans la seconde somme, c'est-à-dire
$2014 - 2 + 1 = 2013$.

**Le résultat.**

$$1 + 2013 = 2014.$$

**La différence vaut $2014$.**

## Going further

On peut vérifier l'idée sur un petit cas, ce qui est toujours une bonne habitude. Avec $4$ au
lieu de $2014$ :

$$(1^2 + 2^2 + 3^2 + 4^2) - (1 \times 3 + 2 \times 4 + 3 \times 5) = 30 - (3 + 8 + 15) = 30 - 26 = 4.$$

On retrouve bien le dernier entier de la première somme.
