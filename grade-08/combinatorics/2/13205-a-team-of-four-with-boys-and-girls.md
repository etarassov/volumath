---
id: "13205"
title: "Une équipe de quatre avec garçons et filles"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [denombrement, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM), éliminatoires"
  reference: "2017-09_coupe_automne_2016_elim.pdf, exercices collégiens, exercice 5 ; corrigé 2017-09_coupe_automne_2016_elim_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016_elim.pdf"
---

## Statement

Un groupe compte $5$ garçons et $4$ filles. On veut former une équipe de $4$ personnes qui comporte au moins un garçon et au moins une fille.

Combien d'équipes différentes peut-on former ?

## Hints

1. Sépare les cas selon le nombre de garçons dans l'équipe. Quels nombres sont possibles ?
2. Choisir $3$ filles parmi $4$, c'est la même chose que choisir la fille qui reste dehors. Combien de façons ?
3. Pour choisir $2$ garçons parmi $5$, fais la liste des paires, ou compte les paires ordonnées puis divise par $2$.

## Solution

L'équipe a $4$ membres, avec au moins un garçon et au moins une fille. Elle compte donc $1$, $2$ ou $3$ garçons. On compte chaque cas.

**Choisir parmi un petit groupe.** Il nous faut le nombre de façons de choisir quelques personnes dans un groupe, sans ordre.

- Choisir $1$ personne parmi $n$ : $n$ façons.
- Choisir $2$ personnes parmi $5$ : on choisit la première de $5$ façons, la seconde de $4$ façons, et chaque paire a été comptée deux fois (dans les deux ordres), d'où $\frac{5 \times 4}{2} = 10$ paires. De même, $2$ personnes parmi $4$ : $\frac{4 \times 3}{2} = 6$ paires.
- Choisir $3$ personnes parmi $4$ revient à choisir celle qui reste dehors : $4$ façons. Choisir $3$ personnes parmi $5$ revient à choisir les $2$ qui restent dehors : $10$ façons.

**Les trois cas.**

- $1$ garçon et $3$ filles : $5 \times 4 = 20$ équipes.
- $2$ garçons et $2$ filles : $10 \times 6 = 60$ équipes.
- $3$ garçons et $1$ fille : $10 \times 4 = 40$ équipes.

**Conclusion.** On peut former $20 + 60 + 40 = 120$ équipes.

## Going further

On peut aussi compter « à l'envers » : il y a $126$ façons de choisir $4$ personnes parmi $9$ sans condition. Parmi elles, $5$ équipes sont formées uniquement de garçons et $1$ uniquement de filles. On retrouve $126 - 5 - 1 = 120$.
