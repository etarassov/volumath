---
id: "13401"
title: "Vingt nombres qui finissent par 1 ou par 9"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [calcul-astucieux, somme, regroupement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2021"
  reference: "2021-10_Sujet.pdf, épreuve collège, exercice 1 ; corrigé 2021-10_sujetcommentairecorrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/10/Sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2021-10_Sujet.pdf"
---

## Statement

Calculer, sans calculatrice, le nombre

$$(1 + 11 + 21 + 31 + 41 + 51 + 61 + 71 + 81 + 91) + (9 + 19 + 29 + 39 + 49 + 59 + 69 + 79 + 89 + 99).$$

## Hints

1. Plutôt que d'additionner dans l'ordre, cherche à grouper les nombres deux par deux pour obtenir des sommes faciles.
2. Un nombre qui finit par $1$ plus un nombre qui finit par $9$ donne un nombre qui finit par $0$.
3. Essaie $1 + 99$, puis $11 + 89$. Que remarques-tu ?

## Solution

**On groupe les nombres par paires de somme 100.**

On associe le plus petit nombre de la première parenthèse au plus grand de la seconde, et ainsi de suite :

$$(1 + 99) + (11 + 89) + (21 + 79) + (31 + 69) + (41 + 59) + (51 + 49) + (61 + 39) + (71 + 29) + (81 + 19) + (91 + 9).$$

Chaque paire vaut $100$. En effet, quand le premier nombre augmente de $10$, le second diminue de $10$, donc la somme ne change pas.

**On compte les paires.**

Il y a $10$ nombres dans chaque parenthèse, donc $10$ paires. Le nombre cherché vaut

$$10 \times 100 = 1000.$$

## Going further

Sans tout recalculer : que vaut la somme $1 + 2 + 3 + \ldots + 99 + 100$ ? On pourra grouper $1$ avec $100$, $2$ avec $99$, et ainsi de suite.
