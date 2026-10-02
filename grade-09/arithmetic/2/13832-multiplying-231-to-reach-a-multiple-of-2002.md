---
id: "13832"
title: "Multiplier 231 pour obtenir un multiple de 2002"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 10
tags: [decomposition-en-facteurs-premiers, multiples, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2019, éliminatoires"
  reference: "2019-06_coupe_animath_printemps_2019_elim.pdf, exercices lycée, exercice 16 ; corrigé dans le même fichier, solution 16 (Olympiades mathématiques belges, éliminatoire miDi 2002, Q17)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/06/coupe_animath_printemps_2019_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-06_coupe_animath_printemps_2019_elim.pdf"
---

## Statement

Quel est le plus petit entier $n \geqslant 1$ tel que $231 \times n$ soit un multiple de $2002$ ?

## Hints

1. Décompose $231$ et $2002$ en produits de facteurs premiers.
2. Quels facteurs premiers de $2002$ manquent à $231$ ?
3. Ces facteurs manquants doivent tous apparaître dans la décomposition de $n$.

## Solution

**Les décompositions.** On trouve

$$231 = 3 \times 7 \times 11 \qquad \text{et} \qquad 2002 = 2 \times 7 \times 11 \times 13.$$

**Ce qui manque à $231$.** La décomposition en facteurs premiers de $231 \times n$ s'obtient en
mettant ensemble celle de $231$ et celle de $n$. Pour que $231 \times n$ soit un multiple de
$2002$, cette décomposition doit contenir les facteurs $2$, $7$, $11$ et $13$. Les facteurs $7$
et $11$ sont déjà dans $231$, mais pas $2$ ni $13$. Ils doivent donc apparaître tous les deux
dans la décomposition de $n$, ce qui veut dire que $n$ est un multiple de $2 \times 13 = 26$.
En particulier $n \geqslant 26$.

**$26$ convient.** On a $231 \times 26 = 6006 = 3 \times 2002$, qui est bien un multiple de
$2002$.

**Le plus petit entier cherché est $26$.**
