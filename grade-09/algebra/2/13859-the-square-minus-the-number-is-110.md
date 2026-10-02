---
id: "13859"
title: "Le carré moins le nombre fait 110"
grade: 9
theme: algebra
difficulty: 2
duration_min: 10
tags: [equation, factorisation, produit nul]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet senior, exercice 7 ; réponse 15 dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Rémi choisit un nombre positif $x$. Il le met au carré, puis il soustrait $x$ au résultat. Il
obtient $110$.

Que vaut $x + 4$ ?

## Hints

1. On a $x^2 - x = x(x - 1)$. Peux-tu écrire $110$ comme le produit de deux entiers qui se
   suivent ?
2. Pour être sûr qu'il n'y a pas d'autre solution, développe le produit $(x - 11)(x + 10)$.

## Solution

**Une solution.** On cherche $x$ positif tel que $x^2 - x = 110$, c'est-à-dire
$x(x - 1) = 110$. Or $110 = 11 \times 10$, donc $x = 11$ convient : $11^2 - 11 = 121 - 11 = 110$.

**C'est la seule.** En développant, $(x - 11)(x + 10) = x^2 + 10x - 11x - 110 = x^2 - x - 110$.
L'équation $x^2 - x = 110$ s'écrit donc

$$(x - 11)(x + 10) = 0.$$

Un produit est nul quand l'un de ses facteurs est nul, donc $x = 11$ ou $x = -10$. Comme $x$ est
positif, $x = 11$.

**On a $x + 4 = 15$.**
