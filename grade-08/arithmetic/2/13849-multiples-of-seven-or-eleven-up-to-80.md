---
id: "13849"
title: "Les multiples de 7 ou de 11 jusqu'à 80"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 10
tags: [multiples, somme, inclusion-exclusion]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet junior, exercice 18 (aussi sujet senior, exercice 13) ; réponse 693 dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Quelle est la somme de tous les entiers compris entre $1$ et $80$ qui sont multiples de $7$, ou
multiples de $11$, ou les deux ?

## Hints

1. Fais la liste des multiples de $7$ jusqu'à $80$, puis celle des multiples de $11$.
2. Un nombre apparaît dans les deux listes. Attention à ne pas le compter deux fois.
3. Pour calculer $7 + 14 + \cdots + 77$, mets $7$ en facteur.

## Solution

**Les multiples de $7$.** Ce sont $7, 14, \ldots, 77$, car $7 \times 11 = 77$ et
$7 \times 12 = 84$ dépasse $80$. Leur somme vaut

$$7 \times (1 + 2 + \cdots + 11) = 7 \times 66 = 462.$$

**Les multiples de $11$.** Ce sont $11, 22, \ldots, 77$, car $11 \times 7 = 77$ et
$11 \times 8 = 88$ dépasse $80$. Leur somme vaut

$$11 \times (1 + 2 + \cdots + 7) = 11 \times 28 = 308.$$

**Les nombres comptés deux fois.** Un nombre multiple de $7$ et de $11$ est un multiple de
$77$, car $7$ et $11$ sont premiers. Entre $1$ et $80$, il n'y a que $77$. Il est dans les deux
listes, donc on l'a ajouté deux fois, et il faut le retirer une fois.

**La somme cherchée vaut $462 + 308 - 77 = 693$.**
