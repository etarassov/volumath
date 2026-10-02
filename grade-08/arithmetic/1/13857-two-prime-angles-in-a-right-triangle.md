---
id: "13857"
title: "Deux angles premiers dans un triangle rectangle"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [nombres premiers, angles, triangle rectangle]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet senior, exercice 4 ; réponse 83 dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Les deux angles aigus d'un triangle rectangle mesurent $a$ et $b$ degrés, avec $a > b$. On sait
que $a$ et $b$ sont tous les deux des nombres premiers.

Quelle est la plus grande valeur possible de $a$ ?

## Hints

1. Que vaut $a + b$ ?
2. Comme $a > b$, le nombre $a$ est plus grand que $45$. Essaie les nombres premiers à partir
   du plus grand possible.

## Solution

**La somme des deux angles.** La somme des angles d'un triangle vaut $180^\circ$, et l'angle
droit en prend $90^\circ$. Il reste $a + b = 90$, donc $b = 90 - a$. Comme $a > b$, on a
$a > 45$.

**On essaie les plus grandes valeurs de $a$.** On cherche le plus grand nombre premier $a$
inférieur à $90$ tel que $90 - a$ soit aussi premier.

- $a = 89$ donne $b = 1$, et $1$ n'est pas un nombre premier.
- Entre $83$ et $89$, aucun nombre n'est premier : $84$, $86$ et $88$ sont pairs, $85 = 5 \times 17$
  et $87 = 3 \times 29$.
- $a = 83$ donne $b = 7$, qui est premier. Le triangle rectangle d'angles $83^\circ$ et $7^\circ$
  convient.

**La plus grande valeur possible de $a$ est $83$.**
