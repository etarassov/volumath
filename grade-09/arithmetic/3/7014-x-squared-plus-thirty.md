---
id: "7014"
title: "x² + 30 est-il un carré ?"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [difference de deux carres, parite, equation en entiers]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des débutants"
  reference: "stage_junior_2012.pdf, arithmétique après-midi (Antoine Taveneaux), exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

Trouver tous les couples d'entiers $(x, y)$ tels que
$$x^2 + 30 = y^2 .$$

## Hints

1. Fais passer $x^2$ de l'autre côté. Reconnais-tu l'expression obtenue ?
2. Tu obtiens un produit de deux entiers égal à $30$. Que peux-tu dire de la **somme** de ces
   deux entiers ?
3. Deux entiers dont la somme est paire ont la même parité. Leur produit peut-il alors valoir
   $30$ ?

## Solution

**Factorisons.** L'équation s'écrit
$$y^2 - x^2 = 30,$$
c'est-à-dire, avec l'identité remarquable,
$$(y - x)(y + x) = 30 .$$

Posons $u = y - x$ et $v = y + x$. Ce sont deux entiers de produit $30$.

**Le point clé : $u$ et $v$ ont la même parité.** En effet,
$$u + v = (y - x) + (y + x) = 2y$$
est un nombre **pair**. Or deux entiers dont la somme est paire sont soit tous les deux pairs,
soit tous les deux impairs.

**Examinons les deux cas.**

- Si $u$ et $v$ sont tous les deux **impairs**, alors leur produit $uv$ est impair. Mais
  $uv = 30$ est pair : impossible.
- Si $u$ et $v$ sont tous les deux **pairs**, alors leur produit est divisible par $4$. Mais
  $30 = 4 \times 7 + 2$ n'est pas divisible par $4$ : impossible.

**Conclusion.** Il n'y a **aucun** couple d'entiers $(x,y)$ tel que $x^2 + 30 = y^2$.

## Going further

Le même raisonnement dit exactement quels entiers $n$ sont différence de deux carrés : il faut
que $n$ soit impair, ou bien multiple de $4$. Les entiers pairs non multiples de $4$, c'est-à-dire
$2, 6, 10, 14, \ldots, 30, \ldots$, sont les seuls exclus.

Et réciproquement, ces $n$ conviennent tous :
$$2k+1 = (k+1)^2 - k^2 \qquad \text{et} \qquad 4k = (k+1)^2 - (k-1)^2 .$$
