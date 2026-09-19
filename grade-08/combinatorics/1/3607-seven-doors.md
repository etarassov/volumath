---
id: "3607"
title: "Les sept portes de la salle"
grade: 8
theme: combinatorics
difficulty: 1
duration_min: 5
tags: [principe-multiplicatif, denombrement, choix]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), X26 AMC 8, Permutations and Combinations"
  reference: "Handout-5117-5589.pdf, problème 1.2"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5117-5589.pdf"
---

## Statement

Une salle possède sept portes.

On entre dans la salle par une porte, puis on en ressort par une **autre** porte.

De combien de façons différentes peut-on faire cela ?

## Hints

1. Commence par choisir la porte d'entrée. Combien de possibilités ?
2. Une fois la porte d'entrée choisie, combien reste-t-il de portes pour sortir ?

## Solution

**Étape 1. Choisir la porte d'entrée.**

Les sept portes conviennent, donc il y a $7$ possibilités.

**Étape 2. Choisir la porte de sortie.**

La porte de sortie doit être différente de la porte d'entrée. Une porte est déjà utilisée, il en reste donc $6$ possibles.

Ce nombre, $6$, est le même quelle que soit la porte d'entrée choisie.

**Étape 3. Multiplier.**

À chacun des $7$ choix d'entrée correspondent $6$ choix de sortie, donc au total

$$7 \times 6 = 42$$

**Réponse.** Il y a $42$ façons de traverser la salle.

## Going further

Avec $n$ portes, le même raisonnement donne $n \times (n-1)$ façons.

Si on s'autorisait à ressortir par la porte d'entrée, il y aurait $7 \times 7 = 49$ façons : les $7$ trajets « aller-retour par la même porte » ont donc été exactement les trajets écartés.
