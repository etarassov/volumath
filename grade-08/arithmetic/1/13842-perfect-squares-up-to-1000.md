---
id: "13842"
title: "Les carrés parfaits jusqu'à 1000"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 5
tags: [carres parfaits, puissances]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet junior, exercice 11 ; réponse 31 dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Combien y a-t-il de carrés parfaits compris entre $1$ et $1000$, ces deux nombres compris ?

Un carré parfait est le carré d'un entier, comme $1 = 1^2$, $4 = 2^2$ ou $9 = 3^2$.

## Hints

1. Les carrés parfaits à partir de $1$ sont $1^2, 2^2, 3^2, \ldots$ Jusqu'où faut-il aller ?
2. Calcule $30^2$, $31^2$ et $32^2$.

## Solution

Les carrés parfaits au moins égaux à $1$ sont les nombres $k^2$ avec $k$ entier,
$k \geqslant 1$. Ils grandissent avec $k$ :

$$1^2 < 2^2 < 3^2 < \cdots$$

Or $31^2 = 961$ est inférieur à $1000$, et $32^2 = 1024$ le dépasse. Les carrés parfaits entre
$1$ et $1000$ sont donc $1^2, 2^2, \ldots, 31^2$.

**Il y en a $31$.**
