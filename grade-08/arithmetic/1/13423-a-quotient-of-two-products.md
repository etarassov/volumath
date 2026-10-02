---
id: "13423"
title: "Un quotient de deux produits"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 5
tags: [calcul-astucieux, fractions, simplification, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2023"
  reference: "2023-10_Sujet-coupe-Animath-automne-2023.pdf, épreuve collège, exercice 1 ; corrigé 2023-10_Corrige-coupe-Animath-automne-2023.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/10/Sujet-coupe-Animath-automne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2023-10_Sujet-coupe-Animath-automne-2023.pdf"
---

## Statement

Calculer, sans calculatrice et sans effectuer les multiplications, le nombre

$$\frac{4 \times 6 \times 8 \times 10 \times 12}{2 \times 3 \times 4 \times 5 \times 6}.$$

## Hints

1. Regarde le premier facteur du haut et le premier facteur du bas. Puis le deuxième du haut et le deuxième du bas.
2. Chaque facteur du numérateur est le double d'un facteur du dénominateur. Écris la fraction comme un produit de cinq petites fractions.

## Solution

On peut découper une fraction dont le numérateur et le dénominateur sont des produits : par exemple $\frac{a \times b}{c \times d} = \frac{a}{c} \times \frac{b}{d}$. On associe donc chaque facteur du numérateur à un facteur du dénominateur :

$$\frac{4 \times 6 \times 8 \times 10 \times 12}{2 \times 3 \times 4 \times 5 \times 6} = \frac{4}{2} \times \frac{6}{3} \times \frac{8}{4} \times \frac{10}{5} \times \frac{12}{6}.$$

Chacune de ces cinq fractions vaut $2$, car chaque facteur du haut est le double du facteur du bas qui lui correspond. Donc

$$\frac{4 \times 6 \times 8 \times 10 \times 12}{2 \times 3 \times 4 \times 5 \times 6} = 2 \times 2 \times 2 \times 2 \times 2 = 2^5 = 32.$$

**Réponse : le nombre vaut $32$.**

*Vérification.* Le numérateur vaut $23\,040$ et le dénominateur $720$, et l'on a bien $720 \times 32 = 23\,040$.

## Going further

Écrire sous la forme d'une puissance de $2$ les deux nombres

$$\frac{2 \times 4 \times 6 \times \ldots \times 40}{1 \times 2 \times 3 \times \ldots \times 20} \qquad \text{et} \qquad \frac{4 \times 6 \times 8 \times \ldots \times 2024}{2 \times 3 \times 4 \times \ldots \times 1012}.$$
