---
id: "4410"
title: "Les vingt-cinq feuilles arrachées"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 15
tags: [parite, somme, pages]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Parity"
  reference: "Handout-1255-1270.pdf, problème 2 (réponse dans Handout-1264-1270.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1255-1270.pdf"
---

## Statement

Pierre achète un cahier de $96$ feuilles et numérote les pages de $1$ à $192$ : la première
feuille porte les pages $1$ et $2$, la deuxième les pages $3$ et $4$, et ainsi de suite.

Victor arrache $25$ feuilles du cahier et additionne les $50$ numéros de page qu'il trouve
dessus. Il annonce avoir obtenu $1990$.

Est-ce possible ?

## Hints

1. Regarde une seule feuille : quels sont les deux numéros écrits dessus ? Quelle est leur
   somme ?
2. Cette somme est-elle paire ou impaire ? Est-ce toujours le cas, quelle que soit la feuille ?
3. Que vaut la somme de $25$ nombres impairs ?

## Solution

**Une feuille à la fois.** La $k$-ième feuille porte les pages $2k - 1$ et $2k$. La somme des
deux numéros vaut

$$(2k - 1) + 2k = 4k - 1,$$

qui est un nombre **impair**, et cela quelle que soit la feuille.

**Vingt-cinq feuilles.** La somme totale de Victor est la somme de $25$ nombres impairs.
Or en additionnant deux nombres impairs on obtient un nombre pair, et en ajoutant encore un
impair on retrouve un impair : une somme de $25$ nombres impairs (donc d'un nombre impair de
termes impairs) est **impaire**.

**Conclusion.** La somme obtenue par Victor est forcément impaire, alors que $1990$ est pair.

**Non, Victor n'a pas pu obtenir $1990$ : il s'est trompé quelque part.**

## Going further

Le raisonnement ne se sert jamais du fait qu'il y a $96$ feuilles, ni des numéros précis des
feuilles arrachées. Il montre en fait que la somme obtenue en arrachant un nombre **impair** de
feuilles est toujours impaire, et celle obtenue en arrachant un nombre **pair** de feuilles est
toujours paire.
