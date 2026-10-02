---
id: "13819"
title: "Tirer des cartes pour avoir les quatre couleurs"
grade: 8
theme: combinatorics
difficulty: 1
duration_min: 10
tags: [cartes, pire-des-cas, principe-des-tiroirs]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2019, éliminatoires"
  reference: "2019-06_coupe_animath_printemps_2019_elim.pdf, exercices collège, exercice 2 ; corrigé dans le même fichier, solution 2 (Olympiades mathématiques belges, éliminatoire miDi 2001, Q6)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/06/coupe_animath_printemps_2019_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-06_coupe_animath_printemps_2019_elim.pdf"
---

## Statement

Un jeu de $52$ cartes contient $13$ cartes de chacune des quatre couleurs : pique, cœur,
carreau et trèfle. On prend des cartes au hasard dans ce jeu, sans les regarder.

Combien de cartes faut-il prendre, au minimum, pour être **certain** d'avoir au moins une carte
de chacune des quatre couleurs ?

## Hints

1. Imagine que tu n'as vraiment pas de chance. Quel est le plus grand nombre de cartes que tu
   peux prendre sans avoir les quatre couleurs ?
2. Il est possible de ne tirer que des cartes de trois couleurs. Combien y en a-t-il ?

## Solution

**Avec $39$ cartes, on n'est pas certain.** Les cartes de trois couleurs, par exemple tous
les piques, tous les cœurs et tous les carreaux, sont au nombre de $3 \times 13 = 39$. Si l'on
tire exactement ces $39$ cartes, il manque les trèfles. Avec $39$ cartes ou moins, on peut donc
ne pas avoir les quatre couleurs.

**Avec $40$ cartes, on est certain.** Supposons qu'on ait tiré $40$ cartes et qu'une couleur
manque. Alors les $40$ cartes sont toutes prises parmi les cartes des trois autres couleurs.
Mais il n'y en a que $39$. C'est impossible, donc les quatre couleurs sont présentes.

**Il faut prendre $40$ cartes.**
