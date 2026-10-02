---
id: "13845"
title: "Les multiples de 2¹⁰ entre 2¹⁰ et 2¹⁴"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 5
tags: [puissances, multiples]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet junior, exercice 14 (aussi sujet senior, exercice 9) ; réponse 16 dans la liste des réponses du même fichier, sans solution rédigée. Exposants vérifiés avec pdfsupers.py"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Combien y a-t-il d'entiers compris entre $2^{10}$ et $2^{14}$, ces deux nombres compris, qui
sont divisibles par $2^{10}$ ?

## Hints

1. Les entiers divisibles par $2^{10}$ s'écrivent $k \times 2^{10}$, avec $k$ entier.
2. Écris $2^{14}$ sous la forme $k \times 2^{10}$.

## Solution

Les entiers divisibles par $2^{10}$ sont les nombres $k \times 2^{10}$, avec $k$ entier. Comme
$2^{14} = 2^4 \times 2^{10} = 16 \times 2^{10}$, la condition

$$2^{10} \leqslant k \times 2^{10} \leqslant 2^{14}$$

s'écrit $1 \times 2^{10} \leqslant k \times 2^{10} \leqslant 16 \times 2^{10}$, c'est-à-dire
$1 \leqslant k \leqslant 16$.

**Il y a $16$ tels entiers :** $1 \times 2^{10}, 2 \times 2^{10}, \ldots, 16 \times 2^{10}$.
