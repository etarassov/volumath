---
id: "13858"
title: "Six entiers consécutifs de somme 2031"
grade: 8
theme: algebra
difficulty: 1
duration_min: 5
tags: [entiers consecutifs, mise en equation, somme]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet senior, exercice 6 ; réponse 341 dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

La somme de six entiers consécutifs vaut $2031$. Quel est le plus grand de ces six entiers ?

## Hints

1. Appelle $n$ le plus petit des six entiers. Écris les cinq autres en fonction de $n$.
2. Additionne les six entiers et résous l'équation obtenue.

## Solution

Appelons $n$ le plus petit des six entiers. Les six entiers sont
$n$, $n + 1$, $n + 2$, $n + 3$, $n + 4$ et $n + 5$, et leur somme vaut

$$6n + (1 + 2 + 3 + 4 + 5) = 6n + 15.$$

L'équation $6n + 15 = 2031$ donne $6n = 2016$, donc $n = 336$. Les six entiers sont
$336$, $337$, $338$, $339$, $340$ et $341$.

On vérifie : $336 + 341 = 337 + 340 = 338 + 339 = 677$, et $3 \times 677 = 2031$.

**Le plus grand des six entiers est $341$.**
