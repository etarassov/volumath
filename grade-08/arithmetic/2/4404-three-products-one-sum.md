---
id: "4404"
title: "Trois produits, une somme"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [produit, diviseurs, entiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Math Kangaroo"
  reference: "Handout-678-781.pdf, problème 14 (réponse dans Handout-679-781.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-678-781.pdf"
---

## Statement

Trois entiers strictement positifs $x$, $y$ et $z$ vérifient

$$x \times y = 14, \qquad y \times z = 10, \qquad x \times z = 35.$$

Combien vaut $x + y + z$ ?

## Hints

1. Le nombre $y$ apparaît dans deux des trois égalités. Que peut-on en dire ?
2. $y$ divise $14$ et $y$ divise $10$. Quelles sont les valeurs possibles ?
3. Teste-les : une seule des deux donne trois entiers qui vérifient aussi la troisième égalité.

## Solution

**Les valeurs possibles de $y$.** Comme $x \times y = 14$, le nombre $y$ est un diviseur de $14$.
Comme $y \times z = 10$, c'est aussi un diviseur de $10$. Les diviseurs communs à $14$ et $10$
sont $1$ et $2$.

**Le cas $y = 1$.** On aurait alors $x = 14$ et $z = 10$, donc $x \times z = 140$. Or on veut
$x \times z = 35$. Ce cas est impossible.

**Le cas $y = 2$.** On a alors $x = 14 \div 2 = 7$ et $z = 10 \div 2 = 5$. Vérifions la
troisième égalité : $x \times z = 7 \times 5 = 35$. C'est bien cela.

Donc $x = 7$, $y = 2$, $z = 5$, et

$$x + y + z = 7 + 2 + 5 = 14.$$

**La somme vaut $14$.**

## Going further

Il y a un raccourci élégant. En multipliant les trois égalités entre elles :

$$(x \times y) \times (y \times z) \times (x \times z) = 14 \times 10 \times 35 = 4900,$$

c'est-à-dire $(xyz)^2 = 4900$, donc $xyz = 70$ (les nombres sont positifs). Il ne reste plus qu'à
diviser : $z = 70 \div 14 = 5$, $x = 70 \div 10 = 7$, $y = 70 \div 35 = 2$.
