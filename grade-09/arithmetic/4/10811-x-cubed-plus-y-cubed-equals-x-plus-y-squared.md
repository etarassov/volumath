---
id: "10811"
title: "x³ + y³ = (x + y)² en nombres entiers"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [equation, factorisation, somme-de-carres, entiers-relatifs, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 4 (arithmétique)"
  reference: "2017-10_ofm-2013-2014-envoi-4.pdf, Exercices du groupe B, exercice 3 ; corrigé 2017-10_ofm-2013-2014-envoi-4-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-4.pdf"
---

## Statement

Trouver tous les couples d'entiers relatifs $(x, y)$ tels que

$$x^3 + y^3 = (x + y)^2 .$$

## Hints

1. Commence par un cas facile : que se passe-t-il quand $y = -x$ ?
2. Vérifie en développant que $x^3 + y^3 = (x + y)(x^2 - xy + y^2)$. Quand $x + y \neq 0$, on peut alors diviser les deux membres de l'équation par $x + y$.
3. Il reste $x^2 - xy + y^2 = x + y$. Multiplie par $2$ et essaie de faire apparaître trois carrés : $(x - 1)^2$, $(y - 1)^2$ et $(x - y)^2$.
4. Si trois carrés d'entiers ont pour somme $2$, que valent-ils ?

## Solution

**Réponse : tous les couples $(x, -x)$, où $x$ est un entier relatif quelconque, et les cinq couples $(1, 0)$, $(0, 1)$, $(1, 2)$, $(2, 1)$ et $(2, 2)$.**

### Étape 1 : factoriser

En développant, on trouve
$$(x + y)(x^2 - xy + y^2) = x^3 - x^2 y + x y^2 + x^2 y - x y^2 + y^3 = x^3 + y^3 .$$
L'équation s'écrit donc
$$(x + y)(x^2 - xy + y^2) = (x + y)^2 .$$

### Étape 2 : le cas $x + y = 0$

Si $y = -x$, les deux membres valent $0$. **Tous les couples $(x, -x)$ sont solutions**, par exemple $(0, 0)$, $(3, -3)$ ou $(-5, 5)$.

### Étape 3 : le cas $x + y \neq 0$

On peut diviser les deux membres par $x + y$. L'équation devient
$$x^2 - xy + y^2 = x + y .$$

Multiplions par $2$ et passons tout à gauche :
$$2x^2 - 2xy + 2y^2 - 2x - 2y = 0 .$$
Or, en développant,
$$(x - 1)^2 + (y - 1)^2 + (x - y)^2 = (x^2 - 2x + 1) + (y^2 - 2y + 1) + (x^2 - 2xy + y^2),$$
c'est-à-dire
$$(x - 1)^2 + (y - 1)^2 + (x - y)^2 = 2x^2 - 2xy + 2y^2 - 2x - 2y + 2 .$$
L'équation est donc équivalente à
$$(x - 1)^2 + (y - 1)^2 + (x - y)^2 = 2 .$$

On a trois carrés d'entiers dont la somme vaut $2$. Chacun vaut au plus $2$, donc vaut $0$ ou $1$ (le carré suivant est $4$). Pour que la somme fasse $2$, **deux des carrés valent $1$ et le troisième vaut $0$.** On regarde lequel est nul.

- **Si $x - y = 0$**, alors $x = y$ et $2(x - 1)^2 = 2$, donc $x - 1 = 1$ ou $x - 1 = -1$. On trouve $(2, 2)$ et $(0, 0)$. Mais $(0, 0)$ ne vérifie pas $x + y \neq 0$ : il fait déjà partie de l'étape 2. Il reste $(2, 2)$.
- **Si $x - 1 = 0$**, alors $x = 1$, et les deux autres carrés valent $(y - 1)^2$ et $(1 - y)^2$, qui sont égaux. Donc $(y - 1)^2 = 1$, et $y = 0$ ou $y = 2$. On trouve $(1, 0)$ et $(1, 2)$.
- **Si $y - 1 = 0$**, de la même façon, $x = 0$ ou $x = 2$. On trouve $(0, 1)$ et $(2, 1)$.

### Vérification

$$(1, 0) : \ 1 + 0 = 1 = 1^2, \qquad (1, 2) : \ 1 + 8 = 9 = 3^2, \qquad (2, 2) : \ 8 + 8 = 16 = 4^2 .$$
Les couples $(0, 1)$ et $(2, 1)$ s'obtiennent en échangeant $x$ et $y$, ce qui ne change pas l'équation.

### Conclusion

Les solutions sont **tous les couples $(x, -x)$, avec $x$ entier relatif, et les couples $(1, 0)$, $(0, 1)$, $(1, 2)$, $(2, 1)$, $(2, 2)$.**

## Going further

1. Résous de la même façon $x^3 - y^3 = (x - y)^2$. Quel changement d'inconnue ramène cette équation à celle de l'exercice ?
2. Trouve tous les couples d'entiers relatifs $(x, y)$ tels que $x^2 + xy + y^2 = x + y$. *Indication : multiplie encore par $2$, et fais apparaître $(x + y)^2$, $(x - 1)^2$ et $(y - 1)^2$.*
