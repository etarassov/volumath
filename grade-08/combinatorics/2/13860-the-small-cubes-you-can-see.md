---
id: "13860"
title: "Les petits cubes que l'on voit"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 10
tags: [cube, denombrement, complementaire, espace]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet senior, exercice 8 ; réponse 424 dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Un grand cube, formé de $1000$ petits cubes identiques, est posé sur une table.

Combien de ces petits cubes ont au moins une face visible ? Les faces posées contre la table ne
sont pas visibles.

## Hints

1. Combien y a-t-il de petits cubes le long d'une arête du grand cube ?
2. Il est plus simple de compter les petits cubes que l'on **ne voit pas**.
3. Un petit cube caché ne touche ni le dessus, ni les quatre faces de côté. Il peut en revanche
   toucher la table.

## Solution

**La taille du grand cube.** On a $1000 = 10 \times 10 \times 10$, donc le grand cube a $10$
petits cubes le long de chaque arête. On repère chaque petit cube par trois numéros de $1$ à
$10$ : sa colonne de gauche à droite, sa rangée de l'avant vers l'arrière, et son étage, en
partant de la table.

**Les petits cubes cachés.** Un petit cube n'a aucune face visible exactement quand :

- il ne touche ni la face de gauche ni celle de droite : sa colonne est entre $2$ et $9$, ce qui
  laisse $8$ possibilités ;
- il ne touche ni la face avant ni la face arrière : de même, $8$ possibilités pour sa rangée ;
- il ne touche pas le dessus : son étage est entre $1$ et $9$, soit $9$ possibilités. L'étage
  $1$ est permis, car la face qui touche la table ne se voit pas.

Il y a donc $8 \times 8 \times 9 = 576$ petits cubes cachés.

**Les petits cubes visibles.** Les autres ont au moins une face visible : il y en a
$1000 - 576 = 424$.

**$424$ petits cubes ont au moins une face visible.**

## Going further

Si le grand cube était suspendu en l'air, toutes ses faces seraient visibles. Combien de petits
cubes seraient alors cachés ? On trouve $8 \times 8 \times 8 = 512$, donc $488$ petits cubes
visibles.
