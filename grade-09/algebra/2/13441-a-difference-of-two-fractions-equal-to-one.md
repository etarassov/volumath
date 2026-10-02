---
id: "13441"
title: "Une différence de deux fractions égale à 1"
grade: 9
theme: algebra
difficulty: 2
duration_min: 15
tags: [fractions, calcul litteral, entiers, identites remarquables]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2024"
  reference: "2024-10_Sujet-coupe-Animath-Automne-2024.pdf, épreuve lycée, exercice 9 ; corrigé 2024-10_Corrige-commente-Coupe-Animath-Automne-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/10/Sujet-coupe-Animath-Automne-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2024-10_Sujet-coupe-Animath-Automne-2024.pdf"
---

## Statement

Soient $a \geqslant 2$ et $b \geqslant 2$ deux entiers. On suppose que

$$\frac{a - 1}{b - 1} - \frac{a}{b} = 1.$$

Montrer que $\frac{a}{b}$ et $\frac{a - 1}{b - 1}$ sont des entiers.

## Hints

1. Débarrasse-toi des fractions : multiplie les deux membres de l'égalité par $b(b - 1)$.
2. Développe et simplifie. Il reste une relation très simple entre $a$ et $b$.
3. Pour la seconde fraction, pense à l'identité $b^2 - 1 = (b - 1)(b + 1)$.

## Solution

Les dénominateurs $b$ et $b - 1$ ne sont pas nuls, car $b \geqslant 2$.

**Étape 1 : on enlève les fractions.** On multiplie les deux membres de l'égalité par $b(b - 1)$ :

$$(a - 1)\,b - a\,(b - 1) = b\,(b - 1).$$

**Étape 2 : on développe.** À gauche, $(a - 1)b - a(b - 1) = ab - b - ab + a = a - b$. À droite, $b(b - 1) = b^2 - b$. L'égalité devient

$$a - b = b^2 - b, \qquad \text{c'est-à-dire} \qquad a = b^2.$$

**Étape 3 : on conclut.**

- $\frac{a}{b} = \frac{b^2}{b} = b$, qui est un entier.
- $\frac{a - 1}{b - 1} = \frac{b^2 - 1}{b - 1} = \frac{(b - 1)(b + 1)}{b - 1} = b + 1$, qui est un entier.

**Conclusion.** Les deux fractions sont des entiers : $\frac{a}{b} = b$ et $\frac{a - 1}{b - 1} = b + 1$. Et leur différence vaut bien $(b + 1) - b = 1$.

*Vérification.* Avec $b = 3$, on a $a = 9$, et en effet $\frac{8}{2} - \frac{9}{3} = 4 - 3 = 1$.

## Going further

Soient $a \geqslant 3$ et $b \geqslant 3$ deux entiers tels que $\frac{a - 2}{b - 2} - \frac{a}{b} = 2$. Exprimer $a$ en fonction de $b$, puis montrer que $\frac{a}{b}$ et $\frac{a - 2}{b - 2}$ sont des entiers.
