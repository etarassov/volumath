---
id: "13808"
title: "Quatre livres en vitrine"
grade: 9
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [denombrement, combinaisons]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2018, éliminatoires"
  reference: "2018-05_coupe_printemps_2018_elim_college.pdf, questionnaire collégiens, exercice 8 ; réponse dans 2018-06_coupe_printemps_2018_elim_college_corrige.pdf (tableau des réponses, sans solution rédigée). L'énoncé ne dit pas si l'ordre des livres compte ; la réponse officielle, 715, montre qu'il ne compte pas, ce que l'énoncé ci-dessous précise."
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/05/coupe_printemps_2018_elim_college.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2018-05_coupe_printemps_2018_elim_college.pdf"
---

## Statement

Un libraire a reçu $13$ nouveaux livres, tous différents, mais il ne peut en placer que $4$
dans sa vitrine. Seul compte le choix des $4$ livres exposés, pas la façon dont ils sont
rangés dans la vitrine.

Combien a-t-il de possibilités pour remplir sa vitrine ?

## Hints

1. Commence par compter comme si l'ordre comptait : le libraire choisit un premier livre, puis
   un deuxième, puis un troisième, puis un quatrième. Combien de choix à chaque étape ?
2. Dans ce premier comptage, un même groupe de $4$ livres a été compté plusieurs fois. Combien
   de fois ? (C'est le nombre de façons de ranger $4$ livres en ligne.)

## Solution

**Si l'ordre comptait.** Le libraire choisit d'abord un livre parmi $13$, puis un deuxième
parmi les $12$ restants, puis un troisième parmi $11$, puis un quatrième parmi $10$. Cela fait

$$13 \times 12 \times 11 \times 10 = 17\,160$$

choix ordonnés.

**Chaque vitrine a été comptée plusieurs fois.** Un même groupe de $4$ livres apparaît dans ce
comptage autant de fois qu'il y a de façons de ranger ces $4$ livres l'un après l'autre :
$4$ choix pour le premier, $3$ pour le deuxième, $2$ pour le troisième, $1$ pour le dernier,
soit $4 \times 3 \times 2 \times 1 = 24$ façons.

**On divise.** Le nombre de vitrines différentes est donc

$$\frac{13 \times 12 \times 11 \times 10}{24} = \frac{17\,160}{24} = 715.$$

On peut aussi simplifier avant de multiplier : $\dfrac{12}{4 \times 3} = 1$ et
$\dfrac{10}{2} = 5$, donc le résultat vaut $13 \times 11 \times 5 = 715$.

**Le libraire a $715$ possibilités.**

## Going further

Ce nombre se note $\binom{13}{4}$ et se lit « $4$ parmi $13$ ». Le même raisonnement montre
que le nombre de façons de choisir $k$ objets parmi $n$, sans tenir compte de l'ordre, est
$\dfrac{n \times (n-1) \times \cdots \times (n-k+1)}{k \times (k-1) \times \cdots \times 1}$.
