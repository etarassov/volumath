---
id: "13847"
title: "Deux produits de fractions qui se simplifient"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [produit telescopique, telescopage, fractions, fraction irreductible]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet senior, exercice 16 pour la question 1 et sujet junior, exercice 16 pour la question 2 ; réponses 435 et 232 (valeurs de a + b) dans les listes des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Écrire chacun des deux nombres suivants sous la forme d'une fraction irréductible.

1. Le produit
   $$B = \left(1 + \frac{1}{2}\right) \times \left(1 + \frac{1}{3}\right) \times \left(1 + \frac{1}{4}\right) \times \cdots \times \left(1 + \frac{1}{432}\right).$$
2. Le produit
   $$A = \frac{1}{3} \times \frac{2}{4} \times \frac{3}{5} \times \cdots \times \frac{20}{22},$$
   où l'on multiplie toutes les fractions $\dfrac{k}{k + 2}$ pour $k$ allant de $1$ à $20$.

## Hints

1. Dans $B$, écris chaque facteur $1 + \dfrac{1}{k}$ comme une seule fraction.
2. Dans $B$, le numérateur de chaque facteur est le dénominateur du facteur suivant.
3. Dans $A$, écris le produit de tous les numérateurs, puis celui de tous les dénominateurs.
   Quels nombres apparaissent à la fois en haut et en bas ?

## Solution

**1.** Pour tout entier $k \geqslant 1$, on a $1 + \dfrac{1}{k} = \dfrac{k + 1}{k}$. Donc

$$B = \frac{3}{2} \times \frac{4}{3} \times \frac{5}{4} \times \cdots \times \frac{433}{432}.$$

Les numérateurs sont $3, 4, \ldots, 433$ et les dénominateurs sont $2, 3, \ldots, 432$. Tous les
nombres de $3$ à $432$ apparaissent une fois en haut et une fois en bas, et se simplifient. Il
reste le numérateur du dernier facteur et le dénominateur du premier :

$$B = \frac{433}{2}.$$

Cette fraction est irréductible, car $433$ est impair.

**2.** Le produit des numérateurs est $1 \times 2 \times 3 \times \cdots \times 20$, et celui des
dénominateurs est $3 \times 4 \times 5 \times \cdots \times 22$. Les nombres de $3$ à $20$
apparaissent en haut et en bas, et se simplifient :

$$A = \frac{1 \times 2}{21 \times 22} = \frac{2}{462} = \frac{1}{231}.$$

**On trouve $B = \dfrac{433}{2}$ et $A = \dfrac{1}{231}$.**

## Going further

Dans $B$, il reste un seul nombre en haut et un seul en bas, car on décale de $1$. Dans $A$, on
décale de $2$, et il en reste deux de chaque côté. Combien en resterait-il pour le produit des
fractions $\dfrac{k}{k + 3}$ ?
