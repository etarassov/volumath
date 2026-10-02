---
id: "13204"
title: "Multiples de 8 et de 50 qui divisent 10 000"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 10
tags: [diviseurs, multiples, ppcm]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM), éliminatoires"
  reference: "2017-09_coupe_automne_2016_elim.pdf, exercices collégiens, exercice 4 ; corrigé 2017-09_coupe_automne_2016_elim_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016_elim.pdf"
---

## Statement

Combien y a-t-il d'entiers positifs qui sont à la fois des multiples de $8$, des multiples de $50$, et des diviseurs de $10\,000$ ?

## Hints

1. Quel est le plus petit entier positif qui soit à la fois multiple de $8$ et de $50$ ?
2. Les multiples communs de $8$ et de $50$ sont exactement les multiples de ce nombre. Écris-les $200k$.
3. Quand est-ce que $200k$ divise $10\,000$ ? Regarde $10\,000 \div 200$.

## Solution

**Les multiples communs de 8 et de 50.** On a $8 = 2^3$ et $50 = 2 \times 5^2$. Un multiple de $8$ contient au moins trois facteurs $2$, un multiple de $50$ contient au moins deux facteurs $5$. Un multiple commun contient donc au moins $2^3 \times 5^2 = 200$, et réciproquement tout multiple de $200$ est multiple de $8$ et de $50$. Les nombres cherchés sont donc les multiples de $200$ qui divisent $10\,000$.

**Les multiples de 200 qui divisent 10 000.** Écrivons un tel nombre $200k$ avec $k$ entier positif. Comme $10\,000 = 200 \times 50$, le nombre $200k$ divise $10\,000$ exactement quand $k$ divise $50$.

**Les diviseurs de 50.** Ce sont $1, 2, 5, 10, 25, 50$ : il y en a $6$. Les nombres cherchés sont donc

$$200, \quad 400, \quad 1000, \quad 2000, \quad 5000, \quad 10\,000.$$

**Conclusion.** Il y a $6$ tels entiers.
