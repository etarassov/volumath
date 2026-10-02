---
id: "13433"
title: "(2039 − 2024)² divisé par 9"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 5
tags: [puissances, calcul-astucieux, fractions]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2024"
  reference: "2024-10_Sujet-coupe-Animath-Automne-2024.pdf, épreuve collège, exercice 1 ; corrigé 2024-10_Corrige-commente-Coupe-Animath-Automne-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/10/Sujet-coupe-Animath-Automne-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2024-10_Sujet-coupe-Animath-Automne-2024.pdf"
---

## Statement

Calculer, sans calculatrice,

$$\frac{(2039 - 2024)^2}{9}.$$

## Hints

1. Commence par calculer ce qu'il y a dans la parenthèse.
2. Écris $15$ comme un produit de deux nombres premiers, et pense à $9 = 3^2$.

## Solution

On commence par la parenthèse : $2039 - 2024 = 15$. Le numérateur vaut donc $15^2$.

On peut calculer $15^2 = 225$, puis $225 \div 9 = 25$. Mais il est plus rapide de simplifier avant de calculer. Comme $15 = 3 \times 5$, on a $15^2 = 3^2 \times 5^2$, et $9 = 3^2$. Donc

$$\frac{(2039 - 2024)^2}{9} = \frac{3^2 \times 5^2}{3^2} = 5^2 = 25.$$

On peut aussi remarquer que $9 = 3^2$ et écrire le tout comme un seul carré :

$$\frac{15^2}{3^2} = (\frac{15}{3})^2 = 5^2 = 25.$$

**Conclusion.** Le nombre vaut $25$.

## Going further

Calculer de la même façon, sans calculatrice, $\frac{(2061 - 2024)^2 \times 4}{37^2}$ et $\frac{(2024 - 1979)^2}{81}$.
