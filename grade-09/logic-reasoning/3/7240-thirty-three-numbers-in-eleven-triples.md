---
id: "7240"
title: "De 1 à 33 en onze groupes de trois"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 20
tags: [parite, invariant, somme, impossibilite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2018"
  reference: "Poly_final_CJ18.pdf, « Débutants », jeudi 25 matin (Vincent Jugé), invariants, exercice 12"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_final_CJ18.pdf"
---

## Statement

Peut-on répartir les entiers $1, 2, \ldots, 33$ en onze groupes de trois nombres, chaque entier
étant dans exactement un groupe, de sorte que dans chaque groupe l'un des trois nombres soit la
somme des deux autres ?

## Hints

1. Dans un groupe $\{a, b, c\}$ avec $c = a + b$, que vaut la somme $a + b + c$ ? Est-elle paire
   ou impaire ?
2. Calcule la somme $1 + 2 + \cdots + 33$ et regarde sa parité.
3. Si chaque groupe a une somme paire, que peut-on dire de la somme totale ?

## Solution

**La somme d'un groupe est paire.**

Prenons un groupe $\{a, b, c\}$ dans lequel $c = a + b$. Alors
$$a + b + c = a + b + (a+b) = 2(a+b) ,$$
qui est un nombre **pair**.

Cela vaut pour chacun des onze groupes.

**La somme totale serait donc paire.**

Chaque entier de $1$ à $33$ appartient à exactement un groupe. La somme de tous les entiers de
$1$ à $33$ est donc la somme des onze sommes de groupes, c'est-à-dire une somme de onze nombres
pairs : elle serait paire.

**Mais la somme totale est impaire.**

$$1 + 2 + \cdots + 33 = \frac{33 \times 34}{2} = 33 \times 17 = 561 .$$

C'est le produit de deux nombres impairs, donc $561$ est **impair**. (On peut aussi le voir en
comptant les impairs de $1$ à $33$ : il y en a $17$, un nombre impair, donc la somme est impaire.)

**Contradiction.**

$561$ ne peut pas être à la fois pair et impair.

**Non, une telle répartition est impossible.**

## Going further

L'argument ne dépend pas du nombre $33$ lui-même, mais de la parité de la somme
$1 + 2 + \cdots + 3n$.

Cette somme vaut $\dfrac{3n(3n+1)}{2}$. Pour $n = 11$, on trouve $561$, impair : c'est
impossible. Pour $n = 8$, c'est-à-dire les entiers de $1$ à $24$, la somme vaut $300$, qui est
paire : l'argument de parité ne dit plus rien, et une répartition existe bel et bien :
$$\{1,2,3\},\ \{4,14,18\},\ \{5,15,20\},\ \{6,16,22\},$$
$$\{7,17,24\},\ \{8,11,19\},\ \{9,12,21\},\ \{10,13,23\} .$$
On peut vérifier que chacun des entiers de $1$ à $24$ y figure une fois et une seule, et que dans
chaque groupe le troisième nombre est la somme des deux premiers.
