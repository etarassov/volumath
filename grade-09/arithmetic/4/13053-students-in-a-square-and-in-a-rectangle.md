---
id: "13053"
title: "Des élèves en carré et en rectangle"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [equation-en-entiers, difference-de-deux-carres, diviseurs, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, test de rentrée (Coupe Animath d'automne) du 7 octobre 2015"
  reference: "2017-09_coupe_automne_2015.pdf, exercices lycée, exercice 6 ; corrigé 2017-09_coupe_automne_2015_corrige.pdf (dans le corrigé, « 2b = u − 2b − 7 » doit se lire 2b = u − 2a − 7, et « 4b = u − v = 68 » doit se lire 4a = u − v = 68)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015.pdf"
---

## Statement

Des élèves passent une épreuve de mathématiques, chacun à sa table.

- Si l'on dispose les tables en carré (autant de rangées que de colonnes), il manque des places pour $5$ élèves.
- Si l'on dispose les tables en rectangle, avec $7$ rangées de plus que de colonnes, tous les élèves ont une place et il n'y a aucune table vide.

Quel est le plus grand nombre d'élèves possible ?

## Hints

1. Note $n$ le nombre d'élèves, $a$ le nombre de colonnes du carré et $b$ le nombre de colonnes du rectangle. Écris deux expressions de $n$.
2. Tu obtiens $a^2 + 5 = b^2 + 7b$. Pour faire apparaître des carrés, multiplie par $4$ et reconnais le début de $(2b + 7)^2$.
3. Une différence de deux carrés se factorise. Le produit obtenu vaut un nombre fixe : quels sont ses diviseurs ?

## Solution

**La mise en équation.** Notons $n$ le nombre d'élèves, $a$ le nombre de colonnes du carré et $b$ le nombre de colonnes du rectangle, qui a donc $b + 7$ rangées. On a
$$n = a^2 + 5 \qquad \text{et} \qquad n = b\,(b + 7) = b^2 + 7b,$$
avec $a$ et $b$ des entiers strictement positifs.

**On fait apparaître deux carrés.** De $a^2 + 5 = b^2 + 7b$ on tire, en multipliant par $4$,
$$4a^2 + 20 = 4b^2 + 28b .$$
Or $(2b + 7)^2 = 4b^2 + 28b + 49$, donc $4b^2 + 28b = (2b + 7)^2 - 49$, et
$$(2a)^2 + 20 = (2b + 7)^2 - 49, \qquad \text{soit} \qquad (2b + 7)^2 - (2a)^2 = 69 .$$

**On factorise.** Avec l'identité $X^2 - Y^2 = (X - Y)(X + Y)$ :
$$(2b + 7 - 2a)\,(2b + 7 + 2a) = 69 .$$
Notons $u = 2b + 7 + 2a$ et $v = 2b + 7 - 2a$. Ce sont des entiers, $u$ est positif, et $uv = 69$ est positif, donc $v$ est positif aussi. De plus $u > v$ car $a > 0$.

**Les diviseurs de $69$.** On a $69 = 3 \times 23$, donc les couples possibles sont $(u, v) = (69, 1)$ ou $(23, 3)$. Dans les deux cas, $u - v = 4a$ et $u + v = 2\,(2b + 7)$.

- Si $u = 69$ et $v = 1$ : $4a = 68$, donc $a = 17$ ; et $2b + 7 = 35$, donc $b = 14$. On trouve $n = 17^2 + 5 = 294$, et bien $14 \times 21 = 294$.
- Si $u = 23$ et $v = 3$ : $4a = 20$, donc $a = 5$ ; et $2b + 7 = 13$, donc $b = 3$. On trouve $n = 5^2 + 5 = 30$, et bien $3 \times 10 = 30$.

**Conclusion.** Il y a exactement deux nombres d'élèves possibles, $30$ et $294$. Le plus grand est $294$ : $17$ rangées de $17$ tables laissent $5$ élèves debout, et $14$ colonnes de $21$ tables donnent exactement $294$ places.

## Going further

1. Même question si, dans la disposition en carré, il manque des places pour $6$ élèves au lieu de $5$.
2. Pourquoi y a-t-il toujours un nombre fini de solutions, quel que soit le nombre d'élèves sans place ?
