---
id: "4615"
title: "Un produit toujours pair"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [parite, permutation, somme, raisonnement par l absurde]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Beginners Circle, Pigeonhole Principle"
  reference: "Handout-582-703.pdf, problème 12 (réponse dans Handout-583-703.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-582-703.pdf"
---

## Statement

Soit $n$ un nombre entier **impair**.

On écrit les nombres $1, 2, 3, \ldots, n$ dans un ordre quelconque : on obtient une liste
$a_1, a_2, a_3, \ldots, a_n$ qui contient chacun des nombres de $1$ à $n$ exactement une fois.

Montrer que le produit
$$(a_1 - 1)(a_2 - 2)(a_3 - 3) \cdots (a_n - n)$$
est toujours un nombre pair.

## Hints

1. Un produit est pair dès qu'un seul de ses facteurs est pair. Il suffit donc de montrer que
   les $n$ facteurs ne peuvent pas être tous impairs.
2. Raisonne par l'absurde : suppose que les $n$ facteurs $a_1 - 1$, $a_2 - 2$, …, $a_n - n$
   soient tous impairs.
3. Additionne alors ces $n$ facteurs. Une somme de $n$ nombres impairs, avec $n$ impair, est-elle
   paire ou impaire ?
4. Calcule aussi cette somme directement. Quels nombres apparaissent dans
   $(a_1 + a_2 + \cdots + a_n)$, et quels nombres apparaissent dans $(1 + 2 + \cdots + n)$ ?

## Solution

**L'idée.** Un produit est pair dès qu'au moins un facteur est pair. Supposons le contraire et
montrons que c'est impossible.

**Raisonnement par l'absurde.**

Supposons que les $n$ facteurs
$$a_1 - 1, \quad a_2 - 2, \quad \ldots, \quad a_n - n$$
soient **tous impairs**, et additionnons-les. Notons $S$ cette somme.

**Premier calcul de $S$ : par la parité.**

$S$ est la somme de $n$ nombres impairs. Or l'addition de deux nombres impairs donne un nombre
pair, et l'addition d'un pair et d'un impair donne un impair : en additionnant les impairs un à
un, on obtient un nombre pair après un nombre pair de termes, impair après un nombre impair de
termes.

Comme $n$ est impair, $S$ est donc **impair**. En particulier $S \neq 0$.

**Second calcul de $S$ : directement.**

Regroupons autrement :
$$S = (a_1 - 1) + (a_2 - 2) + \cdots + (a_n - n)
   = (a_1 + a_2 + \cdots + a_n) - (1 + 2 + \cdots + n) .$$

Or la liste $a_1, a_2, \ldots, a_n$ contient exactement les nombres $1, 2, \ldots, n$, chacun une
fois : seul leur ordre a changé. Leur somme est donc la même :
$$a_1 + a_2 + \cdots + a_n = 1 + 2 + \cdots + n .$$

Par conséquent
$$S = 0 .$$

**La contradiction.**

On a obtenu à la fois $S$ impair et $S = 0$, alors que $0$ est pair. C'est impossible.

**Conclusion.** Les $n$ facteurs ne peuvent pas être tous impairs : au moins l'un d'eux est pair,
et le produit
$$(a_1 - 1)(a_2 - 2)\cdots(a_n - n)$$
est pair.

## Going further

L'hypothèse « $n$ impair » est indispensable. Pour $n = 2$, la liste $a_1 = 2$, $a_2 = 1$ donne
$$(2 - 1)(1 - 2) = 1 \times (-1) = -1 ,$$
un produit impair. Cherche un exemple analogue pour $n = 4$ : il suffit d'échanger les nombres
deux par deux.
