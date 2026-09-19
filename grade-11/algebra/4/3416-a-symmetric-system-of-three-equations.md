---
id: "3416"
title: "Un système symétrique à trois inconnues"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [systemes, symetrie, factorisation, disjonction de cas, second degre]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12, Algebra (ORMC AMC Packet 2)"
  reference: "Handout-5118-5603.pdf, problème 13, d'après AIME II 2023, problème 4 (réponse dans Handout-5124-5603.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5118-5603.pdf"
---

## Statement

Les réels $x$, $y$ et $z$ vérifient

$$xy + 4z = 60, \qquad yz + 4x = 60, \qquad zx + 4y = 60.$$

Trouve toutes les valeurs que peut prendre $x$, puis calcule la somme de leurs carrés.

## Hints

1. Les trois équations se déduisent l'une de l'autre en faisant tourner les lettres $x \to y \to z \to x$. Retiens cette symétrie : elle servira à la fin.
2. Soustrais deux des équations. Par exemple la première moins la deuxième : $xy + 4z - yz - 4x = 0$. Factorise.
3. Tu obtiens $(x-z)(y-4) = 0$. Un produit est nul quand l'un de ses facteurs l'est : deux cas.
4. Dans le cas $y = 4$, le système devient linéaire en $x$ et $z$ pour deux des équations, et donne $x + z$ et $xz$.
5. Dans le cas $x = z$, recommence la même manœuvre avec deux autres équations.

## Solution

**L'idée : soustraire deux équations fait apparaître un produit nul, ce qui coupe le problème en deux cas simples.**

**Étape 1. La première factorisation.**

Soustrayons la deuxième équation de la première :

$$xy + 4z - yz - 4x = 0.$$

Regroupons : $xy - yz = y(x-z)$ et $4z - 4x = -4(x-z)$. Donc

$$y(x-z) - 4(x-z) = 0, \qquad \text{c'est-à-dire} \qquad (x-z)(y-4) = 0.$$

Deux cas se présentent : $y = 4$, ou bien $x = z$.

**Étape 2. Premier cas : $y = 4$.**

La première équation devient $4x + 4z = 60$, donc

$$x + z = 15.$$

La troisième équation devient $zx + 16 = 60$, donc

$$xz = 44.$$

(La deuxième équation donne $4z + 4x = 60$, la même chose que la première : rien de neuf.)

Connaissant la somme et le produit, $x$ et $z$ sont les racines de

$$t^2 - 15t + 44 = 0,$$

dont le discriminant vaut $225 - 176 = 49$, et les racines $t = \dfrac{15 \pm 7}{2}$, soit $t = 11$ et $t = 4$.

On obtient deux triplets : $(x, y, z) = (4, 4, 11)$ et $(x, y, z) = (11, 4, 4)$.

**Étape 3. Second cas : $x = z$.**

La première équation devient $xy + 4x = 60$, et la troisième devient $x^2 + 4y = 60$. Soustrayons-les :

$$xy + 4x - x^2 - 4y = 0.$$

Regroupons : $xy - 4y = y(x-4)$ et $4x - x^2 = -x(x-4)$. Donc

$$(x-4)(y-x) = 0.$$

- **Si $x = 4$** : la première équation donne $4y + 16 = 60$, donc $y = 11$. Le triplet est $(4, 11, 4)$.
- **Si $y = x$** : alors $x = y = z$, et la première équation devient $x^2 + 4x = 60$, c'est-à-dire $x^2 + 4x - 60 = 0$. Son discriminant vaut $16 + 240 = 256 = 16^2$, et les racines sont $x = \dfrac{-4 \pm 16}{2}$, soit $x = 6$ et $x = -10$. Cela donne les triplets $(6,6,6)$ et $(-10,-10,-10)$.

**Étape 4. Bilan.**

Les solutions du système sont

$$(4,4,11), \quad (11,4,4), \quad (4,11,4), \quad (6,6,6), \quad (-10,-10,-10).$$

On vérifie par exemple $(4,4,11)$ : $xy + 4z = 16 + 44 = 60$, $yz + 4x = 44 + 16 = 60$, $zx + 4y = 44 + 16 = 60$. C'est bon.

Les valeurs possibles de $x$ sont donc

$$4, \quad 11, \quad 6, \quad -10,$$

et la somme de leurs carrés vaut

$$4^2 + 11^2 + 6^2 + (-10)^2 = 16 + 121 + 36 + 100 = 273.$$

**Conclusion : la somme des carrés des valeurs possibles de $x$ vaut $273$.**

## Going further

La symétrie du système permet de contrôler le résultat sans refaire les calculs : si $(x,y,z)$ est solution, alors $(y,z,x)$ et $(z,x,y)$ le sont aussi. L'ensemble des valeurs prises par $x$ est donc le même que celui des valeurs prises par $y$, ou par $z$. C'est bien ce qu'on observe : $\{4, 11, 6, -10\}$ dans les trois cas.
