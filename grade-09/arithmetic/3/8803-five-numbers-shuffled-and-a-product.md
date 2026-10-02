---
id: "8803"
title: "Cinq nombres mélangés et un produit pair"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [parite, somme, raisonnement-par-labsurde, permutations]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, Coupe Animath de printemps 2025 (dans le polycopié du stage olympique de Valbonne 2025)"
  reference: "Poly-2025-compresse.pdf, chapitre II « Coupe Animath de printemps 2025 », exercice 4 (collégiens), p. 22"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Jeanne écrit cinq entiers strictement positifs, tous différents :
$$a_1, \; a_2, \; a_3, \; a_4, \; a_5 .$$

Paul reprend **les mêmes cinq entiers**, mais les écrit dans l'ordre qu'il veut (peut-être le même ordre, peut-être un autre) :
$$b_1, \; b_2, \; b_3, \; b_4, \; b_5 .$$

Montrer que le produit
$$(a_1 - b_1)(a_2 - b_2)(a_3 - b_3)(a_4 - b_4)(a_5 - b_5)$$
est toujours pair.

## Hints

1. Un produit d'entiers est pair dès qu'**un seul** de ses facteurs est pair. Il suffit donc de trouver un indice $i$ pour lequel $a_i - b_i$ est pair.
2. Essaie le raisonnement par l'absurde : suppose que le produit est impair. Que peux-tu dire alors de chacun des cinq facteurs ?
3. Si les cinq facteurs sont impairs, que vaut leur **somme** ? Une somme de cinq nombres impairs est-elle paire ou impaire ?
4. Calcule maintenant cette somme autrement : regroupe tous les $a$ d'un côté et tous les $b$ de l'autre. Que reste-t-il ?

## Solution

**L'idée.** Un produit d'entiers est impair seulement si tous ses facteurs sont impairs. On va montrer que c'est impossible ici.

### La preuve

Raisonnons par l'absurde et supposons que le produit
$$(a_1 - b_1)(a_2 - b_2)(a_3 - b_3)(a_4 - b_4)(a_5 - b_5)$$
soit **impair**.

Si l'un des facteurs était pair, tout le produit serait pair. Donc les cinq facteurs
$$a_1 - b_1, \quad a_2 - b_2, \quad a_3 - b_3, \quad a_4 - b_4, \quad a_5 - b_5$$
sont tous impairs.

**Additionnons-les.** Une somme de deux nombres impairs est paire, donc une somme de cinq nombres impairs est impaire : en effet $5 = 2 + 2 + 1$, les deux premières paires donnent des nombres pairs et il reste un impair. Notre somme est donc un entier **impair**.

**Mais calculons cette somme autrement.** En regroupant les termes,
$$(a_1 - b_1) + (a_2 - b_2) + (a_3 - b_3) + (a_4 - b_4) + (a_5 - b_5) = (a_1 + a_2 + a_3 + a_4 + a_5) - (b_1 + b_2 + b_3 + b_4 + b_5).$$

Or Paul a repris exactement les mêmes cinq nombres que Jeanne, seulement rangés autrement. Une somme ne dépend pas de l'ordre des termes, donc les deux parenthèses sont égales, et la somme vaut
$$0 .$$

On aurait donc $0$ impair, ce qui est faux. La supposition de départ est donc impossible : **le produit est pair**.

### Une deuxième preuve, sans l'absurde

Comptons les nombres pairs parmi $a_1, \dots, a_5$. Comme il y en a cinq en tout, il ne peut pas y avoir autant de pairs que d'impairs. Deux cas.

- **S'il y a au moins trois nombres pairs.** Alors, puisque les $b_i$ sont les mêmes nombres, il y a aussi au moins trois $b_i$ pairs. Cela fait au moins $3 + 3 = 6$ nombres pairs répartis sur seulement $5$ indices. Il existe donc un indice $i$ pour lequel $a_i$ **et** $b_i$ sont pairs. La différence $a_i - b_i$ est alors paire, et le produit aussi.
- **S'il y a au moins trois nombres impairs.** Le même comptage donne un indice $i$ pour lequel $a_i$ et $b_i$ sont tous deux impairs. Leur différence est paire, et le produit aussi.

Dans les deux cas le produit est pair.

**Conclusion.** Quel que soit l'ordre choisi par Paul, le produit est toujours pair.

## Going further

Le même énoncé avec $n$ nombres au lieu de $5$ : montrer que si $n$ est **impair**, le produit
$$(a_1-b_1)(a_2-b_2)\cdots(a_n-b_n)$$
est toujours pair. Et si $n$ est pair, trouver un exemple où le produit est impair.
