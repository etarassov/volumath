---
id: "13844"
title: "46 droites et le moins de régions possible"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 10
tags: [droites, regions, minimum]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet junior, exercice 13 ; réponse 47 dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

On trace $46$ droites, toutes différentes, dans un plan. Elles découpent le plan en régions.

Quel est le plus petit nombre de régions possible ?

## Hints

1. Commence avec $1$, puis $2$, puis $3$ droites. Comment les placer pour obtenir le moins de
   régions possible ?
2. Trace les droites une par une. Une nouvelle droite traverse au moins une région déjà
   présente. Que devient cette région ?
3. Combien de régions, au moins, chaque nouvelle droite ajoute-t-elle ?

## Solution

**Avec $47$ régions, c'est possible.** Prenons $46$ droites parallèles. Elles découpent le plan
en $45$ bandes, une entre deux droites voisines, et en $2$ demi-plans à l'extérieur, soit
$45 + 2 = 47$ régions.

**On ne peut pas faire moins.** Traçons les droites une par une. Avant la première, il y a une
seule région, le plan tout entier.

Quand on trace une nouvelle droite, elle passe à l'intérieur d'au moins une des régions déjà
formées. Cette région est alors partagée en deux : une partie d'un côté de la droite, une partie
de l'autre côté. Les autres régions ne disparaissent pas. Donc chaque nouvelle droite augmente
le nombre de régions d'au moins $1$.

Après $46$ droites, il y a donc au moins $1 + 46 = 47$ régions.

**Le plus petit nombre de régions possible est $47$.**

## Going further

Et le plus grand nombre de régions ? Cette fois, chaque nouvelle droite doit couper toutes les
précédentes, en des points tous différents. La $k$-ième droite ajoute alors $k$ régions, et on
obtient $1 + (1 + 2 + \cdots + 46) = 1 + 1081 = 1082$ régions.
