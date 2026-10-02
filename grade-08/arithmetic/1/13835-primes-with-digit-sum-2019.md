---
id: "13835"
title: "Des nombres premiers de somme des chiffres 2019"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [nombres premiers, somme des chiffres, criteres de divisibilite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2019, éliminatoires"
  reference: "2019-06_coupe_animath_printemps_2019_elim.pdf, exercices lycée, exercice 20 ; corrigé dans le même fichier, solution 20 (inspirée des Olympiades mathématiques belges, éliminatoire miDi 2000, Q6)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/06/coupe_animath_printemps_2019_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-06_coupe_animath_printemps_2019_elim.pdf"
---

## Statement

Combien existe-t-il de nombres premiers dont la somme des chiffres vaut $2019$ ?

## Hints

1. Connais-tu un critère de divisibilité qui ne regarde que la somme des chiffres ?
2. Le nombre $2019$ est-il divisible par $3$ ?

## Solution

**Un critère de divisibilité.** Un nombre est divisible par $3$ exactement quand la somme de ses
chiffres est divisible par $3$.

**La somme $2019$.** On a $2019 = 3 \times 673$, donc $2019$ est divisible par $3$. Tout nombre
dont la somme des chiffres vaut $2019$ est donc divisible par $3$.

**Un tel nombre n'est pas premier.** Un tel nombre est très grand : chacun de ses chiffres vaut
au plus $9$, et $224$ chiffres donnent une somme d'au plus $224 \times 9 = 2016$. Il a donc au
moins $225$ chiffres. Il est donc
divisible par $3$ sans être égal à $3$, et il a au moins trois diviseurs : $1$, $3$ et
lui-même. Il n'est pas premier.

**Il n'existe aucun nombre premier dont la somme des chiffres vaut $2019$.**

## Going further

Il existe pourtant beaucoup de nombres dont la somme des chiffres vaut $2019$, par exemple le
nombre qui s'écrit avec un $3$ suivi de $224$ chiffres $9$. Pour quelles sommes des chiffres
peut-on espérer trouver des nombres premiers ?
