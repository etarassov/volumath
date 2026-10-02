---
id: "10642"
title: "Deux sommes de fractions de part et d'autre de 1"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, fractions, identites-remarquables]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 2 (algèbre)"
  reference: "2022-12_Sujet-envoi-2.pdf, Exercices Juniors, exercice 6 ; corrigé 2023-01_corrige-envoi-2.pdf. Le corrigé écrit G + 2D là où son calcul donne D + 2G ; c'est une coquille sans conséquence."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-12_Sujet-envoi-2.pdf"
---

## Statement

Montrer que, pour tous réels $a$, $b$, $c$ strictement positifs,

$$\frac{bc}{a^2 + 2bc} + \frac{ca}{b^2 + 2ca} + \frac{ab}{c^2 + 2ab} \leqslant 1 \leqslant \frac{a^2}{a^2 + 2bc} + \frac{b^2}{b^2 + 2ca} + \frac{c^2}{c^2 + 2ab}$$

## Hints

1. Commence par l'inégalité de droite. Compare le dénominateur $a^2 + 2bc$ avec $a^2 + b^2 + c^2$.
2. Pour l'inégalité de gauche, note $G$ la somme de gauche et $D$ celle de droite. Les deux sommes ont les mêmes dénominateurs : calcule $D + 2G$.

## Solution

Notons $G$ la somme de gauche et $D$ la somme de droite.

**Étape 1. $D \geqslant 1$.**

Comme $(b - c)^2 \geqslant 0$, on a $2bc \leqslant b^2 + c^2$, donc $0 < a^2 + 2bc \leqslant a^2 + b^2 + c^2$. Une fraction de numérateur positif est d'autant plus grande que son dénominateur est petit, donc

$$\frac{a^2}{a^2 + 2bc} \geqslant \frac{a^2}{a^2 + b^2 + c^2}$$

De même pour les deux autres fractions. En ajoutant,

$$D \geqslant \frac{a^2}{a^2 + b^2 + c^2} + \frac{b^2}{a^2 + b^2 + c^2} + \frac{c^2}{a^2 + b^2 + c^2} = 1$$

**Étape 2. $D + 2G = 3$.**

Les fractions de $D$ et de $2G$ ont les mêmes dénominateurs. En les regroupant deux par deux :

$$D + 2G = \frac{a^2 + 2bc}{a^2 + 2bc} + \frac{b^2 + 2ca}{b^2 + 2ca} + \frac{c^2 + 2ab}{c^2 + 2ab} = 1 + 1 + 1 = 3$$

**Étape 3. $G \leqslant 1$.**

Par l'étape 2, $G = \frac{3 - D}{2}$, et par l'étape 1, $3 - D \leqslant 2$. Donc $G \leqslant 1$.

**Conclusion : on a bien $G \leqslant 1 \leqslant D$.**
