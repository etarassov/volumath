---
id: "7435"
title: "Un produit toujours pair"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [permutations, parite, somme, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: ["4615"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2010, groupe des débutants"
  reference: "stage_ete_2010.pdf, « Groupe des Débutants », premier TD de stratégies de base, « Chercher le bon invariant », question 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2010.pdf"
---

## Statement

Soit $n$ un entier **impair**. On range les entiers $1, 2, \ldots, n$ dans un ordre quelconque :
on obtient une liste $d_1, d_2, \ldots, d_n$ où chacun des $n$ entiers apparaît une fois et une
seule.

Montrer que le produit
$$(d_1 - 1)(d_2 - 2)\cdots(d_n - n)$$
est toujours pair.

## Hints

1. Essaie avec $n = 3$ et quelques rangements. Tu verras qu'un facteur est toujours nul ou pair.
2. Raisonne par l'absurde : suppose le produit impair. Que peut-on dire alors de **chacun** de ses
   facteurs ?
3. Une somme d'un nombre impair de nombres impairs est-elle paire ou impaire ? Et que vaut la
   somme $(d_1 - 1) + (d_2 - 2) + \dots + (d_n - n)$ ?

## Solution

**Raisonnons par l'absurde.**

Supposons le produit $(d_1-1)(d_2-2)\cdots(d_n-n)$ **impair**.

Un produit est impair exactement lorsque tous ses facteurs sont impairs. Donc chacun des $n$
nombres
$$d_1 - 1, \quad d_2 - 2, \quad \ldots, \quad d_n - n$$
est impair.

**La somme d'un nombre impair de nombres impairs est impaire.**

En effet, si on additionne $n$ nombres impairs, on peut les écrire $2k_1+1, 2k_2+1, \ldots,
2k_n+1$, et leur somme vaut
$$2(k_1 + k_2 + \dots + k_n) + n.$$
Le premier terme est pair ; comme $n$ est impair, la somme entière est impaire.

Donc
$$(d_1 - 1) + (d_2 - 2) + \dots + (d_n - n) \quad \text{est impaire.}$$

**Mais cette somme vaut $0$.**

Réorganisons-la :
$$(d_1 + d_2 + \dots + d_n) - (1 + 2 + \dots + n).$$

Les $d_i$ sont exactement les entiers $1, 2, \ldots, n$ dans un autre ordre : les deux
parenthèses sont donc égales, et la somme vaut $0$.

**La contradiction.**

Le nombre $0$ est pair. La somme serait donc à la fois paire et impaire : c'est impossible.

**Conclusion.** L'hypothèse était fausse : le produit
$$(d_1 - 1)(d_2 - 2)\cdots(d_n - n)$$
est toujours pair lorsque $n$ est impair.

*Autre façon de le voir.* Parmi les entiers $1, 2, \ldots, n$ avec $n$ impair, il y a
$\dfrac{n+1}{2}$ nombres impairs et seulement $\dfrac{n-1}{2}$ nombres pairs. Si tous les
$d_i - i$ étaient impairs, alors $d_i$ et $i$ seraient de parités différentes pour chaque $i$ :
la liste enverrait chacun des $\dfrac{n+1}{2}$ indices impairs sur une valeur paire. Il faudrait
donc au moins $\dfrac{n+1}{2}$ valeurs paires, alors qu'il n'y en a que $\dfrac{n-1}{2}$.

## Going further

Et si $n$ est **pair** ? Le produit peut-il être impair ? Essaie de construire un rangement des
entiers $1, 2, 3, 4$ pour lequel le produit est impair.
