---
id: "8401"
title: "Une fraction qui se simplifie d'un coup"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 5
tags: [fractions, factorisation, calcul-malin, produit]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, Coupe Animath de printemps 2021"
  reference: "Poly-2021-Valbonne.pdf, « Coupe Animath de printemps 2021 », énoncés destinés aux élèves de collège, exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Calculer

$$\frac{6 \times 5 \times 4 \times 3 \times 2 \times 1 \;-\; 5 \times 4 \times 3 \times 2 \times 1}{4 \times 3 \times 2 \times 1}.$$

Seul le résultat est demandé.

## Hints

1. N'essaie pas de calculer les trois produits l'un après l'autre : les nombres grossissent vite, et ce n'est pas le but de l'exercice.
2. Regarde les deux produits du haut. Qu'ont-ils en commun ?
3. Les deux contiennent le morceau $4 \times 3 \times 2 \times 1$. Mets-le en facteur, puis simplifie avec le bas.

## Solution

**Repérer le facteur commun.**

Les deux produits du numérateur se terminent tous les deux par $4 \times 3 \times 2 \times 1$ :

$$6 \times 5 \times 4 \times 3 \times 2 \times 1 = (6 \times 5) \times (4 \times 3 \times 2 \times 1),$$

$$5 \times 4 \times 3 \times 2 \times 1 = 5 \times (4 \times 3 \times 2 \times 1).$$

**Mettre en facteur.**

Le numérateur vaut donc

$$(6 \times 5) \times (4 \times 3 \times 2 \times 1) - 5 \times (4 \times 3 \times 2 \times 1) = (6 \times 5 - 5) \times (4 \times 3 \times 2 \times 1).$$

**Simplifier.**

Le facteur $4 \times 3 \times 2 \times 1$ apparaît maintenant en haut et en bas, et il n'est pas nul : on peut le simplifier. Il reste

$$6 \times 5 - 5 = 30 - 5 = 25.$$

La fraction vaut $\boxed{25}$.

## Going further

Un produit de tous les entiers de $1$ à $n$ porte un nom : on l'appelle **factorielle de $n$** et on l'écrit $n!$. Ainsi $4! = 4 \times 3 \times 2 \times 1 = 24$ et $6! = 720$.

Avec cette notation, la fraction de l'exercice s'écrit $\dfrac{6! - 5!}{4!}$, et le calcul ci-dessus devient

$$\frac{6! - 5!}{4!} = \frac{6 \times 5 \times 4! - 5 \times 4!}{4!} = 6 \times 5 - 5 = 25.$$
