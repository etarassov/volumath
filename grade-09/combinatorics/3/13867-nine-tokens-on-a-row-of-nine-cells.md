---
id: "13867"
title: "Neuf pions sur une rangée de neuf cases"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [denombrement, pions, couleurs, choix]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet senior, exercice 24 ; réponse 700 dans la liste des réponses du même fichier, sans solution rédigée. L'énoncé précise que deux pions de la même couleur sont identiques, ce que la réponse 700 suppose"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Une rangée de neuf cases est coloriée alternativement en noir et en blanc. On veut poser sur
cette rangée deux pions rouges, quatre pions jaunes, deux pions bleus et un pion vert, avec un
seul pion par case. Deux pions de la même couleur sont identiques.

On veut de plus que :

- les deux pions bleus soient sur deux cases de couleurs différentes ;
- le pion vert soit entre les deux pions rouges, pas forcément à côté de l'un d'eux.

Combien y a-t-il de telles dispositions ?

## Hints

1. Combien y a-t-il de cases noires et de cases blanches ?
2. Place d'abord les pions bleus. Combien de façons ?
3. Il reste sept cases. Choisis les trois cases des pions rouges et du pion vert. Une fois ces
   trois cases choisies, combien y a-t-il de façons d'y mettre les pions ?

## Solution

Il y a neuf pions et neuf cases, donc toutes les cases sont occupées. Les cases alternent, donc
si la première est noire, il y a $5$ cases noires et $4$ cases blanches (et l'inverse si la
première est blanche, ce qui ne change pas le calcul).

**Les pions bleus.** Il y a un pion bleu sur une case noire et un sur une case blanche. Comme les
deux pions bleus sont identiques, il suffit de choisir la case noire ($5$ choix) et la case
blanche ($4$ choix) : $5 \times 4 = 20$ façons.

**Les pions rouges et le vert.** Il reste $7$ cases libres. On choisit les trois cases qui
porteront les deux rouges et le vert. Une fois ces trois cases choisies, il n'y a qu'une façon
de placer les pions : le vert doit aller sur celle du milieu, les rouges, identiques, sur les
deux autres.

Combien de façons de choisir $3$ cases parmi $7$ ? Si on les choisit l'une après l'autre, on a
$7 \times 6 \times 5 = 210$ possibilités, mais chaque groupe de trois cases a été obtenu
$3 \times 2 \times 1 = 6$ fois, une fois par ordre de choix. Il y a donc $\dfrac{210}{6} = 35$
groupes de trois cases.

**Les pions jaunes.** Les quatre pions jaunes, identiques, vont sur les quatre cases restantes,
d'une seule façon.

**Au total.** Chaque placement des bleus se combine avec chaque placement des rouges et du vert :
$20 \times 35 = 700$.

**Il y a $700$ dispositions.**
